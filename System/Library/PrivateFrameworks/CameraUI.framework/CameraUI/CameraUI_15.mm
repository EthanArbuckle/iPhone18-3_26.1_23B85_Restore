uint64_t sub_1A39F196C(uint64_t result, double a2, double a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void sub_1A39F1974(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F1A64(uint64_t result, double a2, double a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

uint64_t sub_1A39F1A6C(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F1B48()
{
  swift_getKeyPath();
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 64);
}

uint64_t sub_1A39F1BB8(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39F1C94(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F1D84(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F1E6C()
{
  swift_getKeyPath();
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 81);
}

uint64_t sub_1A39F1EDC(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F1FC4(uint64_t result)
{
  if (*(v1 + 82) == (result & 1))
  {
    *(v1 + 82) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F20AC()
{
  v1 = OBJC_IVAR____TtC8CameraUI25ChromeSmartStyleViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeSmartStyleViewModel()
{
  result = qword_1ED999278;
  if (!qword_1ED999278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A39F219C()
{
  result = sub_1A3A2F0C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A39F225C()
{
  result = qword_1ED996610;
  if (!qword_1ED996610)
  {
    type metadata accessor for ChromeSmartStyleViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996610);
  }

  return result;
}

uint64_t sub_1A39F22D4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0x3FF0000000000000;
  *(v0 + 80) = 0;
  *(v0 + 82) = 0;
  sub_1A3A2F0B0();
  return v0;
}

__n128 sub_1A39F2334()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

__n128 sub_1A39F2344()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_1A39F2354()
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 248);
}

uint64_t sub_1A39F23C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 248), v11);
  if (result)
  {
    *(v4 + 248) = a1;
    *(v4 + 256) = a2;
    *(v4 + 264) = a3;
    *(v4 + 272) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A39F24E0()
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 280);
}

double sub_1A39F2554()
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 312);
}

__n128 sub_1A39F25C8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  v3 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A39F2650(uint64_t a1)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(*&v1 + 64);
  v13[2] = *(*&v1 + 48);
  v13[3] = v5;
  v14 = *(*&v1 + 80);
  v6 = *(*&v1 + 32);
  v13[0] = *(*&v1 + 16);
  v13[1] = v6;
  result = CAMLiquidShutterShapeEqualToShape(v13, v11);
  if (result)
  {
    v8 = *(a1 + 48);
    *(*&v1 + 48) = *(a1 + 32);
    *(*&v1 + 64) = v8;
    *(*&v1 + 80) = *(a1 + 64);
    v9 = *(a1 + 16);
    *(*&v1 + 16) = *a1;
    *(*&v1 + 32) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

__n128 sub_1A39F2774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(a2 + 64);
  result = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1A39F2790@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  result = *(v1 + 104);
  v4 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v1 + 152);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A39F2820(uint64_t a1)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(*&v1 + 104);
  v6 = *(*&v1 + 136);
  v13[2] = *(*&v1 + 120);
  v13[3] = v6;
  v14 = *(*&v1 + 152);
  v13[0] = *(*&v1 + 88);
  v13[1] = v5;
  result = CAMLiquidShutterShapeEqualToShape(v13, v11);
  if (result)
  {
    v8 = *a1;
    *(*&v1 + 104) = *(a1 + 16);
    v9 = *(a1 + 48);
    *(*&v1 + 120) = *(a1 + 32);
    *(*&v1 + 136) = v9;
    *(*&v1 + 152) = *(a1 + 64);
    *(*&v1 + 88) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

__n128 sub_1A39F2954(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 104) = a2[1];
  result = a2[2];
  v4 = a2[3];
  *(a1 + 120) = result;
  *(a1 + 136) = v4;
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 88) = v2;
  return result;
}

__n128 sub_1A39F2978@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  v3 = *(v1 + 208);
  *(a1 + 32) = *(v1 + 192);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 224);
  result = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A39F2A00(uint64_t a1)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(*&v1 + 208);
  v13[2] = *(*&v1 + 192);
  v13[3] = v5;
  v14 = *(*&v1 + 224);
  v6 = *(*&v1 + 176);
  v13[0] = *(*&v1 + 160);
  v13[1] = v6;
  result = CAMLiquidShutterShapeEqualToShape(v13, v11);
  if (result)
  {
    v8 = *(a1 + 48);
    *(*&v1 + 192) = *(a1 + 32);
    *(*&v1 + 208) = v8;
    *(*&v1 + 224) = *(a1 + 64);
    v9 = *(a1 + 16);
    *(*&v1 + 160) = *a1;
    *(*&v1 + 176) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

__n128 sub_1A39F2B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 192) = *(a2 + 32);
  *(a1 + 208) = v2;
  *(a1 + 224) = *(a2 + 64);
  result = *(a2 + 16);
  *(a1 + 160) = *a2;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1A39F2B40()
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 232);
}

uint64_t sub_1A39F2BB0(uint64_t result)
{
  if (*(v1 + 232) == (result & 1))
  {
    *(v1 + 232) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A39F2C98()
{
  swift_getKeyPath();
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 240);
}

void sub_1A39F2D08(double a1)
{
  if (*(v1 + 240) == a1)
  {
    *(v1 + 240) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F2DF8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 280), v11);
  if (result)
  {
    *(v4 + 280) = a1;
    *(v4 + 288) = a2;
    *(v4 + 296) = a3;
    *(v4 + 304) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F2F10(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 312), v11);
  if (result)
  {
    *(v4 + 312) = a1;
    *(v4 + 320) = a2;
    *(v4 + 328) = a3;
    *(v4 + 336) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F3028()
{
  v1 = OBJC_IVAR____TtC8CameraUI29ChromeDynamicShutterViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeDynamicShutterViewModel()
{
  result = qword_1ED999378;
  if (!qword_1ED999378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A39F3118()
{
  result = sub_1A3A2F0C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1A39F31DC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 248) = result;
  *(v1 + 264) = v3;
  return result;
}

unint64_t sub_1A39F31F8()
{
  result = qword_1ED996CE8;
  if (!qword_1ED996CE8)
  {
    type metadata accessor for ChromeDynamicShutterViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CE8);
  }

  return result;
}

uint64_t sub_1A39F3250()
{
  *(v0 + 48) = *ymmword_1A3A6AD10;
  *(v0 + 64) = *&ymmword_1A3A6AD10[16];
  *(v0 + 80) = 0;
  *(v0 + 16) = CAMLiquidShutterShapeZero;
  *(v0 + 32) = unk_1A3A6AD00;
  *(v0 + 104) = unk_1A3A6AD00;
  *(v0 + 120) = *ymmword_1A3A6AD10;
  *(v0 + 136) = *&ymmword_1A3A6AD10[16];
  *(v0 + 152) = 0;
  *(v0 + 88) = CAMLiquidShutterShapeZero;
  *(v0 + 192) = *ymmword_1A3A6AD10;
  *(v0 + 208) = *&ymmword_1A3A6AD10[16];
  *(v0 + 160) = CAMLiquidShutterShapeZero;
  *(v0 + 176) = unk_1A3A6AD00;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0x3FF0000000000000;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  sub_1A3A2F0B0();
  return v0;
}

double sub_1A39F32DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 240) = result;
  return result;
}

__n128 sub_1A39F32FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  *(v1 + 224) = *(v2 + 64);
  *(v1 + 192) = v4;
  *(v1 + 208) = v3;
  *(v1 + 176) = v5;
  result = *v2;
  *(v1 + 160) = *v2;
  return result;
}

__n128 sub_1A39F3324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  *(v1 + 80) = *(v2 + 64);
  *(v1 + 48) = v4;
  *(v1 + 64) = v3;
  *(v1 + 32) = v5;
  result = *v2;
  *(v1 + 16) = *v2;
  return result;
}

__n128 sub_1A39F334C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 64);
  *(v1 + 104) = *(v2 + 16);
  *(v1 + 152) = v5;
  *(v1 + 136) = v3;
  *(v1 + 120) = v4;
  result = *v2;
  *(v1 + 88) = *v2;
  return result;
}

__n128 sub_1A39F3378()
{
  v1 = *(v0 + 16) + 312;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

__n128 sub_1A39F3390()
{
  v1 = *(v0 + 16) + 280;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_1A39F33A8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpringModel.State();
    result = sub_1A3A31DE0();
    if (v2 <= 0x3F)
    {
      result = sub_1A3A2F0C0();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A39F34EC(char a1)
{
  v2 = *(*v1 + 128);
  v3 = a1 & 1;
  result = sub_1A3A31790();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F4A80();
  }

  return result;
}

uint64_t sub_1A39F3664()
{
  if ((sub_1A3A310C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SpringModel.SpringAttachment();
  return sub_1A3A31790() & 1;
}

uint64_t sub_1A39F36F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v123 = a2;
  v3 = *v2;
  v118 = sub_1A3A2ECE0();
  v115 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = type metadata accessor for SpringModel.SpringAttachment();
  v104 = sub_1A3A31DE0();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v106 = v96 - v9;
  v117 = v8;
  v107 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v105 = v96 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v111 = v96 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v119 = v96 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v129 = v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v126 = v6;
  v127 = v96 - v20;
  v128 = v7;
  v21 = type metadata accessor for SpringModel.State();
  v22 = sub_1A3A31DE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v113 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v96 - v26;
  v28 = *(v21 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v96 - v31;
  v33 = *(*(v5 - 8) + 16);
  v34 = v2 + v3[15];
  v130 = v5;
  v33(v123, v34, v5, v30);
  v35 = *(*v2 + 136);
  swift_beginAccess();
  v36 = *(v23 + 16);
  v125 = v2;
  v36(v27, v2 + v35, v22);
  v120 = v28;
  v121 = v21;
  v37 = (*(v28 + 48))(v27, 1, v21);
  v114 = v22;
  if (v37 == 1)
  {
    (*(v23 + 8))(v27, v22);
    v38 = v125;
    v39 = v111;
    sub_1A3A2F4B0();
    swift_getAssociatedConformanceWitness();
    v40 = v112;
    sub_1A3A320A0();
    v41 = v116;
    (*(v115 + 16))(v116, v122, v118);
    v42 = v113;
    sub_1A39F47A8(v39, v40, v41, v113);
    (*(v120 + 56))(v42, 0, 1, v121);
    swift_beginAccess();
    (*(v23 + 40))(v38 + v35, v42, v114);
    return swift_endAccess();
  }

  else
  {
    v100 = v35;
    v101 = v23;
    v44 = v121;
    (*(v120 + 32))(v32, v27, v121);
    sub_1A3A2EC70();
    v45 = v129;
    v47 = v124 + 16;
    v46 = *(v124 + 16);
    v109 = v46;
    v48 = v127;
    v49 = AssociatedTypeWitness;
    v46();
    v50 = *(v44 + 44);
    v99 = v32;
    (v46)(v45, &v32[v50], v49);
    v131 = *(v125 + 16);
    v51 = v130;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v102 = *(AssociatedConformanceWitness + 8);
    sub_1A3A2EA50();
    v52 = v111;
    v53 = sub_1A3A320A0();
    v108 = v96;
    MEMORY[0x1EEE9AC00](v53);
    v54 = v126;
    v96[-6] = v51;
    v96[-5] = v54;
    v96[-4] = v55;
    v96[-3] = v48;
    v96[-2] = v45;
    v56 = sub_1A3A31A40();
    WitnessTable = swift_getWitnessTable();
    v58 = v119;
    v96[3] = v56;
    v96[2] = WitnessTable;
    sub_1A3A31950();
    v96[1] = 0;
    v59 = v124;
    v60 = v124 + 8;
    v108 = *(v124 + 8);
    v108(v52, v49);

    v61 = v109;
    (v109)(v52, v58, v49);
    sub_1A3A2FBE0();
    v62 = *(v59 + 40);
    v63 = v129;
    v62(v129, v52, v49);
    v64 = v112;
    v98 = v47;
    (v61)(v112, v63, v49);
    sub_1A3A2FBE0();
    v65 = v127;
    sub_1A3A32090();
    v66 = v108;
    v108(v64, v49);
    v124 = v59 + 40;
    v96[0] = v62;
    v62(v65, v52, v49);
    sub_1A3A2FBD0();
    v68 = fabs(v67);
    v69 = v125;
    sub_1A3A2F4B0();
    v70 = v118;
    sub_1A3A2FBD0();
    v72 = v71;
    AssociatedConformanceWitness = v60;
    v66(v52, v49);
    v73 = v70;
    v74 = v129;
    v75 = v69;
    v76 = v49;
    if (v68 <= v72)
    {
      v77 = v64;
      v131 = *(v69 + 16);
      sub_1A3A2EA50();
      swift_getWitnessTable();
      v78 = v69;
      v79 = v106;
      sub_1A3A31BA0();
      v80 = v79;
      v81 = v107;
      if ((*(v107 + 48))(v79, 1, v117) == 1)
      {
        (*(v103 + 8))(v79, v104);

        v74 = v129;
        v75 = v78;
      }

      else
      {
        v82 = v105;
        (*(v81 + 32))(v105, v80, v117);

        v106 = v96;
        v131 = *(v78 + 16);
        MEMORY[0x1EEE9AC00](v83);
        v84 = v126;
        v96[-4] = v130;
        v96[-3] = v84;
        v96[-2] = v128;
        v96[-1] = v82;
        sub_1A3A2EA50();
        v85 = sub_1A3A31940();

        v74 = v129;
        if (v85)
        {
          sub_1A3A2F4B0();
          v86 = v96[0];
          (v96[0])(v127, v52, v76);
          sub_1A3A320A0();
          v86(v74, v52, v76);
        }

        (*(v81 + 8))(v82, v117);
        v73 = v118;
        v75 = v125;
      }

      v64 = v77;
    }

    LODWORD(v125) = v68 <= v72;
    v87 = v109;
    (v109)(v52, v127, v76);
    (v87)(v64, v74, v76);
    v88 = v116;
    (*(v115 + 16))(v116, v122, v73);
    v89 = v113;
    sub_1A39F47A8(v52, v64, v88, v113);
    v90 = v52;
    v91 = v120;
    v92 = v121;
    (*(v120 + 56))(v89, 0, 1, v121);
    v93 = v100;
    swift_beginAccess();
    (*(v101 + 40))(v75 + v93, v89, v114);
    swift_endAccess();
    sub_1A39F34EC(v125);
    v94 = v127;
    (v87)(v90, v127, v76);
    sub_1A3A2F4C0();
    v95 = v108;
    v108(v119, v76);
    (*(v91 + 8))(v99, v92);
    v95(v129, v76);
    return (v95)(v94, v76);
  }
}

uint64_t sub_1A39F4534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a1;
  v24 = a3;
  v25 = a4;
  v28 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v23 = a5;
  type metadata accessor for SpringModel.SpringAttachment();
  sub_1A3A2F4B0();
  v20 = *(v8 + 16);
  v20(v13, v24, AssociatedTypeWitness);
  v20(v10, v25, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1A3A310E0();
  v21 = *(v8 + 8);
  v21(v10, AssociatedTypeWitness);
  v21(v13, AssociatedTypeWitness);
  v21(v16, AssociatedTypeWitness);
  sub_1A3A32090();
  return (v21)(v19, AssociatedTypeWitness);
}

uint64_t sub_1A39F47A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);
  v9(a4, a1, AssociatedTypeWitness);
  v10 = type metadata accessor for SpringModel.State();
  v9(a4 + *(v10 + 44), a2, AssociatedTypeWitness);
  v11 = *(v10 + 48);
  v12 = sub_1A3A2ECE0();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_1A39F48D8()
{
  swift_getKeyPath();
  sub_1A39F49D4();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1A39F497C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A39F48D8();
  *a1 = result & 1;
  return result;
}

char *sub_1A39F4B64()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[*(*v0 + 112)], v2);
  v3(&v0[*(*v0 + 120)], v2);
  v4 = *(*v0 + 136);
  type metadata accessor for SpringModel.State();
  v5 = sub_1A3A31DE0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 152);
  v7 = sub_1A3A2F0C0();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t sub_1A39F4CF0()
{
  sub_1A39F4B64();

  return swift_deallocClassInstance();
}

uint64_t sub_1A39F4D80()
{
  result = sub_1A3A310F0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A39F4E08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A3A310F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1A39F5048(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A3A310F0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1A39F532C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1A3A2ECE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A39F53C8(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = sub_1A3A2ECE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 + v11;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = ((v10 + v12 + (v14 & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v24 = *(v5 + 48);

          return v24(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = *(v8 + 48);

          return v22((((a1 + v14) & ~v11) + v10 + v12) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1A39F566C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v24 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_1A3A2ECE0() - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v7 + 80);
  v14 = *(v9 + 80);
  v15 = ((v11 + v14 + ((v11 + v13) & ~v13)) & ~v14) + *(v9 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v8 >= v10)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v9 + 56);

    v22(((&a1[v11 + v13] & ~v13) + v11 + v14) & ~v14, a2);
  }
}

uint64_t sub_1A39F599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a7;
  v37 = a8;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v38 = a9;
  v31 = sub_1A3A30450();
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A39F6A84();
  v14 = sub_1A3A2F730();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  sub_1A39F48D8();
  sub_1A3A30440();
  v21 = swift_allocObject();
  v22 = v33;
  v21[2] = a4;
  v21[3] = v22;
  v23 = a6;
  v25 = v36;
  v24 = v37;
  v21[4] = a6;
  v21[5] = v25;
  v21[6] = v24;
  v21[7] = a1;
  v26 = v35;
  v21[8] = v34;
  v21[9] = v26;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39F5E9C(v13, sub_1A39F6ADC, v21, v31, a4, v32, v23);
  v39 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_1A3964BD0(v17, v14, WitnessTable);
  v28 = *(v15 + 8);
  v28(v17, v14);
  sub_1A3964BD0(v20, v14, WitnessTable);
  return (v28)(v20, v14);
}

uint64_t sub_1A39F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v29 = a7;
  v27[0] = a6;
  v27[1] = a2;
  v27[2] = a4;
  v30 = a8;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = sub_1A3A2ECE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28);
  sub_1A3A2F700();
  sub_1A39F36F4(v19, v23);
  (*(v17 + 8))(v19, v16);
  v28(v23);
  (*(v20 + 8))(v23, v27[0]);
  v24 = v29;
  sub_1A3964BD0(v12, a5, v29);
  v25 = *(v10 + 8);
  v25(v12, a5);
  sub_1A3964BD0(v15, a5, v24);
  return (v25)(v15, a5);
}

uint64_t sub_1A39F5E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1A3A2F720();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_1A39F6010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a4;
  v47 = a8;
  v43 = a6;
  v44 = a3;
  v48 = a9;
  v42 = a13;
  v39 = a11;
  v40 = a12;
  v38 = a10;
  v17 = sub_1A3A30450();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A39F6A84();
  v45 = v17;
  v41 = v20;
  v21 = sub_1A3A2F730();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  if (sub_1A39F48D8())
  {
    sub_1A39F48D8();
  }

  sub_1A3A30440();
  v28 = swift_allocObject();
  v29 = v43;
  v28[2] = a5;
  v28[3] = v29;
  v28[4] = a7;
  v30 = v47;
  v31 = v38;
  v32 = v39;
  v28[5] = v47;
  v28[6] = v31;
  v33 = v40;
  v28[7] = v32;
  v28[8] = v33;
  v28[9] = v42;
  v28[10] = a1;
  v34 = v44;
  v28[11] = a2;
  v28[12] = v34;
  v28[13] = v46;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39F5E9C(v19, sub_1A39F6C48, v28, v45, a5, v41, v30);
  v49 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_1A3964BD0(v24, v21, WitnessTable);
  v36 = *(v22 + 8);
  v36(v24, v21);
  sub_1A3964BD0(v27, v21, WitnessTable);
  return (v36)(v27, v21);
}

uint64_t sub_1A39F62CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a8;
  v37 = a2;
  v38 = a7;
  v41 = a5;
  v42 = a4;
  v40 = a3;
  v47 = a9;
  v10 = *(a6 - 8);
  v45 = a6;
  v46 = v10;
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v34 - v13;
  v14 = sub_1A3A2ECE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v34 = *(v24 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28);
  sub_1A3A2F700();
  sub_1A39F36F4(v17, v23);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_1A3A2F700();
  sub_1A39F36F4(v17, &v23[v34]);
  v25(v17, v14);
  v26 = v35;
  (*(v35 + 16))(v20, v23, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v39;
  v42(v20, &v20[v27]);
  (*(v26 + 8))(v23, TupleTypeMetadata2);
  (*(*(v36 - 8) + 8))(&v20[v27]);
  (*(*(v38 - 8) + 8))(v20);
  v30 = v43;
  v29 = v44;
  v31 = v45;
  sub_1A3964BD0(v28, v45, v44);
  v32 = *(v46 + 8);
  v32(v28, v31);
  sub_1A3964BD0(v30, v31, v29);
  return (v32)(v30, v31);
}

uint64_t sub_1A39F66E8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a6;
  v29 = a5;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = sub_1A3A2F710();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v9)
  {
    (*(v8 + 16))(v11, v25, v7);
    v27(v11);
    (*(v8 + 8))(v11, v7);
    v22 = v29;
    sub_1A3964BD0(v15, a4, v29);
    v23 = *(v12 + 8);
    v23(v15, a4);
    sub_1A3964BD0(v18, a4, v22);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A39F69E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A39F6A84()
{
  result = qword_1ED9995C0[0];
  if (!qword_1ED9995C0[0])
  {
    sub_1A3A30450();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9995C0);
  }

  return result;
}

uint64_t sub_1A39F6B20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A39F6B5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A39F6BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A39F6CC8@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = 0x80000001A3AA7F60;
    if (qword_1ED996468 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED99D880;
    sub_1A3A2EA60();
    v6 = sub_1A3A30DD0();
    v7 = 0xD000000000000027;
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      v5 = 0;
      v6 = 0;
      v4 = 0xEF6C6C69662E6873;
      v7 = 0x616C732E746C6F62;
    }

    else
    {
      if (a2 != 1)
      {
        result = sub_1A3A321F0();
        __break(1u);
        return result;
      }

      v5 = 0;
      v6 = 0;
      v4 = 0xE90000000000006CLL;
      v7 = 0x6C69662E746C6F62;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xD000000000000019;
    v4 = 0x80000001A3AA7F40;
  }

  *a3 = v7;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  type metadata accessor for ChromeElementIcon();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39F6E4C()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0xE400000000000000;
    v3 = 1869903169;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 6710863;
LABEL_7:
    MEMORY[0x1A58F7770](v3, v2);

    return 0xD000000000000014;
  }

  if (v1 == 1)
  {
    v2 = 0xE200000000000000;
    v3 = 28239;
    goto LABEL_7;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A39F6F54()
{
  result = qword_1EB100D50;
  if (!qword_1EB100D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D50);
  }

  return result;
}

uint64_t sub_1A39F6FA8(unint64_t a1)
{
  if (a1 < 3)
  {
    return 2 - a1;
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA5D10);
  type metadata accessor for CAMFlashMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A39F70B4(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v18 = a5;
  v9 = sub_1A3A2F1E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    *v13 = a1;
    v13[1] = a2;
    (*(v10 + 104))(v13, *a4, v9, v11);
    v14 = sub_1A3A2F200();
    (*(v10 + 8))(v13, v9);
    return v14;
  }

  else
  {
    v16 = v18;

    return v16(a1, a2, v11);
  }
}

uint64_t type metadata accessor for ChromePadView()
{
  result = qword_1ED9996A0;
  if (!qword_1ED9996A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39F727C()
{
  sub_1A39F72E8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A39F72E8()
{
  if (!qword_1ED9996B0)
  {
    type metadata accessor for ChromeViewModel();
    v0 = sub_1A3A312E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9996B0);
    }
  }
}

unint64_t sub_1A39F73AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 48);
  *(a2 + 24) = v7;
  return sub_1A38BCF64(v4, v5, v6, v7);
}

uint64_t sub_1A39F7468(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1A38BCF64(*a1, v2, v3, v4);
  return sub_1A38EDFE0(v1, v2, v3, v4);
}

uint64_t sub_1A39F74CC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ChromePadView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D58);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  *v8 = sub_1A3A31480();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D60);
  sub_1A39F7A88(v1, v8 + *(v10 + 44));
  sub_1A39F8C50(v1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1A39F8CB4(v5, v12 + v11);
  v13 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D68) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1A39F8D18;
  v13[3] = v12;
  sub_1A39F8C50(v1, v5);
  v14 = swift_allocObject();
  sub_1A39F8CB4(v5, v14 + v11);
  v15 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D70) + 36);
  v16 = *MEMORY[0x1E697BE30];
  v17 = sub_1A3A2F540();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = type metadata accessor for ScenePhaseModifier(0);
  v15[v18[5]] = 1;
  v19 = &v15[v18[6]];
  *v19 = sub_1A39F96A4;
  *(v19 + 1) = v14;
  v20 = &v15[v18[7]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *&v20[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  swift_storeEnumTagMultiPayload();
  v22 = sub_1A3A30DD0();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D78) + 36)) = v22;
  v44 = sub_1A3A314E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  sub_1A3A312A0();
  v23 = v46;
  swift_getKeyPath();
  v46 = v23;
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v24 = *(v23 + 24);
  v25 = *(v23 + 32);
  v26 = *(v23 + 40);
  LOBYTE(v22) = *(v23 + 48);
  sub_1A38BCF64(v24, v25, v26, v22);

  v27 = v8 + *(v6 + 36);
  *v27 = v44;
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  v27[32] = v22;
  sub_1A3A312A0();
  type metadata accessor for ChromeViewModel();
  sub_1A39F8D70();
  v28 = v45;
  sub_1A3A30980();

  sub_1A388F740(v8, &qword_1EB100D58);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DC0) + 36));
  v30 = v28;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF08) + 28);
  v32 = *MEMORY[0x1E697DBA8];
  v33 = sub_1A3A2F5B0();
  (*(*(v33 - 8) + 104))(v29 + v31, v32, v33);
  *v29 = swift_getKeyPath();
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DC8) + 36));
  *v34 = 0x77656956746F6F52;
  v34[1] = 0xE800000000000000;
  v35 = sub_1A3A2FAA0();
  LOBYTE(v29) = sub_1A3A30610();
  v36 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DD0) + 36);
  *v36 = v35;
  *(v36 + 8) = v29;
  KeyPath = swift_getKeyPath();
  v38 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DD8) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8) + 28);
  v40 = *MEMORY[0x1E697E7D0];
  v41 = sub_1A3A2F9F0();
  result = (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = KeyPath;
  return result;
}

uint64_t sub_1A39F7A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DE0);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v66 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DE8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DF0);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = (&v66 - v14);
  v15 = type metadata accessor for ChromePadView();
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = v16;
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A3A2F570();
  v66 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF50);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v66 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF58);
  v21 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v75 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v28 = a1;
  sub_1A3A312A0();
  v29 = v91;
  swift_getKeyPath();
  v91 = v29;
  v72 = sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  v32 = *(v29 + 40);
  v33 = *(v29 + 48);
  sub_1A38BCF64(v30, v31, v32, *(v29 + 48));

  if (v33 == 255)
  {
    v43 = 1;
    v35 = v28;
    v44 = v74;
  }

  else
  {
    sub_1A38BC250(v30, v31, v32, v33);
    sub_1A3A30DD0();
    v34 = sub_1A3A30E10();

    v91 = v34;
    v92 = 0;
    sub_1A3A2F560();
    v35 = v28;
    v36 = v90;
    sub_1A39F8C50(v28, v90);
    v37 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v38 = swift_allocObject();
    sub_1A39F8CB4(v36, v38 + v37);
    v39 = v68;
    sub_1A3A31240();

    (*(v66 + 8))(v19, v17);
    sub_1A3A2F660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF70);
    sub_1A399F5B0();
    sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50);
    v40 = v67;
    v41 = v70;
    sub_1A3A30AE0();
    (*(v69 + 8))(v39, v41);

    v42 = v74;
    (*(v21 + 32))(v27, v40, v74);
    v43 = 0;
    v44 = v42;
  }

  (*(v21 + 56))(v27, v43, 1, v44);
  v45 = sub_1A3A2FF40();
  v46 = v76;
  *v76 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E08);
  sub_1A39F86DC(v46 + *(v47 + 44));
  sub_1A3A30DA0();
  v71 = v27;
  sub_1A3A312A0();
  v48 = v91;
  swift_getKeyPath();
  v91 = v48;
  sub_1A3A2F080();

  v49 = sub_1A3A30E10();

  v91 = v49;
  v50 = v90;
  sub_1A39F8C50(v35, v90);
  v51 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v52 = swift_allocObject();
  sub_1A39F8CB4(v50, v52 + v51);
  v53 = v81;
  sub_1A3A309D0();

  v54 = sub_1A3A2FAA0();
  LOBYTE(v51) = sub_1A3A30610();
  v55 = v79;
  (*(v83 + 32))(v79, v53, v84);
  v56 = v55 + *(v80 + 36);
  *v56 = v54;
  *(v56 + 8) = v51;
  v57 = v77;
  sub_1A388F670(v55, v77, &qword_1EB100DE8);
  *(v57 + *(v78 + 36)) = 0x3FF0000000000000;
  v58 = v57;
  v59 = v85;
  sub_1A388F670(v58, v85, &qword_1EB100DF0);
  v60 = v75;
  sub_1A388F6D8(v27, v75, &qword_1EB100E00);
  v61 = v82;
  sub_1A388F6D8(v46, v82, &qword_1EB100DF8);
  v62 = v86;
  sub_1A388F6D8(v59, v86, &qword_1EB100DF0);
  v63 = v87;
  sub_1A388F6D8(v60, v87, &qword_1EB100E00);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E10);
  sub_1A388F6D8(v61, v63 + *(v64 + 48), &qword_1EB100DF8);
  sub_1A388F6D8(v62, v63 + *(v64 + 64), &qword_1EB100DF0);
  sub_1A388F740(v59, &qword_1EB100DF0);
  sub_1A388F740(v46, &qword_1EB100DF8);
  sub_1A388F740(v71, &qword_1EB100E00);
  sub_1A388F740(v62, &qword_1EB100DF0);
  sub_1A388F740(v61, &qword_1EB100DF8);
  return sub_1A388F740(v60, &qword_1EB100E00);
}

uint64_t sub_1A39F8540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  sub_1A3A312A0();
  swift_getKeyPath();
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v9 + 48) != 255)
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v1 = *(v9 + 24);
    v0 = *(v9 + 32);
    v2 = *(v9 + 40);
    v3 = *(v9 + 48);
    sub_1A38BCF64(v1, v0, v2, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v3 == 1)
    {
      if (v1 == 35)
      {
        v4 = 35;
      }

      else
      {
        sub_1A38F6EF8(v1, 0x23uLL);
        v4 = v1;
      }

      v5 = v0;
      v6 = v2;
      v7 = 1;
      goto LABEL_9;
    }

    if (v3 != 255)
    {
      v4 = v1;
      v5 = v0;
      v6 = v2;
      v7 = v3;
LABEL_9:
      sub_1A38BC250(v4, v5, v6, v7);
    }
  }
}

uint64_t sub_1A39F86DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E18);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  sub_1A3A312B0();
  swift_getKeyPath();
  sub_1A3A312D0();

  (*(v3 + 8))(v5, v2);
  v24 = v22[1];
  v25[0] = v23[0];
  *(v25 + 9) = *(v23 + 9);
  sub_1A3A312A0();
  sub_1A3A2EA60();

  v13 = sub_1A392A508();

  sub_1A392EB00(&v24, v13 & 1, v12);
  v14 = sub_1A3A30650();
  sub_1A3A2F520();
  v15 = &v12[*(v7 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_1A388F6D8(v12, v9, &qword_1EB100E18);
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E20);
  sub_1A388F6D8(v9, a1 + *(v20 + 48), &qword_1EB100E18);
  sub_1A388F740(v12, &qword_1EB100E18);
  return sub_1A388F740(v9, &qword_1EB100E18);
}

uint64_t sub_1A39F896C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  sub_1A3A312A0();
  swift_getKeyPath();
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v0 = *(v4 + 666);

  if (v0 == 1)
  {
    sub_1A3A312A0();
    v2 = *(v4 + 1224);
    v3 = *(v4 + 1232);
    __swift_project_boxed_opaque_existential_1((v4 + 1200), v2);
    (*(v3 + 8))(2, 0, 0, 160, v4, v2, v3);
  }

  return result;
}

uint64_t sub_1A39F8AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  sub_1A3A312A0();
  swift_getKeyPath();
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v9 + 48) != 255)
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v1 = *(v9 + 24);
    v0 = *(v9 + 32);
    v2 = *(v9 + 40);
    v3 = *(v9 + 48);
    sub_1A38BCF64(v1, v0, v2, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v3 == 1)
    {
      if (v1 == 35)
      {
        v4 = 35;
      }

      else
      {
        sub_1A38F6EF8(v1, 0x23uLL);
        v4 = v1;
      }

      v5 = v0;
      v6 = v2;
      v7 = 1;
      goto LABEL_9;
    }

    if (v3 != 255)
    {
      v4 = v1;
      v5 = v0;
      v6 = v2;
      v7 = v3;
LABEL_9:
      sub_1A38BC250(v4, v5, v6, v7);
    }
  }
}

uint64_t sub_1A39F8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromePadView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A39F8CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromePadView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39F8D70()
{
  result = qword_1EB100D80;
  if (!qword_1EB100D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D58);
    sub_1A39F8E28();
    sub_1A38A08F8(&qword_1EB100DB0, &qword_1EB100DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D80);
  }

  return result;
}

unint64_t sub_1A39F8E28()
{
  result = qword_1EB100D88;
  if (!qword_1EB100D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D78);
    sub_1A39F8EE0();
    sub_1A38A08F8(qword_1ED996740, &qword_1EB0FCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D88);
  }

  return result;
}

unint64_t sub_1A39F8EE0()
{
  result = qword_1EB100D90;
  if (!qword_1EB100D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D70);
    sub_1A39F8F9C();
    sub_1A39F9054(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D90);
  }

  return result;
}

unint64_t sub_1A39F8F9C()
{
  result = qword_1EB100D98;
  if (!qword_1EB100D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D68);
    sub_1A38A08F8(&qword_1EB100DA0, &qword_1EB100DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D98);
  }

  return result;
}

uint64_t sub_1A39F9054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A39F90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A39F91BC()
{
  type metadata accessor for ChromePadView();

  return sub_1A39F896C();
}

uint64_t objectdestroyTm_17()
{
  v1 = *(type metadata accessor for ChromePadView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A39F92F4()
{
  type metadata accessor for ChromePadView();

  return sub_1A39F8540();
}

unint64_t sub_1A39F9364()
{
  result = qword_1EB100E28;
  if (!qword_1EB100E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DD8);
    sub_1A39F941C();
    sub_1A38A08F8(&qword_1EB0FF9B0, &qword_1EB0FF9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E28);
  }

  return result;
}

unint64_t sub_1A39F941C()
{
  result = qword_1EB100E30;
  if (!qword_1EB100E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DD0);
    sub_1A39F94A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E30);
  }

  return result;
}

unint64_t sub_1A39F94A8()
{
  result = qword_1EB100E38;
  if (!qword_1EB100E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DC8);
    sub_1A39F9560();
    sub_1A38A08F8(&qword_1EB100E50, &qword_1EB100E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E38);
  }

  return result;
}

unint64_t sub_1A39F9560()
{
  result = qword_1EB100E40;
  if (!qword_1EB100E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D58);
    type metadata accessor for ChromeViewModel();
    sub_1A39F8D70();
    sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB100E48, &qword_1EB0FFF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E40);
  }

  return result;
}

uint64_t type metadata accessor for ChromeCircularSymbolButton()
{
  result = qword_1ED999738;
  if (!qword_1ED999738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39F971C()
{
  sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
    if (v1 <= 0x3F)
    {
      sub_1A3969A58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A39F983C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66[1] = a1;
  v75 = sub_1A3A2FEE0();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v76 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66[0] = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v66 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v68 = v66 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v66 - v11;
  v13 = type metadata accessor for ChromeCircularSymbolButton();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E60);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v66 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E68);
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v20 = v66 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E70);
  MEMORY[0x1EEE9AC00](v72);
  v74 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = v66 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v71 = v66 - v25;
  sub_1A39FBD84(v2, v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeCircularSymbolButton);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  sub_1A39FB920(v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v79 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E78);
  sub_1A39FB9EC();
  sub_1A3A30FE0();
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EA8) + 36)] = 0;
  v28 = &v18[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EB0);
  sub_1A3A2FC40();
  *v28 = 0;
  v29 = sub_1A39FBBE8();
  sub_1A3A30BC0();
  sub_1A388F740(v18, &qword_1EB100E60);
  v30 = *(v2 + 24);
  v31 = *(v2 + 32);
  sub_1A3A2EA60();
  v32 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    v34 = v76;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v77 + 8))(v34, v75);
    v32 = v80;
  }

  v35 = *v2;
  swift_getKeyPath();
  v80 = v32;
  v78 = sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (!*(v32 + 1192))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1A3A2EA60();
  v37 = sub_1A38BC058(v35);

  (*(v37 + 56))(v38);

  sub_1A3A2EA50();
  sub_1A3890834(v12);
  v80 = v16;
  v81 = v29;
  swift_getOpaqueTypeConformance2();
  v39 = v73;
  sub_1A3A30B70();

  (*(v69 + 8))(v20, v39);
  sub_1A3A2EA60();
  v40 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v41 = sub_1A3A305C0();
    sub_1A3A2F270();

    v42 = v35;
    v43 = v76;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    v44 = v43;
    v35 = v42;
    (*(v77 + 8))(v44, v75);
    v40 = v80;
  }

  swift_getKeyPath();
  v80 = v40;
  sub_1A3A2F080();

  v45 = v71;
  v46 = v70;
  if (!*(v40 + 1192))
  {
    goto LABEL_15;
  }

  sub_1A3A2EA60();
  v73 = v35;
  v47 = sub_1A38BC058(v35);

  v49 = v68;
  (*(v47 + 56))(v48);

  v50 = *(v49 + 16);
  v51 = *(v49 + 24);
  sub_1A3A2EA50();
  sub_1A3890834(v49);
  v80 = v50;
  v81 = v51;
  sub_1A389FD78();
  v52 = v74;
  sub_1A3A2FA10();

  sub_1A388F740(v52, &qword_1EB100E70);
  sub_1A3A2EA60();
  v53 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v54 = sub_1A3A305C0();
    sub_1A3A2F270();

    v55 = v76;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v77 + 8))(v55, v75);
    v53 = v80;
  }

  swift_getKeyPath();
  v80 = v53;
  sub_1A3A2F080();

  if (!*(v53 + 1192))
  {
    goto LABEL_16;
  }

  sub_1A3A2EA60();
  v56 = sub_1A38BC058(v73);

  v58 = v67;
  (*(v56 + 56))(v57);

  sub_1A3A2EA50();
  sub_1A3890834(v58);
  sub_1A3A2FA70();

  sub_1A388F740(v46, &qword_1EB100E70);
  sub_1A3A2EA60();
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v59 = sub_1A3A305C0();
    sub_1A3A2F270();

    v60 = v76;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v77 + 8))(v60, v75);
    v30 = v80;
  }

  swift_getKeyPath();
  v80 = v30;
  sub_1A3A2F080();

  if (*(v30 + 1192))
  {
    sub_1A3A2EA60();
    v61 = sub_1A38BC058(v73);

    v63 = v66[0];
    (*(v61 + 56))(v62);

    v64 = *(v63 + 32);
    v65 = *(v63 + 40);
    sub_1A3A2EA50();
    sub_1A3890834(v63);
    v80 = v64;
    v81 = v65;
    sub_1A3A2FA20();

    return sub_1A388F740(v45, &qword_1EB100E70);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1A39FA2F4(uint64_t a1)
{
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_1A3A2EA60();
  v11 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v30;
  }

  v28 = v3;
  v29 = v2;
  v13 = *a1;
  swift_getKeyPath();
  v30 = v11;
  sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (v11[149])
  {
    sub_1A3A2EA60();
    v14 = sub_1A38BC058(v13);

    (*(v14 + 56))(v15);

    v16 = *&v8[*(v6 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v8);
    v17 = v16(*(a1 + 8), 0);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LODWORD(v14) = v22;

    if (v14 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((v10 & 1) == 0)
      {
        sub_1A3A31C30();
        v24 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v28 + 8))(v5, v29);
        v9 = v30;
      }

      v25 = v9[153];
      v26 = v9[154];
      __swift_project_boxed_opaque_existential_1(v9 + 150, v25);
      (*(v26 + 8))(v17, v19, v21, v23, v9, v25, v26);

      sub_1A3890EA8(v17, v19, v21, v23);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A39FA690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v124 = sub_1A3A31170();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v122 = &v102 - v5;
  v104 = sub_1A3A31370();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1A3A31430();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v102 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v102 - v13;
  v15 = sub_1A3A30090();
  v16 = *(v15 - 8);
  v134 = v15;
  v135 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A3A2FEE0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v127);
  v112 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC0);
  MEMORY[0x1EEE9AC00](v128);
  v133 = &v102 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EA0);
  MEMORY[0x1EEE9AC00](v111);
  v130 = &v102 - v27;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E88);
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v102 - v28;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EE0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v102 - v29;
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  sub_1A3A2EA60();
  v32 = v30;
  v126 = v31;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    v34 = v129;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v20 + 8))(v34, v19);
    v32 = v137;
  }

  v105 = v20;
  v106 = v19;
  v35 = *a1;
  swift_getKeyPath();
  *&v137 = v32;
  sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (!*(v32 + 1192))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1A3A2EA60();
  v108 = v35;
  v37 = sub_1A38BC058(v35);

  (*(v37 + 56))(v38);

  v39 = v127;
  v40 = v133;
  sub_1A39FBD84(&v25[*(v127 + 36)], v133, type metadata accessor for ChromeElementIcon);
  sub_1A3890834(v25);
  sub_1A39FB5D4(v18);
  sub_1A391163C(v18);
  v41 = *(v135 + 8);
  v110 = v135 + 8;
  v109 = v41;
  v41(v18, v134);
  v42 = sub_1A3A306B0();
  (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
  v43 = sub_1A3A30760();
  sub_1A388F740(v14, &qword_1EB0FD2B8);
  KeyPath = swift_getKeyPath();
  v45 = (v40 + *(v128 + 36));
  *v45 = KeyPath;
  v45[1] = v43;
  sub_1A3A2EA60();
  if ((v126 & 1) == 0)
  {
    sub_1A3A31C30();
    v46 = sub_1A3A305C0();
    sub_1A3A2F270();

    v47 = v129;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v105 + 8))(v47, v106);
    v30 = v137;
  }

  swift_getKeyPath();
  *&v137 = v30;
  sub_1A3A2F080();

  if (!*(v30 + 1192))
  {
    goto LABEL_22;
  }

  sub_1A3A2EA60();
  v48 = sub_1A38BC058(v108);

  v50 = v112;
  (*(v48 + 56))(v49);

  LOBYTE(v48) = *(v50 + *(v39 + 40));
  sub_1A3890834(v50);
  v51 = v130;
  sub_1A388F670(v133, v130, &qword_1EB0FEAC0);
  *(v51 + *(v111 + 36)) = v48;
  v52 = a1;
  sub_1A39FB5D4(v18);
  v53 = v135;
  v54 = *(v135 + 16);
  v55 = v113;
  v56 = v18;
  v57 = v18;
  v58 = v134;
  v54(v113, v56, v134);
  v59 = *(v53 + 56);
  v59(v55, 0, 1, v58);
  v60 = sub_1A3A31CA0();
  sub_1A3912958();
  v62 = v61;

  v63 = v109;
  v109(v57, v58);
  v135 = v62;
  sub_1A39FB5D4(v57);
  v54(v55, v57, v58);
  v59(v55, 0, 1, v58);
  v64 = sub_1A3A31CA0();
  sub_1A3912958();

  v63(v57, v58);
  sub_1A3A31480();
  sub_1A3A2F780();
  v65 = v132;
  sub_1A388F670(v130, v132, &qword_1EB100EA0);
  v66 = (v65 + *(v131 + 36));
  v67 = v138;
  *v66 = v137;
  v66[1] = v67;
  v66[2] = v139;
  v68 = *(v52 + 8);
  v69 = v52;
  v70 = sub_1A39FB7C4();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v71 = off_1ED997FE0;
  swift_getKeyPath();
  v136 = v71;
  sub_1A39FBF54(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v72 = v71[2];
  sub_1A3A2EA60();
  v73 = sub_1A394F77C(v68);
  v74 = sub_1A394FA74(v68);
  swift_getKeyPath();
  v136 = v72;
  sub_1A39FBF54(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v75 = sub_1A394FC58(0xEu);
  swift_getKeyPath();
  v136 = v72;
  sub_1A3A2F080();

  v76 = sub_1A394FC58(0xBu);

  v107 = v69;
  if (v73 - 2 >= 3)
  {
    if (v73 >= 2u)
    {
      v77 = v117;
      sub_1A3A31380();
    }

    else
    {
      if (v76)
      {
        v78 = 0x10000;
      }

      else
      {
        v78 = 0;
      }

      v79 = v78 | (v73 << 24);
      if (v75)
      {
        v80 = 256;
      }

      else
      {
        v80 = 0;
      }

      v81 = v102;
      sub_1A3908D0C(v70 & 1, (v79 | v80) & 0xFFFFFFFE | v74 & 1, v102);
      v77 = v117;
      sub_1A3A31390();
      (*(v103 + 8))(v81, v104);
    }
  }

  else
  {
    LOBYTE(v136) = v74 & 1;
    BYTE1(v136) = v75 & 1;
    BYTE2(v136) = v76 & 1;
    BYTE3(v136) = v73;
    sub_1A38BE1AC();
    v77 = v117;
    sub_1A3A31420();
  }

  v82 = v119;
  v83 = v118;
  v84 = v120;
  (*(v119 + 32))(v118, v77, v120);
  v85 = v121;
  sub_1A3A31160();
  v86 = v122;
  sub_1A3A31150();
  v87 = *(v123 + 8);
  v88 = v124;
  v87(v85, v124);
  sub_1A39FBAD0();
  sub_1A3890F84();
  v89 = v114;
  v90 = v132;
  sub_1A3A309A0();
  v87(v86, v88);
  (*(v82 + 8))(v83, v84);
  sub_1A388F740(v90, &qword_1EB100E88);
  v91 = sub_1A3A30610();
  sub_1A3A2F520();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v125;
  (*(v115 + 32))(v125, v89, v116);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E78);
  v101 = v100 + *(result + 36);
  *v101 = v91;
  *(v101 + 8) = v93;
  *(v101 + 16) = v95;
  *(v101 + 24) = v97;
  *(v101 + 32) = v99;
  *(v101 + 40) = 0;
  return result;
}

uint64_t sub_1A39FB5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChromeCircularSymbolButton();
  sub_1A39FBDEC(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A39FB7C4()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeCircularSymbolButton() + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A39FB920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeCircularSymbolButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A39FB984()
{
  v1 = *(type metadata accessor for ChromeCircularSymbolButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A39FA2F4(v2);
}

unint64_t sub_1A39FB9EC()
{
  result = qword_1EB100E80;
  if (!qword_1EB100E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E88);
    sub_1A39FBAD0();
    sub_1A3890F84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E80);
  }

  return result;
}

unint64_t sub_1A39FBAD0()
{
  result = qword_1EB100E90;
  if (!qword_1EB100E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E88);
    sub_1A39FBB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E90);
  }

  return result;
}

unint64_t sub_1A39FBB5C()
{
  result = qword_1EB100E98;
  if (!qword_1EB100E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100EA0);
    sub_1A393AED4();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E98);
  }

  return result;
}

unint64_t sub_1A39FBBE8()
{
  result = qword_1EB100EB8;
  if (!qword_1EB100EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E60);
    sub_1A39FBCA0();
    sub_1A38A08F8(&qword_1EB100ED8, &qword_1EB100EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EB8);
  }

  return result;
}

unint64_t sub_1A39FBCA0()
{
  result = qword_1EB100EC0;
  if (!qword_1EB100EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100EA8);
    sub_1A38A08F8(&qword_1EB100EC8, &qword_1EB100ED0);
    sub_1A38A08F8(&qword_1EB0FFE40, &qword_1EB0FFE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EC0);
  }

  return result;
}

uint64_t sub_1A39FBD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39FBDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39FBE5C()
{
  result = qword_1EB100EE8;
  if (!qword_1EB100EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E60);
    sub_1A39FBBE8();
    swift_getOpaqueTypeConformance2();
    sub_1A39FBF54(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EE8);
  }

  return result;
}

uint64_t sub_1A39FBF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A39FBF9C(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if (a1 >= 1.0)
  {
    return 100;
  }

  v2 = round(a1 * 100.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A39FC01C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A39FC0A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v10 = v7 + ((v6 + 8) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_7;
  }

  v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
  if (HIWORD(v13))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v13 <= 0xFF)
    {
      if (v13 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      return v8 + (v10 | v14) + 1;
    }

    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v15 = (a1 + v6 + 8) & ~v6;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v15);
  }

  v17 = *(v15 + v7);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_1A39FC238(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 8) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 8) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
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
  v20 = &a1[v9 + 8] & ~v9;
  if (v7 < 0xFE)
  {
    *(v20 + v10) = a2 + 1;
  }

  else
  {
    v21 = *(v6 + 56);

    v21(v20);
  }
}

uint64_t sub_1A39FC4E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1A3A2FC50();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &OpaqueTypeMetadata2 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A303A0();
  v31 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &OpaqueTypeMetadata2 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v27 = sub_1A39FC91C();
  v9 = *(a1 + 24);
  v41 = v5;
  v42 = v8;
  v43 = v27;
  v44 = v9;
  v29 = MEMORY[0x1E6981208];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = &OpaqueTypeMetadata2 - v10;
  v30 = sub_1A3A30480();
  v12 = sub_1A3A2FA90();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &OpaqueTypeMetadata2 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v28 = &OpaqueTypeMetadata2 - v16;
  sub_1A3A303B0();
  v17 = v27;
  sub_1A398EB18(*v38, v38 + *(a1 + 36), *(v38 + *(a1 + 40)), v5, v8, v27, v9, v11);
  (*(v31 + 8))(v7, v5);
  v18 = v34;
  sub_1A3A2FC40();
  v41 = v5;
  v42 = v8;
  v43 = v17;
  v44 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = OpaqueTypeMetadata2;
  sub_1A3A309C0();
  (*(v35 + 8))(v18, v36);
  (*(v32 + 8))(v11, v20);
  WitnessTable = swift_getWitnessTable();
  v39 = OpaqueTypeConformance2;
  v40 = WitnessTable;
  v22 = swift_getWitnessTable();
  v23 = v28;
  sub_1A3964BD0(v14, v12, v22);
  v24 = *(v33 + 8);
  v24(v14, v12);
  sub_1A3964BD0(v23, v12, v22);
  return (v24)(v23, v12);
}

unint64_t sub_1A39FC91C()
{
  result = qword_1ED999240;
  if (!qword_1ED999240)
  {
    sub_1A3A303A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999240);
  }

  return result;
}

uint64_t sub_1A39FC974(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDC && *(a1 + 8))
  {
    return (*a1 + 2147483613);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 34;
  if (v4 >= 0x24)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A39FC9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDD)
  {
    *result = 0;
    *result = a2 - 2147483613;
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 34;
    }
  }

  return result;
}

void *sub_1A39FCA1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1A39FCA4C(unint64_t a1)
{
  if (a1 >= 0x23 && (sub_1A39FCD24(&unk_1F1653CE0, a1) & 1) != 0)
  {
    return 0;
  }

  v3 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v3);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v4 = sub_1A3A31810();
  v5 = sub_1A3A31810();

  v6 = CAMLocalizedFrameworkString(v4, v5);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39FCB74(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1A3A321C0() & 1) == 0)
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

uint64_t sub_1A39FCC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A39FCD24(uint64_t a1, uint64_t a2)
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
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      switch(v6)
      {
        case 0uLL:
          if (v7)
          {
            return 0;
          }

          break;
        case 1uLL:
          if (v7 != 1)
          {
            return 0;
          }

          break;
        case 2uLL:
          if (v7 != 2)
          {
            return 0;
          }

          break;
        case 3uLL:
          if (v7 != 3)
          {
            return 0;
          }

          break;
        case 4uLL:
          if (v7 != 4)
          {
            return 0;
          }

          break;
        case 5uLL:
          if (v7 != 5)
          {
            return 0;
          }

          break;
        case 6uLL:
          if (v7 != 6)
          {
            return 0;
          }

          break;
        case 7uLL:
          if (v7 != 7)
          {
            return 0;
          }

          break;
        case 8uLL:
          if (v7 != 8)
          {
            return 0;
          }

          break;
        case 9uLL:
          if (v7 != 9)
          {
            return 0;
          }

          break;
        case 0xAuLL:
          if (v7 != 10)
          {
            return 0;
          }

          break;
        case 0xBuLL:
          if (v7 != 11)
          {
            return 0;
          }

          break;
        case 0xCuLL:
          if (v7 != 12)
          {
            return 0;
          }

          break;
        case 0xDuLL:
          if (v7 != 13)
          {
            return 0;
          }

          break;
        case 0xEuLL:
          if (v7 != 14)
          {
            return 0;
          }

          break;
        case 0xFuLL:
          if (v7 != 15)
          {
            return 0;
          }

          break;
        case 0x10uLL:
          if (v7 != 16)
          {
            return 0;
          }

          break;
        case 0x11uLL:
          if (v7 != 17)
          {
            return 0;
          }

          break;
        case 0x12uLL:
          if (v7 != 18)
          {
            return 0;
          }

          break;
        case 0x13uLL:
          if (v7 != 19)
          {
            return 0;
          }

          break;
        case 0x14uLL:
          if (v7 != 20)
          {
            return 0;
          }

          break;
        case 0x15uLL:
          if (v7 != 21)
          {
            return 0;
          }

          break;
        case 0x16uLL:
          if (v7 != 22)
          {
            return 0;
          }

          break;
        case 0x17uLL:
          if (v7 != 23)
          {
            return 0;
          }

          break;
        case 0x18uLL:
          if (v7 != 24)
          {
            return 0;
          }

          break;
        case 0x19uLL:
          if (v7 != 25)
          {
            return 0;
          }

          break;
        case 0x1AuLL:
          if (v7 != 26)
          {
            return 0;
          }

          break;
        case 0x1BuLL:
          if (v7 != 27)
          {
            return 0;
          }

          break;
        case 0x1CuLL:
          if (v7 != 28)
          {
            return 0;
          }

          break;
        case 0x1DuLL:
          if (v7 != 29)
          {
            return 0;
          }

          break;
        case 0x1EuLL:
          if (v7 != 30)
          {
            return 0;
          }

          break;
        case 0x1FuLL:
          if (v7 != 31)
          {
            return 0;
          }

          break;
        case 0x20uLL:
          if (v7 != 32)
          {
            return 0;
          }

          break;
        case 0x21uLL:
          if (v7 != 33)
          {
            return 0;
          }

          break;
        case 0x22uLL:
          if (v7 != 34)
          {
            return 0;
          }

          break;
        default:
          if (v7 < 0x23)
          {
            return 0;
          }

          v8 = v5;
          sub_1A38A8F64(*v4);
          sub_1A38A8F64(v8);
          v9 = sub_1A39FCD24(v8, v7);
          sub_1A3890F2C(v7);
          sub_1A3890F2C(v8);
          if ((v9 & 1) == 0)
          {
            return 0;
          }

          break;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1A39FCFA4(uint64_t result, uint64_t a2)
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

uint64_t sub_1A39FD000(uint64_t result, uint64_t a2)
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

uint64_t sub_1A39FD05C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1A3A07E10(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_1A3A07E10(v14, v7);
    if ((sub_1A3A310C0() & 1) == 0)
    {
      sub_1A3A07E80(v7);
      sub_1A3A07E80(v10);
      return 0;
    }

    v17 = *(v4 + 44);
    v18 = *&v10[v17];
    sub_1A3A07E80(v10);
    v19 = *&v7[v17];
    sub_1A3A07E80(v7);
    result = v18 == v19;
    v20 = v18 != v19 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39FD204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChromeElementIcon();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      v9 = 0x80000001A3AA7860;
      v10 = 0xD000000000000011;
      goto LABEL_38;
    case 1:
      v15 = "slider.horizontal.3";
      goto LABEL_23;
    case 2:
    case 16:
      v7 = 0x7669737275632E66;
      v8 = 0xE900000000000065;
      goto LABEL_25;
    case 3:
      v7 = 0x6172746365707361;
      v8 = 0xEB000000006F6974;
      goto LABEL_25;
    case 4:
      v7 = 0x632E6172656D6163;
      v8 = 0xEE006C6F72746E6FLL;
      goto LABEL_25;
    case 5:
      v7 = 0x756E696D73756C70;
      v8 = 0xE900000000000073;
      goto LABEL_25;
    case 6:
      v7 = 0x662E6172656D6163;
      v8 = 0xEE00737265746C69;
      goto LABEL_25;
    case 7:
    case 27:
      v7 = 1953263458;
      v8 = 0xE400000000000000;
      goto LABEL_25;
    case 8:
      v9 = 0x80000001A3AA4290;
      v10 = 0xD00000000000001BLL;
      goto LABEL_38;
    case 9:
      *a2 = 0x632E6E6F73726570;
      *(a2 + 8) = 0xEF7069702E706F72;
      *(a2 + 16) = 1;
      goto LABEL_40;
    case 10:
      sub_1A3A30740();
      sub_1A391A414();
      v16 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 5391432;
      goto LABEL_35;
    case 11:
      v7 = 0x6569762E74786574;
      v8 = 0xEF7265646E696677;
      goto LABEL_25;
    case 12:
      v7 = 0x74732E6F746F6870;
      v8 = 0xEB000000006B6361;
      goto LABEL_25;
    case 13:
      v7 = 6650213;
      v8 = 0xE300000000000000;
      goto LABEL_25;
    case 14:
      v7 = 0x746F68706576696CLL;
      v8 = 0xE90000000000006FLL;
      goto LABEL_25;
    case 15:
      v7 = 0x6D2E6172656D6163;
      v8 = 0xEC0000006F726361;
      goto LABEL_25;
    case 17:
      v18 = "camera.nightmode";
      goto LABEL_33;
    case 18:
      sub_1A3A30740();
      sub_1A391A414();
      v22 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 0x74616D726F46;
      v14 = 0xE600000000000000;
      goto LABEL_36;
    case 19:
      sub_1A3A30740();
      sub_1A391A414();
      v17 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 0x6974756C6F736552;
      v14 = 0xEA00000000006E6FLL;
      goto LABEL_36;
    case 20:
      v15 = "camera.lightcontrol";
LABEL_23:
      v9 = (v15 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000013;
      goto LABEL_38;
    case 21:
      sub_1A3A30740();
      sub_1A391A414();
      v21 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 0x7365526F7250;
      v14 = 0xE600000000000000;
      goto LABEL_36;
    case 22:
    case 30:
      v7 = 0x6B72616D78;
      v8 = 0xE500000000000000;
      goto LABEL_25;
    case 23:
      v7 = 0x322E6E6F73726570;
      v8 = 0xE800000000000000;
      goto LABEL_25;
    case 24:
      v9 = 0x80000001A3AA1CF0;
      v10 = 0xD00000000000001CLL;
      goto LABEL_38;
    case 25:
      v9 = 0x80000001A3AA1D10;
      v10 = 0xD00000000000002DLL;
      goto LABEL_38;
    case 26:
      v18 = "timer.monolinear";
LABEL_33:
      v9 = (v18 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000010;
LABEL_38:
      *a2 = v10;
      *(a2 + 8) = v9;
      goto LABEL_39;
    case 28:
      sub_1A3A30740();
      sub_1A391A414();
      v23 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 5460038;
LABEL_35:
      v14 = 0xE300000000000000;
      goto LABEL_36;
    case 29:
      sub_1A3A30740();
      sub_1A391A414();
      v19 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 779314514;
      v14 = 0xE400000000000000;
      goto LABEL_36;
    case 31:
      v7 = 0x6C616E7265747865;
      v8 = 0xED00006576697264;
LABEL_25:
      *a2 = v7;
      *(a2 + 8) = v8;
LABEL_39:
      *(a2 + 16) = 1;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      goto LABEL_40;
    case 32:
      sub_1A3A30740();
      sub_1A391A414();
      v20 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 0x6F6F5A206F747541;
      v14 = 0xE90000000000006DLL;
      goto LABEL_36;
    case 33:
      sub_1A3A30740();
      sub_1A391A414();
      v11 = CEKFontOfSizeWeightStyle();
      v12 = sub_1A3A307B0();
      v13 = 0x746F52206F747541;
      v14 = 0xED00006E6F697461;
LABEL_36:
      *a2 = v13;
      *(a2 + 8) = v14;
      *(a2 + 16) = v12;
      *(a2 + 24) = 0;
      goto LABEL_40;
    case 34:
LABEL_40:

      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      if (sub_1A39FCD24(&unk_1F1653CE0, a1) & 1) != 0 || (sub_1A39FCD24(&unk_1F1653D10, a1))
      {
        swift_storeEnumTagMultiPayload();
        result = sub_1A3890890(v6, a2);
      }

      else
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_1A3A31F20();

        v26 = 0xD000000000000025;
        v27 = 0x80000001A3AA7790;
        v25 = MEMORY[0x1A58F7830](a1, &type metadata for ChromeElement);
        MEMORY[0x1A58F7770](v25);

        result = sub_1A3A32070();
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1A39FD894(unint64_t a1)
{
  v2 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v2);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x7475706E4978612ELL, 0xED00006C6562614CLL);

  v3 = sub_1A3A31810();
  v4 = sub_1A3A31810();
  v5 = CAMLocalizedFrameworkString(v3, v4);

  v6 = sub_1A3A31850();
  v8 = v7;

  if (v6 == 0x2E656D6F726843 && v8 == 0xE700000000000000)
  {
  }

  else
  {
    v9 = sub_1A3A321C0();

    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
      result = swift_allocObject();
      *(result + 16) = xmmword_1A3A681C0;
      *(result + 32) = v6;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A3A681C0;
  v11 = sub_1A39FCA4C(a1);
  result = v10;
  v8 = v13;
  *(v10 + 32) = v11;
LABEL_7:
  *(result + 40) = v8;
  return result;
}

uint64_t sub_1A39FDA64(uint64_t a1)
{
  result = 0x6E6F69746341;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7473756A6441;
      break;
    case 2:
      result = 0x6572757472657041;
      break;
    case 3:
      result = 0x6152746365707341;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x657275736F707845;
      break;
    case 6:
      result = 0x7265746C6946;
      break;
    case 7:
    case 27:
      result = 0x6873616C46;
      break;
    case 8:
      result = 1885957190;
      break;
    case 9:
      result = 0x504950746E6F7246;
      break;
    case 10:
      result = 5391432;
      break;
    case 11:
      result = 0x616E416567616D49;
      break;
    case 12:
      result = 0x6C65576567616D49;
      break;
    case 13:
      result = 0x69736F50736E654CLL;
      break;
    case 14:
      result = 0x746F68506576694CLL;
      break;
    case 15:
      result = 0x6F7263614DLL;
      break;
    case 16:
      result = 0x6874706544;
      break;
    case 17:
      result = 0x646F4D746867694ELL;
      break;
    case 18:
      result = 0x74616D726F46;
      break;
    case 19:
      result = 0x6974756C6F736552;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
      result = 0x7365526F7250;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0x694C646572616853;
      break;
    case 24:
    case 25:
      result = 0x656C797453;
      break;
    case 26:
      result = 0x72656D6954;
      break;
    case 28:
      result = 0x6172466F65646956;
      break;
    case 29:
      result = 0x7365526F65646956;
      break;
    case 30:
      result = 0x6C65636E6143;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0x546C616974617053;
      break;
    default:
      if (sub_1A39FCD24(&unk_1F1653CE0, a1))
      {
        result = 0xD000000000000013;
      }

      else if (sub_1A39FCD24(&unk_1F1653D10, a1))
      {
        result = 0xD000000000000010;
      }

      else
      {
        sub_1A3A31F20();

        v4 = MEMORY[0x1A58F7830](a1, &type metadata for ChromeElement);
        MEMORY[0x1A58F7770](v4);

        result = sub_1A3A32070();
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1A39FDF1C(uint64_t a1)
{
  v2 = sub_1A3A05F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A39FDF58(uint64_t a1)
{
  v2 = sub_1A3A05F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A39FDF94(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7473756A6461;
      break;
    case 2:
      result = 0x6572757472657061;
      break;
    case 3:
      result = 0x6152746365707361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x657275736F707865;
      break;
    case 6:
      result = 0x7265746C6966;
      break;
    case 7:
      result = 0x6873616C66;
      break;
    case 8:
      result = 1885957222;
      break;
    case 9:
      result = 0x504950746E6F7266;
      break;
    case 10:
      result = 7496808;
      break;
    case 11:
      result = 0x616E416567616D69;
      break;
    case 12:
      result = 0x6C65576567616D69;
      break;
    case 13:
      result = 0x69736F50736E656CLL;
      break;
    case 14:
      result = 0x746F68506576696CLL;
      break;
    case 15:
      result = 0x6F7263616DLL;
      break;
    case 16:
      result = 0x6874706564;
      break;
    case 17:
      result = 0x646F4D746867696ELL;
      break;
    case 18:
      result = 0x726F466F746F6870;
      break;
    case 19:
      v3 = 1953458288;
      goto LABEL_33;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
      result = 0x646E756F706D6F63;
      break;
    case 22:
      result = 0x7365526F7270;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0x694C646572616873;
      break;
    case 25:
      result = 0x6369746E616D6573;
      break;
    case 26:
      result = 0x7974537472616D73;
      break;
    case 27:
      result = 0x72656D6974;
      break;
    case 28:
      result = 0x6863726F74;
      break;
    case 29:
      result = 0x6172466F65646976;
      break;
    case 30:
      v3 = 1701079414;
LABEL_33:
      result = v3 | 0x7365526F00000000;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x546C616974617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A39FE374(void *a1, uint64_t a2)
{
  v200 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101158);
  v198 = *(v3 - 8);
  v199 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v197 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101160);
  v195 = *(v5 - 8);
  v196 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v194 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101168);
  v192 = *(v7 - 8);
  v193 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101170);
  v189 = *(v9 - 8);
  v190 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101178);
  v186 = *(v11 - 8);
  v187 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v96 - v12;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101180);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v96 - v13;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101188);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v96 - v14;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101190);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v96 - v15;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101198);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v96 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011A0);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v96 - v17;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011A8);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v96 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011B0);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v96 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011B8);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v96 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011C0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v96 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011C8);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v96 - v22;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011D0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v96 - v23;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011D8);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v96 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011E0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v96 - v25;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011E8);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v96 - v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011F0);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v96 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011F8);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v96 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101200);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v96 - v29;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101208);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v96 - v30;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101210);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v96 - v31;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101218);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v96 - v32;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101220);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v96 - v33;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101228);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v96 - v34;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101230);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v96 - v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101238);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v96 - v36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101240);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v96 - v37;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101248);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v96 - v38;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101250);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v96 - v39;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101258);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v96 - v40;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101260);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v42 = &v96 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101268);
  v98 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v96 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101270);
  v97 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v96 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101278);
  v50 = *(v49 - 8);
  v202 = v49;
  v203 = v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v96 - v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3A0531C();
  v201 = v52;
  v53 = v200;
  sub_1A3A32330();
  switch(v53)
  {
    case 0:
      LOBYTE(v205) = 0;
      sub_1A3A05F40();
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v97 + 8))(v48, v46);
      goto LABEL_39;
    case 1:
      LOBYTE(v205) = 1;
      sub_1A3A05EEC();
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v98 + 8))(v45, v43);
      goto LABEL_39;
    case 2:
      LOBYTE(v205) = 2;
      sub_1A3A05E98();
      v71 = v201;
      v72 = v202;
      sub_1A3A32170();
      (*(v99 + 8))(v42, v100);
      return (*(v203 + 8))(v71, v72);
    case 3:
      LOBYTE(v205) = 3;
      sub_1A3A05E44();
      v75 = v101;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v102 + 8);
      v58 = v75;
      v59 = &v135;
      goto LABEL_38;
    case 4:
      LOBYTE(v205) = 4;
      sub_1A3A05DF0();
      v66 = v104;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v105 + 8);
      v58 = v66;
      v59 = &v138;
      goto LABEL_38;
    case 5:
      LOBYTE(v205) = 5;
      sub_1A3A05D9C();
      v79 = v107;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v108 + 8);
      v58 = v79;
      v59 = &v141;
      goto LABEL_38;
    case 6:
      LOBYTE(v205) = 6;
      sub_1A3A05D48();
      v82 = v110;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v111 + 8);
      v58 = v82;
      v59 = &v144;
      goto LABEL_38;
    case 7:
      LOBYTE(v205) = 7;
      sub_1A3A05CF4();
      v76 = v113;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v114 + 8);
      v58 = v76;
      v59 = &v147;
      goto LABEL_38;
    case 8:
      LOBYTE(v205) = 8;
      sub_1A3A05CA0();
      v85 = v116;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v117 + 8);
      v58 = v85;
      v59 = &v150;
      goto LABEL_38;
    case 9:
      LOBYTE(v205) = 9;
      sub_1A3A05C4C();
      v68 = v119;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v120 + 8);
      v58 = v68;
      v59 = &v153;
      goto LABEL_38;
    case 10:
      LOBYTE(v205) = 10;
      sub_1A3A05BF8();
      v84 = v122;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v123 + 8);
      v58 = v84;
      v59 = &v156;
      goto LABEL_38;
    case 11:
      LOBYTE(v205) = 11;
      sub_1A3A05BA4();
      v65 = v125;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v126 + 8);
      v58 = v65;
      v59 = &v159;
      goto LABEL_38;
    case 12:
      LOBYTE(v205) = 12;
      sub_1A3A05B50();
      v67 = v128;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v129 + 8);
      v58 = v67;
      v59 = &v162;
      goto LABEL_38;
    case 13:
      LOBYTE(v205) = 13;
      sub_1A3A05AFC();
      v81 = v131;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v132 + 8);
      v58 = v81;
      v59 = &v165;
      goto LABEL_38;
    case 14:
      LOBYTE(v205) = 14;
      sub_1A3A05AA8();
      v64 = v134;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v135 + 8);
      v58 = v64;
      v59 = &v168;
      goto LABEL_38;
    case 15:
      LOBYTE(v205) = 15;
      sub_1A3A05A54();
      v74 = v137;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v138 + 8);
      v58 = v74;
      v59 = &v171;
      goto LABEL_38;
    case 16:
      LOBYTE(v205) = 16;
      sub_1A3A05A00();
      v63 = v140;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v141 + 8);
      v58 = v63;
      v59 = &v174;
      goto LABEL_38;
    case 17:
      LOBYTE(v205) = 17;
      sub_1A3A059AC();
      v77 = v143;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v144 + 8);
      v58 = v77;
      v59 = &v177;
      goto LABEL_38;
    case 18:
      LOBYTE(v205) = 18;
      sub_1A3A05958();
      v83 = v146;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v147 + 8);
      v58 = v83;
      v59 = &v180;
      goto LABEL_38;
    case 19:
      LOBYTE(v205) = 19;
      sub_1A3A05904();
      v87 = v149;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v150 + 8);
      v58 = v87;
      v59 = &v183;
      goto LABEL_38;
    case 20:
      LOBYTE(v205) = 20;
      sub_1A3A058B0();
      v78 = v152;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v153 + 8);
      v58 = v78;
      v59 = &v186;
      goto LABEL_38;
    case 21:
      LOBYTE(v205) = 22;
      sub_1A3A057B4();
      v80 = v155;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v157 + 8);
      v58 = v80;
      v59 = &v190;
      goto LABEL_38;
    case 22:
      LOBYTE(v205) = 23;
      sub_1A3A05760();
      v86 = v161;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v162 + 8);
      v58 = v86;
      v59 = &v195;
      goto LABEL_38;
    case 23:
      LOBYTE(v205) = 24;
      sub_1A3A0570C();
      v88 = v164;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v165 + 8);
      v58 = v88;
      v59 = &v198;
      goto LABEL_38;
    case 24:
      LOBYTE(v205) = 25;
      sub_1A3A056B8();
      v70 = v167;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v168 + 8);
      v58 = v70;
      v59 = &v201;
      goto LABEL_38;
    case 25:
      LOBYTE(v205) = 26;
      sub_1A3A05664();
      v69 = v170;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v171 + 8);
      v58 = v69;
      v59 = &v204;
      goto LABEL_38;
    case 26:
      LOBYTE(v205) = 27;
      sub_1A3A05610();
      v91 = v173;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v174 + 8);
      v58 = v91;
      v59 = &v205;
      goto LABEL_38;
    case 27:
      LOBYTE(v205) = 28;
      sub_1A3A055BC();
      v56 = v176;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v177 + 8);
      v58 = v56;
      v59 = &v206;
      goto LABEL_38;
    case 28:
      LOBYTE(v205) = 29;
      sub_1A3A05568();
      v89 = v179;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v180 + 8);
      v58 = v89;
      v59 = &v207;
LABEL_38:
      v57(v58, *(v59 - 32));
      goto LABEL_39;
    case 29:
      LOBYTE(v205) = 30;
      sub_1A3A05514();
      v90 = v182;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v183 + 8))(v90, v184);
      goto LABEL_39;
    case 30:
      LOBYTE(v205) = 31;
      sub_1A3A054C0();
      v60 = v185;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v186;
      v61 = v187;
      goto LABEL_31;
    case 31:
      LOBYTE(v205) = 32;
      sub_1A3A0546C();
      v60 = v188;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v189;
      v61 = v190;
      goto LABEL_31;
    case 32:
      LOBYTE(v205) = 33;
      sub_1A3A05418();
      v60 = v191;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v192;
      v61 = v193;
      goto LABEL_31;
    case 33:
      LOBYTE(v205) = 34;
      sub_1A3A053C4();
      v60 = v194;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v195;
      v61 = v196;
      goto LABEL_31;
    case 34:
      LOBYTE(v205) = 35;
      sub_1A3A05370();
      v60 = v197;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v198;
      v61 = v199;
LABEL_31:
      (*(v62 + 8))(v60, v61);
LABEL_39:
      result = (*(v203 + 8))(v55, v54);
      break;
    default:
      LOBYTE(v205) = 21;
      sub_1A3A05808();
      v92 = v156;
      v94 = v201;
      v93 = v202;
      sub_1A3A32170();
      v205 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
      sub_1A3A05F94(&qword_1EB101280, sub_1A3A0600C);
      v95 = v160;
      sub_1A3A32180();
      (*(v159 + 8))(v92, v95);
      result = (*(v203 + 8))(v94, v93);
      break;
  }

  return result;
}

unint64_t sub_1A3A00434(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x23)
  {
    return MEMORY[0x1A58F8150](qword_1A3A85018[a2]);
  }

  MEMORY[0x1A58F8150](21);
  v5 = *(a2 + 16);
  result = MEMORY[0x1A58F8150](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1A38A8F64(v7);
      sub_1A3A00434(a1, v7);
      result = sub_1A3890F2C(v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1A3A004C0(uint64_t a1)
{
  v2 = sub_1A3A05EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A004FC(uint64_t a1)
{
  v2 = sub_1A3A05EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00538(uint64_t a1)
{
  v2 = sub_1A3A05E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00574(uint64_t a1)
{
  v2 = sub_1A3A05E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A005B0(uint64_t a1)
{
  v2 = sub_1A3A05E44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A005EC(uint64_t a1)
{
  v2 = sub_1A3A05E44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3A01B14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A3A00664(uint64_t a1)
{
  v2 = sub_1A3A0531C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A006A0(uint64_t a1)
{
  v2 = sub_1A3A0531C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A006DC()
{
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](0);
  return sub_1A3A32300();
}

uint64_t sub_1A3A00748()
{
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](0);
  return sub_1A3A32300();
}

uint64_t sub_1A3A00794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A3A321C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A3A00814(uint64_t a1)
{
  v2 = sub_1A3A05808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00850(uint64_t a1)
{
  v2 = sub_1A3A05808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0088C(uint64_t a1)
{
  v2 = sub_1A3A05DF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A008C8(uint64_t a1)
{
  v2 = sub_1A3A05DF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00904(uint64_t a1)
{
  v2 = sub_1A3A05A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00940(uint64_t a1)
{
  v2 = sub_1A3A05A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0097C(uint64_t a1)
{
  v2 = sub_1A3A05760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A009B8(uint64_t a1)
{
  v2 = sub_1A3A05760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A009F4(uint64_t a1)
{
  v2 = sub_1A3A054C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00A30(uint64_t a1)
{
  v2 = sub_1A3A054C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00A6C(uint64_t a1)
{
  v2 = sub_1A3A05D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00AA8(uint64_t a1)
{
  v2 = sub_1A3A05D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00AE4(uint64_t a1)
{
  v2 = sub_1A3A05D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00B20(uint64_t a1)
{
  v2 = sub_1A3A05D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00B5C(uint64_t a1)
{
  v2 = sub_1A3A05CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00B98(uint64_t a1)
{
  v2 = sub_1A3A05CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00BD4(uint64_t a1)
{
  v2 = sub_1A3A05CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00C10(uint64_t a1)
{
  v2 = sub_1A3A05CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00C4C(uint64_t a1)
{
  v2 = sub_1A3A05C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00C88(uint64_t a1)
{
  v2 = sub_1A3A05C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00CC4(uint64_t a1)
{
  v2 = sub_1A3A05BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00D00(uint64_t a1)
{
  v2 = sub_1A3A05BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00D3C(uint64_t a1)
{
  v2 = sub_1A3A05BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00D78(uint64_t a1)
{
  v2 = sub_1A3A05BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00DB4(uint64_t a1)
{
  v2 = sub_1A3A05B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00DF0(uint64_t a1)
{
  v2 = sub_1A3A05B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00E2C(uint64_t a1)
{
  v2 = sub_1A3A05AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00E68(uint64_t a1)
{
  v2 = sub_1A3A05AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00EA4(uint64_t a1)
{
  v2 = sub_1A3A05AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00EE0(uint64_t a1)
{
  v2 = sub_1A3A05AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00F1C(uint64_t a1)
{
  v2 = sub_1A3A05A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00F58(uint64_t a1)
{
  v2 = sub_1A3A05A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00F94(uint64_t a1)
{
  v2 = sub_1A3A059AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00FD0(uint64_t a1)
{
  v2 = sub_1A3A059AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0100C(uint64_t a1)
{
  v2 = sub_1A3A05958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01048(uint64_t a1)
{
  v2 = sub_1A3A05958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01084(uint64_t a1)
{
  v2 = sub_1A3A05904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A010C0(uint64_t a1)
{
  v2 = sub_1A3A05904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A010FC(uint64_t a1)
{
  v2 = sub_1A3A058B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01138(uint64_t a1)
{
  v2 = sub_1A3A058B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01174(uint64_t a1)
{
  v2 = sub_1A3A057B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A011B0(uint64_t a1)
{
  v2 = sub_1A3A057B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A011EC(uint64_t a1)
{
  v2 = sub_1A3A0546C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01228(uint64_t a1)
{
  v2 = sub_1A3A0546C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01264(uint64_t a1)
{
  v2 = sub_1A3A056B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A012A0(uint64_t a1)
{
  v2 = sub_1A3A056B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A012DC(uint64_t a1)
{
  v2 = sub_1A3A0570C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01318(uint64_t a1)
{
  v2 = sub_1A3A0570C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01354(uint64_t a1)
{
  v2 = sub_1A3A053C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01390(uint64_t a1)
{
  v2 = sub_1A3A053C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A013CC(uint64_t a1)
{
  v2 = sub_1A3A05418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01408(uint64_t a1)
{
  v2 = sub_1A3A05418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01444(uint64_t a1)
{
  v2 = sub_1A3A05664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01480(uint64_t a1)
{
  v2 = sub_1A3A05664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A014BC(uint64_t a1)
{
  v2 = sub_1A3A05370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A014F8(uint64_t a1)
{
  v2 = sub_1A3A05370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01534(uint64_t a1)
{
  v2 = sub_1A3A05610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01570(uint64_t a1)
{
  v2 = sub_1A3A05610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A015AC(uint64_t a1)
{
  v2 = sub_1A3A055BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A015E8(uint64_t a1)
{
  v2 = sub_1A3A055BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01624(uint64_t a1)
{
  v2 = sub_1A3A05568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01660(uint64_t a1)
{
  v2 = sub_1A3A05568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0169C(uint64_t a1)
{
  v2 = sub_1A3A05514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A016D8(uint64_t a1)
{
  v2 = sub_1A3A05514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01714()
{
  v1 = *v0;
  sub_1A3A322C0();
  sub_1A3A00434(v3, v1);
  return sub_1A3A32300();
}

uint64_t sub_1A3A01764()
{
  v1 = *v0;
  sub_1A3A322C0();
  sub_1A3A00434(v3, v1);
  return sub_1A3A32300();
}

uint64_t sub_1A3A017A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A3A0261C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A3A017F0()
{
  v1 = sub_1A39FDA64(*v0);
  MEMORY[0x1A58F7770](v1);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  return 0x2E656D6F726843;
}

unint64_t sub_1A3A0187C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1A38A8F64(v2);
}

uint64_t sub_1A3A018A8(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      if (a2)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 1:
      if (a2 != 1)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 2:
      if (a2 != 2)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 8:
      if (a2 != 8)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 9:
      if (a2 != 9)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 10:
      if (a2 != 10)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 11:
      if (a2 != 11)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 12:
      if (a2 != 12)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 13:
      if (a2 != 13)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 14:
      if (a2 != 14)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 15:
      if (a2 != 15)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 16:
      if (a2 != 16)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 17:
      if (a2 != 17)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 18:
      if (a2 != 18)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 19:
      if (a2 != 19)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 20:
      if (a2 != 20)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 21:
      if (a2 != 21)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 22:
      if (a2 != 22)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 23:
      if (a2 != 23)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 24:
      if (a2 != 24)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 25:
      if (a2 != 25)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 26:
      if (a2 != 26)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 27:
      if (a2 != 27)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 28:
      if (a2 != 28)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 29:
      if (a2 != 29)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 30:
      if (a2 != 30)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 31:
      if (a2 != 31)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 32:
      if (a2 != 32)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 33:
      if (a2 != 33)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 34:
      if (a2 != 34)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    default:
      if (a2 >= 0x23)
      {
        result = sub_1A39FCD24(a1, a2);
      }

      else
      {
LABEL_73:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1A3A01B14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A3A321C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473756A6461 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572757472657061 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_1A3A321C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A3AA8120 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6873616C66 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1885957222 && a2 == 0xE400000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504950746E6F7266 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 7496808 && a2 == 0xE300000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616E416567616D69 && a2 == 0xED0000736973796CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C65576567616D69 && a2 == 0xE90000000000006CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69736F50736E656CLL && a2 == 0xEC0000006E6F6974 || (sub_1A3A321C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746F68506576696CLL && a2 == 0xE90000000000006FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F7263616DLL && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x646F4D746867696ELL && a2 == 0xE900000000000065 || (sub_1A3A321C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x726F466F746F6870 && a2 == 0xEB0000000074616DLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7365526F746F6870 && a2 == 0xEF6E6F6974756C6FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A3AA8140 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7365526F7270 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A3AA8160 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x694C646572616873 && a2 == 0xED00007972617262 || (sub_1A3A321C0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xED0000656C797453 || (sub_1A3A321C0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7974537472616D73 && a2 == 0xEA0000000000656CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xEF6E6F6974756C6FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A3AA8180 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A3AA81A0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A3AA81C0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A3AA81E0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x546C616974617073 && a2 == 0xED0000656C67676FLL)
  {

    return 35;
  }

  else
  {
    v6 = sub_1A3A321C0();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

uint64_t sub_1A3A0261C(void *a1)
{
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EF0);
  v174 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v204 = v100 - v2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EF8);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v208 = v100 - v3;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F00);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v203 = v100 - v4;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F08);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v202 = v100 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F10);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v201 = v100 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F18);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v200 = v100 - v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F20);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v199 = v100 - v8;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F28);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v198 = v100 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F30);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v197 = v100 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F38);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v196 = v100 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F40);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v195 = v100 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F48);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v194 = v100 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F50);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v193 = v100 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F58);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v191 = v100 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F60);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v192 = v100 - v16;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F68);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v190 = v100 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F70);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v189 = v100 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F78);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v188 = v100 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F80);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v187 = v100 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F88);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v186 = v100 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F90);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v185 = v100 - v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F98);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v184 = v100 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FA0);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v183 = v100 - v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FA8);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v182 = v100 - v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FB0);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v181 = v100 - v26;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FB8);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v180 = v100 - v27;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FC0);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v177 = v100 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FC8);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v207 = v100 - v29;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FD0);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v206 = v100 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FD8);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v179 = v100 - v31;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FE0);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v178 = v100 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FE8);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v205 = v100 - v33;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FF0);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v176 = v100 - v34;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FF8);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v175 = v100 - v35;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101000);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v37 = v100 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101008);
  v105 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v100 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101010);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v100 - v43;
  v45 = a1[3];
  v210 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_1A3A0531C();
  v46 = v211;
  sub_1A3A32320();
  v211 = v46;
  if (!v46)
  {
    v102 = v40;
    v101 = v38;
    v103 = v37;
    v48 = v205;
    v47 = v206;
    v50 = v207;
    v49 = v208;
    v45 = v209;
    v104 = v42;
    v51 = sub_1A3A32160();
    if (*(v51 + 16) != 1 || (v52 = *(v51 + 32), v52 == 36))
    {
      v45 = sub_1A3A31F70();
      v54 = v41;
      v55 = swift_allocError();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101020);
      *v57 = &type metadata for ChromeElement;
      sub_1A3A32140();
      sub_1A3A31F60();
      (*(*(v45 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v45);
      v211 = v55;
      swift_willThrow();
      (*(v104 + 8))(v44, v54);
LABEL_79:
      swift_unknownObjectRelease();
    }

    else
    {
      v100[1] = v51;
      switch(v52)
      {
        case 1:
          LOBYTE(v212) = 1;
          sub_1A3A05EEC();
          v45 = v103;
          v75 = v211;
          sub_1A3A32130();
          v211 = v75;
          if (v75)
          {
            goto LABEL_78;
          }

          (*(v106 + 8))(v45, v107);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 1;
          break;
        case 2:
          LOBYTE(v212) = 2;
          sub_1A3A05E98();
          v45 = v175;
          v71 = v211;
          sub_1A3A32130();
          v211 = v71;
          if (v71)
          {
            goto LABEL_78;
          }

          (*(v108 + 8))(v45, v109);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 2;
          break;
        case 3:
          LOBYTE(v212) = 3;
          sub_1A3A05E44();
          v45 = v176;
          v73 = v211;
          sub_1A3A32130();
          v211 = v73;
          if (v73)
          {
            goto LABEL_78;
          }

          (*(v110 + 8))(v45, v111);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 3;
          break;
        case 4:
          LOBYTE(v212) = 4;
          sub_1A3A05DF0();
          v66 = v211;
          sub_1A3A32130();
          v211 = v66;
          if (v66)
          {
            goto LABEL_78;
          }

          (*(v112 + 8))(v48, v113);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 4;
          break;
        case 5:
          LOBYTE(v212) = 5;
          sub_1A3A05D9C();
          v45 = v178;
          v79 = v211;
          sub_1A3A32130();
          v211 = v79;
          if (v79)
          {
            goto LABEL_78;
          }

          (*(v114 + 8))(v45, v115);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 5;
          break;
        case 6:
          LOBYTE(v212) = 6;
          sub_1A3A05D48();
          v45 = v179;
          v87 = v211;
          sub_1A3A32130();
          v211 = v87;
          if (v87)
          {
            goto LABEL_78;
          }

          (*(v116 + 8))(v45, v117);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 6;
          break;
        case 7:
          LOBYTE(v212) = 7;
          sub_1A3A05CF4();
          v45 = v47;
          v74 = v211;
          sub_1A3A32130();
          v211 = v74;
          if (v74)
          {
            goto LABEL_78;
          }

          (*(v118 + 8))(v47, v119);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 7;
          break;
        case 8:
          LOBYTE(v212) = 8;
          sub_1A3A05CA0();
          v45 = v50;
          v90 = v211;
          sub_1A3A32130();
          v211 = v90;
          if (v90)
          {
            goto LABEL_78;
          }

          (*(v120 + 8))(v50, v121);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 8;
          break;
        case 9:
          LOBYTE(v212) = 9;
          sub_1A3A05C4C();
          v45 = v177;
          v68 = v211;
          sub_1A3A32130();
          v211 = v68;
          if (v68)
          {
            goto LABEL_78;
          }

          (*(v122 + 8))(v45, v123);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 9;
          break;
        case 10:
          LOBYTE(v212) = 10;
          sub_1A3A05BF8();
          v45 = v180;
          v89 = v211;
          sub_1A3A32130();
          v211 = v89;
          if (v89)
          {
            goto LABEL_78;
          }

          (*(v124 + 8))(v45, v125);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 10;
          break;
        case 11:
          LOBYTE(v212) = 11;
          sub_1A3A05BA4();
          v45 = v181;
          v65 = v211;
          sub_1A3A32130();
          v211 = v65;
          if (v65)
          {
            goto LABEL_78;
          }

          (*(v126 + 8))(v45, v127);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 11;
          break;
        case 12:
          LOBYTE(v212) = 12;
          sub_1A3A05B50();
          v45 = v182;
          v67 = v211;
          sub_1A3A32130();
          v211 = v67;
          if (v67)
          {
            goto LABEL_78;
          }

          (*(v128 + 8))(v45, v129);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 12;
          break;
        case 13:
          LOBYTE(v212) = 13;
          sub_1A3A05AFC();
          v45 = v183;
          v86 = v211;
          sub_1A3A32130();
          v211 = v86;
          if (v86)
          {
            goto LABEL_78;
          }

          (*(v130 + 8))(v45, v131);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 13;
          break;
        case 14:
          LOBYTE(v212) = 14;
          sub_1A3A05AA8();
          v45 = v184;
          v63 = v211;
          sub_1A3A32130();
          v211 = v63;
          if (v63)
          {
            goto LABEL_78;
          }

          (*(v132 + 8))(v45, v133);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 14;
          break;
        case 15:
          LOBYTE(v212) = 15;
          sub_1A3A05A54();
          v45 = v185;
          v72 = v211;
          sub_1A3A32130();
          v211 = v72;
          if (v72)
          {
            goto LABEL_78;
          }

          (*(v134 + 8))(v45, v135);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 15;
          break;
        case 16:
          LOBYTE(v212) = 16;
          sub_1A3A05A00();
          v45 = v186;
          v62 = v211;
          sub_1A3A32130();
          v211 = v62;
          if (v62)
          {
            goto LABEL_78;
          }

          (*(v136 + 8))(v45, v137);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 16;
          break;
        case 17:
          LOBYTE(v212) = 17;
          sub_1A3A059AC();
          v45 = v187;
          v77 = v211;
          sub_1A3A32130();
          v211 = v77;
          if (v77)
          {
            goto LABEL_78;
          }

          (*(v138 + 8))(v45, v139);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 17;
          break;
        case 18:
          LOBYTE(v212) = 18;
          sub_1A3A05958();
          v45 = v188;
          v88 = v211;
          sub_1A3A32130();
          v211 = v88;
          if (v88)
          {
            goto LABEL_78;
          }

          (*(v140 + 8))(v45, v141);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 18;
          break;
        case 19:
          LOBYTE(v212) = 19;
          sub_1A3A05904();
          v45 = v189;
          v94 = v211;
          sub_1A3A32130();
          v211 = v94;
          if (v94)
          {
            goto LABEL_78;
          }

          (*(v142 + 8))(v45, v143);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 19;
          break;
        case 20:
          LOBYTE(v212) = 20;
          sub_1A3A058B0();
          v45 = v190;
          v78 = v211;
          sub_1A3A32130();
          v211 = v78;
          if (v78)
          {
            goto LABEL_78;
          }

          (*(v144 + 8))(v45, v145);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 20;
          break;
        case 21:
          LOBYTE(v212) = 21;
          sub_1A3A05808();
          v80 = v192;
          v81 = v211;
          sub_1A3A32130();
          v211 = v81;
          if (v81)
          {
            goto LABEL_78;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
          sub_1A3A05F94(&qword_1EB1010A0, sub_1A3A0585C);
          v82 = v149;
          v83 = v211;
          sub_1A3A32150();
          v84 = v104;
          v211 = v83;
          if (v83)
          {
            (*(v148 + 8))(v80, v82);
            v85 = *(v84 + 8);
            v45 = v84 + 8;
            v85(v44, v41);
            goto LABEL_79;
          }

          (*(v148 + 8))(v80, v82);
          (*(v84 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = v212;
          break;
        case 22:
          LOBYTE(v212) = 22;
          sub_1A3A057B4();
          v45 = v191;
          v93 = v211;
          sub_1A3A32130();
          v211 = v93;
          if (v93)
          {
            goto LABEL_78;
          }

          (*(v146 + 8))(v45, v147);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 21;
          break;
        case 23:
          LOBYTE(v212) = 23;
          sub_1A3A05760();
          v45 = v193;
          v95 = v211;
          sub_1A3A32130();
          v211 = v95;
          if (v95)
          {
            goto LABEL_78;
          }

          (*(v150 + 8))(v45, v151);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 22;
          break;
        case 24:
          LOBYTE(v212) = 24;
          sub_1A3A0570C();
          v45 = v194;
          v70 = v211;
          sub_1A3A32130();
          v211 = v70;
          if (v70)
          {
            goto LABEL_78;
          }

          (*(v152 + 8))(v45, v153);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 23;
          break;
        case 25:
          LOBYTE(v212) = 25;
          sub_1A3A056B8();
          v45 = v195;
          v69 = v211;
          sub_1A3A32130();
          v211 = v69;
          if (v69)
          {
            goto LABEL_78;
          }

          (*(v154 + 8))(v45, v155);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 24;
          break;
        case 26:
          LOBYTE(v212) = 26;
          sub_1A3A05664();
          v45 = v196;
          v98 = v211;
          sub_1A3A32130();
          v211 = v98;
          if (v98)
          {
            goto LABEL_78;
          }

          (*(v156 + 8))(v45, v157);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 25;
          break;
        case 27:
          LOBYTE(v212) = 27;
          sub_1A3A05610();
          v45 = v197;
          v60 = v211;
          sub_1A3A32130();
          v211 = v60;
          if (v60)
          {
            goto LABEL_78;
          }

          (*(v158 + 8))(v45, v159);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 26;
          break;
        case 28:
          LOBYTE(v212) = 28;
          sub_1A3A055BC();
          v45 = v198;
          v96 = v211;
          sub_1A3A32130();
          v211 = v96;
          if (v96)
          {
            goto LABEL_78;
          }

          (*(v160 + 8))(v45, v161);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 27;
          break;
        case 29:
          LOBYTE(v212) = 29;
          sub_1A3A05568();
          v45 = v199;
          v97 = v211;
          sub_1A3A32130();
          v211 = v97;
          if (v97)
          {
            goto LABEL_78;
          }

          (*(v162 + 8))(v45, v163);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 28;
          break;
        case 30:
          LOBYTE(v212) = 30;
          sub_1A3A05514();
          v45 = v200;
          v91 = v211;
          sub_1A3A32130();
          v211 = v91;
          if (v91)
          {
            goto LABEL_78;
          }

          (*(v164 + 8))(v45, v165);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 29;
          break;
        case 31:
          LOBYTE(v212) = 31;
          sub_1A3A054C0();
          v45 = v201;
          v76 = v211;
          sub_1A3A32130();
          v211 = v76;
          if (v76)
          {
            goto LABEL_78;
          }

          (*(v166 + 8))(v45, v167);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 30;
          break;
        case 32:
          LOBYTE(v212) = 32;
          sub_1A3A0546C();
          v45 = v202;
          v92 = v211;
          sub_1A3A32130();
          v211 = v92;
          if (v92)
          {
            goto LABEL_78;
          }

          (*(v168 + 8))(v45, v169);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 31;
          break;
        case 33:
          LOBYTE(v212) = 33;
          sub_1A3A05418();
          v45 = v203;
          v64 = v211;
          sub_1A3A32130();
          v211 = v64;
          if (v64)
          {
            goto LABEL_78;
          }

          (*(v170 + 8))(v45, v171);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 32;
          break;
        case 34:
          LOBYTE(v212) = 34;
          sub_1A3A053C4();
          v61 = v211;
          sub_1A3A32130();
          v211 = v61;
          if (v61)
          {
            goto LABEL_78;
          }

          (*(v172 + 8))(v49, v173);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 33;
          break;
        case 35:
          v58 = v45;
          LOBYTE(v212) = 35;
          sub_1A3A05370();
          v45 = v204;
          v59 = v211;
          sub_1A3A32130();
          v211 = v59;
          if (v59)
          {
            goto LABEL_78;
          }

          (*(v174 + 8))(v45, v58);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 34;
          break;
        default:
          LOBYTE(v212) = 0;
          sub_1A3A05F40();
          v45 = v102;
          v53 = v211;
          sub_1A3A32130();
          v211 = v53;
          if (v53)
          {
LABEL_78:
            (*(v104 + 8))(v44, v41);
            goto LABEL_79;
          }

          (*(v105 + 8))(v45, v101);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 0;
          break;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v210);
  return v45;
}

unint64_t sub_1A3A0531C()
{
  result = qword_1EB101018;
  if (!qword_1EB101018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101018);
  }

  return result;
}

unint64_t sub_1A3A05370()
{
  result = qword_1EB101028;
  if (!qword_1EB101028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101028);
  }

  return result;
}

unint64_t sub_1A3A053C4()
{
  result = qword_1EB101030;
  if (!qword_1EB101030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101030);
  }

  return result;
}

unint64_t sub_1A3A05418()
{
  result = qword_1EB101038;
  if (!qword_1EB101038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101038);
  }

  return result;
}

unint64_t sub_1A3A0546C()
{
  result = qword_1EB101040;
  if (!qword_1EB101040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101040);
  }

  return result;
}

unint64_t sub_1A3A054C0()
{
  result = qword_1EB101048;
  if (!qword_1EB101048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101048);
  }

  return result;
}

unint64_t sub_1A3A05514()
{
  result = qword_1EB101050;
  if (!qword_1EB101050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101050);
  }

  return result;
}

unint64_t sub_1A3A05568()
{
  result = qword_1EB101058;
  if (!qword_1EB101058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101058);
  }

  return result;
}

unint64_t sub_1A3A055BC()
{
  result = qword_1EB101060;
  if (!qword_1EB101060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101060);
  }

  return result;
}

unint64_t sub_1A3A05610()
{
  result = qword_1EB101068;
  if (!qword_1EB101068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101068);
  }

  return result;
}

unint64_t sub_1A3A05664()
{
  result = qword_1EB101070;
  if (!qword_1EB101070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101070);
  }

  return result;
}

unint64_t sub_1A3A056B8()
{
  result = qword_1EB101078;
  if (!qword_1EB101078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101078);
  }

  return result;
}

unint64_t sub_1A3A0570C()
{
  result = qword_1EB101080;
  if (!qword_1EB101080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101080);
  }

  return result;
}

unint64_t sub_1A3A05760()
{
  result = qword_1EB101088;
  if (!qword_1EB101088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101088);
  }

  return result;
}

unint64_t sub_1A3A057B4()
{
  result = qword_1EB101090;
  if (!qword_1EB101090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101090);
  }

  return result;
}

unint64_t sub_1A3A05808()
{
  result = qword_1EB101098;
  if (!qword_1EB101098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101098);
  }

  return result;
}

unint64_t sub_1A3A0585C()
{
  result = qword_1EB1010A8;
  if (!qword_1EB1010A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010A8);
  }

  return result;
}

unint64_t sub_1A3A058B0()
{
  result = qword_1EB1010B0;
  if (!qword_1EB1010B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010B0);
  }

  return result;
}

unint64_t sub_1A3A05904()
{
  result = qword_1EB1010B8;
  if (!qword_1EB1010B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010B8);
  }

  return result;
}

unint64_t sub_1A3A05958()
{
  result = qword_1EB1010C0;
  if (!qword_1EB1010C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010C0);
  }

  return result;
}

unint64_t sub_1A3A059AC()
{
  result = qword_1EB1010C8;
  if (!qword_1EB1010C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010C8);
  }

  return result;
}

unint64_t sub_1A3A05A00()
{
  result = qword_1EB1010D0;
  if (!qword_1EB1010D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010D0);
  }

  return result;
}

unint64_t sub_1A3A05A54()
{
  result = qword_1EB1010D8;
  if (!qword_1EB1010D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010D8);
  }

  return result;
}

unint64_t sub_1A3A05AA8()
{
  result = qword_1EB1010E0;
  if (!qword_1EB1010E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010E0);
  }

  return result;
}

unint64_t sub_1A3A05AFC()
{
  result = qword_1EB1010E8;
  if (!qword_1EB1010E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010E8);
  }

  return result;
}

unint64_t sub_1A3A05B50()
{
  result = qword_1EB1010F0;
  if (!qword_1EB1010F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010F0);
  }

  return result;
}

unint64_t sub_1A3A05BA4()
{
  result = qword_1EB1010F8;
  if (!qword_1EB1010F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010F8);
  }

  return result;
}

unint64_t sub_1A3A05BF8()
{
  result = qword_1EB101100;
  if (!qword_1EB101100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101100);
  }

  return result;
}

unint64_t sub_1A3A05C4C()
{
  result = qword_1EB101108;
  if (!qword_1EB101108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101108);
  }

  return result;
}

unint64_t sub_1A3A05CA0()
{
  result = qword_1EB101110;
  if (!qword_1EB101110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101110);
  }

  return result;
}

unint64_t sub_1A3A05CF4()
{
  result = qword_1EB101118;
  if (!qword_1EB101118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101118);
  }

  return result;
}

unint64_t sub_1A3A05D48()
{
  result = qword_1EB101120;
  if (!qword_1EB101120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101120);
  }

  return result;
}

unint64_t sub_1A3A05D9C()
{
  result = qword_1EB101128;
  if (!qword_1EB101128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101128);
  }

  return result;
}

unint64_t sub_1A3A05DF0()
{
  result = qword_1EB101130;
  if (!qword_1EB101130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101130);
  }

  return result;
}

unint64_t sub_1A3A05E44()
{
  result = qword_1EB101138;
  if (!qword_1EB101138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101138);
  }

  return result;
}

unint64_t sub_1A3A05E98()
{
  result = qword_1EB101140;
  if (!qword_1EB101140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101140);
  }

  return result;
}

unint64_t sub_1A3A05EEC()
{
  result = qword_1EB101148;
  if (!qword_1EB101148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101148);
  }

  return result;
}

unint64_t sub_1A3A05F40()
{
  result = qword_1EB101150;
  if (!qword_1EB101150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101150);
  }

  return result;
}

uint64_t sub_1A3A05F94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC8E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3A0600C()
{
  result = qword_1EB101288;
  if (!qword_1EB101288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChromeElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChromeElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3A063F4()
{
  result = qword_1EB101290;
  if (!qword_1EB101290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101290);
  }

  return result;
}

unint64_t sub_1A3A0644C()
{
  result = qword_1EB101298;
  if (!qword_1EB101298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101298);
  }

  return result;
}

unint64_t sub_1A3A064A4()
{
  result = qword_1EB1012A0;
  if (!qword_1EB1012A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012A0);
  }

  return result;
}

unint64_t sub_1A3A064FC()
{
  result = qword_1EB1012A8;
  if (!qword_1EB1012A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012A8);
  }

  return result;
}

unint64_t sub_1A3A06554()
{
  result = qword_1EB1012B0;
  if (!qword_1EB1012B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012B0);
  }

  return result;
}

unint64_t sub_1A3A065AC()
{
  result = qword_1EB1012B8;
  if (!qword_1EB1012B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012B8);
  }

  return result;
}

unint64_t sub_1A3A06604()
{
  result = qword_1EB1012C0;
  if (!qword_1EB1012C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012C0);
  }

  return result;
}

unint64_t sub_1A3A0665C()
{
  result = qword_1EB1012C8;
  if (!qword_1EB1012C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012C8);
  }

  return result;
}

unint64_t sub_1A3A066B4()
{
  result = qword_1EB1012D0;
  if (!qword_1EB1012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012D0);
  }

  return result;
}

unint64_t sub_1A3A0670C()
{
  result = qword_1EB1012D8;
  if (!qword_1EB1012D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012D8);
  }

  return result;
}

unint64_t sub_1A3A06764()
{
  result = qword_1EB1012E0;
  if (!qword_1EB1012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012E0);
  }

  return result;
}

unint64_t sub_1A3A067BC()
{
  result = qword_1EB1012E8;
  if (!qword_1EB1012E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012E8);
  }

  return result;
}

unint64_t sub_1A3A06814()
{
  result = qword_1EB1012F0;
  if (!qword_1EB1012F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012F0);
  }

  return result;
}

unint64_t sub_1A3A0686C()
{
  result = qword_1EB1012F8;
  if (!qword_1EB1012F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012F8);
  }

  return result;
}

unint64_t sub_1A3A068C4()
{
  result = qword_1EB101300;
  if (!qword_1EB101300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101300);
  }

  return result;
}

unint64_t sub_1A3A0691C()
{
  result = qword_1EB101308;
  if (!qword_1EB101308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101308);
  }

  return result;
}

unint64_t sub_1A3A06974()
{
  result = qword_1EB101310;
  if (!qword_1EB101310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101310);
  }

  return result;
}

unint64_t sub_1A3A069CC()
{
  result = qword_1EB101318;
  if (!qword_1EB101318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101318);
  }

  return result;
}

unint64_t sub_1A3A06A24()
{
  result = qword_1EB101320;
  if (!qword_1EB101320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101320);
  }

  return result;
}

unint64_t sub_1A3A06A7C()
{
  result = qword_1EB101328;
  if (!qword_1EB101328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101328);
  }

  return result;
}

unint64_t sub_1A3A06AD4()
{
  result = qword_1EB101330;
  if (!qword_1EB101330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101330);
  }

  return result;
}

unint64_t sub_1A3A06B2C()
{
  result = qword_1EB101338;
  if (!qword_1EB101338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101338);
  }

  return result;
}

unint64_t sub_1A3A06B84()
{
  result = qword_1EB101340;
  if (!qword_1EB101340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101340);
  }

  return result;
}

unint64_t sub_1A3A06BDC()
{
  result = qword_1EB101348;
  if (!qword_1EB101348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101348);
  }

  return result;
}

unint64_t sub_1A3A06C34()
{
  result = qword_1EB101350;
  if (!qword_1EB101350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101350);
  }

  return result;
}

unint64_t sub_1A3A06C8C()
{
  result = qword_1EB101358;
  if (!qword_1EB101358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101358);
  }

  return result;
}

unint64_t sub_1A3A06CE4()
{
  result = qword_1EB101360;
  if (!qword_1EB101360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101360);
  }

  return result;
}

unint64_t sub_1A3A06D3C()
{
  result = qword_1EB101368;
  if (!qword_1EB101368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101368);
  }

  return result;
}

unint64_t sub_1A3A06D94()
{
  result = qword_1EB101370;
  if (!qword_1EB101370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101370);
  }

  return result;
}

unint64_t sub_1A3A06DEC()
{
  result = qword_1EB101378;
  if (!qword_1EB101378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101378);
  }

  return result;
}

unint64_t sub_1A3A06E44()
{
  result = qword_1EB101380;
  if (!qword_1EB101380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101380);
  }

  return result;
}

unint64_t sub_1A3A06E9C()
{
  result = qword_1EB101388;
  if (!qword_1EB101388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101388);
  }

  return result;
}

unint64_t sub_1A3A06EF4()
{
  result = qword_1EB101390;
  if (!qword_1EB101390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101390);
  }

  return result;
}

unint64_t sub_1A3A06F4C()
{
  result = qword_1EB101398;
  if (!qword_1EB101398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101398);
  }

  return result;
}

unint64_t sub_1A3A06FA4()
{
  result = qword_1EB1013A0;
  if (!qword_1EB1013A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013A0);
  }

  return result;
}

unint64_t sub_1A3A06FFC()
{
  result = qword_1EB1013A8;
  if (!qword_1EB1013A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013A8);
  }

  return result;
}

unint64_t sub_1A3A07054()
{
  result = qword_1EB1013B0;
  if (!qword_1EB1013B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013B0);
  }

  return result;
}

unint64_t sub_1A3A070AC()
{
  result = qword_1EB1013B8;
  if (!qword_1EB1013B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013B8);
  }

  return result;
}

unint64_t sub_1A3A07104()
{
  result = qword_1EB1013C0;
  if (!qword_1EB1013C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013C0);
  }

  return result;
}

unint64_t sub_1A3A0715C()
{
  result = qword_1EB1013C8;
  if (!qword_1EB1013C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013C8);
  }

  return result;
}

unint64_t sub_1A3A071B4()
{
  result = qword_1EB1013D0;
  if (!qword_1EB1013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013D0);
  }

  return result;
}

unint64_t sub_1A3A0720C()
{
  result = qword_1EB1013D8;
  if (!qword_1EB1013D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013D8);
  }

  return result;
}

unint64_t sub_1A3A07264()
{
  result = qword_1EB1013E0;
  if (!qword_1EB1013E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013E0);
  }

  return result;
}

unint64_t sub_1A3A072BC()
{
  result = qword_1EB1013E8;
  if (!qword_1EB1013E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013E8);
  }

  return result;
}

unint64_t sub_1A3A07314()
{
  result = qword_1EB1013F0;
  if (!qword_1EB1013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013F0);
  }

  return result;
}

unint64_t sub_1A3A0736C()
{
  result = qword_1EB1013F8;
  if (!qword_1EB1013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013F8);
  }

  return result;
}

unint64_t sub_1A3A073C4()
{
  result = qword_1EB101400;
  if (!qword_1EB101400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101400);
  }

  return result;
}

unint64_t sub_1A3A0741C()
{
  result = qword_1EB101408;
  if (!qword_1EB101408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101408);
  }

  return result;
}

unint64_t sub_1A3A07474()
{
  result = qword_1EB101410;
  if (!qword_1EB101410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101410);
  }

  return result;
}

unint64_t sub_1A3A074CC()
{
  result = qword_1EB101418;
  if (!qword_1EB101418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101418);
  }

  return result;
}

unint64_t sub_1A3A07524()
{
  result = qword_1EB101420;
  if (!qword_1EB101420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101420);
  }

  return result;
}

unint64_t sub_1A3A0757C()
{
  result = qword_1EB101428;
  if (!qword_1EB101428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101428);
  }

  return result;
}

unint64_t sub_1A3A075D4()
{
  result = qword_1EB101430;
  if (!qword_1EB101430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101430);
  }

  return result;
}

unint64_t sub_1A3A0762C()
{
  result = qword_1EB101438;
  if (!qword_1EB101438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101438);
  }

  return result;
}

unint64_t sub_1A3A07684()
{
  result = qword_1EB101440;
  if (!qword_1EB101440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101440);
  }

  return result;
}

unint64_t sub_1A3A076DC()
{
  result = qword_1EB101448;
  if (!qword_1EB101448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101448);
  }

  return result;
}

unint64_t sub_1A3A07734()
{
  result = qword_1EB101450;
  if (!qword_1EB101450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101450);
  }

  return result;
}

unint64_t sub_1A3A0778C()
{
  result = qword_1EB101458;
  if (!qword_1EB101458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101458);
  }

  return result;
}

unint64_t sub_1A3A077E4()
{
  result = qword_1EB101460;
  if (!qword_1EB101460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101460);
  }

  return result;
}

unint64_t sub_1A3A0783C()
{
  result = qword_1EB101468;
  if (!qword_1EB101468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101468);
  }

  return result;
}

unint64_t sub_1A3A07894()
{
  result = qword_1EB101470;
  if (!qword_1EB101470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101470);
  }

  return result;
}

unint64_t sub_1A3A078EC()
{
  result = qword_1EB101478;
  if (!qword_1EB101478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101478);
  }

  return result;
}

unint64_t sub_1A3A07944()
{
  result = qword_1EB101480;
  if (!qword_1EB101480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101480);
  }

  return result;
}

unint64_t sub_1A3A0799C()
{
  result = qword_1EB101488;
  if (!qword_1EB101488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101488);
  }

  return result;
}

unint64_t sub_1A3A079F4()
{
  result = qword_1EB101490;
  if (!qword_1EB101490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101490);
  }

  return result;
}

unint64_t sub_1A3A07A4C()
{
  result = qword_1EB101498;
  if (!qword_1EB101498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101498);
  }

  return result;
}

unint64_t sub_1A3A07AA4()
{
  result = qword_1EB1014A0;
  if (!qword_1EB1014A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014A0);
  }

  return result;
}

unint64_t sub_1A3A07AFC()
{
  result = qword_1EB1014A8;
  if (!qword_1EB1014A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014A8);
  }

  return result;
}

unint64_t sub_1A3A07B54()
{
  result = qword_1EB1014B0;
  if (!qword_1EB1014B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014B0);
  }

  return result;
}

unint64_t sub_1A3A07BAC()
{
  result = qword_1EB1014B8;
  if (!qword_1EB1014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014B8);
  }

  return result;
}

unint64_t sub_1A3A07C04()
{
  result = qword_1EB1014C0;
  if (!qword_1EB1014C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014C0);
  }

  return result;
}

unint64_t sub_1A3A07C5C()
{
  result = qword_1EB1014C8;
  if (!qword_1EB1014C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014C8);
  }

  return result;
}

unint64_t sub_1A3A07CB4()
{
  result = qword_1EB1014D0;
  if (!qword_1EB1014D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014D0);
  }

  return result;
}

unint64_t sub_1A3A07D0C()
{
  result = qword_1EB1014D8;
  if (!qword_1EB1014D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014D8);
  }

  return result;
}

unint64_t sub_1A3A07D64()
{
  result = qword_1EB1014E0;
  if (!qword_1EB1014E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014E0);
  }

  return result;
}

unint64_t sub_1A3A07DBC()
{
  result = qword_1EB1014E8;
  if (!qword_1EB1014E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014E8);
  }

  return result;
}

uint64_t sub_1A3A07E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3A07E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3A07F1C()
{
  result = qword_1EB1014F0;
  if (!qword_1EB1014F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1014F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014F0);
  }

  return result;
}

unint64_t sub_1A3A07F84()
{
  result = qword_1EB101500;
  if (!qword_1EB101500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101500);
  }

  return result;
}

uint64_t sub_1A3A07FD8(unint64_t a1)
{
  if (a1 < 3)
  {
    return (2 - a1);
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA8220);
  type metadata accessor for CAMTorchMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A3A080A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016B0);
  sub_1A388F6D8(*(a1 + 8), a2 + v8[12], &qword_1EB1015A0);
  sub_1A388F6D8(*(a1 + 16), a2 + v8[16], &qword_1EB101598);
  sub_1A388F6D8(*(a1 + 24), a2 + v8[20], &qword_1EB101590);
  sub_1A388F6D8(*(a1 + 32), a2 + v8[24], &qword_1EB101588);
  sub_1A388F6D8(*(a1 + 40), a2 + v8[28], &qword_1EB101588);
  sub_1A388F6D8(*(a1 + 48), a2 + v8[32], &qword_1EB101580);
  sub_1A388F6D8(*(a1 + 56), a2 + v8[36], &qword_1EB101578);
  sub_1A388F6D8(*(a1 + 64), a2 + v8[40], &qword_1EB101568);
  sub_1A36700E8(*(a1 + 72), a2 + v8[44]);
  sub_1A388F6D8(*(a1 + 80), a2 + v8[48], &qword_1EB101548);
  sub_1A389F1A4(v4, v5, v6);

  return sub_1A3A2EA50();
}

uint64_t sub_1A3A08270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101798);
  v6(a2 + v7[12], a1[1], v5);
  v6(a2 + v7[16], a1[2], v5);
  v6(a2 + v7[20], a1[3], v5);
  v6(a2 + v7[24], a1[4], v5);
  v6(a2 + v7[28], a1[5], v5);
  v6(a2 + v7[32], a1[6], v5);
  v6(a2 + v7[36], a1[7], v5);
  v6(a2 + v7[40], a1[8], v5);
  v6(a2 + v7[44], a1[9], v5);
  v6(a2 + v7[48], a1[10], v5);
  v6(a2 + v7[52], a1[11], v5);
  v6(a2 + v7[56], a1[12], v5);
  v6(a2 + v7[60], a1[13], v5);
  v6(a2 + v7[64], a1[14], v5);
  v8 = v7[68];
  v9 = a1[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101790);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2 + v8, v9, v10);
}

uint64_t sub_1A3A084F0@<X0>(uint64_t a1@<X8>)
{
  sub_1A389FD78();
  sub_1A3A2EA50();
  v2 = sub_1A3A308E0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1A3A13B38();
  (*(v9 + 56))(&type metadata for CameraUISettingsView, v9);
  swift_getAtKeyPath();

  sub_1A3A140E4();
  sub_1A3A316F0();
  v10 = sub_1A3A308E0();
  v12 = v11;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_1A389F1A4(v2, v4, v6 & 1);
  sub_1A3A2EA50();
  sub_1A389F1A4(v10, v12, v14);
  sub_1A3A2EA50();
  sub_1A389F1B4(v10, v12, v14);

  sub_1A389F1B4(v2, v4, v6 & 1);
}

uint64_t sub_1A3A086BC@<X0>(uint64_t a1@<X8>)
{
  sub_1A389FD78();
  sub_1A3A2EA50();
  v2 = sub_1A3A308E0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1A3A13B38();
  (*(v9 + 56))(&type metadata for CameraUISettingsView, v9);
  swift_getAtKeyPath();

  sub_1A389FE28();
  sub_1A3A316F0();
  v10 = sub_1A3A308E0();
  v12 = v11;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_1A389F1A4(v2, v4, v6 & 1);
  sub_1A3A2EA50();
  sub_1A389F1A4(v10, v12, v14);
  sub_1A3A2EA50();
  sub_1A389F1B4(v10, v12, v14);

  sub_1A389F1B4(v2, v4, v6 & 1);
}

uint64_t sub_1A3A08888(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v5[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  sub_1A389FD78();
  sub_1A3A308E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101828);
  sub_1A3A14584();
  sub_1A3A145D8(&qword_1EB101838, &qword_1EB101828);
  sub_1A3A31080();
}

uint64_t sub_1A3A08A40(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v5[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  sub_1A389FD78();
  sub_1A3A308E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017F8);
  sub_1A394C3DC();
  sub_1A3A145D8(&qword_1EB101800, &qword_1EB1017F8);
  sub_1A3A31080();
}

uint64_t sub_1A3A08BF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v5[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  sub_1A389FD78();
  sub_1A3A308E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017C8);
  sub_1A3A143A0();
  sub_1A3A145D8(&qword_1EB1017D8, &qword_1EB1017C8);
  sub_1A3A31080();
}

uint64_t sub_1A3A08DB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v5[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  sub_1A389FD78();
  sub_1A3A308E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017A0);
  sub_1A3A142C0();
  sub_1A3A145D8(&qword_1EB1017B0, &qword_1EB1017A0);
  sub_1A3A31080();
}

uint64_t sub_1A3A08F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101828);
  sub_1A3A14584();
  sub_1A3A145D8(&qword_1EB101838, &qword_1EB101828);
  sub_1A3A14644();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2D8);
  sub_1A38A08F8(&qword_1EB101848, &qword_1EB0FF2D8);
  return sub_1A3A31200();
}

uint64_t sub_1A3A090B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017F8);
  sub_1A394C3DC();
  sub_1A3A145D8(&qword_1EB101800, &qword_1EB1017F8);
  sub_1A3A14474();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF220);
  sub_1A38A08F8(&qword_1EB101810, &qword_1EB0FF220);
  return sub_1A3A31200();
}

uint64_t sub_1A3A09208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017C8);
  sub_1A3A143A0();
  sub_1A3A145D8(&qword_1EB1017D8, &qword_1EB1017C8);
  sub_1A3A143F4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE30);
  sub_1A38A08F8(&qword_1EB1017E8, &qword_1EB0FDE30);
  return sub_1A3A31200();
}

uint64_t sub_1A3A09358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017A0);
  sub_1A3A142C0();
  sub_1A3A145D8(&qword_1EB1017B0, &qword_1EB1017A0);
  sub_1A3A14314();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE18);
  sub_1A38A08F8(&qword_1EB1017C0, &qword_1EB0FDE18);
  return sub_1A3A31200();
}

id sub_1A3A094E8@<X0>(unsigned __int8 a1@<W4>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = sub_1A394FC58(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3A095C0()
{
  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

uint64_t sub_1A3A09774()
{
  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

id sub_1A3A098CC@<X0>(SEL *a1@<X4>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1A3A099F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  *a2 = *(v3 + 48);
  return result;
}

id sub_1A3A09AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101548);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v142 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v140 = &v130 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101550);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v130 - v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101558);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v131 = &v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v130 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101568);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v130 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101570);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v130 = &v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101578);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v155 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v130 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101580);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v153 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v130 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101588);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v152 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v161 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v130 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101590);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v149 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v130 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101598);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v148 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v159 = &v130 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015A0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v146 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v158 = &v130 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015A8);
  v156 = swift_allocBox();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v47 = off_1ED997FE0;
  swift_getKeyPath();
  v165 = v47;
  sub_1A3A13BE4(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  type metadata accessor for CameraUISettings(0);
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A312C0();
  v165 = 0;
  v166 = 0xE000000000000000;
  sub_1A3A31F20();

  v165 = 0xD000000000000014;
  v166 = 0x80000001A3AA8280;
  if (*(v1 + 24))
  {
    v48 = *(v1 + 16);
    v49 = *(v1 + 24);
  }

  else
  {
    v49 = 0xE700000000000000;
    v48 = 0x6E776F6E6B6E75;
  }

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](v48, v49);

  v137 = v165;
  v136 = v166;
  v50 = swift_allocObject();
  v51 = *(v1 + 80);
  v50[5] = *(v1 + 64);
  v50[6] = v51;
  *(v50 + 105) = *(v1 + 89);
  v52 = *(v1 + 16);
  v50[1] = *v1;
  v50[2] = v52;
  v53 = *(v1 + 48);
  v50[3] = *(v1 + 32);
  v50[4] = v53;
  v162 = xmmword_1A3A85230;
  v176 = 0;
  v177 = 0;
  sub_1A3A13C34(v1, &v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015B8);
  sub_1A3A13CFC(&qword_1EB1015C0, &qword_1EB1015B0, &unk_1A3A85588, sub_1A3A13C6C);
  sub_1A38A08F8(&qword_1EB1015D0, &qword_1EB1015B8);
  v54 = v158;
  sub_1A3A31280();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015D8);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);

  v56 = swift_allocObject();
  v57 = *(v1 + 80);
  v56[5] = *(v1 + 64);
  v56[6] = v57;
  *(v56 + 105) = *(v1 + 89);
  v58 = *(v1 + 16);
  v56[1] = *v1;
  v56[2] = v58;
  v59 = *(v1 + 48);
  v56[3] = *(v1 + 32);
  v56[4] = v59;
  v162 = xmmword_1A3A85240;
  v176 = 0;
  v177 = 0;
  sub_1A3A13C34(v1, &v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015E0);
  sub_1A38A08F8(&qword_1EB1015E8, &qword_1EB1015E0);
  v60 = v159;
  sub_1A3A31280();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015F0);
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);

  v62 = swift_allocObject();
  v63 = *(v1 + 80);
  *(v62 + 80) = *(v1 + 64);
  *(v62 + 96) = v63;
  *(v62 + 105) = *(v1 + 89);
  v64 = *(v1 + 16);
  *(v62 + 16) = *v1;
  *(v62 + 32) = v64;
  v65 = *(v1 + 48);
  *(v62 + 48) = *(v1 + 32);
  *(v62 + 64) = v65;
  *(v62 + 128) = v156;
  v162 = xmmword_1A3A85250;
  v176 = 0xD00000000000004BLL;
  v177 = 0x80000001A3AA82A0;
  sub_1A3A13C34(v1, &v165);
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015F8);
  sub_1A38A08F8(&qword_1EB101600, &qword_1EB1015F8);
  v66 = v160;
  sub_1A3A31280();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101608);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);

  v68 = swift_allocObject();
  v69 = *(v1 + 80);
  v68[5] = *(v1 + 64);
  v68[6] = v69;
  *(v68 + 105) = *(v1 + 89);
  v70 = *(v1 + 16);
  v68[1] = *v1;
  v68[2] = v70;
  v71 = *(v1 + 48);
  v68[3] = *(v1 + 32);
  v68[4] = v71;
  v162 = xmmword_1A3A85260;
  v176 = 0;
  v177 = 0;
  sub_1A3A13C34(v1, &v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101610);
  sub_1A38A08F8(&qword_1EB101618, &qword_1EB101610);
  sub_1A3A31280();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101620);
  v73 = *(*(v72 - 8) + 56);
  v147 = v34;
  v73(v34, 0, 1, v72);

  v74 = swift_allocObject();
  v75 = *(v1 + 80);
  v74[5] = *(v1 + 64);
  v74[6] = v75;
  *(v74 + 105) = *(v1 + 89);
  v76 = *(v1 + 16);
  v74[1] = *v1;
  v74[2] = v76;
  v77 = *(v1 + 48);
  v74[3] = *(v1 + 32);
  v74[4] = v77;
  *&v162 = 0xD000000000000017;
  *(&v162 + 1) = 0x80000001A3AA82F0;
  v176 = 0;
  v177 = 0;
  sub_1A3A13C34(v1, &v165);
  v78 = v161;
  sub_1A3A31280();
  v73(v78, 0, 1, v72);

  v165 = 0;
  v166 = 0;
  v162 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101628);
  sub_1A38A08F8(&qword_1EB101630, &qword_1EB101628);
  v79 = v157;
  sub_1A3A31280();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101638);
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v82 = result;
    v83 = [result isSmartFramingSupported];

    if (v83)
    {
      v84 = swift_allocObject();
      v85 = v2[5];
      v84[5] = v2[4];
      v84[6] = v85;
      *(v84 + 105) = *(v2 + 89);
      v86 = v2[1];
      v84[1] = *v2;
      v84[2] = v86;
      v87 = v2[3];
      v84[3] = v2[2];
      v84[4] = v87;
      v162 = xmmword_1A3A85270;
      v176 = 0;
      v177 = 0;
      sub_1A3A13C34(v2, &v165);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101690);
      sub_1A38A08F8(&qword_1EB101698, &qword_1EB101690);
      v88 = v130;
      sub_1A3A31280();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016A0);
      (*(*(v89 - 8) + 56))(v88, 0, 1, v89);

      v90 = v88;
      v91 = v150;
      sub_1A388F670(v90, v150, &qword_1EB101570);
      v92 = 0;
    }

    else
    {
      v92 = 1;
      v91 = v150;
    }

    v93 = v147;
    v94 = 1;
    (*(v134 + 56))(v91, v92, 1, v135);
    v95 = swift_allocObject();
    v96 = v2[5];
    v95[5] = v2[4];
    v95[6] = v96;
    *(v95 + 105) = *(v2 + 89);
    v97 = v2[1];
    v95[1] = *v2;
    v95[2] = v97;
    v98 = v2[3];
    v95[3] = v2[2];
    v95[4] = v98;
    v162 = xmmword_1A3A85280;
    v176 = 0;
    v177 = 0;
    sub_1A3A13C34(v2, &v165);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
    sub_1A38A08F8(&qword_1EB101648, &qword_1EB101640);
    v99 = v154;
    sub_1A3A31280();
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101650);
    (*(*(v100 - 8) + 56))(v99, 0, 1, v100);

    if (sub_1A389E924())
    {
      v101 = swift_allocObject();
      v102 = v2[5];
      v101[5] = v2[4];
      v101[6] = v102;
      *(v101 + 105) = *(v2 + 89);
      v103 = v2[1];
      v101[1] = *v2;
      v101[2] = v103;
      v104 = v2[3];
      v101[3] = v2[2];
      v101[4] = v104;
      v162 = 0uLL;
      v176 = 0;
      v177 = 0;
      sub_1A3A13C34(v2, &v165);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101660);
      sub_1A38A08F8(&qword_1EB101668, &qword_1EB101660);
      v105 = v133;
      sub_1A3A31280();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101670);
      (*(*(v106 - 8) + 56))(v105, 0, 1, v106);

      v162 = v2[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
      sub_1A3A30FB0();
      v107 = swift_allocObject();
      v108 = v2[5];
      v107[5] = v2[4];
      v107[6] = v108;
      *(v107 + 105) = *(v2 + 89);
      v109 = v2[1];
      v107[1] = *v2;
      v107[2] = v109;
      v110 = v2[3];
      v107[3] = v2[2];
      v107[4] = v110;
      sub_1A3A13C34(v2, &v165);
      v111 = v93;
      sub_1A3A13CFC(&qword_1EB101678, &qword_1EB101550, &unk_1A3A85500, sub_1A3A13D78);
      sub_1A3A13E60();
      v112 = v131;
      sub_1A3A30A30();

      sub_1A388F740(v105, &qword_1EB101550);
      v113 = v112;
      v93 = v111;
      (*(v143 + 32))(v145, v113, v144);
      v94 = 0;
    }

    v114 = v145;
    (*(v143 + 56))(v145, v94, 1, v144);
    v165 = 0;
    v166 = 0;
    v162 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F8);
    sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8);
    v115 = v140;
    sub_1A3A31280();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101658);
    (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
    *&v162 = v137;
    *(&v162 + 1) = v136;
    v163 = 0;
    v164 = MEMORY[0x1E69E7CC0];
    v165 = &v162;
    v117 = v146;
    sub_1A388F6D8(v158, v146, &qword_1EB1015A0);
    v166 = v117;
    v118 = v148;
    sub_1A388F6D8(v159, v148, &qword_1EB101598);
    v167 = v118;
    v119 = v149;
    sub_1A388F6D8(v160, v149, &qword_1EB101590);
    v168 = v119;
    v120 = v151;
    sub_1A388F6D8(v93, v151, &qword_1EB101588);
    v169 = v120;
    v121 = v152;
    sub_1A388F6D8(v161, v152, &qword_1EB101588);
    v170 = v121;
    v122 = v157;
    v123 = v153;
    sub_1A388F6D8(v157, v153, &qword_1EB101580);
    v171 = v123;
    v124 = v150;
    v125 = v155;
    sub_1A388F6D8(v150, v155, &qword_1EB101578);
    v172 = v125;
    v126 = v154;
    v127 = v138;
    sub_1A388F6D8(v154, v138, &qword_1EB101568);
    v173 = v127;
    v128 = v139;
    sub_1A36700E8(v114, v139);
    v174 = v128;
    v129 = v142;
    sub_1A388F6D8(v115, v142, &qword_1EB101548);
    v175 = v129;
    sub_1A3A080A4(&v165, v141);
    sub_1A388F740(v115, &qword_1EB101548);
    sub_1A3670158(v114);
    sub_1A388F740(v126, &qword_1EB101568);
    sub_1A388F740(v124, &qword_1EB101578);
    sub_1A388F740(v122, &qword_1EB101580);
    sub_1A388F740(v161, &qword_1EB101588);
    sub_1A388F740(v147, &qword_1EB101588);
    sub_1A388F740(v160, &qword_1EB101590);
    sub_1A388F740(v159, &qword_1EB101598);
    sub_1A388F740(v158, &qword_1EB1015A0);
    sub_1A388F740(v129, &qword_1EB101548);
    sub_1A3670158(v128);
    sub_1A388F740(v127, &qword_1EB101568);
    sub_1A388F740(v155, &qword_1EB101578);
    sub_1A388F740(v153, &qword_1EB101580);
    sub_1A388F740(v152, &qword_1EB101588);
    sub_1A388F740(v151, &qword_1EB101588);
    sub_1A388F740(v149, &qword_1EB101590);
    sub_1A388F740(v148, &qword_1EB101598);
    sub_1A388F740(v146, &qword_1EB1015A0);
    sub_1A389F1B4(v162, *(&v162 + 1), v163);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3A0B4DC@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E0);
  v121 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v106 = &v94[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v110 = &v94[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v94[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v94[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v94[-v13];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v94[-v16];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101818);
  v119 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v94[-v19];
  KeyPath = swift_getKeyPath();
  v21 = a1[5];
  v161 = a1[4];
  v162[0] = v21;
  *(v162 + 9) = *(a1 + 89);
  v22 = a1[1];
  v157 = *a1;
  v158 = v22;
  v23 = a1[2];
  v160 = a1[3];
  v159 = v23;
  v24 = sub_1A3A13B38();
  v25 = *(v24 + 56);
  v112 = v24;
  v26 = v25(&type metadata for CameraUISettingsView, v24);
  sub_1A3A08888(v26, KeyPath);
  v109 = 0x80000001A3AA8710;
  v27 = swift_getKeyPath();
  v28 = a1[5];
  v161 = a1[4];
  v162[0] = v28;
  *(v162 + 9) = *(a1 + 89);
  v29 = a1[1];
  v157 = *a1;
  v158 = v29;
  v30 = a1[2];
  v160 = a1[3];
  v159 = v30;
  v31 = v25(&type metadata for CameraUISettingsView, v24);
  v104 = v24 + 56;
  v105 = v25;
  v32 = v31;
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v32;
  v33[5] = v27;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v32;
  v34[5] = v27;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v128 = 0xD000000000000014;
  v129 = v109;
  sub_1A3A31100();

  v35 = swift_getKeyPath();
  v36 = sub_1A3A300B0();
  v37 = v123;
  *v123 = v36;
  v37[1] = 0;
  *(v37 + 16) = 1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016F0);
  v99 = (v37 + *(v103 + 44));
  v38 = a1[5];
  v149 = a1[4];
  v150[0] = v38;
  *(v150 + 9) = *(a1 + 89);
  v39 = a1[1];
  v145 = *a1;
  v146 = v39;
  v40 = a1[3];
  v147 = a1[2];
  v148 = v40;
  v109 = sub_1A3A2FF40();
  LOBYTE(v171) = 1;
  v161 = v149;
  v162[0] = v150[0];
  *(v162 + 9) = *(v150 + 9);
  v157 = v145;
  v158 = v146;
  v160 = v148;
  v159 = v147;
  sub_1A3A084F0(&v151);
  v165 = v153;
  v166 = v154;
  v167 = v155;
  v164 = v152;
  v163 = v151;
  v168[2] = v153;
  v168[3] = v154;
  v168[4] = v155;
  v168[1] = v152;
  v168[0] = v151;
  sub_1A388F6D8(&v163, &v138, &qword_1EB1016F8);
  sub_1A388F740(v168, &qword_1EB1016F8);
  *&v144[23] = v164;
  *&v144[39] = v165;
  *&v144[55] = v166;
  *&v144[71] = v167;
  *&v144[7] = v163;
  LOBYTE(v37) = v171;
  v95 = v171;
  v41 = v25(&type metadata for CameraUISettingsView, v112);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v41;
  v42[5] = v35;
  v96 = v35;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v41;
  v43[5] = v35;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v126 = 0xD000000000000010;
  v127 = 0x80000001A3AA8730;
  v138 = v151;
  *&v139 = v152;
  v171 = xmmword_1A3A85290;
  v169[0] = 0x3FA999999999999ALL;
  v102 = sub_1A3A140E4();
  v101 = CAMPhotoFormatMake;
  v44 = v110;
  sub_1A3A31090();

  v45 = v121;
  v47 = v121 + 16;
  v46 = *(v121 + 16);
  v48 = v106;
  v49 = v111;
  v46(v106, v44, v111);
  v97 = v46;
  v98 = v47;
  v169[0] = v109;
  v169[1] = 0;
  v170[0] = v37;
  *&v170[1] = *v144;
  *&v170[17] = *&v144[16];
  *&v170[65] = *&v144[64];
  *&v170[49] = *&v144[48];
  *&v170[33] = *&v144[32];
  v50 = *&v144[79];
  *&v170[80] = *&v144[79];
  v51 = *v170;
  v52 = v99;
  *v99 = v109;
  v52[1] = v51;
  v53 = *&v170[16];
  v54 = *&v170[32];
  v55 = *&v170[48];
  v56 = *&v170[64];
  *(v52 + 12) = v50;
  v52[4] = v55;
  v52[5] = v56;
  v52[2] = v53;
  v52[3] = v54;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101708);
  v46(v52 + *(v100 + 48), v48, v49);
  sub_1A388F6D8(v169, &v151, &qword_1EB101710);
  v57 = *(v45 + 8);
  v121 = v45 + 8;
  v99 = v57;
  (v57)(v44, v49);
  v58 = v48;
  (v57)(v48, v49);
  v175 = *&v144[32];
  v176 = *&v144[48];
  *v177 = *&v144[64];
  v173 = *v144;
  v171 = v109;
  v172 = v95;
  *&v177[15] = *&v144[79];
  v174 = *&v144[16];
  sub_1A388F740(&v171, &qword_1EB101710);

  v59 = swift_getKeyPath();
  v60 = sub_1A3A300B0();
  v61 = v122;
  *v122 = v60;
  v61[1] = 0;
  *(v61 + 16) = 1;
  v62 = v61 + *(v103 + 44);
  v63 = a1[5];
  v142 = a1[4];
  v143[0] = v63;
  *(v143 + 9) = *(a1 + 89);
  v64 = a1[1];
  v138 = *a1;
  v139 = v64;
  v65 = a1[3];
  v140 = a1[2];
  v141 = v65;
  v66 = sub_1A3A2FF40();
  LOBYTE(v131) = 1;
  v155 = v142;
  v156[0] = v143[0];
  *(v156 + 9) = *(v143 + 9);
  v151 = v138;
  v152 = v139;
  v154 = v141;
  v153 = v140;
  sub_1A3A084F0(&v134);
  v180 = *&v135[16];
  v181 = *&v135[32];
  v178 = v134;
  v179 = *v135;
  v183[2] = *&v135[16];
  v183[3] = *&v135[32];
  v183[4] = *&v135[48];
  v183[1] = *v135;
  v182 = *&v135[48];
  v183[0] = v134;
  sub_1A388F6D8(&v178, &v132, &qword_1EB1016F8);
  sub_1A388F740(v183, &qword_1EB1016F8);
  *&v137[23] = v179;
  *&v137[39] = v180;
  *&v137[55] = v181;
  *&v137[71] = v182;
  *&v137[7] = v178;
  LODWORD(v109) = v131;
  v67 = v105(&type metadata for CameraUISettingsView, v112);
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v67;
  v68[5] = v59;
  v96 = v59;
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v67;
  v69[5] = v59;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  strcpy(v125, "Peek spacing");
  HIBYTE(v125[6]) = 0;
  v125[7] = -5120;
  v132 = v134;
  *v133 = *v135;
  v131 = xmmword_1A3A852A0;
  v130 = 0x3FF0000000000000;
  v70 = v110;
  sub_1A3A31090();

  v71 = v111;
  v72 = v97;
  v97(v58, v70, v111);
  v132 = v66;
  v133[0] = v109;
  *&v133[1] = *v137;
  *&v133[17] = *&v137[16];
  *&v133[65] = *&v137[64];
  *&v133[49] = *&v137[48];
  *&v133[33] = *&v137[32];
  v73 = *&v137[79];
  *&v133[80] = *&v137[79];
  v74 = *v133;
  *v62 = v66;
  *(v62 + 1) = v74;
  v75 = *&v133[16];
  v76 = *&v133[32];
  v77 = *&v133[48];
  v78 = *&v133[64];
  *(v62 + 12) = v73;
  *(v62 + 4) = v77;
  *(v62 + 5) = v78;
  *(v62 + 2) = v75;
  *(v62 + 3) = v76;
  v72(&v62[*(v100 + 48)], v58, v71);
  sub_1A388F6D8(&v132, &v134, &qword_1EB101710);
  v79 = v70;
  v80 = v99;
  (v99)(v79, v71);
  v80(v58, v71);
  *&v135[33] = *&v137[32];
  *&v135[49] = *&v137[48];
  *v136 = *&v137[64];
  *&v135[1] = *v137;
  v134 = v66;
  v135[0] = v109;
  *&v136[15] = *&v137[79];
  *&v135[17] = *&v137[16];
  sub_1A388F740(&v134, &qword_1EB101710);

  v112 = *(v119 + 16);
  v81 = v113;
  v82 = v114;
  v112(v113, v115, v114);
  v121 = *(v120 + 16);
  v83 = v116;
  (v121)(v116, v124, v118);
  v84 = v117;
  sub_1A388F6D8(v123, v117, &qword_1EB1016E8);
  v85 = v107;
  sub_1A388F6D8(v122, v107, &qword_1EB1016E8);
  v86 = v108;
  v112(v108, v81, v82);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101820);
  v88 = v118;
  (v121)(&v86[v87[12]], v83, v118);
  sub_1A388F6D8(v84, &v86[v87[16]], &qword_1EB1016E8);
  sub_1A388F6D8(v85, &v86[v87[20]], &qword_1EB1016E8);
  sub_1A388F740(v122, &qword_1EB1016E8);
  sub_1A388F740(v123, &qword_1EB1016E8);
  v89 = *(v120 + 8);
  v90 = v88;
  v89(v124, v88);
  v91 = *(v119 + 8);
  v92 = v114;
  v91(v115, v114);
  sub_1A388F740(v85, &qword_1EB1016E8);
  sub_1A388F740(v117, &qword_1EB1016E8);
  v89(v116, v90);
  return (v91)(v113, v92);
}

uint64_t sub_1A3A0C424()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1A3A13B38();
  v2 = (*(v1 + 56))(&type metadata for CameraUISettingsView, v1);
  return sub_1A3A08A40(v2, KeyPath);
}

uint64_t sub_1A3A0C4CC@<X0>(_OWORD *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v65 = a2;
  v66 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101720);
  v87 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v62 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101728);
  v85 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v62 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101730);
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101738);
  v17 = *(v16 - 8);
  v70 = v16;
  v71 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v62 - v20;
  v96 = a1[2];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FB0();
  v21 = swift_allocObject();
  v22 = a1[5];
  v21[5] = a1[4];
  v21[6] = v22;
  *(v21 + 105) = *(a1 + 89);
  v23 = a1[1];
  v21[1] = *a1;
  v21[2] = v23;
  v24 = a1[3];
  v21[3] = a1[2];
  v21[4] = v24;
  v94 = 0xD000000000000010;
  v95 = 0x80000001A3AA8410;
  sub_1A3A13C34(a1, &v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101740);
  v64 = MEMORY[0x1E6981F48];
  sub_1A38A08F8(&qword_1EB101748, &qword_1EB101740);
  sub_1A3A2F9A0();
  KeyPath = swift_getKeyPath();
  v26 = a1[5];
  v101 = a1[4];
  v102[0] = v26;
  *(v102 + 9) = *(a1 + 89);
  v27 = a1[1];
  v97 = *a1;
  v98 = v27;
  v28 = a1[3];
  v99 = a1[2];
  v100 = v28;
  v29 = sub_1A3A13B38();
  v63 = *(v29 + 56);
  v30 = v63(&type metadata for CameraUISettingsView, v29);
  sub_1A3A08BF8(v30, KeyPath);
  v96 = a1[3];
  sub_1A3A30FB0();
  v31 = swift_allocObject();
  v32 = a1[2];
  *(v31 + 72) = a1[3];
  v33 = a1[5];
  *(v31 + 88) = a1[4];
  *(v31 + 104) = v33;
  *(v31 + 113) = *(a1 + 89);
  v34 = a1[1];
  *(v31 + 24) = *a1;
  *(v31 + 40) = v34;
  *(v31 + 16) = v65;
  *(v31 + 56) = v32;
  v92 = 0xD000000000000014;
  v93 = 0x80000001A3AA8430;
  sub_1A3A13C34(a1, &v97);
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101750);
  sub_1A3A14168();
  sub_1A3A2F9A0();
  v35 = swift_getKeyPath();
  v36 = a1[5];
  v101 = a1[4];
  v102[0] = v36;
  *(v102 + 9) = *(a1 + 89);
  v37 = a1[1];
  v97 = *a1;
  v98 = v37;
  v38 = a1[3];
  v99 = a1[2];
  v100 = v38;
  v39 = v63(&type metadata for CameraUISettingsView, v29);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v39;
  v40[5] = v35;
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v39;
  v41[5] = v35;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v90 = 0xD000000000000014;
  v91 = 0x80000001A3AA8450;
  sub_1A3A31100();

  v96 = a1[4];
  sub_1A3A30FB0();
  v42 = swift_allocObject();
  v43 = a1[5];
  v42[5] = a1[4];
  v42[6] = v43;
  *(v42 + 105) = *(a1 + 89);
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  v45 = a1[3];
  v42[3] = a1[2];
  v42[4] = v45;
  v88 = 0x696472616F626E4FLL;
  v89 = 0xEA0000000000676ELL;
  sub_1A3A13C34(a1, &v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101770);
  sub_1A38A08F8(&qword_1EB101778, &qword_1EB101770);
  sub_1A3A2F9A0();
  v46 = v70;
  v62 = *(v71 + 16);
  v47 = v69;
  v62(v69, v68, v70);
  v67 = *(v84 + 16);
  v67(v80, v77, v78);
  v65 = *(v85 + 16);
  v65(v74, v79, v75);
  v64 = *(v86 + 16);
  v48 = v72;
  v64(v72, v73, v82);
  v63 = *(v87 + 16);
  (v63)(v83, v76, v81);
  v49 = v66;
  v62(v66, v47, v46);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101780);
  v67(&v49[v50[12]], v80, v78);
  v65(&v49[v50[16]], v74, v75);
  v51 = v82;
  v64(&v49[v50[20]], v48, v82);
  v52 = v81;
  (v63)(&v49[v50[24]], v83, v81);
  v53 = *(v87 + 8);
  v87 += 8;
  v53(v76, v52);
  v54 = *(v86 + 8);
  v86 += 8;
  v54(v73, v51);
  v55 = *(v85 + 8);
  v85 += 8;
  v56 = v75;
  v55(v79, v75);
  v57 = *(v84 + 8);
  v84 += 8;
  v58 = v78;
  v57(v77, v78);
  v59 = v70;
  v60 = *(v71 + 8);
  v60(v68, v70);
  v53(v83, v81);
  v54(v72, v82);
  v55(v74, v56);
  v57(v80, v58);
  return (v60)(v69, v59);
}

uint64_t sub_1A3A0D054@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v81 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v79 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v70 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v70 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v70 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101790);
  v80 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v70 - v20;
  KeyPath = swift_getKeyPath();
  v22 = a1[5];
  v98 = a1[4];
  v99[0] = v22;
  *(v99 + 9) = *(a1 + 89);
  v23 = a1[1];
  v94 = *a1;
  v95 = v23;
  v24 = a1[3];
  v96 = a1[2];
  v97 = v24;
  v25 = sub_1A3A13B38();
  v26 = *(v25 + 56);
  v27 = v26(&type metadata for CameraUISettingsView, v25);
  sub_1A3A08DB0(v27, KeyPath);
  v28 = swift_getKeyPath();
  v29 = a1[5];
  v98 = a1[4];
  v99[0] = v29;
  *(v99 + 9) = *(a1 + 89);
  v30 = a1[1];
  v94 = *a1;
  v95 = v30;
  v31 = a1[3];
  v96 = a1[2];
  v97 = v31;
  v32 = v26(&type metadata for CameraUISettingsView, v25);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v32;
  v33[5] = v28;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v32;
  v34[5] = v28;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v92 = 0xD00000000000001BLL;
  v93 = 0x80000001A3AA86F0;
  sub_1A3A31100();

  v35 = swift_getKeyPath();
  v36 = a1[5];
  v98 = a1[4];
  v99[0] = v36;
  *(v99 + 9) = *(a1 + 89);
  v37 = a1[1];
  v94 = *a1;
  v95 = v37;
  v38 = a1[3];
  v96 = a1[2];
  v97 = v38;
  v39 = v26(&type metadata for CameraUISettingsView, v25);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v39;
  v40[5] = v35;
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v39;
  v41[5] = v35;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v90 = 0x6867696C68676948;
  v91 = 0xEA00000000007374;
  sub_1A3A31100();

  v42 = swift_getKeyPath();
  v43 = a1[5];
  v98 = a1[4];
  v99[0] = v43;
  *(v99 + 9) = *(a1 + 89);
  v44 = a1[1];
  v94 = *a1;
  v95 = v44;
  v45 = a1[3];
  v96 = a1[2];
  v97 = v45;
  v46 = v26(&type metadata for CameraUISettingsView, v25);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v46;
  v47[5] = v42;
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v46;
  v48[5] = v42;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v88 = 0x73776F64616853;
  v89 = 0xE700000000000000;
  sub_1A3A31100();

  v49 = swift_getKeyPath();
  v50 = a1[5];
  v98 = a1[4];
  v99[0] = v50;
  *(v99 + 9) = *(a1 + 89);
  v51 = a1[1];
  v94 = *a1;
  v95 = v51;
  v52 = a1[3];
  v96 = a1[2];
  v97 = v52;
  v53 = v26(&type metadata for CameraUISettingsView, v25);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  v54[5] = v49;
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v53;
  v55[5] = v49;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v86 = 0x65656C4265676445;
  v87 = 0xE900000000000064;
  sub_1A3A31100();

  v70 = *(v80 + 16);
  v56 = v74;
  v57 = v75;
  v70(v74, v76, v75);
  v58 = *(v81 + 16);
  v59 = v77;
  v60 = v72;
  v58(v77, v83, v72);
  v61 = v71;
  v58(v71, v82, v60);
  v58(v78, v84, v60);
  v58(v79, v85, v60);
  v62 = v73;
  v70(v73, v56, v57);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1017F0);
  v58(&v62[v63[12]], v59, v60);
  v58(&v62[v63[16]], v61, v60);
  v64 = v78;
  (v58)(&v62[v63[20]]);
  v65 = v79;
  (v58)(&v62[v63[24]]);
  v66 = *(v81 + 8);
  v66(v85, v60);
  v66(v84, v60);
  v66(v82, v60);
  v66(v83, v60);
  v67 = *(v80 + 8);
  v68 = v75;
  v67(v76, v75);
  v66(v65, v60);
  v66(v64, v60);
  v66(v61, v60);
  v66(v77, v60);
  return (v67)(v74, v68);
}

uint64_t sub_1A3A0DAAC@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101768);
  v232 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v254 = &v224 - v5;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101790);
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v253 = &v224 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v238 = &v224 - v8;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v252 = &v224 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v251 = &v224 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v250 = &v224 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v249 = &v224 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v248 = &v224 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v247 = &v224 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v246 = &v224 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v224 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v244 = &v224 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v243 = &v224 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v242 = &v224 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v241 = &v224 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v240 = &v224 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v239 = &v224 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v237 = &v224 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v236 = &v224 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v235 = &v224 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v234 = &v224 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v233 = &v224 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v265 = &v224 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v264 = &v224 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v263 = &v224 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v262 = &v224 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v261 = &v224 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v260 = &v224 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v259 = &v224 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v258 = &v224 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v257 = &v224 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v255 = &v224 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v256 = &v224 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1015A8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v224 - v70;
  v72 = swift_projectBox();
  (*(v69 + 16))(v71, v72, v68);
  sub_1A3A312A0();
  (*(v69 + 8))(v71, v68);
  v73 = v266;
  swift_getKeyPath();
  *&v266 = v73;
  sub_1A3A13BE4(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v74 = sub_1A39C3974();
  if (v75)
  {
    v76 = sub_1A395A0F8(v74, v75);

    if (v76 > 6u || ((1 << v76) & 0x43) == 0)
    {
      return (*(v232 + 56))(a2, 1, 1, v4);
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  v227 = v4;
  v79 = KeyPath;
  v80 = a1[5];
  v270 = a1[4];
  *v271 = v80;
  *&v271[9] = *(a1 + 89);
  v81 = a1[1];
  v266 = *a1;
  v267 = v81;
  v82 = a1[3];
  v268 = a1[2];
  v269 = v82;
  v83 = sub_1A3A13B38();
  v84 = *(v83 + 56);
  v224 = v83 + 56;
  v85 = v83;
  v86 = v84(&type metadata for CameraUISettingsView);
  v87 = swift_allocObject();
  v87[2] = 0;
  v87[3] = 0;
  v87[4] = v86;
  v87[5] = v79;
  v88 = swift_allocObject();
  v226 = a2;
  v88[2] = 0;
  v88[3] = 0;
  v88[4] = v86;
  v88[5] = v79;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  strcpy(&v224 - 16, "Top Bar Glass");
  *(&v224 - 1) = -4864;
  sub_1A3A31100();

  v89 = swift_getKeyPath();
  v90 = a1[5];
  v270 = a1[4];
  *v271 = v90;
  *&v271[9] = *(a1 + 89);
  v91 = a1[1];
  v266 = *a1;
  v267 = v91;
  v92 = a1[3];
  v268 = a1[2];
  v269 = v92;
  v93 = v85;
  v94 = v85;
  v95 = v84;
  v96 = (v84)(&type metadata for CameraUISettingsView, v94);
  v97 = swift_allocObject();
  v97[2] = 0;
  v97[3] = 0;
  v97[4] = v96;
  v97[5] = v89;
  v98 = swift_allocObject();
  v98[2] = 0;
  v98[3] = 0;
  v98[4] = v96;
  v98[5] = v89;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000012;
  *(&v224 - 1) = 0x80000001A3AA84F0;
  sub_1A3A31100();

  v99 = swift_getKeyPath();
  v100 = a1[5];
  v270 = a1[4];
  *v271 = v100;
  *&v271[9] = *(a1 + 89);
  v101 = a1[1];
  v266 = *a1;
  v267 = v101;
  v102 = a1[3];
  v268 = a1[2];
  v269 = v102;
  v103 = (v84)(&type metadata for CameraUISettingsView, v93);
  v104 = swift_allocObject();
  v104[2] = 0;
  v104[3] = 0;
  v104[4] = v103;
  v104[5] = v99;
  v105 = swift_allocObject();
  v105[2] = 0;
  v105[3] = 0;
  v105[4] = v103;
  v105[5] = v99;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000010;
  *(&v224 - 1) = 0x80000001A3AA8510;
  sub_1A3A31100();

  v106 = swift_getKeyPath();
  v107 = a1[5];
  v270 = a1[4];
  *v271 = v107;
  *&v271[9] = *(a1 + 89);
  v108 = a1[1];
  v266 = *a1;
  v267 = v108;
  v109 = a1[3];
  v268 = a1[2];
  v269 = v109;
  v110 = (v84)(&type metadata for CameraUISettingsView, v93);
  v111 = swift_allocObject();
  v111[2] = 0;
  v111[3] = 0;
  v111[4] = v110;
  v111[5] = v106;
  v112 = swift_allocObject();
  v112[2] = 0;
  v112[3] = 0;
  v112[4] = v110;
  v112[5] = v106;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000013;
  *(&v224 - 1) = 0x80000001A3AA8530;
  sub_1A3A31100();

  v113 = swift_getKeyPath();
  v114 = a1[5];
  v270 = a1[4];
  *v271 = v114;
  *&v271[9] = *(a1 + 89);
  v115 = a1[1];
  v266 = *a1;
  v267 = v115;
  v116 = a1[3];
  v268 = a1[2];
  v269 = v116;
  v117 = (v84)(&type metadata for CameraUISettingsView, v93);
  v118 = swift_allocObject();
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v117;
  v118[5] = v113;
  v119 = swift_allocObject();
  v119[2] = 0;
  v119[3] = 0;
  v119[4] = v117;
  v119[5] = v113;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000010;
  *(&v224 - 1) = 0x80000001A3AA8550;
  sub_1A3A31100();

  v120 = swift_getKeyPath();
  v121 = a1[5];
  v270 = a1[4];
  *v271 = v121;
  *&v271[9] = *(a1 + 89);
  v122 = a1[1];
  v266 = *a1;
  v267 = v122;
  v123 = a1[3];
  v268 = a1[2];
  v269 = v123;
  v124 = (v84)(&type metadata for CameraUISettingsView, v93);
  v125 = swift_allocObject();
  v125[2] = 0;
  v125[3] = 0;
  v125[4] = v124;
  v125[5] = v120;
  v126 = swift_allocObject();
  v126[2] = 0;
  v126[3] = 0;
  v126[4] = v124;
  v126[5] = v120;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000018;
  *(&v224 - 1) = 0x80000001A3AA8570;
  sub_1A3A31100();

  v127 = swift_getKeyPath();
  v128 = a1[5];
  v270 = a1[4];
  *v271 = v128;
  *&v271[9] = *(a1 + 89);
  v129 = a1[1];
  v266 = *a1;
  v267 = v129;
  v130 = a1[3];
  v268 = a1[2];
  v269 = v130;
  v131 = (v84)(&type metadata for CameraUISettingsView, v93);
  v132 = swift_allocObject();
  v132[2] = 0;
  v132[3] = 0;
  v132[4] = v131;
  v132[5] = v127;
  v133 = swift_allocObject();
  v133[2] = 0;
  v133[3] = 0;
  v133[4] = v131;
  v133[5] = v127;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000010;
  *(&v224 - 1) = 0x80000001A3AA8590;
  sub_1A3A31100();

  v134 = swift_getKeyPath();
  v135 = a1[5];
  v270 = a1[4];
  *v271 = v135;
  *&v271[9] = *(a1 + 89);
  v136 = a1[1];
  v266 = *a1;
  v267 = v136;
  v137 = a1[3];
  v268 = a1[2];
  v269 = v137;
  v138 = (v84)(&type metadata for CameraUISettingsView, v93);
  v139 = swift_allocObject();
  v139[2] = 0;
  v139[3] = 0;
  v139[4] = v138;
  v139[5] = v134;
  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  v140[4] = v138;
  v140[5] = v134;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000014;
  *(&v224 - 1) = 0x80000001A3AA85B0;
  sub_1A3A31100();

  v141 = swift_getKeyPath();
  v142 = a1[5];
  v270 = a1[4];
  *v271 = v142;
  *&v271[9] = *(a1 + 89);
  v143 = a1[1];
  v266 = *a1;
  v267 = v143;
  v144 = a1[3];
  v268 = a1[2];
  v269 = v144;
  v145 = (v84)(&type metadata for CameraUISettingsView, v93);
  v146 = swift_allocObject();
  v146[2] = 0;
  v146[3] = 0;
  v146[4] = v145;
  v146[5] = v141;
  v147 = swift_allocObject();
  v147[2] = 0;
  v147[3] = 0;
  v147[4] = v145;
  v147[5] = v141;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000017;
  *(&v224 - 1) = 0x80000001A3AA85D0;
  sub_1A3A31100();

  v148 = swift_getKeyPath();
  v149 = a1[5];
  v270 = a1[4];
  *v271 = v149;
  *&v271[9] = *(a1 + 89);
  v150 = a1[1];
  v266 = *a1;
  v267 = v150;
  v151 = a1[3];
  v268 = a1[2];
  v269 = v151;
  v152 = (v84)(&type metadata for CameraUISettingsView, v93);
  v153 = swift_allocObject();
  v153[2] = 0;
  v153[3] = 0;
  v153[4] = v152;
  v153[5] = v148;
  v154 = swift_allocObject();
  v154[2] = 0;
  v154[3] = 0;
  v154[4] = v152;
  v154[5] = v148;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD00000000000001ALL;
  *(&v224 - 1) = 0x80000001A3AA85F0;
  sub_1A3A31100();

  v155 = swift_getKeyPath();
  v156 = a1[5];
  v270 = a1[4];
  *v271 = v156;
  *&v271[9] = *(a1 + 89);
  v157 = a1[1];
  v266 = *a1;
  v267 = v157;
  v158 = a1[3];
  v268 = a1[2];
  v269 = v158;
  v159 = (v84)(&type metadata for CameraUISettingsView, v93);
  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = 0;
  v160[4] = v159;
  v160[5] = v155;
  v161 = swift_allocObject();
  v161[2] = 0;
  v161[3] = 0;
  v161[4] = v159;
  v161[5] = v155;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000027;
  *(&v224 - 1) = 0x80000001A3AA8610;
  sub_1A3A31100();

  v162 = swift_getKeyPath();
  v163 = a1[5];
  v270 = a1[4];
  *v271 = v163;
  *&v271[9] = *(a1 + 89);
  v164 = a1[1];
  v266 = *a1;
  v267 = v164;
  v165 = a1[3];
  v268 = a1[2];
  v269 = v165;
  v166 = v95(&type metadata for CameraUISettingsView, v93);
  v167 = swift_allocObject();
  v167[2] = 0;
  v167[3] = 0;
  v167[4] = v166;
  v167[5] = v162;
  v168 = swift_allocObject();
  v168[2] = 0;
  v168[3] = 0;
  v168[4] = v166;
  v168[5] = v162;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  v225 = 0xD000000000000011;
  *(&v224 - 2) = 0xD000000000000011;
  *(&v224 - 1) = 0x80000001A3AA8640;
  sub_1A3A31100();

  v169 = swift_getKeyPath();
  v170 = a1[5];
  v270 = a1[4];
  *v271 = v170;
  *&v271[9] = *(a1 + 89);
  v171 = a1[1];
  v266 = *a1;
  v267 = v171;
  v172 = a1[3];
  v268 = a1[2];
  v269 = v172;
  v173 = v95(&type metadata for CameraUISettingsView, v93);
  v174 = swift_allocObject();
  v174[2] = 0;
  v174[3] = 0;
  v174[4] = v173;
  v174[5] = v169;
  v175 = swift_allocObject();
  v175[2] = 0;
  v175[3] = 0;
  v175[4] = v173;
  v175[5] = v169;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD000000000000021;
  *(&v224 - 1) = 0x80000001A3AA8660;
  sub_1A3A31100();

  v176 = swift_getKeyPath();
  v177 = a1[5];
  v270 = a1[4];
  *v271 = v177;
  *&v271[9] = *(a1 + 89);
  v178 = a1[1];
  v266 = *a1;
  v267 = v178;
  v179 = a1[3];
  v268 = a1[2];
  v269 = v179;
  v180 = v95(&type metadata for CameraUISettingsView, v93);
  v181 = swift_allocObject();
  v181[2] = 0;
  v181[3] = 0;
  v181[4] = v180;
  v181[5] = v176;
  v182 = swift_allocObject();
  v182[2] = 0;
  v182[3] = 0;
  v182[4] = v180;
  v182[5] = v176;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = 0xD00000000000001BLL;
  *(&v224 - 1) = 0x80000001A3AA8690;
  sub_1A3A31100();

  v183 = swift_getKeyPath();
  v184 = a1[5];
  v270 = a1[4];
  *v271 = v184;
  *&v271[9] = *(a1 + 89);
  v185 = a1[1];
  v266 = *a1;
  v267 = v185;
  v186 = a1[3];
  v268 = a1[2];
  v269 = v186;
  v187 = v95(&type metadata for CameraUISettingsView, v93);
  v188 = swift_allocObject();
  v188[2] = 0;
  v188[3] = 0;
  v188[4] = v187;
  v188[5] = v183;
  v189 = swift_allocObject();
  v189[2] = 0;
  v189[3] = 0;
  v189[4] = v187;
  v189[5] = v183;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  MEMORY[0x1EEE9AC00](v274);
  *(&v224 - 2) = v225;
  *(&v224 - 1) = 0x80000001A3AA86B0;
  sub_1A3A31100();

  v190 = swift_getKeyPath();
  v191 = a1[5];
  v270 = a1[4];
  *v271 = v191;
  *&v271[9] = *(a1 + 89);
  v192 = a1[1];
  v266 = *a1;
  v267 = v192;
  v193 = a1[3];
  v268 = a1[2];
  v269 = v193;
  v194 = v95(&type metadata for CameraUISettingsView, v93);
  sub_1A3A08DB0(v194, v190);
  v195 = v228;
  v196 = *(v228 + 16);
  v197 = v237;
  v198 = v229;
  v196(v237, v256, v229);
  *&v266 = v197;
  v199 = v239;
  v196(v239, v255, v198);
  *(&v266 + 1) = v199;
  v200 = v240;
  v196(v240, v257, v198);
  *&v267 = v200;
  v201 = v241;
  v196(v241, v258, v198);
  *(&v267 + 1) = v201;
  v202 = v242;
  v196(v242, v259, v198);
  *&v268 = v202;
  v203 = v243;
  v196(v243, v260, v198);
  *(&v268 + 1) = v203;
  v204 = v244;
  v196(v244, v261, v198);
  *&v269 = v204;
  v205 = v245;
  v196(v245, v262, v198);
  *(&v269 + 1) = v205;
  v206 = v246;
  v196(v246, v263, v198);
  *&v270 = v206;
  v207 = v247;
  v196(v247, v264, v198);
  *(&v270 + 1) = v207;
  v208 = v248;
  v196(v248, v265, v198);
  *v271 = v208;
  v209 = v249;
  v210 = v233;
  v196(v249, v233, v198);
  *&v271[8] = v209;
  v211 = v250;
  v212 = v234;
  v196(v250, v234, v198);
  *&v271[16] = v211;
  v213 = v251;
  v214 = v235;
  v196(v251, v235, v198);
  *&v271[24] = v213;
  v215 = v252;
  v216 = v236;
  v196(v252, v236, v198);
  v272 = v215;
  v217 = v230;
  v218 = v253;
  v219 = v238;
  v220 = v231;
  (*(v230 + 16))(v253, v238, v231);
  v273 = v218;
  sub_1A3A08270(&v266, v254);
  v221 = *(v217 + 8);
  v221(v219, v220);
  v222 = *(v195 + 8);
  v222(v216, v198);
  v222(v214, v198);
  v222(v212, v198);
  v222(v210, v198);
  v222(v265, v198);
  v222(v264, v198);
  v222(v263, v198);
  v222(v262, v198);
  v222(v261, v198);
  v222(v260, v198);
  v222(v259, v198);
  v222(v258, v198);
  v222(v257, v198);
  v222(v255, v198);
  v222(v256, v198);
  v221(v253, v220);
  v222(v252, v198);
  v222(v251, v198);
  v222(v250, v198);
  v222(v249, v198);
  v222(v248, v198);
  v222(v247, v198);
  v222(v246, v198);
  v222(v245, v198);
  v222(v244, v198);
  v222(v243, v198);
  v222(v242, v198);
  v222(v241, v198);
  v222(v240, v198);
  v222(v239, v198);
  v222(v237, v198);
  v223 = v226;
  sub_1A388F670(v254, v226, &qword_1EB101768);
  return (*(v232 + 56))(v223, 0, 1, v227);
}

uint64_t sub_1A3A0FFBC@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E0);
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v67[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v67[-v10];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v84 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v67[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v67[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v67[-v17];
  KeyPath = swift_getKeyPath();
  v19 = a1[5];
  v105 = a1[4];
  v106[0] = v19;
  *(v106 + 9) = *(a1 + 89);
  v20 = a1[1];
  v101 = *a1;
  v102 = v20;
  v21 = a1[3];
  v103 = a1[2];
  v104 = v21;
  v22 = sub_1A3A13B38();
  v79 = *(v22 + 56);
  v71 = v22;
  v23 = v79(&type metadata for CameraUISettingsView, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  v24[5] = KeyPath;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = KeyPath;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v90 = 0xD000000000000012;
  v91 = 0x80000001A3AA8470;
  sub_1A3A31100();

  v26 = swift_getKeyPath();
  v27 = a1[5];
  v105 = a1[4];
  v106[0] = v27;
  *(v106 + 9) = *(a1 + 89);
  v28 = a1[1];
  v101 = *a1;
  v102 = v28;
  v29 = a1[3];
  v103 = a1[2];
  v104 = v29;
  v30 = v79(&type metadata for CameraUISettingsView, v22);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v30;
  v31[5] = v26;
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v30;
  v32[5] = v26;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v88 = 0xD000000000000024;
  v89 = 0x80000001A3AA8490;
  sub_1A3A31100();

  v33 = swift_getKeyPath();
  v34 = sub_1A3A300B0();
  v35 = v80;
  *v80 = v34;
  v35[1] = 0;
  *(v35 + 16) = 1;
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016F0) + 44);
  v37 = a1[5];
  v99 = a1[4];
  v100[0] = v37;
  *(v100 + 9) = *(a1 + 89);
  v38 = a1[1];
  v95 = *a1;
  v96 = v38;
  v39 = a1[3];
  v97 = a1[2];
  v98 = v39;
  v70 = sub_1A3A2FF40();
  LOBYTE(v93) = 1;
  v105 = v99;
  v106[0] = v100[0];
  *(v106 + 9) = *(v100 + 9);
  v101 = v95;
  v102 = v96;
  v103 = v97;
  v104 = v98;
  sub_1A3A084F0(&v115);
  v109 = *&v116[16];
  v110 = *&v116[32];
  v107 = v115;
  v108 = *v116;
  v112[2] = *&v116[16];
  v112[3] = *&v116[32];
  v112[4] = *&v116[48];
  v112[1] = *v116;
  v111 = *&v116[48];
  v112[0] = v115;
  sub_1A388F6D8(&v107, &v113, &qword_1EB1016F8);
  sub_1A388F740(v112, &qword_1EB1016F8);
  *&v94[23] = v108;
  *&v94[39] = v109;
  *&v94[55] = v110;
  *&v94[71] = v111;
  *&v94[7] = v107;
  LOBYTE(v26) = v93;
  v68 = v93;
  v40 = v79(&type metadata for CameraUISettingsView, v71);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v40;
  v41[5] = v33;
  v69 = v33;
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v40;
  v42[5] = v33;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v86 = 0xD000000000000028;
  v87 = 0x80000001A3AA84C0;
  v113 = v115;
  *v114 = *v116;
  v93 = xmmword_1A3A852B0;
  v92 = 0x3FD0000000000000;
  sub_1A3A140E4();
  v43 = v82;
  sub_1A3A31090();

  v45 = v72;
  v44 = v73;
  v46 = *(v73 + 16);
  v47 = v74;
  v46(v72, v43, v74);
  v48 = v70;
  v113 = v70;
  v114[0] = v26;
  *&v114[1] = *v94;
  *&v114[17] = *&v94[16];
  *&v114[65] = *&v94[64];
  *&v114[49] = *&v94[48];
  *&v114[33] = *&v94[32];
  v49 = *&v94[79];
  *&v114[80] = *&v94[79];
  v50 = *v114;
  *v36 = v70;
  *(v36 + 1) = v50;
  v51 = *&v114[16];
  v52 = *&v114[32];
  v53 = *&v114[48];
  v54 = *&v114[64];
  *(v36 + 12) = v49;
  *(v36 + 4) = v53;
  *(v36 + 5) = v54;
  *(v36 + 2) = v51;
  *(v36 + 3) = v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101708);
  v46(&v36[*(v55 + 48)], v45, v47);
  sub_1A388F6D8(&v113, &v115, &qword_1EB101710);
  v56 = *(v44 + 8);
  v56(v82, v47);
  v56(v45, v47);
  *&v116[33] = *&v94[32];
  *&v116[49] = *&v94[48];
  *v117 = *&v94[64];
  *&v116[1] = *v94;
  v115 = v48;
  v116[0] = v68;
  *&v117[15] = *&v94[79];
  *&v116[17] = *&v94[16];
  sub_1A388F740(&v115, &qword_1EB101710);

  v57 = v83;
  v58 = *(v84 + 16);
  v59 = v76;
  v58(v83, v81, v76);
  v60 = v75;
  v58(v75, v85, v59);
  v61 = v80;
  v62 = v77;
  sub_1A388F6D8(v80, v77, &qword_1EB1016E8);
  v63 = v78;
  v58(v78, v57, v59);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101788);
  v58(&v63[*(v64 + 48)], v60, v59);
  sub_1A388F6D8(v62, &v63[*(v64 + 64)], &qword_1EB1016E8);
  sub_1A388F740(v61, &qword_1EB1016E8);
  v65 = *(v84 + 8);
  v65(v85, v59);
  v65(v81, v59);
  sub_1A388F740(v62, &qword_1EB1016E8);
  v65(v60, v59);
  return (v65)(v83, v59);
}

uint64_t sub_1A3A10A50@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E0);
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v68[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v68[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v68[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68[-v13];
  KeyPath = swift_getKeyPath();
  *v14 = sub_1A3A300B0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v81 = v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016F0);
  v73 = &v14[*(v80 + 44)];
  v16 = a1[5];
  *&v109[19] = a1[4];
  v110[0] = v16;
  *(v110 + 9) = *(a1 + 89);
  v17 = a1[1];
  *&v109[11] = *a1;
  *&v109[13] = v17;
  v18 = a1[3];
  *&v109[15] = a1[2];
  *&v109[17] = v18;
  v85 = sub_1A3A2FF40();
  LOBYTE(v126) = 1;
  v19 = a1[5];
  v116[6] = a1[4];
  v117[0] = v19;
  *(v117 + 9) = *(a1 + 89);
  v20 = a1[1];
  v116[2] = *a1;
  v116[3] = v20;
  v21 = a1[2];
  v116[5] = a1[3];
  v116[4] = v21;
  sub_1A3A086BC(&v111);
  v120 = v113;
  v121 = v114;
  v122 = v115;
  v119 = v112;
  v118 = v111;
  v123[2] = v113;
  v123[3] = v114;
  v123[4] = v115;
  v123[1] = v112;
  v123[0] = v111;
  sub_1A388F6D8(&v118, &v103, &qword_1EB1016F8);
  sub_1A388F740(v123, &qword_1EB1016F8);
  *(&v109[2] + 7) = v119;
  *(&v109[4] + 7) = v120;
  *(&v109[6] + 7) = v121;
  *(&v109[8] + 7) = v122;
  *(v109 + 7) = v118;
  v22 = v126;
  v69 = v126;
  v23 = sub_1A3A13B38();
  v24 = *(v23 + 56);
  v77 = v23 + 56;
  v78 = v23;
  v79 = v24;
  v25 = v24(&type metadata for CameraUISettingsView, v23);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v26[5] = KeyPath;
  v70 = KeyPath;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  v27[5] = KeyPath;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v93 = 0x6F46206C6C616D53;
  v94 = 0xEA0000000000746ELL;
  v103 = v111;
  *&v104 = v112;
  v126 = xmmword_1A3A852C0;
  v124[0] = 0x3FE0000000000000;
  v76 = sub_1A389FE28();
  v75 = CAMPhotoFormatMake;
  v28 = v87;
  sub_1A3A31090();

  v30 = v90 + 16;
  v29 = *(v90 + 16);
  v31 = v86;
  v32 = v88;
  v29(v86, v28, v88);
  v71 = v29;
  v72 = v30;
  v124[0] = v85;
  v124[1] = 0;
  v125[0] = v22;
  *&v125[1] = *v109;
  *&v125[17] = *&v109[2];
  *&v125[65] = *&v109[8];
  *&v125[49] = *&v109[6];
  *&v125[33] = *&v109[4];
  v33 = *(&v109[9] + 7);
  *&v125[80] = *(&v109[9] + 7);
  v34 = *v125;
  v35 = v73;
  *v73 = v85;
  *(v35 + 1) = v34;
  v36 = *&v125[16];
  v37 = *&v125[32];
  v38 = *&v125[48];
  v39 = *&v125[64];
  *(v35 + 12) = v33;
  *(v35 + 4) = v38;
  *(v35 + 5) = v39;
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101708);
  v29(&v35[*(v74 + 48)], v31, v32);
  sub_1A388F6D8(v124, &v111, &qword_1EB101710);
  v40 = *(v90 + 8);
  v90 += 8;
  v73 = v40;
  (v40)(v28, v32);
  (v40)(v31, v32);
  v130 = *&v109[4];
  v131 = *&v109[6];
  *v132 = *&v109[8];
  v128 = *v109;
  v126 = v85;
  v127 = v69;
  *&v132[15] = *(&v109[9] + 7);
  v129 = *&v109[2];
  sub_1A388F740(&v126, &qword_1EB101710);

  v41 = swift_getKeyPath();
  v42 = sub_1A3A300B0();
  v43 = v89;
  *v89 = v42;
  v43[1] = 0;
  *(v43 + 16) = 1;
  v44 = v43 + *(v80 + 44);
  v45 = a1[5];
  v107 = a1[4];
  v108[0] = v45;
  *(v108 + 9) = *(a1 + 89);
  v46 = a1[1];
  v103 = *a1;
  v104 = v46;
  v47 = a1[3];
  v105 = a1[2];
  v106 = v47;
  v48 = sub_1A3A2FF40();
  LOBYTE(v96) = 1;
  v115 = v107;
  v116[0] = v108[0];
  *(v116 + 9) = *(v108 + 9);
  v111 = v103;
  v112 = v104;
  v113 = v105;
  v114 = v106;
  sub_1A3A086BC(&v99);
  v135 = *&v100[16];
  v136 = *&v100[32];
  v133 = v99;
  v134 = *v100;
  v138[2] = *&v100[16];
  v138[3] = *&v100[32];
  v138[4] = *&v100[48];
  v138[1] = *v100;
  v137 = *&v100[48];
  v138[0] = v99;
  sub_1A388F6D8(&v133, &v97, &qword_1EB1016F8);
  sub_1A388F740(v138, &qword_1EB1016F8);
  *&v102[23] = v134;
  *&v102[39] = v135;
  *&v102[55] = v136;
  *&v102[71] = v137;
  *&v102[7] = v133;
  LODWORD(v85) = v96;
  v49 = v79(&type metadata for CameraUISettingsView, v78);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v49;
  v50[5] = v41;
  v70 = v41;
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v49;
  v51[5] = v41;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v91 = 0x6F4620656772614CLL;
  v92 = 0xEA0000000000746ELL;
  v97 = v99;
  *v98 = *v100;
  v96 = xmmword_1A3A852D0;
  v95 = 0x3FE0000000000000;
  sub_1A3A31090();

  v52 = v86;
  v53 = v88;
  v54 = v71;
  v71(v86, v28, v88);
  v97 = v48;
  v98[0] = v85;
  *&v98[1] = *v102;
  *&v98[17] = *&v102[16];
  *&v98[65] = *&v102[64];
  *&v98[49] = *&v102[48];
  *&v98[33] = *&v102[32];
  *&v98[80] = *&v102[79];
  v55 = *v98;
  *v44 = v48;
  *(v44 + 1) = v55;
  v56 = *&v98[16];
  v57 = *&v98[32];
  v58 = *&v98[48];
  v59 = *&v98[64];
  *(v44 + 12) = *&v98[80];
  *(v44 + 4) = v58;
  *(v44 + 5) = v59;
  *(v44 + 2) = v56;
  *(v44 + 3) = v57;
  v54(&v44[*(v74 + 48)], v52, v53);
  sub_1A388F6D8(&v97, &v99, &qword_1EB101710);
  v60 = v73;
  (v73)(v87, v53);
  v60(v52, v53);
  *&v100[33] = *&v102[32];
  *&v100[49] = *&v102[48];
  *v101 = *&v102[64];
  *&v100[1] = *v102;
  v99 = v48;
  v100[0] = v85;
  *&v101[15] = *&v102[79];
  *&v100[17] = *&v102[16];
  sub_1A388F740(&v99, &qword_1EB101710);

  v62 = v81;
  v61 = v82;
  sub_1A388F6D8(v81, v82, &qword_1EB1016E8);
  v63 = v89;
  v64 = v83;
  sub_1A388F6D8(v89, v83, &qword_1EB1016E8);
  v65 = v84;
  sub_1A388F6D8(v61, v84, &qword_1EB1016E8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101718);
  sub_1A388F6D8(v64, v65 + *(v66 + 48), &qword_1EB1016E8);
  sub_1A388F740(v63, &qword_1EB1016E8);
  sub_1A388F740(v62, &qword_1EB1016E8);
  sub_1A388F740(v64, &qword_1EB1016E8);
  return sub_1A388F740(v61, &qword_1EB1016E8);
}

uint64_t sub_1A3A11544@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E0);
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v75[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v75[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v75[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75[-v13];
  KeyPath = swift_getKeyPath();
  *v14 = sub_1A3A300B0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v88 = v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016F0);
  v80 = &v14[*(v87 + 44)];
  v16 = a1[5];
  *&v116[19] = a1[4];
  v117[0] = v16;
  *(v117 + 9) = *(a1 + 89);
  v17 = a1[1];
  *&v116[11] = *a1;
  *&v116[13] = v17;
  v18 = a1[3];
  *&v116[15] = a1[2];
  *&v116[17] = v18;
  v92 = sub_1A3A2FF40();
  LOBYTE(v133) = 1;
  v19 = a1[5];
  v123[6] = a1[4];
  v124[0] = v19;
  *(v124 + 9) = *(a1 + 89);
  v20 = a1[1];
  v123[2] = *a1;
  v123[3] = v20;
  v21 = a1[2];
  v123[5] = a1[3];
  v123[4] = v21;
  sub_1A3A084F0(&v118);
  v127 = v120;
  v128 = v121;
  v129 = v122;
  v126 = v119;
  v125 = v118;
  v130[2] = v120;
  v130[3] = v121;
  v130[4] = v122;
  v130[1] = v119;
  v130[0] = v118;
  sub_1A388F6D8(&v125, &v110, &qword_1EB1016F8);
  sub_1A388F740(v130, &qword_1EB1016F8);
  *(&v116[2] + 7) = v126;
  *(&v116[4] + 7) = v127;
  *(&v116[6] + 7) = v128;
  *(&v116[8] + 7) = v129;
  *(v116 + 7) = v125;
  v22 = v133;
  v76 = v133;
  v23 = sub_1A3A13B38();
  v24 = *(v23 + 56);
  v84 = v23 + 56;
  v85 = v23;
  v86 = v24;
  v25 = v24(&type metadata for CameraUISettingsView, v23);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v26[5] = KeyPath;
  v77 = KeyPath;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  v27[5] = KeyPath;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v100 = 0xD000000000000012;
  v101 = 0x80000001A3AA83D0;
  v110 = v118;
  *&v111 = v119;
  v133 = xmmword_1A3A852E0;
  v131[0] = 0x3FE0000000000000;
  v83 = sub_1A3A140E4();
  v82 = CAMPhotoFormatMake;
  v28 = v96;
  sub_1A3A31090();

  v29 = v97;
  v31 = v97 + 16;
  v30 = *(v97 + 16);
  v32 = v93;
  v33 = v94;
  v30(v93, v28, v94);
  v78 = v30;
  v79 = v31;
  v131[0] = v92;
  v131[1] = 0;
  v132[0] = v22;
  *&v132[1] = *v116;
  *&v132[17] = *&v116[2];
  *&v132[65] = *&v116[8];
  *&v132[49] = *&v116[6];
  *&v132[33] = *&v116[4];
  v34 = *(&v116[9] + 7);
  *&v132[80] = *(&v116[9] + 7);
  v35 = *v132;
  v36 = v80;
  *v80 = v92;
  *(v36 + 1) = v35;
  v37 = *&v132[16];
  v38 = *&v132[32];
  v39 = *&v132[48];
  v40 = *&v132[64];
  *(v36 + 12) = v34;
  *(v36 + 4) = v39;
  *(v36 + 5) = v40;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v41 = v36;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101708);
  v42 = &v41[*(v81 + 48)];
  v43 = v32;
  v30(v42, v32, v33);
  sub_1A388F6D8(v131, &v118, &qword_1EB101710);
  v44 = v29 + 8;
  v45 = *(v29 + 8);
  v97 = v44;
  v80 = v45;
  (v45)(v28, v33);
  (v45)(v43, v33);
  v137 = *&v116[4];
  v138 = *&v116[6];
  *v139 = *&v116[8];
  v135 = *v116;
  v133 = v92;
  v134 = v76;
  *&v139[15] = *(&v116[9] + 7);
  v136 = *&v116[2];
  sub_1A388F740(&v133, &qword_1EB101710);

  v46 = swift_getKeyPath();
  v47 = sub_1A3A300B0();
  v48 = v95;
  *v95 = v47;
  v48[1] = 0;
  *(v48 + 16) = 1;
  v49 = v48 + *(v87 + 44);
  v50 = a1[5];
  v114 = a1[4];
  v115[0] = v50;
  *(v115 + 9) = *(a1 + 89);
  v51 = a1[1];
  v110 = *a1;
  v111 = v51;
  v52 = a1[3];
  v112 = a1[2];
  v113 = v52;
  v87 = sub_1A3A2FF40();
  LOBYTE(v103) = 1;
  v122 = v114;
  v123[0] = v115[0];
  *(v123 + 9) = *(v115 + 9);
  v118 = v110;
  v119 = v111;
  v120 = v112;
  v121 = v113;
  sub_1A3A084F0(&v106);
  v142 = *&v107[16];
  v143 = *&v107[32];
  v140 = v106;
  v141 = *v107;
  v145[2] = *&v107[16];
  v145[3] = *&v107[32];
  v145[4] = *&v107[48];
  v145[1] = *v107;
  v144 = *&v107[48];
  v145[0] = v106;
  sub_1A388F6D8(&v140, &v104, &qword_1EB1016F8);
  sub_1A388F740(v145, &qword_1EB1016F8);
  *&v109[23] = v141;
  *&v109[39] = v142;
  *&v109[55] = v143;
  *&v109[71] = v144;
  *&v109[7] = v140;
  LODWORD(v92) = v103;
  v53 = v86(&type metadata for CameraUISettingsView, v85);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  v54[5] = v46;
  v77 = v46;
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v53;
  v55[5] = v46;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v98 = 0xD000000000000016;
  v99 = 0x80000001A3AA83F0;
  v104 = v106;
  *v105 = *v107;
  v103 = xmmword_1A3A852F0;
  v102 = 0x3FE0000000000000;
  v56 = v96;
  sub_1A3A31090();

  v57 = v93;
  v58 = v56;
  v59 = v94;
  v60 = v78;
  v78(v93, v58, v94);
  v61 = v87;
  v104 = v87;
  v105[0] = v92;
  *&v105[1] = *v109;
  *&v105[17] = *&v109[16];
  *&v105[65] = *&v109[64];
  *&v105[49] = *&v109[48];
  *&v105[33] = *&v109[32];
  *&v105[80] = *&v109[79];
  v62 = *v105;
  *v49 = v87;
  *(v49 + 1) = v62;
  v63 = *&v105[16];
  v64 = *&v105[32];
  v65 = *&v105[48];
  v66 = *&v105[64];
  *(v49 + 12) = *&v105[80];
  *(v49 + 4) = v65;
  *(v49 + 5) = v66;
  *(v49 + 2) = v63;
  *(v49 + 3) = v64;
  v60(&v49[*(v81 + 48)], v57, v59);
  sub_1A388F6D8(&v104, &v106, &qword_1EB101710);
  v67 = v80;
  (v80)(v96, v59);
  v67(v57, v59);
  *&v107[33] = *&v109[32];
  *&v107[49] = *&v109[48];
  *v108 = *&v109[64];
  *&v107[1] = *v109;
  v106 = v61;
  v107[0] = v92;
  *&v108[15] = *&v109[79];
  *&v107[17] = *&v109[16];
  sub_1A388F740(&v106, &qword_1EB101710);

  v69 = v88;
  v68 = v89;
  sub_1A388F6D8(v88, v89, &qword_1EB1016E8);
  v70 = v95;
  v71 = v90;
  sub_1A388F6D8(v95, v90, &qword_1EB1016E8);
  v72 = v91;
  sub_1A388F6D8(v68, v91, &qword_1EB1016E8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101718);
  sub_1A388F6D8(v71, v72 + *(v73 + 48), &qword_1EB1016E8);
  sub_1A388F740(v70, &qword_1EB1016E8);
  sub_1A388F740(v69, &qword_1EB1016E8);
  sub_1A388F740(v71, &qword_1EB1016E8);
  return sub_1A388F740(v68, &qword_1EB1016E8);
}

uint64_t sub_1A3A12030()
{
  sub_1A3A31480();
  sub_1A3A2FBF0();
  sub_1A3A30610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016B8);
  sub_1A3A13F60();
  return sub_1A3A2F940();
}

double sub_1A3A12100@<D0>(uint64_t a1@<X8>)
{
  result = 2.6464079e199;
  *a1 = xmmword_1A3A85300;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1A3A12120@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - v11;
  v37 = 0x80000001A3AA8310;
  KeyPath = swift_getKeyPath();
  v13 = a1[5];
  v52 = a1[4];
  *v53 = v13;
  *&v53[9] = *(a1 + 89);
  v14 = a1[1];
  v48 = *a1;
  v49 = v14;
  v15 = a1[3];
  v50 = a1[2];
  v51 = v15;
  v16 = sub_1A3A13B38();
  v38 = *(v16 + 56);
  v17 = v38(&type metadata for CameraUISettingsView, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = KeyPath;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = KeyPath;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v46 = 0xD000000000000021;
  v47 = v37;
  sub_1A3A31100();

  v20 = swift_getKeyPath();
  v21 = a1[5];
  v52 = a1[4];
  *v53 = v21;
  *&v53[9] = *(a1 + 89);
  v22 = a1[1];
  v48 = *a1;
  v49 = v22;
  v23 = a1[3];
  v50 = a1[2];
  v51 = v23;
  v24 = v38(&type metadata for CameraUISettingsView, v16);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v25[5] = v20;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v26[5] = v20;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  v44 = 0xD000000000000024;
  v45 = 0x80000001A3AA8340;
  v27 = v40;
  sub_1A3A31100();

  v28 = *(v4 + 16);
  v29 = v41;
  v30 = v39;
  v28(v41, v39, v3);
  v31 = v42;
  v28(v42, v27, v3);
  v32 = v43;
  v28(v43, v29, v3);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016A8);
  v28(&v32[*(v33 + 48)], v31, v3);
  v34 = *(v4 + 8);
  v34(v27, v3);
  v34(v30, v3);
  v34(v31, v3);
  return (v34)(v29, v3);
}

uint64_t sub_1A3A12650()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1A3A13B38();
  v2 = (*(v1 + 56))(&type metadata for CameraUISettingsView, v1);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v2;
  v3[5] = KeyPath;
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v4[5] = KeyPath;
  swift_retain_n();
  swift_retain_n();
  sub_1A3A311C0();
  sub_1A3A31100();
}

uint64_t sub_1A3A127E4(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  *(v2 + 105) = *(a1 + 89);
  v4 = a1[1];
  v2[1] = *a1;
  v2[2] = v4;
  v5 = a1[3];
  v2[3] = a1[2];
  v2[4] = v5;
  sub_1A3A13C34(a1, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6A0);
  sub_1A38A08F8(&qword_1EB0FC6A8, &qword_1EB0FC6A0);
  return sub_1A3A30FE0();
}

__n128 sub_1A3A128EC@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_1A3A2FF40();
  sub_1A3A12958(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

id sub_1A3A12958@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3A30EB0();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    deviceSupportsDynamicIsland = MobileGestalt_get_deviceSupportsDynamicIsland();

    if (deviceSupportsDynamicIsland)
    {
      v6 = 0x2063696D616E7944;
    }

    else
    {
      v6 = 0x6863746F4ELL;
    }

    if (deviceSupportsDynamicIsland)
    {
      v7 = 0xEE00646E616C7349;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1A58F7770](v6, v7);

    *a1 = v2;
    *(a1 + 8) = 0x206572757361654DLL;
    *(a1 + 16) = 0xE800000000000000;
    *(a1 + 24) = 0;
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    sub_1A3A2EA60();
    sub_1A389F1A4(0x206572757361654DLL, 0xE800000000000000, 0);
    sub_1A3A2EA50();
    sub_1A389F1B4(0x206572757361654DLL, 0xE800000000000000, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1A3A12AA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 104);
  v8 = *(a1 + 96);
  v30 = v8;
  if (v31 == 1)
  {
    v29 = v8;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v30, &qword_1EB0FC3C0);
    (*(v5 + 8))(v7, v4);
    v8 = v29;
  }

  swift_getKeyPath();
  *&v18 = v8;
  sub_1A3A13BE4(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v10 = *(v8 + 424);
  v11 = *(v8 + 432);

  v17 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FB0();
  sub_1A3897344(v18, *(&v18 + 1), v19, &v18, v10, v11);
  v12 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v12;
  *(a2 + 160) = v28;
  v13 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v13;
  v14 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v14;
  v15 = v19;
  *a2 = v18;
  *(a2 + 16) = v15;
  result = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1A3A12D80()
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  type metadata accessor for CameraUISettings(0);
  swift_allocObject();
  v0 = sub_1A395542C();
  return sub_1A39550EC(v0);
}

void sub_1A3A12DF8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001A3AA8390;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3A12E28()
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  sub_1A3A13BE4(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A3A12F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101528);
  sub_1A38A08F8(&qword_1EB101530, &qword_1EB101528);
  return sub_1A3A2F950();
}

id sub_1A3A12FC8()
{
  v0 = objc_allocWithZone(CAMCameraButtonBuddyViewController);

  return [v0 init];
}

uint64_t sub_1A3A13014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A146AC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3A13078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A146AC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3A130DC()
{
  sub_1A3A146AC();
  sub_1A3A30560();
  __break(1u);
}

uint64_t CAMSolariumGrouping.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6574656C706D6F43;
    }

    if (a1 == 3)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701736270;
    }

    if (a1 == 1)
    {
      return 0x74696C7053;
    }
  }

  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A3A13230()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736270;
    }

    if (v1 == 1)
    {
      return 0x74696C7053;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x6574656C706D6F43;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_1A3A32070();
    __break(1u);
    return result;
  }

  return 0xD000000000000011;
}

uint64_t sub_1A3A1334C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v8 = a1;
  sub_1A3A2EA60();
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v7, 0);

  *a2 = v5;
  return result;
}

uint64_t sub_1A3A133D4()
{
  sub_1A3A2EA60();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1A3A1342C()
{
  sub_1A3A2EA60();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1A3A13490@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v8 = a1;
  sub_1A3A2EA60();
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v7, 0);

  *a2 = v5;
  return result;
}

uint64_t sub_1A3A13510()
{
  sub_1A3A2EA60();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1A3A13568@<X0>(uint64_t a1@<X8>)
{
  sub_1A3A31880();
  sub_1A389FD78();
  result = sub_1A3A308E0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A3A135EC@<X0>(uint64_t a1@<X8>)
{
  sub_1A3A31880();
  sub_1A389FD78();
  result = sub_1A3A308E0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A3A13650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101538);
  sub_1A38A08F8(&qword_1EB101540, &qword_1EB101538);
  return sub_1A3A307E0();
}

uint64_t sub_1A3A13718@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 infoDictionary];

  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = sub_1A3A31710();

  if (!*(v4 + 16) || (v5 = sub_1A3A1B864(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) == 0))
  {

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  sub_1A395ADE0(*(v4 + 56) + 32 * v5, v16);

  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v15;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  v13 = v8;
LABEL_13:
  sub_1A3A30F80();
  sub_1A3A30F80();
  sub_1A3A30F80();
  sub_1A3A30F80();
  type metadata accessor for ChromeViewModel();
  sub_1A3A13BE4(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  result = sub_1A3A2F650();
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001A3AA8260;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = result;
  *(a1 + 104) = v11 & 1;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A3A139A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1A3A139F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3A13AC0(uint64_t a1)
{
  result = sub_1A39C81E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3A13B38()
{
  result = qword_1EB101520;
  if (!qword_1EB101520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101520);
  }

  return result;
}

uint64_t sub_1A3A13BE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3A13C6C()
{
  result = qword_1EB1015C8;
  if (!qword_1EB1015C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1015C8);
  }

  return result;
}

uint64_t sub_1A3A13CFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3A13D78()
{
  result = qword_1EB101680;
  if (!qword_1EB101680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB101670);
    sub_1A3A13CFC(&qword_1EB1015C0, &qword_1EB1015B0, &unk_1A3A85588, sub_1A3A13C6C);
    sub_1A38A08F8(&qword_1EB101668, &qword_1EB101660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101680);
  }

  return result;
}

unint64_t sub_1A3A13E60()
{
  result = qword_1EB101688;
  if (!qword_1EB101688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101688);
  }

  return result;
}

unint64_t sub_1A3A13F60()
{
  result = qword_1EB1016C0;
  if (!qword_1EB1016C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1016B8);
    sub_1A3A13FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1016C0);
  }

  return result;
}

unint64_t sub_1A3A13FEC()
{
  result = qword_1EB1016C8;
  if (!qword_1EB1016C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1016D0);
    sub_1A3A14078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1016C8);
  }

  return result;
}

unint64_t sub_1A3A14078()
{
  result = qword_1EB1016D8;
  if (!qword_1EB1016D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1016D8);
  }

  return result;
}

unint64_t sub_1A3A140E4()
{
  result = qword_1EB101700;
  if (!qword_1EB101700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101700);
  }

  return result;
}

unint64_t sub_1A3A14168()
{
  result = qword_1EB101758;
  if (!qword_1EB101758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB101750);
    sub_1A38A08F8(&qword_1EB101760, &qword_1EB101768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101758);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

unint64_t sub_1A3A142C0()
{
  result = qword_1EB1017A8;
  if (!qword_1EB1017A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1017A8);
  }

  return result;
}

unint64_t sub_1A3A14314()
{
  result = qword_1EB1017B8;
  if (!qword_1EB1017B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1017B8);
  }

  return result;
}

unint64_t sub_1A3A143A0()
{
  result = qword_1EB1017D0;
  if (!qword_1EB1017D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1017D0);
  }

  return result;
}

unint64_t sub_1A3A143F4()
{
  result = qword_1EB1017E0;
  if (!qword_1EB1017E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1017E0);
  }

  return result;
}

unint64_t sub_1A3A14474()
{
  result = qword_1EB101808;
  if (!qword_1EB101808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101808);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1A3A14584()
{
  result = qword_1EB101830;
  if (!qword_1EB101830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101830);
  }

  return result;
}

uint64_t sub_1A3A145D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3A14644()
{
  result = qword_1EB101840;
  if (!qword_1EB101840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101840);
  }

  return result;
}

unint64_t sub_1A3A146AC()
{
  result = qword_1EB101850;
  if (!qword_1EB101850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101850);
  }

  return result;
}

id ViewfinderViewController.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewfinderViewController.Coordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewfinderViewController.Coordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A3A149B0(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1A3A14A8C;

  return sub_1A3A191A0(a2, a3);
}

uint64_t sub_1A3A14A8C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v3)
    {
      v8 = *(v2 + 40);
      v9 = sub_1A3A2EBA0();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v10 = *(v2 + 40);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1A3A14DE8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A3A14EA4;

  return sub_1A3A19B4C();
}

uint64_t sub_1A3A14EA4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v3)
    {
      v7 = *(v2 + 32);
      v8 = sub_1A3A2EBA0();

      (v7)[2](v7, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v9 = *(v2 + 32);
    v9[2](v9, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_1A3A15060(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

id sub_1A3A15188(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *ViewfinderViewController.makeUIViewController(context:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101858);
  sub_1A3A305B0();
  type metadata accessor for ViewfinderViewController._Coordinator();
  [v3 setUnlockDelegate_];

  [objc_opt_self() setCurrentViewfinder_];
  return v3;
}

void ViewfinderViewController.updateUIViewController(_:context:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101858);
  sub_1A3A305B0();
  type metadata accessor for ViewfinderViewController._Coordinator();
  [v3 setUnlockDelegate_];

  sub_1A3A153AC();
}

uint64_t sub_1A3A153AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v24 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v28 = v10;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  result = sub_1A3A30F90();
  if ((v27 & 1) == 0)
  {
    v25 = v3;
    v28 = v10;
    v29 = v11;
    v27 = 1;
    sub_1A3A30FA0();
    sub_1A3A2F250();
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(v0, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = sub_1A3A31AD0();
    (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
    v17 = v25;
    (*(v4 + 16))(v6, v9, v25);
    sub_1A3A31AA0();
    v18 = v15;
    v19 = sub_1A3A31A90();
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 16) = v19;
    *(v22 + 24) = v23;
    (*(v4 + 32))(v22 + v20, v6, v17);
    *(v22 + v21) = v18;
    sub_1A38911CC(0, 0, v26, &unk_1A3A860E8, v22);

    return (*(v4 + 8))(v9, v17);
  }

  return result;
}

id ViewfinderViewController.makeCoordinator()()
{
  sub_1A3A1573C(v0, v6);
  v1 = type metadata accessor for ViewfinderViewController._Coordinator();
  v2 = objc_allocWithZone(v1);
  sub_1A3A1573C(v6, v2 + OBJC_IVAR____TtCV8CameraUI24ViewfinderViewControllerP33_97E8248984EBD43B1770A42696E06CCA12_Coordinator__viewfinderViewController);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1A3A15774(v6);
  return v3;
}

uint64_t ViewfinderViewController.init(provider:session:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3A30F80();
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  result = sub_1A3A15814(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1A3A15814(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1A3A15830()
{
  result = qword_1EB101868;
  if (!qword_1EB101868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101868);
  }

  return result;
}

uint64_t sub_1A3A15884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A3A2EC30();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB40);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018F8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101900);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_1A3A31AA0();
  v5[15] = sub_1A3A31A90();
  v10 = sub_1A3A31A70();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A3A15A84, v10, v9);
}

uint64_t sub_1A3A15A84()
{
  (*(v0[9] + 16))(v0[10], v0[2], v0[8]);
  v0[18] = swift_getOpaqueTypeConformance2();
  sub_1A3A31AE0();
  v1 = sub_1A3A31A90();
  v0[19] = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1A3A15BE0;
  v3 = v0[7];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_1A3A15BE0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1A3A15CF4, v4, v5);
  }

  return result;
}

uint64_t sub_1A3A15CF4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    v7 = v0[3];
    (*(v3 + 32))(v6, v1, v2);
    v8 = sub_1A3A2EC00();
    (*(v3 + 8))(v6, v2);
    [v7 handleURLIfNeeded_];

    v9 = sub_1A3A31A90();
    v0[19] = v9;
    swift_getAssociatedConformanceWitness();
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_1A3A15BE0;
    v11 = v0[7];
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v11, v9, v12);
  }
}

void *sub_1A3A15F0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101858);
  sub_1A3A305B0();
  type metadata accessor for ViewfinderViewController._Coordinator();
  [v3 setUnlockDelegate_];

  [objc_opt_self() setCurrentViewfinder_];
  return v3;
}

void sub_1A3A15FEC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101858);
  sub_1A3A305B0();
  type metadata accessor for ViewfinderViewController._Coordinator();
  [v3 setUnlockDelegate_];

  sub_1A3A153AC();
}

uint64_t sub_1A3A160C4@<X0>(void *a1@<X8>)
{
  sub_1A3A1573C(v1, v8);
  v3 = type metadata accessor for ViewfinderViewController._Coordinator();
  v4 = objc_allocWithZone(v3);
  sub_1A3A1573C(v8, v4 + OBJC_IVAR____TtCV8CameraUI24ViewfinderViewControllerP33_97E8248984EBD43B1770A42696E06CCA12_Coordinator__viewfinderViewController);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = sub_1A3A15774(v8);
  *a1 = v5;
  return result;
}

uint64_t sub_1A3A1614C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A1A130();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3A161B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A1A130();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3A16214()
{
  sub_1A3A1A130();
  sub_1A3A30560();
  __break(1u);
}

uint64_t sub_1A3A1623C(uint64_t a1, int a2)
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

uint64_t sub_1A3A16284(uint64_t result, int a2, int a3)
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

uint64_t sub_1A3A162F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3897340;

  return sub_1A3A14DE8(v2, v3, v4);
}

uint64_t sub_1A3A163AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A3897340;

  return v6();
}

uint64_t sub_1A3A16494()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3897340;

  return sub_1A3A163AC(v2, v3, v4);
}

uint64_t sub_1A3A16554(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A38910D8;

  return v7();
}

uint64_t sub_1A3A1663C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3897340;

  return sub_1A3A16554(a1, v4, v5, v6);
}

uint64_t sub_1A3A16708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A3896E40(a3, v23 - v10);
  v12 = sub_1A3A31AD0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A388F740(v11, &qword_1EB0FC488);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A3A31AC0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A3A31A70();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A3A318A0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_1A3A2EA60();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1A388F740(a3, &qword_1EB0FC488);

    return v21;
  }

LABEL_8:
  sub_1A388F740(a3, &qword_1EB0FC488);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1A3A169F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3897340;

  return sub_1A3896108(a1, v4);
}

uint64_t sub_1A3A16AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A38910D8;

  return sub_1A3896108(a1, v4);
}

uint64_t sub_1A3A16B64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101908);
  v30 = a2;
  result = sub_1A3A320D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_1A38A8F64(v20);
        sub_1A3A2EA60();
      }

      sub_1A3A322C0();
      sub_1A3A00434(v31, v20);
      result = sub_1A3A32300();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3A16DFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018E8);
  v31 = a2;
  result = sub_1A3A320D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_1A3A322C0();
      sub_1A3A318B0();

      result = sub_1A3A32300();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3A1721C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678);
  v33 = a2;
  result = sub_1A3A320D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A3924CD4(v24, v34);
      }

      else
      {
        sub_1A395ADE0(v24, v34);
        sub_1A3A2EA50();
      }

      sub_1A3A322C0();
      sub_1A3A318B0();
      result = sub_1A3A32300();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A3924CD4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3A174D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB48);
  result = sub_1A3A320D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1A3924CD4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A3904980(v23, &v36);
        sub_1A395ADE0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A3A31EB0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1A3924CD4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A3A1778C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD8);
  result = sub_1A3A320D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1A3A322B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1A3A179F0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3A1B72C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3A16B64(v14, a3 & 1);
      v9 = sub_1A3A1B72C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        result = sub_1A3A32220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A3A17ED4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;

  return sub_1A38A8F64(a2);
}

_OWORD *sub_1A3A17B50(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3A1B864(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A3A18194();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A3A1721C(v16, a4 & 1);
    v11 = sub_1A3A1B864(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A3A32220();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1A3924CD4(a1, v22);
  }

  else
  {
    sub_1A3A17DEC(v11, a2, a3, a1, v21);

    return sub_1A3A2EA50();
  }
}

_OWORD *sub_1A3A17CA0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A3A1B798(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A3A18338();
      goto LABEL_7;
    }

    sub_1A3A174D4(v13, a3 & 1);
    v19 = sub_1A3A1B798(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3904980(a2, v21);
      return sub_1A3A17E58(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1A3A32220();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1A3924CD4(a1, v17);
}

_OWORD *sub_1A3A17DEC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A3924CD4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1A3A17E58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A3924CD4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1A3A17ED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101908);
  v2 = *v0;
  v3 = sub_1A3A320C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        sub_1A38A8F64(v18);
        result = sub_1A3A2EA60();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1A3A18038()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018E8);
  v2 = *v0;
  v3 = sub_1A3A320C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3A18194()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678);
  v2 = *v0;
  v3 = sub_1A3A320C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A395ADE0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A3924CD4(v25, (*(v4 + 56) + v22));
        result = sub_1A3A2EA50();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A3A18338()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB48);
  v2 = *v0;
  v3 = sub_1A3A320C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1A3904980(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A395ADE0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A3924CD4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3A184DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD8);
  v2 = *v0;
  v3 = sub_1A3A320C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3A18628(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018D0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = sub_1A3A2EDF0();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3A18738, 0, 0);
}

uint64_t sub_1A3A18738()
{
  v1 = [*(v0 + 152) oneUpViewController];
  *(v0 + 208) = v1;
  if (v1)
  {
    *(v0 + 216) = sub_1A3A31AA0();
    *(v0 + 224) = sub_1A3A31A90();
    v4 = sub_1A3A31A70();
    v6 = v5;
    v1 = sub_1A3A187F4;
    v2 = v4;
    v3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1A3A187F4()
{
  v1 = *(v0 + 208);

  *(v0 + 232) = [v1 browsingSession];

  return MEMORY[0x1EEE6DFA0](sub_1A3A18880, 0, 0);
}

uint64_t sub_1A3A18880()
{
  v1 = [*(v0 + 232) viewModel];
  *(v0 + 240) = v1;
  if (!v1 || (v2 = v1, (v3 = [v1 assetsDataSource]) == 0))
  {
    (*(*(v0 + 184) + 56))(*(v0 + 168), 1, 1, *(v0 + 176));
LABEL_8:
    sub_1A388F740(*(v0 + 168), &qword_1EB1018D0);
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 lastItemIndexPath];

  if (v5)
  {
    sub_1A3A2EDB0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  (*(v8 + 56))(v10, v6, 1, v7);
  sub_1A3A1A0C0(v10, v9);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    goto LABEL_8;
  }

  v18 = *(v0 + 144);
  (*(*(v0 + 184) + 32))(*(v0 + 200), *(v0 + 168), *(v0 + 176));
  v15 = sub_1A3A2EDD0();
  v19 = __OFSUB__(v15, v18);
  v20 = &v15[-v18];
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = sub_1A3A2EDE0();
  MEMORY[0x1A58F4C40](v20, v21);
  v22 = [v2 assetsDataSource];
  if (!v22 || (v23 = v22, v24 = sub_1A3A2EDA0(), v25 = [v23 assetReferenceAtIndexPath_], v24, v23, !v25))
  {
    v33 = *(v0 + 200);
    v34 = *(v0 + 176);
    v35 = *(*(v0 + 184) + 8);
    v35(*(v0 + 192), v34);
    v35(v33, v34);
    goto LABEL_9;
  }

  v15 = [v25 pxAssetReference];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }

  v26 = v15;
  v28 = *(v0 + 192);
  v27 = *(v0 + 200);
  v29 = *(v0 + 176);
  v30 = *(v0 + 184);
  v31 = [v15 asset];

  v32 = *(v30 + 8);
  v32(v28, v29);
  v32(v27, v29);
  if (!v31)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

LABEL_10:
  *(v0 + 248) = v11;
  *(v0 + 256) = sub_1A3A2F240();
  sub_1A3A2F230();
  sub_1A3A2F210();

  *(v0 + 264) = objc_opt_self();
  *(v0 + 272) = sub_1A3A31A90();
  v12 = sub_1A3A31A70();
  v14 = v13;
  v15 = sub_1A3A18BE8;
  v16 = v12;
  v17 = v14;

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1A3A18BE8()
{
  v1 = *(v0 + 264);

  *(v0 + 280) = [v1 px_sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1A3A18C6C, 0, 0);
}

uint64_t sub_1A3A18C6C()
{
  v1 = v0[35];
  v2 = v0[31];
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1A3A18D9C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018D8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A3A15060;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v1 px:v2 navigateToMomentsViewRevealingAsset:v0 + 10 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A3A18D9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1A3A190D8;
  }

  else
  {
    v2 = sub_1A3A18EAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3A18EAC()
{
  v20 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 296);

  if ((v2 & 1) == 0)
  {
    if (qword_1EB0FC178 != -1)
    {
      swift_once();
    }

    v3 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v3, qword_1EB101AF8);
    v4 = sub_1A3A2F280();
    v5 = sub_1A3A31C20();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 248);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      if (v6)
      {
        v9 = [*(v0 + 248) localIdentifier];
        v10 = sub_1A3A31850();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v13 = sub_1A39ABC10(v10, v12, &v19);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1A3640000, v4, v5, "Failed to navigate to Photos App for asset %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1A58FAC10](v8, -1, -1);
      MEMORY[0x1A58FAC10](v7, -1, -1);
    }
  }

  v14 = *(v0 + 248);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  sub_1A3A2F230();
  sub_1A3A2F220();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A3A190D8()
{
  v1 = v0[35];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A3A191A0(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3A191C4, 0, 0);
}

uint64_t sub_1A3A191C4()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v0 + 384);
    v3 = v1;
    v4 = [v3 currentAssetIndexFromEnd];
    if (v2 == 4)
    {
      v5 = swift_task_alloc();
      *(v0 + 400) = v5;
      *v5 = v0;
      v5[1] = sub_1A3A19784;

      return sub_1A3A18628(v4, v3);
    }

    else
    {
      v8 = objc_allocWithZone(MEMORY[0x1E696B090]);
      v9 = sub_1A3A31810();
      v10 = [v8 initWithActivityType_];
      *(v0 + 416) = v10;

      v11 = [v10 userInfo];
      if (v11)
      {
        v12 = MEMORY[0x1E69E6158];
        v13 = v11;
        v14 = sub_1A3A31710();

        *(v0 + 360) = 0x6974634172657375;
        *(v0 + 368) = 0xEA00000000006E6FLL;
        sub_1A3A31EE0();
        *(v0 + 288) = v12;
        *(v0 + 264) = 0x6F526172656D6163;
        *(v0 + 272) = 0xEA00000000006C6CLL;
        sub_1A3924CD4((v0 + 264), (v0 + 296));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1A3A17CA0((v0 + 296), v0 + 96, isUniquelyReferenced_nonNull_native);
        sub_1A398DE40(v0 + 96);
        if (v14)
        {
          v16 = sub_1A3A31700();
        }

        else
        {
          v16 = 0;
        }

        [v10 setUserInfo_];
      }

      else
      {
        [v10 setUserInfo_];
      }

      v17 = [v10 userInfo];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1A3A31710();

        *(v0 + 344) = 0x6F526172656D6163;
        *(v0 + 352) = 0xEF7865646E496C6CLL;
        sub_1A3A31EE0();
        *(v0 + 224) = MEMORY[0x1E69E6530];
        *(v0 + 200) = v4;
        sub_1A3924CD4((v0 + 200), (v0 + 232));
        v20 = swift_isUniquelyReferenced_nonNull_native();
        sub_1A3A17CA0((v0 + 232), v0 + 56, v20);
        sub_1A398DE40(v0 + 56);
        if (v19)
        {
          v21 = sub_1A3A31700();
        }

        else
        {
          v21 = 0;
        }

        [v10 setUserInfo_];
      }

      else
      {
        [v10 setUserInfo_];
      }

      v22 = [v10 userInfo];
      if (v22)
      {
        v23 = *(v0 + 384);
        v24 = v22;
        v25 = sub_1A3A31710();

        *(v0 + 328) = 0xD000000000000014;
        *(v0 + 336) = 0x80000001A3AA8920;
        v26 = MEMORY[0x1E69E6158];
        sub_1A3A31EE0();
        switch(v23)
        {
          case 3:
            v27 = 0xE500000000000000;
            v28 = 0x6572616873;
            break;
          case 2:
            v27 = 0xE400000000000000;
            v28 = 1970169197;
            break;
          case 1:
            v27 = 0xE400000000000000;
            v28 = 1953064037;
            break;
          default:
            v28 = 0;
            v27 = 0xE000000000000000;
            break;
        }

        *(v0 + 160) = v26;
        *(v0 + 136) = v28;
        *(v0 + 144) = v27;
        sub_1A3924CD4((v0 + 136), (v0 + 168));
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v32 = v25;
        sub_1A3A17CA0((v0 + 168), v0 + 16, v29);
        sub_1A398DE40(v0 + 16);
        if (v25)
        {
          v30 = sub_1A3A31700();
        }

        else
        {
          v30 = 0;
        }

        [v10 setUserInfo_];
      }

      else
      {
        [v10 setUserInfo_];
      }

      v31 = swift_task_alloc();
      *(v0 + 424) = v31;
      *v31 = v0;
      v31[1] = sub_1A3A19960;

      return MEMORY[0x1EEDCCA38](v10);
    }
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1A3A19784()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1A3A198FC;
  }

  else
  {
    v2 = sub_1A3A19898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3A19898()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3A198FC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3A19960()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1A3A19AE0;
  }

  else
  {
    v2 = sub_1A3A19A74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3A19A74()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3A19AE0()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3A19B6C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B090]);
  v2 = sub_1A3A31810();
  v3 = [v1 initWithActivityType_];
  *(v0 + 144) = v3;

  v4 = [v3 userInfo];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A3A31710();

    *(v0 + 120) = 0x6974634172657375;
    *(v0 + 128) = 0xEA00000000006E6FLL;
    v7 = MEMORY[0x1E69E6158];
    sub_1A3A31EE0();
    *(v0 + 56) = 0xD000000000000010;
    *(v0 + 80) = v7;
    *(v0 + 64) = 0x80000001A3AA8900;
    sub_1A3924CD4((v0 + 56), (v0 + 88));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3A17CA0((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_1A398DE40(v0 + 16);
    if (v6)
    {
      v9 = sub_1A3A31700();
    }

    else
    {
      v9 = 0;
    }

    [v3 setUserInfo_];
  }

  else
  {
    [v3 setUserInfo_];
  }

  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1A3A19DC4;

  return MEMORY[0x1EEDCCA38](v3);
}

uint64_t sub_1A3A19DC4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A3A19F3C;
  }

  else
  {
    v2 = sub_1A3A19ED8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3A19ED8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3A19F3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3A19FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A38910D8;

  return sub_1A3A149B0(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3A1A0C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3A1A130()
{
  result = qword_1EB1018F0;
  if (!qword_1EB1018F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1018F0);
  }

  return result;
}

uint64_t sub_1A3A1A184(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018F8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3897340;

  return sub_1A3A15884(a1, v6, v7, v1 + v5, v8);
}

__n128 sub_1A3A1A2B0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  result = *(v3 + 248);
  v5 = *(v3 + 264);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1A3A1A38C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 640);
  return sub_1A3A2EA60();
}

uint64_t sub_1A3A1A464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v3 + 856);
  *a2 = *(v3 + 848);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A3A1A548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1192);
  return sub_1A3A2EA60();
}

uint64_t sub_1A3A1A5F4()
{
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

char *sub_1A3A1A860()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101920);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR___CAMChromeViewController____lazy_storage___view;
  v4 = *(v0 + OBJC_IVAR___CAMChromeViewController____lazy_storage___view);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___CAMChromeViewController____lazy_storage___view);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR___CAMChromeViewController_viewModel);
    v7 = type metadata accessor for ChromeSwiftUIView();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_scenePhaseView;
    v10 = objc_allocWithZone(type metadata accessor for ChromeScenePhaseView());
    sub_1A3A2EA60();
    *&v8[v9] = [v10 init];
    *&v8[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel] = v6;
    v33.receiver = v8;
    v33.super_class = v7;
    sub_1A3A2EA60();
    v11 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v12 = [v11 window];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 windowScene];

      if (v14)
      {
        v15 = [v14 screen];

        [v15 bounds];
        v17 = v16;
        v19 = v18;

        sub_1A39010FC(*&v11[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel], v17, v19);
      }
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101928);
    MEMORY[0x1EEE9AC00](v20);
    *(&v33 - 2) = v6;
    *(&v33 - 1) = v11;
    sub_1A3A1B640();
    sub_1A3A2F1F0();
    v21 = sub_1A3A2F990();
    [v21 setAutoresizingMask_];
    [v11 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [v21 setFrame_];
    [v11 addSubview_];
    [v11 addSubview_];

    v30 = *(v1 + v3);
    *(v1 + v3) = v11;
    v5 = v11;

    v4 = 0;
  }

  v31 = v4;
  return v5;
}

uint64_t sub_1A3A1AC04()
{
  v0 = sub_1A3A1A860();
  v1 = *&v0[OBJC_IVAR____TtC8CameraUI17ChromeSwiftUIView_viewModel];
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v1 + 856))
  {

    return 0;
  }

  else
  {
    sub_1A3890E54();
    v3 = sub_1A3A31CF0();

    return v3;
  }
}

double sub_1A3A1AD60()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeViewController_viewModel);
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v2 = *(v1 + 640);
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 248);

  return v3;
}

uint64_t sub_1A3A1AEB0(uint64_t (*a1)(uint64_t, double, double, double, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR___CAMChromeViewController_viewModel);
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v5 = *(v4 + 640);
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v6 = v5[31];
  v7 = v5[32];
  v8 = v5[33];
  v9 = v5[34];

  return a1(v10, v6, v7, v8, v9);
}

uint64_t (*sub_1A3A1B01C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;
  sub_1A3A2EA60();
  return sub_1A3A1B6BC;
}

uint64_t sub_1A3A1B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A3A31650();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A3A31670();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38C9AFC();
  v11 = sub_1A3A31C70();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1A3A1B708;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3904E20;
  aBlock[3] = &block_descriptor_12;
  v15 = _Block_copy(aBlock);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A31660();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A3A1E618(&qword_1ED997B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668);
  sub_1A38C9BC0();
  sub_1A3A31E80();
  MEMORY[0x1A58F7B00](0, v10, v7, v15);
  _Block_release(v15);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

void sub_1A3A1B3D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    MEMORY[0x1EEE9AC00](v1);
    v3 = v2;
    sub_1A3A2F060();
  }
}

id sub_1A3A1B594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3A1B640()
{
  result = qword_1ED999830;
  if (!qword_1ED999830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999830);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

unint64_t sub_1A3A1B72C(unint64_t a1)
{
  sub_1A3A322C0();
  sub_1A3A00434(v4, a1);
  v2 = sub_1A3A32300();

  return sub_1A3A1BAFC(a1, v2);
}

unint64_t sub_1A3A1B798(uint64_t a1)
{
  v2 = sub_1A3A31EB0();

  return sub_1A3A1C49C(a1, v2);
}

unint64_t sub_1A3A1B7DC(char a1)
{
  sub_1A3A322C0();
  sub_1A391CE44(a1);
  sub_1A3A318B0();

  v2 = sub_1A3A32300();

  return sub_1A3A1C564(a1, v2);
}

unint64_t sub_1A3A1B864(uint64_t a1, uint64_t a2)
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  v4 = sub_1A3A32300();

  return sub_1A3A1C9A4(a1, a2, v4);
}

unint64_t sub_1A3A1B8DC(uint64_t a1)
{
  v2 = sub_1A3A322B0();

  return sub_1A3A1CA5C(a1, v2);
}

unint64_t sub_1A3A1B920(unsigned __int8 a1)
{
  sub_1A3A322C0();
  sub_1A39A35EC();
  v2 = sub_1A3A32300();

  return sub_1A3A1CAC8(a1, v2);
}

unint64_t sub_1A3A1B98C(unsigned __int8 a1)
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  v2 = sub_1A3A32300();

  return sub_1A3A1CE20(a1, v2);
}

unint64_t sub_1A3A1BA60(char a1)
{
  sub_1A3A322C0();
  sub_1A3A318B0();

  v2 = sub_1A3A32300();

  return sub_1A3A1CFB4(a1 & 1, v2);
}

unint64_t sub_1A3A1BAFC(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v6 = ~v4;
  v7 = a1 + 32;
LABEL_5:
  v8 = *(*(v2 + 48) + 8 * result);
  switch(v8)
  {
    case 0:
      if (!a1)
      {
        return result;
      }

      goto LABEL_4;
    case 1:
      if (a1 == 1)
      {
        return result;
      }

      goto LABEL_4;
    case 2:
      if (a1 == 2)
      {
        return result;
      }

      goto LABEL_4;
    case 3:
      if (a1 == 3)
      {
        return result;
      }

      goto LABEL_4;
    case 4:
      if (a1 == 4)
      {
        return result;
      }

      goto LABEL_4;
    case 5:
      if (a1 == 5)
      {
        return result;
      }

      goto LABEL_4;
    case 6:
      if (a1 == 6)
      {
        return result;
      }

      goto LABEL_4;
    case 7:
      if (a1 == 7)
      {
        return result;
      }

      goto LABEL_4;
    case 8:
      if (a1 == 8)
      {
        return result;
      }

      goto LABEL_4;
    case 9:
      if (a1 == 9)
      {
        return result;
      }

      goto LABEL_4;
    case 10:
      if (a1 == 10)
      {
        return result;
      }

      goto LABEL_4;
    case 11:
      if (a1 == 11)
      {
        return result;
      }

      goto LABEL_4;
    case 12:
      if (a1 == 12)
      {
        return result;
      }

      goto LABEL_4;
    case 13:
      if (a1 == 13)
      {
        return result;
      }

      goto LABEL_4;
    case 14:
      if (a1 == 14)
      {
        return result;
      }

      goto LABEL_4;
    case 15:
      if (a1 == 15)
      {
        return result;
      }

      goto LABEL_4;
    case 16:
      if (a1 == 16)
      {
        return result;
      }

      goto LABEL_4;
    case 17:
      if (a1 == 17)
      {
        return result;
      }

      goto LABEL_4;
    case 18:
      if (a1 == 18)
      {
        return result;
      }

      goto LABEL_4;
    case 19:
      if (a1 == 19)
      {
        return result;
      }

      goto LABEL_4;
    case 20:
      if (a1 == 20)
      {
        return result;
      }

      goto LABEL_4;
    case 21:
      if (a1 == 21)
      {
        return result;
      }

      goto LABEL_4;
    case 22:
      if (a1 == 22)
      {
        return result;
      }

      goto LABEL_4;
    case 23:
      if (a1 == 23)
      {
        return result;
      }

      goto LABEL_4;
    case 24:
      if (a1 == 24)
      {
        return result;
      }

      goto LABEL_4;
    case 25:
      if (a1 == 25)
      {
        return result;
      }

      goto LABEL_4;
    case 26:
      if (a1 == 26)
      {
        return result;
      }

      goto LABEL_4;
    case 27:
      if (a1 != 27)
      {
        goto LABEL_4;
      }

      return result;
    case 28:
      if (a1 == 28)
      {
        return result;
      }

      goto LABEL_4;
    case 29:
      if (a1 == 29)
      {
        return result;
      }

      goto LABEL_4;
    case 30:
      if (a1 == 30)
      {
        return result;
      }

      goto LABEL_4;
    case 31:
      if (a1 == 31)
      {
        return result;
      }

      goto LABEL_4;
    case 32:
      if (a1 == 32)
      {
        return result;
      }

      goto LABEL_4;
    case 33:
      if (a1 == 33)
      {
        return result;
      }

      goto LABEL_4;
    case 34:
      if (a1 == 34)
      {
        return result;
      }

      goto LABEL_4;
    default:
      if (a1 < 0x23)
      {
        goto LABEL_4;
      }

      v9 = *(v8 + 16);
      if (v9 != *(a1 + 16))
      {
        goto LABEL_4;
      }

      if (!v9 || v8 == a1)
      {
        return result;
      }

      v43 = a1;
      v44 = result;
      v10 = v8 + 32;
      v11 = *(*(v2 + 48) + 8 * result);
      sub_1A3A2EA50();
      result = v11;
      v12 = 0;
      break;
  }

LABEL_79:
  if (v12 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_292;
  }

  if (v12 == v9)
  {
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
    return result;
  }

  v13 = *(v10 + 8 * v12);
  v14 = *(v7 + 8 * v12);
  switch(v13)
  {
    case 0:
      result = v11;
      if (v14)
      {
        goto LABEL_289;
      }

      goto LABEL_120;
    case 1:
      v15 = v14 == 1;
      goto LABEL_118;
    case 2:
      v15 = v14 == 2;
      goto LABEL_118;
    case 3:
      v15 = v14 == 3;
      goto LABEL_118;
    case 4:
      v15 = v14 == 4;
      goto LABEL_118;
    case 5:
      v15 = v14 == 5;
      goto LABEL_118;
    case 6:
      v15 = v14 == 6;
      goto LABEL_118;
    case 7:
      v15 = v14 == 7;
      goto LABEL_118;
    case 8:
      v15 = v14 == 8;
      goto LABEL_118;
    case 9:
      v15 = v14 == 9;
      goto LABEL_118;
    case 10:
      v15 = v14 == 10;
      goto LABEL_118;
    case 11:
      v15 = v14 == 11;
      goto LABEL_118;
    case 12:
      v15 = v14 == 12;
      goto LABEL_118;
    case 13:
      v15 = v14 == 13;
      goto LABEL_118;
    case 14:
      v15 = v14 == 14;
      goto LABEL_118;
    case 15:
      v15 = v14 == 15;
      goto LABEL_118;
    case 16:
      v15 = v14 == 16;
      goto LABEL_118;
    case 17:
      v15 = v14 == 17;
      goto LABEL_118;
    case 18:
      v15 = v14 == 18;
      goto LABEL_118;
    case 19:
      v15 = v14 == 19;
      goto LABEL_118;
    case 20:
      v15 = v14 == 20;
      goto LABEL_118;
    case 21:
      v15 = v14 == 21;
      goto LABEL_118;
    case 22:
      v15 = v14 == 22;
      goto LABEL_118;
    case 23:
      v15 = v14 == 23;
      goto LABEL_118;
    case 24:
      v15 = v14 == 24;
      goto LABEL_118;
    case 25:
      v15 = v14 == 25;
      goto LABEL_118;
    case 26:
      v15 = v14 == 26;
      goto LABEL_118;
    case 27:
      v15 = v14 == 27;
      goto LABEL_118;
    case 28:
      v15 = v14 == 28;
      goto LABEL_118;
    case 29:
      v15 = v14 == 29;
      goto LABEL_118;
    case 30:
      v15 = v14 == 30;
      goto LABEL_118;
    case 31:
      v15 = v14 == 31;
      goto LABEL_118;
    case 32:
      v15 = v14 == 32;
      goto LABEL_118;
    case 33:
      v15 = v14 == 33;
      goto LABEL_118;
    case 34:
      v15 = v14 == 34;
LABEL_118:
      result = v11;
      if (!v15)
      {
        goto LABEL_289;
      }

      goto LABEL_120;
    default:
      if (v14 < 0x23)
      {
        goto LABEL_289;
      }

      v16 = *(v13 + 16);
      if (v16 != *(v14 + 16))
      {
        goto LABEL_289;
      }

      if (v16)
      {
        v17 = v13 == v14;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_120;
      }

      v40 = v13 + 32;
      v18 = *(v10 + 8 * v12);
      v41 = *(v13 + 16);
      sub_1A38A8F64(v14);
      v45 = v18;
      result = sub_1A38A8F64(v18);
      v20 = v14 + 32;
      v19 = v40;
      v21 = v41;
      v22 = 0;
      break;
  }

LABEL_131:
  if (v22 >= *(v45 + 16))
  {
    goto LABEL_293;
  }

  if (v22 >= *(v14 + 16))
  {
    goto LABEL_294;
  }

  v23 = *(v19 + 8 * v22);
  v24 = *(v20 + 8 * v22);
  switch(v23)
  {
    case 0:
      if (v24)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 1:
      if (v24 != 1)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 2:
      if (v24 != 2)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 3:
      if (v24 != 3)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 6:
      if (v24 != 6)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 7:
      if (v24 != 7)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 8:
      if (v24 != 8)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 9:
      if (v24 != 9)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 10:
      if (v24 != 10)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 11:
      if (v24 != 11)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 12:
      if (v24 != 12)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 13:
      if (v24 != 13)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 14:
      if (v24 != 14)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 15:
      if (v24 != 15)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 16:
      if (v24 != 16)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 17:
      if (v24 != 17)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 18:
      if (v24 != 18)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 19:
      if (v24 != 19)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 20:
      if (v24 != 20)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 21:
      if (v24 != 21)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 22:
      if (v24 != 22)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 23:
      if (v24 != 23)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 24:
      if (v24 != 24)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 25:
      if (v24 != 25)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 26:
      if (v24 != 26)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 27:
      if (v24 == 27)
      {
        goto LABEL_130;
      }

      goto LABEL_288;
    case 28:
      if (v24 != 28)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 29:
      if (v24 != 29)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 30:
      if (v24 != 30)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 31:
      if (v24 != 31)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 32:
      if (v24 != 32)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 33:
      if (v24 != 33)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    case 34:
      if (v24 != 34)
      {
        goto LABEL_288;
      }

      goto LABEL_130;
    default:
      if (v24 < 0x23)
      {
        goto LABEL_288;
      }

      v25 = *(v23 + 16);
      if (v25 != *(v24 + 16))
      {
        goto LABEL_288;
      }

      if (v25)
      {
        v26 = v23 == v24;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_130;
      }

      v36 = v24 + 32;
      v37 = v23 + 32;
      v38 = *(v23 + 16);
      v39 = *(v20 + 8 * v22);
      v42 = *(v19 + 8 * v22);
      sub_1A38A8F64(v24);
      sub_1A38A8F64(v42);
      v28 = v36;
      v27 = v37;
      v29 = v38;
      result = v39;
      v30 = 0;
      break;
  }

  while (2)
  {
    if (v30 >= *(v42 + 16))
    {
      goto LABEL_295;
    }

    if (v30 >= *(result + 16))
    {
      goto LABEL_296;
    }

    v31 = *(v28 + 8 * v30);
    switch(*(v27 + 8 * v30))
    {
      case 0:
        if (!v31)
        {
          goto LABEL_210;
        }

        goto LABEL_287;
      case 1:
        if (v31 != 1)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 2:
        if (v31 != 2)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 3:
        if (v31 != 3)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 4:
        if (v31 != 4)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 5:
        if (v31 != 5)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 6:
        if (v31 != 6)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 7:
        if (v31 != 7)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 8:
        if (v31 != 8)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 9:
        if (v31 != 9)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xALL:
        if (v31 != 10)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xBLL:
        if (v31 != 11)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xCLL:
        if (v31 != 12)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xDLL:
        if (v31 != 13)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xELL:
        if (v31 != 14)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0xFLL:
        if (v31 != 15)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x10:
        if (v31 != 16)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x11:
        if (v31 != 17)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x12:
        if (v31 != 18)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x13:
        if (v31 != 19)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x14:
        if (v31 != 20)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x15:
        if (v31 != 21)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x16:
        if (v31 != 22)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x17:
        if (v31 != 23)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x18:
        if (v31 != 24)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x19:
        if (v31 != 25)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x1ALL:
        if (v31 != 26)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x1BLL:
        if (v31 == 27)
        {
          goto LABEL_210;
        }

        goto LABEL_287;
      case 0x1CLL:
        if (v31 != 28)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x1DLL:
        if (v31 != 29)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x1ELL:
        if (v31 != 30)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x1FLL:
        if (v31 != 31)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x20:
        if (v31 != 32)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x21:
        if (v31 != 33)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      case 0x22:
        if (v31 != 34)
        {
          goto LABEL_287;
        }

        goto LABEL_210;
      default:
        v35 = *(v27 + 8 * v30);
        if (v31 >= 0x23)
        {
          v33 = v30;
          v34 = *(v28 + 8 * v30);
          sub_1A38A8F64(v31);
          sub_1A38A8F64(v35);
          v32 = sub_1A39FCD24(v35, v34);
          sub_1A3890F2C(v34);
          sub_1A3890F2C(v35);
          v30 = v33;
          v28 = v36;
          v27 = v37;
          v29 = v38;
          result = v39;
          if (v32)
          {
LABEL_210:
            if (v29 != ++v30)
            {
              continue;
            }

            sub_1A3890F2C(result);
            result = sub_1A3890F2C(v42);
            v19 = v40;
            v21 = v41;
            v20 = v14 + 32;
LABEL_130:
            if (++v22 == v21)
            {
              sub_1A3890F2C(v14);
              sub_1A3890F2C(v45);
              result = v11;
LABEL_120:
              if (++v12 == v9)
              {
                sub_1A3890F2C(result);
                return v44;
              }

              goto LABEL_79;
            }

            goto LABEL_131;
          }
        }

LABEL_287:
        sub_1A3890F2C(result);
        sub_1A3890F2C(v42);
LABEL_288:
        sub_1A3890F2C(v14);
        sub_1A3890F2C(v45);
        result = v11;
LABEL_289:
        sub_1A3890F2C(result);
        result = v44;
        a1 = v43;
LABEL_4:
        result = (result + 1) & v6;
        if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
        {
          goto LABEL_5;
        }

        return result;
    }
  }
}

unint64_t sub_1A3A1C49C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A3904980(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1A58F7D40](v9, a1);
      sub_1A398DE40(v9);
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

unint64_t sub_1A3A1C564(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x6772616843657250;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x746F6F6853;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x6B63696C43;
          break;
        case 3:
          v8 = 0x6946206B63696C43;
          v7 = 0xEE0064656873696ELL;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x7373696D736944;
          break;
        case 5:
          v8 = 0x6C426F5465646146;
          v7 = 0xEB000000006B6361;
          break;
        case 6:
          v8 = 0xD000000000000012;
          v7 = 0x80000001A3AA11B0;
          break;
        case 7:
          v8 = 0x6D6154746F6F6853;
          v7 = 0xEB00000000656C61;
          break;
        case 8:
          v7 = 0xE600000000000000;
          v8 = 0x656C616D6154;
          break;
        case 9:
          v7 = 0xE900000000000073;
          v8 = 0x73656C6863756F54;
          break;
        case 0xA:
          v7 = 0xE90000000000006ELL;
          v8 = 0x776F446863756F54;
          break;
        case 0xB:
          v7 = 0xE700000000000000;
          v8 = 0x70556863756F54;
          break;
        case 0xC:
          v7 = 0xE600000000000000;
          v8 = 0x746E6574614CLL;
          break;
        case 0xD:
          v7 = 0xE400000000000000;
          v8 = 2003790919;
          break;
        default:
          break;
      }

      v9 = 0x6772616843657250;
      v10 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v10 = 0xE500000000000000;
          if (v8 == 0x746F6F6853)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v10 = 0xE500000000000000;
          if (v8 != 0x6B63696C43)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v10 = 0xEE0064656873696ELL;
          if (v8 != 0x6946206B63696C43)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v10 = 0xE700000000000000;
          if (v8 != 0x7373696D736944)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v11 = 0x6C426F5465646146;
          v12 = 7037793;
          goto LABEL_34;
        case 6:
          v10 = 0x80000001A3AA11B0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v11 = 0x6D6154746F6F6853;
          v12 = 6646881;
LABEL_34:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v11)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v10 = 0xE600000000000000;
          if (v8 != 0x656C616D6154)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v10 = 0xE900000000000073;
          if (v8 != 0x73656C6863756F54)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0xE90000000000006ELL;
          v9 = 0x776F446863756F54;
          goto LABEL_41;
        case 11:
          v10 = 0xE700000000000000;
          if (v8 != 0x70556863756F54)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v10 = 0xE600000000000000;
          if (v8 != 0x746E6574614CLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v10 = 0xE400000000000000;
          if (v8 != 2003790919)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v9)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_43:
          v13 = sub_1A3A321C0();

          if (v13)
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

unint64_t sub_1A3A1C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A3A321C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A3A1CA5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A3A1CAC8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE600000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 <= 4)
      {
        if (v7 == 3)
        {
          v10 = 0x7469617274726F70;
        }

        else
        {
          v10 = 0x6F746F6870;
        }

        if (v7 == 3)
        {
          v11 = 0xEF6569666C65732DLL;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (v7 == 2)
        {
          v10 = 0x7469617274726F70;
          v11 = 0xE800000000000000;
        }

        v12 = *(*(v27 + 48) + v4) ? 0x6F65646976 : 0x6569666C6573;
        v13 = *(*(v27 + 48) + v4) ? 0xE500000000000000 : 0xE600000000000000;
        v9 = *(*(v27 + 48) + v4) <= 1u ? v12 : v10;
        v8 = *(*(v27 + 48) + v4) <= 1u ? v13 : v11;
      }

      else if (*(*(v27 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v8 = 0xE400000000000000;
          v9 = 1869504880;
        }

        else if (v7 == 9)
        {
          v9 = 0x566C616974617073;
          v8 = 0xEC0000006F656469;
        }

        else
        {
          v9 = 0x506C616974617073;
          v8 = 0xEC0000006F746F68;
        }
      }

      else if (v7 == 5)
      {
        v9 = 0x6974616D656E6963;
        v8 = 0xE900000000000063;
      }

      else if (v7 == 6)
      {
        v8 = 0xE600000000000000;
        v9 = 0x6F6D2D6F6C73;
      }

      else
      {
        v9 = 0x70616C2D656D6974;
        v8 = 0xEA00000000006573;
      }

      v14 = 0x566C616974617073;
      if (v6 != 9)
      {
        v14 = 0x506C616974617073;
      }

      v15 = 0xEC0000006F746F68;
      if (v6 == 9)
      {
        v15 = 0xEC0000006F656469;
      }

      if (v6 == 8)
      {
        v14 = 1869504880;
        v15 = 0xE400000000000000;
      }

      v16 = 0x70616C2D656D6974;
      if (v6 == 6)
      {
        v16 = 0x6F6D2D6F6C73;
      }

      v17 = 0xEA00000000006573;
      if (v6 == 6)
      {
        v17 = 0xE600000000000000;
      }

      if (v6 == 5)
      {
        v16 = 0x6974616D656E6963;
        v17 = 0xE900000000000063;
      }

      if (v6 <= 7)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 3)
      {
        v18 = 0x7469617274726F70;
      }

      else
      {
        v18 = 0x6F746F6870;
      }

      if (v6 == 3)
      {
        v19 = 0xEF6569666C65732DLL;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v18 = 0x7469617274726F70;
        v19 = 0xE800000000000000;
      }

      if (v6)
      {
        v20 = 0x6F65646976;
      }

      else
      {
        v20 = 0x6569666C6573;
      }

      if (v6)
      {
        v5 = 0xE500000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 4 ? v18 : v14;
      v22 = v6 <= 4 ? v19 : v15;
      if (v9 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_1A3A321C0();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE600000000000000;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A3A1CE20(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x6D756964656DLL : 1735290732;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x74726F6873 : 1701736302;
      v10 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6D756964656DLL : 1735290732;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v15 = v5 ? 0x74726F6873 : 1701736302;
      v16 = v5 ? 0xE500000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_1A3A321C0();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

unint64_t sub_1A3A1CFB4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746E6F7266;
    }

    else
    {
      v6 = 1801675106;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746E6F7266 : 1801675106;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1A3A321C0();

      if ((v11 & 1) == 0)
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

uint64_t sub_1A3A1D130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v22[3] = a3(0);
  v22[4] = a4;
  v22[0] = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = -1;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 392) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0x3FE8000000000000;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a2 + 520) = 0u;
  *(a2 + 536) = 0u;
  *(a2 + 545) = 0u;
  *(a2 + 568) = 0x3FF0000000000000;
  *(a2 + 576) = 0;
  *(a2 + 584) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 600) = MEMORY[0x1E69E7CC0];
  *(a2 + 608) = 0;
  type metadata accessor for ChromeFlashViewModel();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  sub_1A3A2F0B0();
  *(a2 + 616) = v10;
  type metadata accessor for ChromeTorchViewModel();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 20) = 0;
  sub_1A3A2F0B0();
  *(a2 + 624) = v11;
  type metadata accessor for ChromeLensPositionViewModel();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 31) = 0;
  sub_1A3A2F0B0();
  *(a2 + 632) = v12;
  type metadata accessor for ChromeDynamicShutterViewModel();
  swift_allocObject();
  *(a2 + 640) = sub_1A39F3250();
  type metadata accessor for ChromeMacroViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1A3A2F0B0();
  *(a2 + 648) = v13;
  type metadata accessor for ChromeDepthViewModel();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  sub_1A3A2F0B0();
  *(a2 + 656) = v14;
  *(a2 + 664) = 0;
  *(a2 + 666) = 0;
  *(a2 + 672) = 0;
  *(a2 + 680) = 0;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0;
  *(a2 + 744) = 0x3FE0000000000000;
  *(a2 + 752) = 0;
  *(a2 + 756) = 0;
  *(a2 + 760) = 0u;
  *(a2 + 776) = 0u;
  *(a2 + 792) = 0;
  *(a2 + 800) = 1;
  *(a2 + 808) = 0;
  *(a2 + 848) = 0;
  *(a2 + 840) = 0;
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a2 + 856) = 1;
  *(a2 + 864) = v9;
  *(a2 + 872) = v9;
  *(a2 + 880) = v9;
  *(a2 + 888) = 0;
  *(a2 + 896) = xmmword_1A3A86110;
  type metadata accessor for ChromeSmartStyleViewModel();
  *(a2 + 912) = 0u;
  swift_allocObject();
  *(a2 + 928) = sub_1A39F22D4();
  type metadata accessor for ChromeSemanticStyleViewModel();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  sub_1A3A2F0B0();
  *(a2 + 936) = v15;
  type metadata accessor for ChromeFilterViewModel();
  swift_allocObject();
  *(a2 + 944) = sub_1A3906AEC();
  *(a2 + 952) = 0;
  *(a2 + 960) = v9;
  *(a2 + 968) = 257;
  *(a2 + 976) = xmmword_1A3A68320;
  *(a2 + 992) = 1;
  *(a2 + 1000) = 0;
  *(a2 + 1008) = 1;
  *(a2 + 1016) = 1;
  *(a2 + 1024) = 0;
  *(a2 + 1032) = 1;
  *(a2 + 1040) = 0;
  *(a2 + 1048) = 1;
  *(a2 + 1056) = v9;
  *(a2 + 1064) = 0;
  *(a2 + 1068) = 0;
  *(a2 + 1072) = 1;
  *(a2 + 1080) = 0;
  *(a2 + 1117) = 0;
  *(a2 + 1104) = 0u;
  *(a2 + 1088) = 0u;
  *(a2 + 1128) = v9;
  *(a2 + 1136) = 0;
  type metadata accessor for ChromeRemainingRecordingTimeModel();
  *(a2 + 1144) = 0;
  *(a2 + 1152) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_1A3A2F0B0();
  *(a2 + 1160) = v16;
  *(a2 + 1168) = 0;
  *(a2 + 1176) = 0;
  *(a2 + 1180) = 1;
  type metadata accessor for ChromeOnboardingViewModel();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_1A3A2F0B0();
  *(a2 + 1184) = v17;
  *(a2 + 1192) = 0;
  sub_1A3A2F0B0();
  sub_1A3A2F1D0();
  sub_1A3A2F1B0();
  sub_1A3A2F1C0();
  sub_1A3A1E660(v22, a2 + 1200);
  v18 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101930);
  v19 = swift_allocObject();
  v20 = sub_1A3A1D698(v9);
  v19[3] = v18;
  v19[4] = v20;
  v19[2] = a5;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();

  sub_1A3A2F1A0();

  __swift_destroy_boxed_opaque_existential_0(v22);
  return a2;
}

unint64_t sub_1A3A1D698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101908);
    v3 = sub_1A3A320E0();
    sub_1A3A2EA60();
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;
      sub_1A38A8F64(v6);
      sub_1A3A2EA60();
      result = sub_1A3A1B72C(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A3A1D7BC()
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  v0 = sub_1A3A32300();

  return sub_1A3A1D790(v0);
}

unint64_t sub_1A3A1D820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE250);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101940);
    v7 = sub_1A3A320E0();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_1A3A2EA60();
    while (1)
    {
      sub_1A388F6D8(v8, v5, &qword_1EB0FE250);
      result = sub_1A3A1D7BC();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1A3A2EA20();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1D9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1018E8);
    v3 = sub_1A3A320E0();
    sub_1A3A2EA60();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1A3A1B7DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1DAE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101938);
    v3 = sub_1A3A320E0();
    sub_1A3A2EA60();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1A3A2EA50();
      v8 = v7;
      result = sub_1A3A1B864(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1DBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678);
    v3 = sub_1A3A320E0();
    v4 = a1 + 32;
    sub_1A3A2EA60();
    while (1)
    {
      sub_1A388F6D8(v4, &v13, &qword_1EB0FF680);
      v5 = v13;
      v6 = v14;
      result = sub_1A3A1B864(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A3924CD4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1DD14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100BD8);
    v3 = sub_1A3A320E0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A3A1B8DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1DDF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101958);
    v7 = sub_1A3A320E0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A3A2EA60();
    while (1)
    {
      sub_1A388F6D8(v9, v5, &qword_1EB1004D8);
      result = sub_1A3A1B920(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1A3A2EA20();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1DFDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101950);
    v7 = sub_1A3A320E0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A3A2EA60();
    while (1)
    {
      sub_1A388F6D8(v9, v5, &qword_1EB1004C8);
      result = sub_1A3A1B98C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1A3A2EA20();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1E1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101948);
    v7 = sub_1A3A320E0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A3A2EA60();
    while (1)
    {
      sub_1A388F6D8(v9, v5, &qword_1EB1004B8);
      result = sub_1A3A1BA60(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1A3A2EA20();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3A1E3AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB98);
    v3 = sub_1A3A320E0();
    sub_1A3A2EA60();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1A3A2EA50();
      swift_unknownObjectRetain();
      result = sub_1A3A1B864(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A3A1E618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3A1E660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A3A1E70C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  return v1;
}

uint64_t sub_1A3A1E7A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  return v1;
}

uint64_t sub_1A3A1E814()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  return v1;
}

uint64_t sub_1A3A1E888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  return v1;
}

uint64_t sub_1A3A1E8FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A3A2F110();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A3A2286C(&qword_1EB101A10, MEMORY[0x1E69A0F90]), v7 = sub_1A3A31750(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A3A2286C(&qword_1EB101A18, MEMORY[0x1E69A0F90]);
      v15 = sub_1A3A31790();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A3A1EB14()
{
  result = MGGetProductType();
  byte_1EB101B58 = result == 1872992317;
  return result;
}

uint64_t sub_1A3A1EB44()
{
  if (*(v0 + 32))
  {
    v1 = sub_1A3A31810();
    v2 = CAMLocalizedFrameworkString(v1, 0);

    sub_1A3A31850();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F490();
    v3 = sub_1A3A31810();
    v4 = CAMLocalizedFrameworkString(v3, 0);

    sub_1A3A31850();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F490();
  }

  else
  {
    v5 = sub_1A3A31810();
    v6 = CAMLocalizedFrameworkString(v5, 0);

    sub_1A3A31850();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F490();
    v7 = sub_1A3A31810();
    v8 = CAMLocalizedFrameworkString(v7, 0);

    sub_1A3A31850();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F490();
    v9 = sub_1A3A31810();
    v10 = CAMLocalizedFrameworkString(v9, 0);

    sub_1A3A31850();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA60();
  return sub_1A3A2F490();
}

uint64_t sub_1A3A1EEB0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A3A1EF40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA50();
  sub_1A3A2EA60();
  return sub_1A3A2F490();
}

double sub_1A3A1EFC0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A3A1F040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA50();
  sub_1A3A2EA60();
  return sub_1A3A2F490();
}

void sub_1A3A1F220(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  if (v20 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2F480();

    if (v20)
    {
      if (v20 == 2)
      {
        v7 = *(v2 + 16);
        sub_1A3A31690();
        v8 = sub_1A3A316A0();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        v9 = OBJC_IVAR____TtC8CameraUI9Stopwatch_endTime;
        swift_beginAccess();
        sub_1A3924028(v6, v7 + v9);
        swift_endAccess();
        if (qword_1EB0FC178 != -1)
        {
          swift_once();
        }

        v10 = sub_1A3A2F2A0();
        __swift_project_value_buffer(v10, qword_1EB101AF8);
        v11 = sub_1A3A31C10();
        sub_1A3A2EA60();
        v12 = sub_1A3A2F280();

        if (os_log_type_enabled(v12, v11))
        {
          v13 = swift_slowAlloc();
          *v13 = 134217984;
          sub_1A391D830();
          *(v13 + 4) = v14;
          _os_log_impl(&dword_1A3640000, v12, v11, "Buddy - loading completed in: %f", v13, 0xCu);
          MEMORY[0x1A58FAC10](v13, -1, -1);
        }
      }

      else
      {
        if (v20 != 1)
        {
          sub_1A3A321F0();
          __break(1u);
          return;
        }

        v15 = *(v2 + 16);
        sub_1A3A31690();
        v16 = sub_1A3A316A0();
        (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
        v17 = OBJC_IVAR____TtC8CameraUI9Stopwatch_startTime;
        swift_beginAccess();
        sub_1A3924028(v6, v15 + v17);
        swift_endAccess();
      }
    }

    v18 = *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
    if (v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1A3A2EA60();
      sub_1A3A2F480();

      v18(v20);
      sub_1A3671090(v18);
    }
  }
}

uint64_t sub_1A3A1F5C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  *a1 = v3;
  return result;
}

void sub_1A3A1F648()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA60();
  sub_1A3A2F490();
  sub_1A3A1F220(v0);
}

uint64_t sub_1A3A1F714()
{
  if (qword_1EB0FC238 != -1)
  {
    result = swift_once();
  }

  if (byte_1EB101B58 == 1)
  {
    result = sub_1A3A31BD0();
  }

  else
  {
    v0 = 0;
    v1 = -1084266766;
    v2 = 0;
  }

  dword_1EB101960 = v0;
  dword_1EB101964 = v1;
  dword_1EB101968 = v2;
  return result;
}

uint64_t sub_1A3A1F7B0()
{
  if (qword_1EB0FC238 != -1)
  {
    result = swift_once();
  }

  if (byte_1EB101B58 == 1)
  {
    result = sub_1A3A31BD0();
  }

  else
  {
    v0 = 0;
    v1 = -1112360767;
    v2 = 0;
  }

  dword_1EB10196C = v0;
  dword_1EB101970 = v1;
  dword_1EB101974 = v2;
  return result;
}

uint64_t sub_1A3A1F84C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  if (!v9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A3A2F480();

    v4 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = 1;
    sub_1A3A2EA60();
    sub_1A3A2F490();
    sub_1A3A1F220(v4);
    v5 = sub_1A3A31AD0();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_1A38911CC(0, 0, v2, &unk_1A3A86718, v7);
  }

  return result;
}

uint64_t sub_1A3A1FA58()
{
  v1 = v0;
  v2 = sub_1A3A2F110();
  v112 = *(v2 - 8);
  v113 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A2F130();
  v6 = *(v5 - 8);
  v114 = v5;
  v115 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v111 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v106 - v9;
  v10 = sub_1A3A2F140();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v109 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v106 - v14;
  v16 = sub_1A3A2F160();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A3A2F190();
  v21 = *(v20 - 8);
  v116 = v20;
  v117 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v110 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v106 - v24;
  v26 = sub_1A3A221F0();
  if (v26 != 1)
  {
    v49 = v26;
    *(v1 + 24) = v26;
    sub_1A3A2EA60();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1A391E0A0();
      sub_1A3910164(v49);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1A3910164(v49);
    }

    goto LABEL_42;
  }

  v108 = v1;
  sub_1A3A2F150();
  sub_1A3A2F180();
  (*(v17 + 8))(v19, v16);
  sub_1A3A2F170();
  v27 = (*(v11 + 88))(v15, v10);
  v28 = v25;
  if (v27 == *MEMORY[0x1E69A0EF8])
  {
    (*(v11 + 96))(v15, v10);
    v29 = v115;
    v30 = v15;
    v31 = v114;
    v115[4](v118, v30, v114);
    v32 = sub_1A3A2F120();
    v34 = v112;
    v33 = v113;
    v35 = *(v112 + 104);
    v35(v4, *MEMORY[0x1E69A0F38], v113);
    v36 = sub_1A3A1E8FC(v4, v32);

    v37 = *(v34 + 8);
    v37(v4, v33);
    if (v36 & 1) != 0 || (v38 = sub_1A3A2F120(), v35(v4, *MEMORY[0x1E69A0F60], v33), v39 = sub_1A3A1E8FC(v4, v38), , v37(v4, v33), v29 = v115, (v39))
    {
      HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
      v41 = v117;
      if (qword_1EB0FC178 != -1)
      {
        swift_once();
      }

      v42 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v42, qword_1EB101AF8);
      v43 = sub_1A3A31C40();
      v44 = sub_1A3A2F280();
      if (os_log_type_enabled(v44, v43))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = HasCompletedInitialRun;
        _os_log_impl(&dword_1A3640000, v44, v43, "Buddy - generative model assets not ready, initial run completed: %{BOOL}d", v45, 8u);
        MEMORY[0x1A58FAC10](v45, -1, -1);
      }

      v46 = swift_allocObject();
      *(v46 + 16) = HasCompletedInitialRun;
      v1 = v108;
      *(v108 + 24) = v46;
      sub_1A3A2EA60();

      Strong = swift_unknownObjectWeakLoadStrong();
      v48 = v116;
      if (Strong)
      {
LABEL_10:
        sub_1A391E0A0();

        swift_unknownObjectRelease();
LABEL_41:
        (v29[1])(v118, v31);
        (*(v41 + 8))(v28, v48);
        goto LABEL_42;
      }
    }

    else
    {
      if (qword_1EB0FC178 != -1)
      {
        swift_once();
      }

      v68 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v68, qword_1EB101AF8);
      v69 = sub_1A3A31C40();
      v70 = v111;
      v29[2](v111, v118, v31);
      v71 = sub_1A3A2F280();
      if (os_log_type_enabled(v71, v69))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v119 = v73;
        *v72 = 136315138;
        sub_1A3A2F120();
        sub_1A3A2286C(&qword_1EB101A10, MEMORY[0x1E69A0F90]);
        v74 = v70;
        v75 = sub_1A3A31B20();
        v77 = v76;

        (v115[1])(v74, v31);
        v78 = sub_1A39ABC10(v75, v77, &v119);
        v29 = v115;

        *(v72 + 4) = v78;
        _os_log_impl(&dword_1A3640000, v71, v69, "Buddy - generative model restricted for reasons: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1A58FAC10](v73, -1, -1);
        MEMORY[0x1A58FAC10](v72, -1, -1);
      }

      else
      {

        (v29[1])(v70, v31);
      }

      v48 = v116;
      v41 = v117;
      v98 = swift_allocObject();
      *(v98 + 16) = 1;
      v1 = v108;
      *(v108 + 24) = v98;
      sub_1A3A2EA60();

      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }
    }

    goto LABEL_41;
  }

  if (v27 == *MEMORY[0x1E69A0F00])
  {
    v50 = v10;
    v51 = v117;
    if (qword_1EB0FC178 != -1)
    {
      swift_once();
    }

    v52 = sub_1A3A2F2A0();
    __swift_project_value_buffer(v52, qword_1EB101AF8);
    v53 = sub_1A3A31C40();
    v54 = sub_1A3A2F280();
    v55 = os_log_type_enabled(v54, v53);
    v56 = v116;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1A3640000, v54, v53, "Buddy - generative model unavailable", v57, 2u);
      MEMORY[0x1A58FAC10](v57, -1, -1);
    }

    v58 = swift_allocObject();
    *(v58 + 16) = 1;
    v1 = v108;
    *(v108 + 24) = v58;
    sub_1A3A2EA60();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1A391E0A0();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v51 + 8))(v28, v56);
    (*(v11 + 8))(v15, v50);
  }

  else
  {
    v59 = v117;
    if (v27 == *MEMORY[0x1E69A11A0])
    {
      v60 = BYSetupAssistantHasCompletedInitialRun();
      if (qword_1EB0FC178 != -1)
      {
        swift_once();
      }

      v61 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v61, qword_1EB101AF8);
      v62 = sub_1A3A31C40();
      v63 = sub_1A3A2F280();
      if (os_log_type_enabled(v63, v62))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        *(v64 + 4) = v60;
        _os_log_impl(&dword_1A3640000, v63, v62, "Buddy - generative model available, initial run completed: %{BOOL}d", v64, 8u);
        MEMORY[0x1A58FAC10](v64, -1, -1);
      }

      v65 = swift_allocObject();
      *(v65 + 16) = v60;
      v1 = v108;
      *(v108 + 24) = v65;
      sub_1A3A2EA60();

      v66 = swift_unknownObjectWeakLoadStrong();
      v67 = v116;
      if (v66)
      {
        sub_1A391E0A0();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v59 + 8))(v28, v67);
    }

    else
    {
      v118 = v10;
      if (qword_1EB0FC178 != -1)
      {
        swift_once();
      }

      v79 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v79, qword_1EB101AF8);
      v80 = sub_1A3A31C40();
      v81 = v110;
      v82 = v116;
      (*(v59 + 16))(v110, v25, v116);
      v83 = sub_1A3A2F280();
      v84 = os_log_type_enabled(v83, v80);
      v107 = v11;
      if (v84)
      {
        v85 = swift_slowAlloc();
        v114 = v15;
        v86 = v85;
        v87 = swift_slowAlloc();
        v115 = v25;
        v88 = v87;
        v119 = v87;
        *v86 = 136315138;
        v89 = v109;
        sub_1A3A2F170();
        sub_1A3A2286C(&qword_1EB101A08, MEMORY[0x1E69A11A8]);
        LODWORD(v113) = v80;
        v90 = v118;
        v91 = sub_1A3A321A0();
        v93 = v92;
        (*(v11 + 8))(v89, v90);
        v94 = *(v117 + 8);
        v94(v81, v82);
        v95 = sub_1A39ABC10(v91, v93, &v119);

        *(v86 + 4) = v95;
        _os_log_impl(&dword_1A3640000, v83, v113, "Buddy - generative model state unknown: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        v96 = v88;
        v28 = v115;
        MEMORY[0x1A58FAC10](v96, -1, -1);
        v97 = v86;
        v15 = v114;
        MEMORY[0x1A58FAC10](v97, -1, -1);
      }

      else
      {

        v94 = *(v59 + 8);
        v94(v81, v82);
      }

      v102 = v82;
      v103 = swift_allocObject();
      *(v103 + 16) = 1;
      v1 = v108;
      *(v108 + 24) = v103;
      sub_1A3A2EA60();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1A391E0A0();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v104 = v118;
      v105 = v107;
      v94(v28, v102);
      (*(v105 + 8))(v15, v104);
    }
  }

LABEL_42:
  v99 = *(v1 + 24);
  if (v99)
  {
    v100 = *(v99 + 16);
    if (v100)
    {
      LOBYTE(v100) = 0;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_wantsBothAnimationLoops) = 1;
    }
  }

  else
  {
    LOBYTE(v100) = 1;
  }

  *(v1 + 32) = v100;
  return sub_1A3A1EB44();
}

uint64_t sub_1A3A208B4()
{
  v1 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage;
  v2 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage) = 0;

  v3 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage;
  v4 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage) = 0;

  v5 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset;
  v6 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset) = 0;

  v7 = (v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
  v8 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
  *v7 = 0;
  v7[1] = 0;
  sub_1A3671090(v8);

  v9 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__sceneHasRendered;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1019E8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__title;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1019F0);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__content, v12);
  v14 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__toggleLabel;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1019F8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__loadingStatus;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101A00);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);

  sub_1A3896E18(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_delegate);
  sub_1A3671090(*v7);
  return v0;
}

uint64_t sub_1A3A20AF8()
{
  sub_1A3A208B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingBuddySetupViewModel()
{
  result = qword_1EB1019A8;
  if (!qword_1EB1019A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3A20BA4()
{
  sub_1A3A20DC4(319, &qword_1EB1019B8);
  if (v0 <= 0x3F)
  {
    sub_1A3A20DC4(319, &qword_1EB1019C0);
    if (v1 <= 0x3F)
    {
      sub_1A3A20D60();
      if (v2 <= 0x3F)
      {
        sub_1A3A20DC4(319, &qword_1EB1019D0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1A3A20D60()
{
  if (!qword_1EB1019C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738);
    v0 = sub_1A3A2F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1019C8);
    }
  }
}

void sub_1A3A20DC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A3A2F4A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A3A20E20(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3A20E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1A3A20EC4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1A3A20F00()
{
  result = qword_1EB1019D8;
  if (!qword_1EB1019D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1019D8);
  }

  return result;
}

unint64_t sub_1A3A20F58()
{
  result = qword_1EB1019E0;
  if (!qword_1EB1019E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1019E0);
  }

  return result;
}

id sub_1A3A20FB8()
{
  v0 = sub_1A3A2EC30();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v19[0] = sub_1A3A31850();
  v13 = v12;
  v14 = sub_1A3A31810();
  v15 = sub_1A3A31810();
  v16 = [v11 URLForResource:v14 withExtension:v15];

  if (!v16)
  {

    return 0;
  }

  sub_1A3A2EC10();

  (*(v1 + 32))(v9, v6, v0);
  sub_1A3A22A14();
  (*(v1 + 16))(v3, v9, v0);
  v18 = sub_1A3A21260(v3, v19[0], v13, 0);
  (*(v1 + 8))(v9, v0);

  result = v18;
  if (!v18)
  {
    return 0;
  }

  return result;
}

id sub_1A3A21260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A3A2EC00();
  v7 = sub_1A3A31810();

  if (a4)
  {
    v8 = sub_1A3A31700();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1A3A2EC30();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1A3A2EBB0();

    swift_willThrow();
    v15 = sub_1A3A2EC30();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_1A3A21448()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A3A21570;

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1A3A21570()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3A2166C, 0, 0);
}

uint64_t sub_1A3A2166C()
{
  sub_1A3A31AA0();
  *(v0 + 80) = sub_1A3A31A90();
  v2 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A3A21700, v2, v1);
}

uint64_t sub_1A3A21700()
{

  sub_1A3A220EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  v1 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = 2;
  sub_1A3A2EA60();
  sub_1A3A2F490();
  sub_1A3A1F220(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A3A21818, 0, 0);
}

uint64_t sub_1A3A21818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3A21878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3A21914, 0, 0);
}

uint64_t sub_1A3A21914()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1A3A31AB0();
  v3 = sub_1A3A31AD0();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1A3A2EA60();
  sub_1A3A21EF4(v1, &unk_1A3A86738, v4);
  sub_1A3A22B54(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A3A21A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A38910D8;

  return sub_1A3A21AAC();
}

uint64_t sub_1A3A21AAC()
{
  v1[2] = v0;
  v2 = sub_1A3A2EC30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3A21B6C, 0, 0);
}

uint64_t sub_1A3A21B6C()
{
  if (qword_1EB0FC238 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1A3A31810();
  v4 = sub_1A3A31810();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (!v5)
  {
    return sub_1A3A32070();
  }

  sub_1A3A2EC10();

  v6 = objc_allocWithZone(MEMORY[0x1E6974B48]);
  v7 = sub_1A3A2EC00();
  v8 = [v6 initWithURL_];
  *(v0 + 48) = v8;

  [v8 loadTextures];
  sub_1A3A31AA0();
  *(v0 + 56) = sub_1A3A31A90();
  v10 = sub_1A3A31A70();

  return MEMORY[0x1EEE6DFA0](sub_1A3A21DF8, v10, v9);
}

uint64_t sub_1A3A21DF8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset);
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A3A21E78, 0, 0);
}

uint64_t sub_1A3A21E78()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A3A21EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1A3896E40(a1, v20 - v9);
  v11 = sub_1A3A31AD0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A3A22B54(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1A3A31A70();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A3A31AC0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1A3A220EC()
{
  v1 = sub_1A3A20FB8();
  v2 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage) = v1;

  v3 = sub_1A3A20FB8();
  v4 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage) = v3;

  v5 = sub_1A3A20FB8();
  v6 = *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonAccentAnimationPackage);
  *(v0 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonAccentAnimationPackage) = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

uint64_t sub_1A3A221A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3A2F460();
  *a1 = result;
  return result;
}

uint64_t sub_1A3A221F0()
{
  v0 = sub_1A3A31810();
  v1 = sub_1A3A31810();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    if (v5 == 0xD000000000000016 && 0x80000001A3AA8D50 == v6 || (sub_1A3A321C0() & 1) != 0)
    {

      return 0;
    }

    if (v5 == 0xD000000000000011 && 0x80000001A3AA8D70 == v6 || (sub_1A3A321C0() & 1) != 0)
    {

      result = swift_allocObject();
      *(result + 16) = 1;
      return result;
    }

    if (v5 == 7105633 && v6 == 0xE300000000000000)
    {

LABEL_15:
      result = swift_allocObject();
      *(result + 16) = 0;
      return result;
    }

    v4 = sub_1A3A321C0();

    if (v4)
    {
      goto LABEL_15;
    }
  }

  return 1;
}

uint64_t sub_1A3A223C8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101A00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1019F8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1019E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  type metadata accessor for Stopwatch();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC8CameraUI9Stopwatch_startTime;
  v14 = sub_1A3A316A0();
  v15 = *(*(v14 - 8) + 56);
  v15(v12 + v13, 1, 1, v14);
  v15(v12 + OBJC_IVAR____TtC8CameraUI9Stopwatch_endTime, 1, 1, v14);
  *(v2 + 16) = v12;
  v16 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__sceneHasRendered;
  LOBYTE(v37) = 0;
  sub_1A3A2F470();
  (*(v9 + 32))(v2 + v16, v11, v8);
  v17 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__toggleLabel;
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD738);
  sub_1A3A2F470();
  (*(v28 + 32))(v2 + v17, v7, v29);
  v18 = OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel__loadingStatus;
  v37 = 0;
  v19 = v30;
  sub_1A3A2F470();
  (*(v31 + 32))(v2 + v18, v19, v32);
  v20 = sub_1A3A31810();
  v21 = NSClassFromString(v20);

  if (v21)
  {
    v22 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v22 = 0;
  }

  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_cameraButtonBundle) = v22;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_demoLoopAnimationPackage) = 0;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonAccentAnimationPackage) = 0;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_buttonHighlightAnimationPackage) = 0;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_modelAsset) = 0;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_wantsBothAnimationLoops) = 2;
  *(v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v23 = (v2 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
  v25 = v33;
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  swift_beginAccess();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1A365F488(v25);
  sub_1A3A2F470();
  swift_endAccess();
  swift_beginAccess();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1A3A2F470();
  swift_endAccess();
  *(v2 + 32) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  *(v2 + 24) = v26;
  sub_1A3A1F84C();
  sub_1A3A1FA58();
  return v2;
}

uint64_t sub_1A3A2286C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3A228B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A38910D8;

  return sub_1A3A21428(a1, v4, v5, v6);
}

uint64_t sub_1A3A22968(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3897340;

  return sub_1A3A21878(a1, a2, v2);
}

unint64_t sub_1A3A22A14()
{
  result = qword_1EB101A20;
  if (!qword_1EB101A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB101A20);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3A22AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3897340;

  return sub_1A3A21A1C();
}

uint64_t sub_1A3A22B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3A22BBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A38910D8;

  return sub_1A3896108(a1, v4);
}

void CAMShowStorageUsageInSettings_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to opening Storage Settings url: %{public}@", &v2, 0xCu);
}

void CAMOpenURL_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Failed to open URL %{public}@: %{public}@", &v3, 0x16u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x1EEE4DB30](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}