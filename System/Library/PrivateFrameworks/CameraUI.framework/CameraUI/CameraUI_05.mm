uint64_t sub_1A38EE324()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 608);
}

uint64_t sub_1A38EE3C4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1144);
}

uint64_t sub_1A38EE464()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1064);
}

double sub_1A38EE504()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 352);
}

uint64_t sub_1A38EE5A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[11], v11);
  if (result)
  {
    v4[11].origin.x = a1;
    v4[11].origin.y = a2;
    v4[11].size.width = a3;
    v4[11].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void *sub_1A38EE6F0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v1 = *(v0 + 816);
  sub_1A38DCB50(v1);
  return v1;
}

uint64_t sub_1A38EE7C0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EE864()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 592);
}

uint64_t sub_1A38EE904()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1179);
}

double sub_1A38EE9A4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 520);
}

uint64_t sub_1A38EEA50()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1152);
}

uint64_t sub_1A38EEAF4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1168);
}

uint64_t sub_1A38EEB94()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1180);
}

uint64_t sub_1A38EEC34(uint64_t result)
{
  if (*(v1 + 592) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EED38()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38EEDDC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 609);
}

uint64_t sub_1A38EEE7C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

unint64_t sub_1A38EEF8C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = *(v4 + 40);
  v12 = *(v4 + 48);
  sub_1A38BCF64(v9, v10, v11, v12);
  v13 = sub_1A39030C8(v9, v10, v11, v12, a1, a2, a3, a4);
  sub_1A38BC250(v9, v10, v11, v12);
  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
    sub_1A38BC250(a1, a2, a3, a4);
  }

  else
  {
    v16 = *(v4 + 24);
    v17 = *(v4 + 32);
    v18 = *(v4 + 40);
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    v19 = *(v4 + 48);
    *(v4 + 48) = a4;

    return sub_1A38BC250(v16, v17, v18, v19);
  }
}

uint64_t sub_1A38EF164(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[2], v11);
  if (result)
  {
    v4[2].origin.x = a1;
    v4[2].origin.y = a2;
    v4[2].size.width = a3;
    v4[2].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF2AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[3], v11);
  if (result)
  {
    v4[3].origin.x = a1;
    v4[3].origin.y = a2;
    v4[3].size.width = a3;
    v4[3].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF3F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[4], v11);
  if (result)
  {
    v4[4].origin.x = a1;
    v4[4].origin.y = a2;
    v4[4].size.width = a3;
    v4[4].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF53C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[5], v11);
  if (result)
  {
    v4[5].origin.x = a1;
    v4[5].origin.y = a2;
    v4[5].size.width = a3;
    v4[5].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF684(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[6], v11);
  if (result)
  {
    v4[6].origin.x = a1;
    v4[6].origin.y = a2;
    v4[6].size.width = a3;
    v4[6].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF7CC(uint64_t result)
{
  if (*(v1 + 392) == (result & 1))
  {
    *(v1 + 392) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EF8DC(double a1, double a2)
{
  if (*(v2 + 400) == a1 && *(v2 + 408) == a2)
  {
    *(v2 + 400) = a1;
    *(v2 + 408) = a2;

    return sub_1A38F79EC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38EFA24(uint64_t result)
{
  if (*(v1 + 416) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38EFB2C(double a1, double a2)
{
  if (*(v2 + 424) == a1 && *(v2 + 432) == a2)
  {
    *(v2 + 424) = a1;
    *(v2 + 432) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38EFC4C(uint64_t result)
{
  if (*(v1 + 440) == (result & 1))
  {
    *(v1 + 440) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EFD5C(uint64_t result)
{
  if (*(v1 + 441) == (result & 1))
  {
    *(v1 + 441) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38EFE6C(double a1)
{
  if (*(v1 + 448) == a1)
  {
    *(v1 + 448) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38EFF84(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 456), v11);
  if (result)
  {
    *(v4 + 456) = a1;
    *(v4 + 464) = a2;
    *(v4 + 472) = a3;
    *(v4 + 480) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F00CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 488), v11);
  if (result)
  {
    *(v4 + 488) = a1;
    *(v4 + 496) = a2;
    *(v4 + 504) = a3;
    *(v4 + 512) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F0214(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 520), v11);
  if (result)
  {
    *(v4 + 520) = a1;
    *(v4 + 528) = a2;
    *(v4 + 536) = a3;
    *(v4 + 544) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38F036C(double a1)
{
  if (*(v1 + 552) == a1)
  {
    *(v1 + 552) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F0484(uint64_t result)
{
  if (*(v1 + 560) == (result & 1))
  {
    *(v1 + 560) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38F0594(double a1)
{
  if (*(v1 + 568) == a1)
  {
    *(v1 + 568) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F06AC(uint64_t result)
{
  if (*(v1 + 584) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F07B0(uint64_t result)
{
  v2 = *(v1 + 600);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 600) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F0934(uint64_t result)
{
  if (*(v1 + 608) == (result & 1))
  {
    *(v1 + 608) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F0A44(uint64_t result)
{
  if (*(v1 + 609) == (result & 1))
  {
    *(v1 + 609) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F0B54(uint64_t a1)
{
  if (*(v1 + 616) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F0C88(uint64_t a1)
{
  if (*(v1 + 624) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F0DBC(uint64_t a1)
{
  if (*(v1 + 632) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F0EF0(uint64_t a1)
{
  if (*(v1 + 640) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F1024(uint64_t a1)
{
  if (*(v1 + 648) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F1158(uint64_t a1)
{
  if (*(v1 + 656) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F128C(uint64_t result)
{
  if (*(v1 + 664) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F1394(uint64_t result)
{
  if (*(v1 + 665) == (result & 1))
  {
    *(v1 + 665) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F14A4(uint64_t result)
{
  if (*(v1 + 666) == (result & 1))
  {
    *(v1 + 666) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38F15B4(double a1)
{
  if (*(v1 + 672) == a1)
  {
    *(v1 + 672) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F16CC(uint64_t result)
{
  if (*(v1 + 680) == (result & 1))
  {
    *(v1 + 680) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38F17DC(double a1)
{
  if (*(v1 + 688) == a1)
  {
    *(v1 + 688) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F18F4(double a1)
{
  if (*(v1 + 696) == a1)
  {
    *(v1 + 696) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1A0C(double a1)
{
  if (*(v1 + 704) == a1)
  {
    *(v1 + 704) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1B24(double a1)
{
  if (*(v1 + 712) == a1)
  {
    *(v1 + 712) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1C3C(double a1)
{
  if (*(v1 + 720) == a1)
  {
    *(v1 + 720) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1D54(double a1)
{
  if (*(v1 + 728) == a1)
  {
    *(v1 + 728) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1E6C(double a1)
{
  if (*(v1 + 736) == a1)
  {
    *(v1 + 736) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

void sub_1A38F1F84(double a1)
{
  if (*(v1 + 744) == a1)
  {
    *(v1 + 744) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F209C(uint64_t result)
{
  if (*(v1 + 752) == (result & 1))
  {
    *(v1 + 752) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F21AC(uint64_t result)
{
  if (*(v1 + 753) == (result & 1))
  {
    *(v1 + 753) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F22BC(uint64_t result)
{
  if (*(v1 + 754) == (result & 1))
  {
    *(v1 + 754) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F23CC(uint64_t result)
{
  if (*(v1 + 755) == (result & 1))
  {
    *(v1 + 755) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F24DC(uint64_t result)
{
  if (*(v1 + 756) == (result & 1))
  {
    *(v1 + 756) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F25EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 760), v11);
  if (result)
  {
    *(v4 + 760) = a1;
    *(v4 + 768) = a2;
    *(v4 + 776) = a3;
    *(v4 + 784) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2744(uint64_t result)
{
  if (*(v1 + 792) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F284C(uint64_t result)
{
  if (*(v1 + 793) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2954(uint64_t result)
{
  if (*(v1 + 800) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2A58(uint64_t result)
{
  if (*(v1 + 808) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2B60(uint64_t result)
{
  if (*(v1 + 841) == (result & 1))
  {
    *(v1 + 841) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2C70(uint64_t result)
{
  v2 = *(v1 + 864);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 864) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2DF4(uint64_t result)
{
  v2 = *(v1 + 872);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 872) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F2F78(uint64_t result)
{
  v2 = *(v1 + 880);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 880) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F30FC(uint64_t result)
{
  if (*(v1 + 888) == (result & 1))
  {
    *(v1 + 888) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F320C(uint64_t result)
{
  if (*(v1 + 889) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3314(uint64_t result)
{
  if (*(v1 + 896) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3418(uint64_t result)
{
  if (*(v1 + 904) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A38F351C(double a1, double a2)
{
  if (*(v2 + 912) == a1 && *(v2 + 920) == a2)
  {
    *(v2 + 912) = a1;
    *(v2 + 920) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F3644(uint64_t a1)
{
  if (*(v1 + 928) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F3778(uint64_t a1)
{
  if (*(v1 + 936) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F38AC(uint64_t a1)
{
  if (*(v1 + 944) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F39E0(uint64_t result)
{
  if (*(v1 + 952) == (result & 1))
  {
    *(v1 + 952) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3AF0(uint64_t result)
{
  v2 = *(v1 + 960);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 960) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3C74(uint64_t result)
{
  if (*(v1 + 968) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3D7C(uint64_t result)
{
  if (*(v1 + 969) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3E84(uint64_t result)
{
  if (*(v1 + 976) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F3F88(uint64_t result, char a2)
{
  if ((*(v2 + 1008) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 1000) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 1000) = result;
    *(v2 + 1008) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A38F40BC(uint64_t result)
{
  if (*(v1 + 1016) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F41C0(uint64_t result, char a2)
{
  if ((*(v2 + 1048) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 1040) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 1040) = result;
    *(v2 + 1048) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A38F42F4(uint64_t result)
{
  v2 = *(v1 + 1056);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 1056) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4478(uint64_t result)
{
  if (*(v1 + 1064) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4580(uint64_t result)
{
  if (*(v1 + 1065) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4688(uint64_t result)
{
  if (*(v1 + 1066) == (result & 1))
  {
    *(v1 + 1066) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4798(uint64_t result)
{
  if (*(v1 + 1067) == (result & 1))
  {
    *(v1 + 1067) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F48A8(uint64_t result)
{
  if (*(v1 + 1068) == (result & 1))
  {
    *(v1 + 1068) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F49B8(uint64_t result)
{
  if (*(v1 + 1072) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4ABC(uint64_t result)
{
  if (*(v1 + 1080) == (result & 1))
  {
    *(v1 + 1080) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4BCC(uint64_t result)
{
  if (*(v1 + 1120) == (result & 1))
  {
    *(v1 + 1120) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4CDC(uint64_t result)
{
  if (*(v1 + 1121) == (result & 1))
  {
    *(v1 + 1121) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4DEC(uint64_t result)
{
  if (*(v1 + 1122) == (result & 1))
  {
    *(v1 + 1122) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F4EFC(uint64_t result)
{
  if (*(v1 + 1123) == (result & 1))
  {
    *(v1 + 1123) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F500C(uint64_t result)
{
  if (*(v1 + 1124) == (result & 1))
  {
    *(v1 + 1124) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F511C(uint64_t result)
{
  v2 = *(v1 + 1128);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 1128) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F52A0(uint64_t result)
{
  if (*(v1 + 1136) == (result & 1))
  {
    *(v1 + 1136) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F53B0(uint64_t result)
{
  if (*(v1 + 1137) == (result & 1))
  {
    *(v1 + 1137) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F54C0(uint64_t result)
{
  if (*(v1 + 1144) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F55C4(uint64_t result)
{
  if (*(v1 + 1152) == (result & 1))
  {
    *(v1 + 1152) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F56D4(uint64_t result)
{
  if (*(v1 + 1153) == (result & 1))
  {
    *(v1 + 1153) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F57E4(uint64_t result)
{
  if (*(v1 + 1154) == (result & 1))
  {
    *(v1 + 1154) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F58F4(uint64_t result)
{
  if (*(v1 + 1155) == (result & 1))
  {
    *(v1 + 1155) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F5A04(uint64_t a1)
{
  v3 = *(v1 + 1160);
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996718, type metadata accessor for ChromeRemainingRecordingTimeModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v4 = *(v3 + 16);
  swift_getKeyPath();
  sub_1A3A2F080();

  if (v4 == *(a1 + 16))
  {
    *(v1 + 1160) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A38F5BF0(uint64_t result)
{
  if (*(v1 + 1168) == (result & 1))
  {
    *(v1 + 1168) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F5D00(uint64_t result)
{
  if (*(v1 + 1169) == (result & 1))
  {
    *(v1 + 1169) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F5E10(uint64_t result)
{
  if (*(v1 + 1170) == (result & 1))
  {
    *(v1 + 1170) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F5F20(uint64_t result)
{
  if (*(v1 + 1171) == (result & 1))
  {
    *(v1 + 1171) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6030(uint64_t result)
{
  if (*(v1 + 1172) == (result & 1))
  {
    *(v1 + 1172) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6140(uint64_t result)
{
  if (*(v1 + 1173) == (result & 1))
  {
    *(v1 + 1173) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6250(uint64_t result)
{
  if (*(v1 + 1174) == (result & 1))
  {
    *(v1 + 1174) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6360(uint64_t result)
{
  if (*(v1 + 1175) == (result & 1))
  {
    *(v1 + 1175) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6470(uint64_t result)
{
  if (*(v1 + 1176) == (result & 1))
  {
    *(v1 + 1176) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6580(uint64_t result)
{
  if (*(v1 + 1177) == (result & 1))
  {
    *(v1 + 1177) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F6690(uint64_t result)
{
  if (*(v1 + 1178) == (result & 1))
  {
    *(v1 + 1178) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F67A0(uint64_t result)
{
  if (*(v1 + 1179) == (result & 1))
  {
    *(v1 + 1179) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F68B0(uint64_t result)
{
  if (*(v1 + 1180) == (result & 1))
  {
    *(v1 + 1180) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F69C0(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = type metadata accessor for ChromeElementModel();
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = v4;
    v5[4] = v3;
    v6 = swift_allocObject();
    sub_1A38A8F64(v1);
    sub_1A38A8F64(v1);
    sub_1A3890E54();
    sub_1A3A31EE0();
    *(v6 + 56) = sub_1A3903438;
    *(v6 + 64) = v5;
    return v6;
  }

  else
  {
    result = sub_1A3A32070();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38F6AEC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38F6B90()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 16);
}

unint64_t sub_1A38F6C30()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v1 = *(v0 + 24);
  sub_1A38BCF64(v1, *(v3 + 32), *(v3 + 40), *(v3 + 48));
  return v1;
}

unint64_t sub_1A38F6CFC(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a4 == 1)
  {
    v8 = result;
  }

  else
  {
    v8 = 35;
  }

  if (a4 == 255)
  {
    v9 = 35;
  }

  else
  {
    v9 = v8;
  }

  if (a8 != 1)
  {
    a5 = 35;
  }

  if (a8 == 255)
  {
    v11 = 35;
  }

  else
  {
    v11 = a5;
  }

  if (v9 == 35)
  {
    if (v11 == 35)
    {
      return result;
    }
  }

  else if (v11 != 35)
  {
    sub_1A38BCF98(v11);
    sub_1A38BCF98(v9);
    v12 = sub_1A3A018A8(v9, v11);
    sub_1A3890F1C(v11);
    result = sub_1A3890F1C(v9);
    if (v12)
    {
      return result;
    }
  }

  return sub_1A38F6EF8(v9, v11);
}

uint64_t sub_1A38F6DC4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v0 + 48))
  {
    return 0;
  }

  v2 = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3A2F080();

  v3 = *(v0 + 800);
  if (!v2)
  {
    if (v3 == 4)
    {
      return 2;
    }

    if (v3 == 3)
    {
      return 3;
    }

    return UIInterfaceOrientationIsPortrait(v3);
  }

  if (v2 == 1)
  {
    return UIInterfaceOrientationIsPortrait(v3);
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      return 3;
    }

    return UIInterfaceOrientationIsPortrait(v3);
  }

  return 2;
}

uint64_t sub_1A38F6EF8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDDD8);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  v24 = xmmword_1A3A70140;
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 40) = a2;
  v27 = 25;
  v26 = &v27;
  sub_1A38BCF98(a1);
  sub_1A38BCF98(a2);
  v7 = sub_1A38EDF20(sub_1A390304C, v25, inited, sub_1A38BCF98, sub_1A3890F1C);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
  swift_arrayDestroy();
  if (v7)
  {
    if (a2 == 35)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1A3A018A8(a2, 0x19uLL) & 1;
    }

    v9 = v3[153];
    v10 = v3[154];
    __swift_project_boxed_opaque_existential_1(v3 + 150, v9);
    (*(v10 + 8))(v8, 0, 0, 116, v3, v9, v10);
  }

  v11 = swift_initStackObject();
  *(v11 + 16) = v24;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v27 = 24;
  MEMORY[0x1EEE9AC00](v11);
  v23 = &v27;
  sub_1A38BCF98(a1);
  sub_1A38BCF98(a2);
  v12 = sub_1A38EDF20(sub_1A3904778, v22, v11, sub_1A38BCF98, sub_1A3890F1C);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v12)
  {
    if (a2 == 35)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_1A3A018A8(a2, 0x18uLL) & 1;
    }

    v14 = v3[153];
    v15 = v3[154];
    __swift_project_boxed_opaque_existential_1(v3 + 150, v14);
    (*(v15 + 8))(v13, 0, 0, 120, v3, v14, v15);
  }

  v16 = swift_initStackObject();
  *(v16 + 16) = v24;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v27 = 6;
  MEMORY[0x1EEE9AC00](v16);
  v23 = &v27;
  sub_1A38BCF98(a1);
  sub_1A38BCF98(a2);
  v17 = sub_1A38EDF20(sub_1A3904778, v22, v16, sub_1A38BCF98, sub_1A3890F1C);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  if (v17)
  {
    if (a2 == 35)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1A3A018A8(a2, 6uLL) & 1;
    }

    v20 = v3[153];
    v21 = v3[154];
    __swift_project_boxed_opaque_existential_1(v3 + 150, v20);
    return (*(v21 + 8))(v19, 0, 0, 36, v3, v20, v21);
  }

  return result;
}

uint64_t sub_1A38F7324()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v0 + 416) <= 1u)
  {
    sub_1A3911E3C();
    swift_getKeyPath();
    sub_1A3A2F080();

    swift_getKeyPath();
    sub_1A3A2F080();

    v2 = *(v0 + 640);
    swift_getKeyPath();
    sub_1A3903C74(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v3 = v2[31];
    v4 = v2[32];
    v5 = v2[33];
    v6 = v2[34];

    v12.origin.x = v3;
    v12.origin.y = v4;
    v12.size.width = v5;
    v12.size.height = v6;
    CGRectGetMinY(v12);
    swift_getKeyPath();
    sub_1A3A2F080();

    v7 = *(v0 + 640);
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v8 = v7[31];
    v9 = v7[32];
    v10 = v7[33];
    v11 = v7[34];

    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = 0.0;
    v14.size.height = 0.0;
    v13.origin.x = v8;
    v13.origin.y = v9;
    v13.size.width = v10;
    v13.size.height = v11;
    return CGRectEqualToRect(v13, v14);
  }

  return result;
}

uint64_t sub_1A38F75E0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1068);
}

double sub_1A38F7680()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 64);
}

double *sub_1A38F7724(double *result, double a2, double a3, double a4, double a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

double sub_1A38F7730()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 96);
}

double *sub_1A38F77D4(double *result, double a2, double a3, double a4, double a5)
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

double sub_1A38F77E0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 128);
}

double sub_1A38F7884()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 160);
}

double *sub_1A38F7928(double *result, double a2, double a3, double a4, double a5)
{
  result[20] = a2;
  result[21] = a3;
  result[22] = a4;
  result[23] = a5;
  return result;
}

double sub_1A38F7934()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 192);
}

double *sub_1A38F79D8(double *result, double a2, double a3, double a4, double a5)
{
  result[24] = a2;
  result[25] = a3;
  result[26] = a4;
  result[27] = a5;
  return result;
}

uint64_t sub_1A38F79EC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v1 = sub_1A39128AC(*(v0 + 400), *(v0 + 408));
  swift_getKeyPath();
  sub_1A3A2F080();

  if (*(v0 + 416) != v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

__n128 sub_1A38F7B68@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = v3[25];
  *a2 = result;
  return result;
}

__n128 sub_1A38F7C38@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 424);
  *a2 = result;
  return result;
}

uint64_t sub_1A38F7D0C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 440);
}

uint64_t sub_1A38F7DB4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 441);
}

double sub_1A38F7E5C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 448);
}

double sub_1A38F7EFC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 448);
  *a2 = result;
  return result;
}

double sub_1A38F7FA4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 456);
}

__n128 sub_1A38F8048@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 456;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

double sub_1A38F8128()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 488);
}

__n128 sub_1A38F81CC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 488;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1A38F82AC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 520;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

double sub_1A38F838C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 552);
}

double sub_1A38F842C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 552);
  *a2 = result;
  return result;
}

uint64_t sub_1A38F84FC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 560);
}

uint64_t sub_1A38F859C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 560);
  return result;
}

double sub_1A38F866C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 568);
}

double sub_1A38F870C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 568);
  *a2 = result;
  return result;
}

uint64_t sub_1A38F87B4(double a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v2 + 568) != a1)
  {
    *(v2 + 576) = a2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38F8900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 584);
  return result;
}

uint64_t sub_1A38F89D0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38F8A74()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38F8B18()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38F8BBC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38F8C60()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 664);
}

uint64_t sub_1A38F8D00()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 665);
}

uint64_t sub_1A38F8DA0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 666);
}

uint64_t sub_1A38F8E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 666);
  return result;
}

uint64_t sub_1A38F8F10()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 680);
}

double sub_1A38F8FB0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 688);
}

double sub_1A38F9050()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 696);
}

double sub_1A38F90F0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 704);
}

double sub_1A38F9190()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 720);
}

double sub_1A38F9230()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 728);
}

double sub_1A38F92D0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 736);
}

double sub_1A38F9370()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 744);
}

uint64_t sub_1A38F9410()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 752);
}

uint64_t sub_1A38F94B0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 753);
}

uint64_t sub_1A38F9550()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 754);
}

uint64_t sub_1A38F95F0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 755);
}

uint64_t sub_1A38F9690()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 756);
}

double sub_1A38F9730()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 760);
}

__n128 sub_1A38F97DC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 760;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A38F98BC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 792);
}

uint64_t sub_1A38F995C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 793);
}

uint64_t sub_1A38F99FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 800);
  return result;
}

uint64_t sub_1A38F9ACC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 808);
}

void *sub_1A38F9B6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 816);
  *(a1 + 816) = a2;
  *(a1 + 824) = a3;
  *(a1 + 832) = a4;
  *(a1 + 840) = a5;
  sub_1A38DCB50(a2);
  return sub_1A3903A58(v5);
}

uint64_t sub_1A38F9BE8()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 841);
}

uint64_t sub_1A38F9C88(uint64_t result, char a2)
{
  v4 = result;
  if ((*(v2 + 856) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = sub_1A3A31540();
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 848) = v4;
    *(v2 + 856) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A38F9DC0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38F9E64()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38F9F08()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38F9FAC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 888);
}

uint64_t sub_1A38FA04C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 889);
}

uint64_t sub_1A38FA0EC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 896);
}

double sub_1A38FA18C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 912);
}

uint64_t sub_1A38FA230()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38FA2D4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38FA378()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 952);
}

uint64_t sub_1A38FA418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 952);
  return result;
}

uint64_t sub_1A38FA4C0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38FA564()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 968);
}

uint64_t sub_1A38FA604()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 969);
}

uint64_t sub_1A38FA6A4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 984);
}

uint64_t sub_1A38FA748(uint64_t result, char a2)
{
  if ((*(v2 + 992) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 984) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 984) = result;
    *(v2 + 992) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A38FA87C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1000);
}

uint64_t sub_1A38FA920()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1016);
}

uint64_t sub_1A38FA9C0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1024);
}

uint64_t sub_1A38FAA64(uint64_t result, char a2)
{
  if ((*(v2 + 1032) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 1024) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 1024) = result;
    *(v2 + 1032) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F070();
}

uint64_t sub_1A38FAB98()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1040);
}

uint64_t sub_1A38FAC3C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38FACE0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1065);
}

uint64_t sub_1A38FAD80()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1066);
}

uint64_t sub_1A38FAE20()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1072);
}

uint64_t sub_1A38FAEC0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1080);
}

uint64_t sub_1A38FAF60()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1120);
}

uint64_t sub_1A38FB000()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1121);
}

uint64_t sub_1A38FB0A0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1122);
}

uint64_t sub_1A38FB140()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1123);
}

uint64_t sub_1A38FB1E0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1124);
}

uint64_t sub_1A38FB280()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A38FB324()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1136);
}

uint64_t sub_1A38FB3C4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1137);
}

uint64_t sub_1A38FB464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1152);
  return result;
}

uint64_t sub_1A38FB534@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1153);
  return result;
}

uint64_t sub_1A38FB604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1154);
  return result;
}

uint64_t sub_1A38FB6D4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1155);
}

uint64_t sub_1A38FB774()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1169);
}

uint64_t sub_1A38FB814()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1170);
}

uint64_t sub_1A38FB8B4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1171);
}

uint64_t sub_1A38FB954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1171);
  return result;
}

uint64_t sub_1A38FB9FC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1172);
}

uint64_t sub_1A38FBA9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1172);
  return result;
}

uint64_t sub_1A38FBB44()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1173);
}

uint64_t sub_1A38FBBE4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1174);
}

uint64_t sub_1A38FBC84()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1175);
}

uint64_t sub_1A38FBD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1175);
  return result;
}

uint64_t sub_1A38FBDCC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1176);
}

uint64_t sub_1A38FBE6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1176);
  return result;
}

uint64_t sub_1A38FBF14()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if ((*(v0 + 800) - 3) > 1)
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v1 = *(v0 + 1176) ^ 1;
  }

  swift_getKeyPath();
  sub_1A3A2F080();

  if (*(v0 + 1173) == 1 && (swift_getKeyPath(), sub_1A3A2F080(), , *(v0 + 1171) == 1))
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v2 = *(v0 + 1169) & v1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A38FC0C8()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if ((*(v0 + 800) - 3) > 1)
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v1 = *(v0 + 1175) ^ 1;
  }

  swift_getKeyPath();
  sub_1A3A2F080();

  if (*(v0 + 1174) == 1 && (swift_getKeyPath(), sub_1A3A2F080(), , *(v0 + 1172) == 1))
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v2 = *(v0 + 1170) & v1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A38FC27C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1177);
}

uint64_t sub_1A38FC31C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1178);
}

uint64_t sub_1A38FC3BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1179);
  return result;
}

uint64_t sub_1A38FC48C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1180);
  return result;
}

uint64_t sub_1A38FC55C(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 793) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FC6A0(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 720) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FC7E4(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 728) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FC928(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 736) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FCA6C(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 744) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FCBB0(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1123) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FCCF4(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 688) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FCE38(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 696) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FCF7C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 608) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD0C0(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 609) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD204(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 800) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD344(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 680) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD488(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1066) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD5CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1072) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD70C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1067) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD850(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1068) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FD994(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 665) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FDAD8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 666) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FDC1C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 752) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FDD60(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 753) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FDEA4(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 754) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FDFE8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 755) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE12C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 756) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE270(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(v12, *(a1 + 760));
  if ((result & 1) == 0)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    result = CGRectEqualToRect(*(a1 + 760), v13);
    if (result)
    {
      *(a1 + 760) = a2;
      *(a1 + 768) = a3;
      *(a1 + 776) = a4;
      *(a1 + 784) = a5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A38FE424(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 841) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE568(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 952) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE6AC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1120) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE7F0(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1121) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FE934(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1122) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FEA78(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1124) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FEBBC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1080) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FED00(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1136) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FEE44(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1137) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FEF88(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 664) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF0CC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 888) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF210(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 896) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF350(uint64_t a1, double a2, double a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 912) != a2 || *(a1 + 920) != a3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF4A0(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 889) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF5E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 904) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF724(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 968) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF868(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 969) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FF9AC(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1064) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FFAF0(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1065) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FFC34(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 808) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FFD78(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 792) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FFEBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 584) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38FFFFC(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v7 = *(a3 + 1008);
  if (a2)
  {
    if (*(a3 + 1008))
    {
      return result;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  if (*(a3 + 1000) != a1)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A390015C(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v7 = *(a3 + 992);
  if (a2)
  {
    if (*(a3 + 992))
    {
      return result;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  if (*(a3 + 984) != a1)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A39002BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1016) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39003FC(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v7 = *(a3 + 1048);
  if (a2)
  {
    if (*(a3 + 1048))
    {
      return result;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  if (*(a3 + 1040) != a1)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A390055C(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v7 = *(a3 + 1032);
  if (a2)
  {
    if (*(a3 + 1032))
    {
      return result;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  if (*(a3 + 1024) != a1)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A39006BC(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 448) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3900800(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(v12, *(a1 + 456));
  if ((result & 1) == 0)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    result = CGRectEqualToRect(*(a1 + 456), v13);
    if (result)
    {
      *(a1 + 456) = a2;
      *(a1 + 464) = a3;
      *(a1 + 472) = a4;
      *(a1 + 480) = a5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A390099C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(v12, *(a1 + 488));
  if ((result & 1) == 0)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    result = CGRectEqualToRect(*(a1 + 488), v13);
    if (result)
    {
      *(a1 + 488) = a2;
      *(a1 + 496) = a3;
      *(a1 + 504) = a4;
      *(a1 + 512) = a5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A3900B38(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(v12, *(a1 + 520));
  if ((result & 1) == 0)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    result = CGRectEqualToRect(*(a1 + 520), v13);
    if (result)
    {
      *(a1 + 520) = a2;
      *(a1 + 528) = a3;
      *(a1 + 536) = a4;
      *(a1 + 544) = a5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A3900CEC(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 552) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3900E30(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 560) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3900F74(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (a2)
  {
    if (*(a3 + 856))
    {
      return result;
    }

    goto LABEL_5;
  }

  if (*(a3 + 856))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  result = sub_1A3A31540();
  if ((result & 1) == 0)
  {
    if ((*(a3 + 856) & 1) == 0)
    {
      result = sub_1A3A31540();
      if (result)
      {
        *(a3 + 848) = a1;
        *(a3 + 856) = 0;
        return result;
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1A39010FC(uint64_t a1, double a2, double a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 424) != a2 || *(a1 + 432) != a3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901248(uint64_t a1, double a2, double a3)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 400) != a2 || *(a1 + 408) != a3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901394(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1144) != a1)
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    sub_1A3A2F080();

    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    sub_1A38BCF64(v6, v5, v7, *(a2 + 48));
    result = sub_1A38EEF8C(0, 0, 0, 255);
    if (v8 == 1)
    {
      if (v6 == 35)
      {
        v9 = 35;
      }

      else
      {
        sub_1A38F6EF8(v6, 0x23uLL);
        v9 = v6;
      }

      v10 = v5;
      v11 = v7;
      v12 = 1;
    }

    else
    {
      if (v8 == 255)
      {
        goto LABEL_12;
      }

      v9 = v6;
      v10 = v5;
      v11 = v7;
      v12 = v8;
    }

    result = sub_1A38BC250(v9, v10, v11, v12);
LABEL_12:
    if (*(a2 + 1144) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A3901620(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1152) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901764(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1153) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39018A8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1154) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39019EC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1155) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901B30(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1168) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901C74(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1169) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901DB8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1170) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3901EFC(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1172) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902040(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1171) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902184(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1173) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39022C8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1174) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390240C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1176) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902550(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1175) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902694(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1177) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39027D8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1178) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390291C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1179) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902A60(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1180) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3902BA4(uint64_t a1, uint64_t a2)
{
  *(a1 + 1192) = a2;
  sub_1A3A2EA60();
}

uint64_t sub_1A3902BE0()
{
  sub_1A38BC250(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  sub_1A3903A58(*(v0 + 816));

  sub_1A3671090(*(v0 + 1088));
  sub_1A3671090(*(v0 + 1104));

  __swift_destroy_boxed_opaque_existential_0(v0 + 1200);
  v1 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A3902D1C()
{
  sub_1A3902BE0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeViewModel()
{
  result = qword_1ED996ED0;
  if (!qword_1ED996ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3902DC8()
{
  result = sub_1A3A2F0C0();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A3903068(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  v4 = v3 == 35 && v2 == 35;
  if (v2 == 35 || v3 == 35)
  {
    return v4;
  }

  else
  {
    return sub_1A3A018A8(v2, v3) & 1;
  }
}

BOOL sub_1A39030C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = (a4 & a8) == 255;
  if (a4 != 255 && a8 != -1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1)
        {
          if (a1 == 35)
          {
            if (a5 == 35)
            {
              sub_1A38BCF98(0x23uLL);
              v8 = 1;
              return (v8 & 1) == 0;
            }
          }

          else if (a5 == 35)
          {
            sub_1A38BCF98(0x23uLL);
          }

          else
          {
            v9 = a1;
            sub_1A38BCF78(a5, a6, a7, 1);
            LOBYTE(v9) = sub_1A3A018A8(v9, a5);
            sub_1A38BC250(a5, a6, a7, 1);
            v8 = 1;
            if (v9)
            {
              return (v8 & 1) == 0;
            }
          }
        }
      }

      else if (a8 == 2)
      {
        v8 = sub_1A3A018A8(a1, a5);
        return (v8 & 1) == 0;
      }

      v8 = 0;
      return (v8 & 1) == 0;
    }

    v8 = a8 == 0;
    if (a5 != a1)
    {
      v8 = 0;
    }

    if (a2 != a6)
    {
      v8 = 0;
    }

    if (a3 != a7)
    {
      v8 = 0;
    }
  }

  return (v8 & 1) == 0;
}

unint64_t sub_1A3903200()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v0 + 48);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v9 = *(v2 + 48);
  *(v2 + 48) = v8;
  sub_1A38BCF64(v1, v3, v4, v8);
  return sub_1A38BC250(v5, v6, v7, v9);
}

uint64_t sub_1A3903280()
{
  *(*(v0 + 16) + 936) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A39032BC()
{
  *(*(v0 + 16) + 944) = *(v0 + 24);
  sub_1A3A2EA60();
}

double sub_1A39032F8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 744) = result;
  return result;
}

double sub_1A3903308()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 736) = result;
  return result;
}

double sub_1A3903318()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 728) = result;
  return result;
}

double sub_1A3903328()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 720) = result;
  return result;
}

double sub_1A3903348()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 672) = result;
  return result;
}

double sub_1A3903358()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 712) = result;
  return result;
}

double sub_1A3903368()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 704) = result;
  return result;
}

double sub_1A3903378()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 696) = result;
  return result;
}

double sub_1A3903388()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 688) = result;
  return result;
}

uint64_t sub_1A3903398()
{
  *(*(v0 + 16) + 632) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A39033D4()
{
  *(*(v0 + 16) + 640) = *(v0 + 24);
  sub_1A3A2EA60();
}

void sub_1A3903410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 848) = *(v0 + 24);
  *(v1 + 856) = v2;
}

__n128 sub_1A3903424()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 424) = result;
  return result;
}

void sub_1A3903444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 1000) = *(v0 + 24);
  *(v1 + 1008) = v2;
}

void sub_1A3903458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 1024) = *(v0 + 24);
  *(v1 + 1032) = v2;
}

void sub_1A390346C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 984) = *(v0 + 24);
  *(v1 + 992) = v2;
}

uint64_t sub_1A3903480()
{
  *(*(v0 + 16) + 864) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A39034FC()
{
  *(*(v0 + 16) + 656) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A3903568()
{
  *(*(v0 + 16) + 616) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A3903604()
{
  *(*(v0 + 16) + 624) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A3903640()
{
  *(*(v0 + 16) + 960) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A390367C()
{
  *(*(v0 + 16) + 1056) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A39036D8()
{
  *(*(v0 + 16) + 928) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A3903724()
{
  *(*(v0 + 16) + 1128) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A3903760()
{
  *(*(v0 + 16) + 648) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A39037F8()
{
  *(*(v0 + 16) + 872) = *(v0 + 24);
  sub_1A3A2EA50();
}

uint64_t sub_1A390388C()
{
  *(*(v0 + 16) + 600) = *(v0 + 24);
  sub_1A3A2EA50();
}

__n128 sub_1A3903920()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 912) = result;
  return result;
}

uint64_t sub_1A390393C()
{
  *(*(v0 + 16) + 880) = *(v0 + 24);
  sub_1A3A2EA50();
}

void sub_1A3903978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 1040) = *(v0 + 24);
  *(v1 + 1048) = v2;
}

void *sub_1A3903A58(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A3903AA8()
{
  *(*(v0 + 16) + 1160) = *(v0 + 24);
  sub_1A3A2EA60();
}

double sub_1A3903B10()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 568) = result;
  return result;
}

double sub_1A3903B20()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 448) = result;
  return result;
}

__n128 sub_1A3903B30()
{
  v1 = *(v0 + 16) + 456;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

__n128 sub_1A3903B48()
{
  v1 = *(v0 + 16) + 488;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

__n128 sub_1A3903B60()
{
  v1 = *(v0 + 16) + 520;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double sub_1A3903B78()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 552) = result;
  return result;
}

__n128 sub_1A3903BE4()
{
  v1 = *(v0 + 16) + 760;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

__n128 sub_1A3903C4C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 224) = result;
  *(v1 + 240) = v3;
  return result;
}

__n128 sub_1A3903C60()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

uint64_t sub_1A3903C74(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1A3903CF4()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 96) = result;
  *(v1 + 112) = v3;
  return result;
}

__n128 sub_1A3903D08()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 192) = result;
  *(v1 + 208) = v3;
  return result;
}

__n128 sub_1A3903D1C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 352) = result;
  *(v1 + 368) = v3;
  return result;
}

__n128 sub_1A3903D30()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 320) = result;
  *(v1 + 336) = v3;
  return result;
}

__n128 sub_1A3903D44()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 288) = result;
  *(v1 + 304) = v3;
  return result;
}

__n128 sub_1A3903D58()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 256) = result;
  *(v1 + 272) = v3;
  return result;
}

__n128 sub_1A3903D6C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 128) = result;
  *(v1 + 144) = v3;
  return result;
}

__n128 sub_1A3903D80()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 160) = result;
  *(v1 + 176) = v3;
  return result;
}

void sub_1A3903DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[136];
  v3[136] = a1;
  v3[137] = a2;
  sub_1A365F488(a1);
  sub_1A3671090(v4);
  v5 = v3[136];
  if (v5)
  {
    v6 = sub_1A3A2EA60();
    v9 = v5(v6);
    sub_1A3671090(v5);
  }

  else
  {
    v9 = 0;
  }

  v7 = v3[153];
  v8 = v3[154];
  __swift_project_boxed_opaque_existential_1(v3 + 150, v7);
  (*(v8 + 8))(v9, 0, 0, 104, v3, v7, v8);
}

void sub_1A3903EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[138];
  v3[138] = a1;
  v3[139] = a2;
  sub_1A365F488(a1);
  sub_1A3671090(v4);
  v5 = v3[138];
  if (v5)
  {
    v6 = sub_1A3A2EA60();
    v9 = v5(v6);
    sub_1A3671090(v5);
  }

  else
  {
    v9 = 0;
  }

  v7 = v3[153];
  v8 = v3[154];
  __swift_project_boxed_opaque_existential_1(v3 + 150, v7);
  (*(v8 + 8))(v9, 0, 0, 52, v3, v7, v8);
}

uint64_t sub_1A39047AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A3904810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A3904858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A39048C4()
{
  sub_1A3A322C0();
  sub_1A3A31ED0();
  return sub_1A3A32300();
}

uint64_t sub_1A390490C()
{
  sub_1A3A322C0();
  sub_1A39048C0();
  return sub_1A3A32300();
}

id sub_1A39049DC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_resolution);
  if ((v2 - 2) >= 2)
  {
    if (v2 == 1)
    {
      v5 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate);
      if (v5 > 59)
      {
        if (v5 > 119)
        {
          if (v5 == 120)
          {
            v4 = 4;
            goto LABEL_60;
          }

          if (v5 == 240)
          {
            v4 = 8;
            goto LABEL_60;
          }

          goto LABEL_67;
        }

        if (v5 == 60)
        {
          v4 = 1;
          goto LABEL_60;
        }

        if (v5 == 100)
        {
          v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
          v8 = &unk_1F1653C10;
          v9 = &unk_1F1653C48;
          goto LABEL_50;
        }

        goto LABEL_67;
      }

      switch(v5)
      {
        case 24:
          v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
          v8 = &unk_1F1653B38;
          v9 = &unk_1F1653B70;
          break;
        case 25:
          v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
          v8 = &unk_1F1653BA0;
          v9 = &unk_1F1653BE0;
          break;
        case 30:
          v4 = 7;
          goto LABEL_60;
        default:
          goto LABEL_67;
      }
    }

    else
    {
      if (v2)
      {
        goto LABEL_67;
      }

      v6 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate);
      if (v6 <= 59)
      {
        switch(v6)
        {
          case 24:
            v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
            v8 = &unk_1F16539E0;
            v9 = &unk_1F1653A10;
            break;
          case 25:
            v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
            v8 = &unk_1F1653A38;
            v9 = &unk_1F1653A60;
            break;
          case 30:
            v4 = 6;
            goto LABEL_60;
          default:
            goto LABEL_67;
        }
      }

      else
      {
        if (v6 > 119)
        {
          if (v6 == 120)
          {
            v4 = 2;
            goto LABEL_60;
          }

          if (v6 == 240)
          {
            v4 = 3;
            goto LABEL_60;
          }

          goto LABEL_67;
        }

        if (v6 == 60)
        {
          v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
          v8 = &unk_1F1653A88;
          v9 = &unk_1F1653AB8;
        }

        else
        {
          if (v6 != 100)
          {
            goto LABEL_67;
          }

          v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
          v8 = &unk_1F1653AE0;
          v9 = &unk_1F1653B10;
        }
      }
    }

LABEL_50:
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v1 _currentGraphConfiguration];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 videoEncodingBehavior];

      v14 = 0;
      v15 = v10[2];
      while (1)
      {
        if (v15 == v14)
        {
          v4 = 0;
          goto LABEL_60;
        }

        if (v14 >= v10[2])
        {
          break;
        }

        v4 = v10[v14++ + 4];
        if ([v1 shouldSwitchToVideoConfiguration:v4 videoEncodingBehavior:v13])
        {
          goto LABEL_60;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_67;
  }

  v3 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate);
  if (v3 <= 59)
  {
    switch(v3)
    {
      case 24:
        v4 = 10;
        goto LABEL_60;
      case 25:
        v4 = 12;
        goto LABEL_60;
      case 30:
        v4 = 5;
        goto LABEL_60;
    }

    goto LABEL_67;
  }

  if (v3 > 119)
  {
    if (v3 == 120)
    {
      v4 = 13;
      goto LABEL_60;
    }

    if (v3 == 240)
    {
      v7 = *(a1 + OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority);
      v8 = &unk_1F1653C78;
      v9 = &unk_1F1653CB0;
      goto LABEL_50;
    }

LABEL_67:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (v3 != 60)
  {
    if (v3 == 100)
    {
      v4 = 14;
      goto LABEL_60;
    }

    goto LABEL_67;
  }

  v4 = 9;
LABEL_60:

  return [v1 handleUserChangedToVideoConfiguration_];
}

uint64_t sub_1A3904E20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A3A2EA60();
  v1(v2);
}

uint64_t sub_1A3904E64(uint64_t a1, uint64_t a2)
{
  v17[0] = sub_1A3A316A0();
  v5 = *(v17[0] - 8);
  v6 = MEMORY[0x1EEE9AC00](v17[0]);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = sub_1A3A31650();
  MEMORY[0x1EEE9AC00](v11);
  if (*(v2 + 16))
  {
    sub_1A3A2EA60();
    sub_1A3A316C0();
  }

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3904E20;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1A38C9B68();
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668);
  sub_1A38C9BC0();
  sub_1A3A31E80();
  sub_1A3A316D0();
  swift_allocObject();
  v12 = sub_1A3A316B0();

  *(v2 + 16) = v12;
  sub_1A3A2EA60();

  sub_1A3A31690();
  sub_1A3A316E0();
  v13 = *(v5 + 8);
  v14 = v8;
  v15 = v17[0];
  v13(v14, v17[0]);
  sub_1A3A31C60();

  return v13(v10, v15);
}

uint64_t sub_1A3905114()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A3905190()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 16);
}

uint64_t sub_1A3905200(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39052E0()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 17);
}

uint64_t sub_1A3905350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A39053F0(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39054D0()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 18);
}

uint64_t sub_1A3905540(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

void *sub_1A3905620()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_1A3905698(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3906BC8();
  v5 = v4;
  v6 = sub_1A3A31D10();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_1A39057D8()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 32);
}

uint64_t sub_1A3905848(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390591C()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A3905990(uint64_t a1)
{
  if (sub_1A39FCB74(*(v1 + 40), a1))
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3905AA4()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 48);
}

uint64_t sub_1A3905B14(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3905BE8()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 56);
}

uint64_t sub_1A3905C58(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3905D2C()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 64);
}

uint64_t sub_1A3905D9C(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3905E70()
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  return *(v0 + 72);
}

uint64_t sub_1A3905EE0(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3906B70();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3905FC0(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 16) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39060D4(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 17) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39061E8(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 18) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39062FC(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  v4 = *(a2 + 24);
  if (a1)
  {
    if (v4)
    {
      sub_1A3906BC8();
      v5 = v4;
      v6 = a1;
      v7 = sub_1A3A31D10();

      if (v7)
      {

        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  sub_1A3905698(a1);
}

uint64_t sub_1A39063CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39064DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 48) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39065EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39066FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390680C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3906B70();
  sub_1A3A2F080();

  if (*(a2 + 72) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3906920()
{

  v1 = OBJC_IVAR____TtC8CameraUI21ChromeFilterViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeFilterViewModel()
{
  result = qword_1ED9974A8;
  if (!qword_1ED9974A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3906A20()
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

uint64_t sub_1A3906AEC()
{
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_1A3A2F0B0();
  return v0;
}

uint64_t sub_1A3906B34()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
  sub_1A3A2EA50();
}

unint64_t sub_1A3906B70()
{
  result = qword_1ED998460[0];
  if (!qword_1ED998460[0])
  {
    type metadata accessor for ChromeFilterViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED998460);
  }

  return result;
}

unint64_t sub_1A3906BC8()
{
  result = qword_1EB0FDDE0;
  if (!qword_1EB0FDDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0FDDE0);
  }

  return result;
}

uint64_t sub_1A3906D34()
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  return *(v0 + 16);
}

uint64_t sub_1A3906DA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A3906E44(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3907B68();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3906F24()
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  return *(v0 + 17);
}

uint64_t sub_1A3906F94(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3907B68();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3907074()
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  return *(v0 + 18);
}

uint64_t sub_1A39070E4(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3907B68();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39071C4()
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  return *(v0 + 19);
}

uint64_t sub_1A3907234(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3907B68();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3907314()
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  return *(v0 + 24);
}

uint64_t sub_1A3907384(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3907B68();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3907458(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  if (*(a2 + 16) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390756C(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  if (*(a2 + 17) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3907680(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  if (*(a2 + 18) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3907794(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  if (*(a2 + 19) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39078A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3907B68();
  sub_1A3A2F080();

  if (*(a2 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39079B8()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeDepthViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeDepthViewModel()
{
  result = qword_1ED9975B0;
  if (!qword_1ED9975B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3907AA8()
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

unint64_t sub_1A3907B68()
{
  result = qword_1ED997660;
  if (!qword_1ED997660)
  {
    type metadata accessor for ChromeDepthViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997660);
  }

  return result;
}

uint64_t sub_1A3907C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDDE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1A3A2ED40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 preferredLocalizations];

  v13 = sub_1A3A319A0();
  if (*(v13 + 16))
  {
    sub_1A3A2EA50();

    sub_1A3A2ED20();
    v16 = a1;
    v17 = a2;
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_1A389FD78();
    v14 = sub_1A3A31E10();
    sub_1A3907F14(v6);
    (*(v8 + 8))(v10, v7);
    return v14;
  }

  else
  {

    v16 = a1;
    v17 = a2;
    sub_1A389FD78();
    return sub_1A3A31E30();
  }
}

uint64_t sub_1A3907F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDDE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3907F7C(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 == 9)
      {
        return 0x7372614520706F54;
      }

      if (a1 != 10)
      {
        if (a1 == 11)
        {
          return 0x445548205841;
        }

        goto LABEL_27;
      }

      v2 = 1836019546;
    }

    else
    {
      if (a1 == 6)
      {
        return 0xD00000000000001BLL;
      }

      if (a1 != 7)
      {
        return 0xD000000000000015;
      }

      v2 = 1885957190;
    }

    return v2 | 0x7475422000000000;
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x72614220706F54;
      case 1:
        return 0x2072614220706F54;
      case 2:
        return 0x42206D6F74746F42;
    }

LABEL_27:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (a1 == 3)
  {
    return 0x756C6F4320646150;
  }

  if (a1 == 4)
  {
    return 0x206C6F72746E6F43;
  }

  return 0x2072657474756853;
}

unint64_t sub_1A3908174@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A39082E8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1A39081D4()
{
  result = qword_1EB0FDDF0;
  if (!qword_1EB0FDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDF0);
  }

  return result;
}

unint64_t sub_1A390822C()
{
  result = qword_1EB0FDDF8;
  if (!qword_1EB0FDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDF8);
  }

  return result;
}

unint64_t sub_1A3908294()
{
  result = qword_1EB0FDE08;
  if (!qword_1EB0FDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDE08);
  }

  return result;
}

unint64_t sub_1A39082E8(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

void *sub_1A39082F8(uint64_t a1, unsigned int a2)
{
  v35[1] = a1;
  v2 = HIBYTE(a2);
  v3 = sub_1A3A30D30();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3A31400();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v21 = v35 - v20;
  switch(v2)
  {
    case 2u:
      v31 = v19;
      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE48);
      sub_1A3A313E0();
      *(swift_allocObject() + 16) = xmmword_1A3A681C0;
      sub_1A3A313D0();
      (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
      sub_1A3A30E30();
      sub_1A3A313F0();

      v24 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1A39561A4(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v32 = v24[3];
      v27 = v26 + 1;
      if (v26 >= v32 >> 1)
      {
        v24 = sub_1A39561A4(v32 > 1, v26 + 1, 1, v24);
      }

      v21 = v14;
      v28 = v31;
      break;
    case 3u:
      v29 = v19;
      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE48);
      sub_1A3A313E0();
      *(swift_allocObject() + 16) = xmmword_1A3A681C0;
      v36 = xmmword_1A3A71F80;
      v37 = xmmword_1A3A71F90;
      v38 = xmmword_1A3A71FA0;
      v39 = xmmword_1A3A71FB0;
      v40 = xmmword_1A3A71FC0;
      sub_1A3A313C0();
      (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
      sub_1A3A30E30();
      sub_1A3A313F0();

      v24 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1A39561A4(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v30 = v24[3];
      v27 = v26 + 1;
      if (v26 >= v30 >> 1)
      {
        v34 = sub_1A39561A4(v30 > 1, v26 + 1, 1, v24);
        v28 = v29;
        v24 = v34;
      }

      else
      {
        v28 = v29;
      }

      v21 = v17;
      break;
    case 4u:
      v22 = v19;
      v23 = v18;
      sub_1A3A30D80();
      sub_1A3A30E10();

      sub_1A3A31410();
      sub_1A3A30E20();

      (*(v8 + 8))(v10, v7);
      sub_1A3A313A0();
      v24 = sub_1A39561A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = v24[2];
      v25 = v24[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1A39561A4(v25 > 1, v26 + 1, 1, v24);
      }

      v28 = v22;
      break;
    default:
      return MEMORY[0x1E69E7CC0];
  }

  v24[2] = v27;
  (*(v28 + 32))(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, v21, v23);
  return v24;
}

void *sub_1A3908984(uint64_t a1)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | (v1[3] << 24);
  if (v1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1A39082F8(a1, v3 | v4 | *v1);
}

uint64_t sub_1A3908A34()
{
  v1 = *v0;
  v2 = 0x6D6574737953;
  v3 = 0x614D20726F6C6F43;
  v4 = 0x4320656C706D6953;
  if (v1 != 4)
  {
    v4 = 0x74614D206E696854;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x47206172656D6143;
  if (v1 != 1)
  {
    v5 = 0x4220656C706D6953;
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

uint64_t sub_1A3908B18(unsigned int a1)
{
  v1 = HIBYTE(a1);
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

uint64_t sub_1A3908B90()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | (v0[3] << 24);
  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1A3908B18(v2 | v3 | *v0);
}

uint64_t sub_1A3908BDC()
{
  v1 = *(v0 + 3);
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return MEMORY[0x1A58F8150](v1);
}

uint64_t sub_1A3908C3C()
{
  v1 = *(v0 + 3);
  sub_1A3A322C0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

BOOL sub_1A3908CC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    return a1[3] == a2[3];
  }

  return result;
}

uint64_t sub_1A3908D0C@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A31370();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  if ((a1 & 1) == 0)
  {
    sub_1A3A31360();
    sub_1A3A31310();

    result = (*(v7 + 8))(v12, v6);
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (qword_1EB0FC0E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EB101A48);
  result = (*(v7 + 16))(a3, v13, v6);
  if ((a2 & 1) == 0)
  {
LABEL_7:
    sub_1A3A31350();
    (*(v7 + 8))(a3, v6);
    result = (*(v7 + 32))(a3, v10, v6);
  }

LABEL_8:
  if ((a2 & 0x100) != 0)
  {
    if ((a2 & 0x10000) != 0)
    {
      return result;
    }
  }

  else
  {
    sub_1A3A31330();
    (*(v7 + 8))(a3, v6);
    result = (*(v7 + 32))(a3, v10, v6);
    if ((a2 & 0x10000) != 0)
    {
      return result;
    }
  }

  sub_1A3A31340();
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t sub_1A3908F9C()
{
  v0 = sub_1A3A31370();
  __swift_allocate_value_buffer(v0, qword_1EB101A48);
  __swift_project_value_buffer(v0, qword_1EB101A48);
  return sub_1A3A31320();
}

uint64_t sub_1A3908FE8(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x2000103u >> (8 * a1);
  }

  sub_1A3A31F20();

  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MaterialStylingState.MaterialStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialStylingState.MaterialStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3909220()
{
  result = qword_1EB0FDE20;
  if (!qword_1EB0FDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDE20);
  }

  return result;
}

uint64_t sub_1A39092A4(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1A39092FC()
{
  result = qword_1EB0FDE38;
  if (!qword_1EB0FDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDE38);
  }

  return result;
}

unint64_t sub_1A3909354()
{
  result = qword_1EB0FDE40;
  if (!qword_1EB0FDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDE40);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A390940C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A3909460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A39094B4()
{
  result = qword_1ED997668;
  if (!qword_1ED997668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997668);
  }

  return result;
}

unint64_t sub_1A390950C()
{
  result = qword_1ED997670;
  if (!qword_1ED997670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997670);
  }

  return result;
}

unint64_t sub_1A390958C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
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

unint64_t sub_1A3909618(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1A38BCF64(*a1, v2, v3, v4);
  return sub_1A38EEF8C(v1, v2, v3, v4);
}

uint64_t sub_1A390967C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390A488();
  sub_1A3A2F080();

  *a2 = *(v3 + 392);
  return result;
}

id sub_1A39097B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraChromeEventHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3909820(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v67 = a5;
  v11 = sub_1A3A2F2A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB0FC158 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1EB101AE0);
  (*(v12 + 16))(v14, v15, v11);
  sub_1A390A428(a1, a2, a3, a4);
  v16 = sub_1A3A2F280();
  v17 = sub_1A3A31C10();
  sub_1A3890EBC(a1, a2, a3, a4);
  v18 = os_log_type_enabled(v16, v17);
  v68 = a4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v63 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v65 = v6;
    v22 = v21;
    v69 = v21;
    *v20 = 136315138;
    v23 = sub_1A399A6DC(a1, a2, a3, a4);
    v66 = a2;
    v64 = a3;
    v25 = sub_1A39ABC10(v23, v24, &v69);
    a3 = v64;
    a2 = v66;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1A3640000, v16, v17, "Chrome event: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1A58FAC10](v22, -1, -1);
    MEMORY[0x1A58FAC10](v20, -1, -1);

    (*(v12 + 8))(v14, v63);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = a1;
    switch(v68 >> 2)
    {
      case 1:
        v31 = Strong;
        [Strong handleUserChangedToApertureValue:0 enableDepthSuggestion:*&a1];
        goto LABEL_81;
      case 2:
        v27 = qword_1A3A72388[a1];
        v28 = sel_handleUserChangedToAspectRatioCrop_;
        goto LABEL_80;
      case 3:
        v28 = sel_changeToMode_;
        goto LABEL_80;
      case 4:
        v28 = sel_handleChromeTopBarMenuState_;
        goto LABEL_80;
      case 5:
        v29 = sel_handleChromeControlPanelIsExpanded_;
        goto LABEL_62;
      case 6:
        v29 = sel_handleUserChangedDepthEnabled_;
        goto LABEL_62;
      case 7:
        v46 = *&a1;
        v47 = sel_handleUserChangedExposureSliderBias_;
        goto LABEL_59;
      case 8:
        v28 = sel_handleExternalChromeFilterScrubberSelectedIndexChanged_;
        goto LABEL_80;
      case 9:
        v29 = sel_handleUserChangedFiltersUIVisible_;
        goto LABEL_62;
      case 10:
        if (a1 < 3)
        {
          v27 = 2 - a1;
          v28 = sel_handleUserChangedToFlashMode_;
          goto LABEL_80;
        }

        v69 = a1;
        goto LABEL_140;
      case 11:
        v29 = sel_handleUserChangedFrontPIPEnabled_;
        goto LABEL_62;
      case 12:
        v28 = sel_handleUserChangedToHDRMode_;
        goto LABEL_80;
      case 13:
        v28 = sel_handleExternalChromeImageAnalysisButtonChanged_;
        goto LABEL_80;
      case 14:
        v33 = v67;
        if (*(v67 + 392) == (a1 & 1))
        {

          *(v33 + 392) = a1 & 1;
        }

        else
        {
          v34 = Strong;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v63 - 2) = v33;
          *(&v63 - 8) = v36 & 1;
          v69 = v33;
          sub_1A390A488();
          sub_1A3A2F070();
        }

        return;
      case 15:
        v46 = *&a1;
        v47 = sel_handleUserChangedLensPosition_;
        goto LABEL_59;
      case 16:
        v29 = sel_handleUserChangedIsLensPositionLocked_;
        goto LABEL_62;
      case 17:
        v27 = 2 - a1;
        v28 = sel_handleUserChangedToLivePhotoMode_;
        goto LABEL_80;
      case 18:
        if (a1)
        {
          if (a1 != 1)
          {
            v69 = a1;
            goto LABEL_140;
          }

          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = sel_handleUserChangedToMacroMode_;
LABEL_80:
        v31 = Strong;
        [Strong v28];
        goto LABEL_81;
      case 19:
        v27 = qword_1A3A723A0[a1];
        v28 = sel_handleUserChangedToNightMode_;
        goto LABEL_80;
      case 20:
        v27 = (a1 & 0xFE) != 0;
        v28 = sel_setRawMode_;
        goto LABEL_80;
      case 21:
        v31 = Strong;
        v48 = CAMPhotoFormatMake([Strong currentPhotoFormat], a1 + 1);
        [v31 handleUserChangedToPhotoFormat_];
        goto LABEL_81;
      case 22:
        v46 = *&a1;
        v47 = sel_handleUserChangedPortraitIntensity_;
        goto LABEL_59;
      case 23:
        v28 = sel_prepareDiscreteFeedback_;
        goto LABEL_80;
      case 24:
        v28 = sel_performDiscreteFeedback_;
        goto LABEL_80;
      case 25:
        v27 = qword_1A3A723B8[a1];
        v28 = sel_handleUserChangedToSharedLibraryMode_;
        goto LABEL_80;
      case 26:
        v28 = sel_handleExternalChromeShutterControlChanged_;
        goto LABEL_80;
      case 27:
        v31 = Strong;
        [Strong handleSmartStylePadValueChanged_];
        goto LABEL_81;
      case 28:
        v46 = *&a1;
        v47 = sel_handleSmartStyleCastIntensityChanged_;
        goto LABEL_59;
      case 29:
        v29 = sel_handleUserChangedSmartStylesUIVisible_;
        goto LABEL_62;
      case 30:
        v29 = sel_handleUserChangedSemanticStylesUIVisible_;
        goto LABEL_62;
      case 31:
        v31 = Strong;
        [Strong handleUserChangedSemanticStylePreset:a1 sceneBias:*&a2 warmthBias:*&a3];
        goto LABEL_81;
      case 32:
        v28 = sel_handleUserChangedTimerDuration_;
        v27 = a1;
        goto LABEL_80;
      case 33:
        v37 = a3;
        v66 = Strong;
        v38 = v68 & 3;
        swift_getKeyPath();
        v39 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
        v40 = v67;
        v69 = v67;
        v64 = sub_1A390A488();
        v65 = v39;
        sub_1A3A2F080();

        v41 = *(v40 + 24);
        v42 = *(v40 + 32);
        v43 = *(v40 + 40);
        if (*(v40 + 48) > 1u)
        {
          if (*(v40 + 48) == 2 && v38 == 2)
          {
            v44 = a2;
            sub_1A390A428(a1, a2, v37, v68);
            sub_1A38BCF64(v41, v42, v43, 2);
            v50 = sub_1A3A018A8(v41, a1);
            sub_1A38BC250(v41, v42, v43, 2);
            if ((v50 & 1) == 0)
            {
LABEL_91:
              sub_1A38EDFE0(a1, v44, v37, v38);
              goto LABEL_92;
            }

            goto LABEL_68;
          }
        }

        else
        {
          if (!*(v40 + 48))
          {
            v44 = a2;
            sub_1A390A428(a1, a2, v37, v68);
            sub_1A38BC250(v41, v42, v43, 0);
            if (v38 || v41 != a1 || v42 != a2 || v43 != v37)
            {
              goto LABEL_91;
            }

            goto LABEL_68;
          }

          if (v38 == 1)
          {
            if (v41 == 35)
            {
              if (a1 == 35)
              {
                sub_1A38BCF78(0x23uLL, a2, v37, 1);
                goto LABEL_69;
              }

              v57 = a1;
              v44 = a2;
              goto LABEL_115;
            }

            if (a1 == 35)
            {
              v44 = a2;
              sub_1A390A428(0x23, a2, v37, v68);
              v57 = 35;
LABEL_115:
              v58 = a2;
              v59 = v37;
              v60 = 1;
              goto LABEL_90;
            }

            v44 = a2;
            sub_1A390A428(a1, a2, v37, v68);
            sub_1A38BCF64(v41, v42, v43, 1);
            v62 = sub_1A3A018A8(v41, a1);
            sub_1A38BC250(v41, v42, v43, 1);
            if ((v62 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_68:
            sub_1A3890EBC(a1, v44, v37, v68);
LABEL_69:
            swift_getKeyPath();
            v51 = v67;
            v69 = v67;
            sub_1A3A2F080();

            if (*(v51 + 48) != 255)
            {
              swift_getKeyPath();
              v69 = v51;
              sub_1A3A2F080();

              v53 = *(v51 + 24);
              v52 = *(v51 + 32);
              v54 = *(v51 + 40);
              v55 = *(v51 + 48);
              sub_1A38BCF64(v53, v52, v54, *(v51 + 48));
              sub_1A38EEF8C(0, 0, 0, 255);
              if (v55 == 1)
              {
                if (v53 == 35)
                {
                  v61 = 35;
                }

                else
                {
                  sub_1A38F6EF8(v53, 0x23uLL);
                  v61 = v53;
                }

                sub_1A38BC250(v61, v52, v54, 1);
              }

              else if (v55 != 255)
              {
                sub_1A38BC250(v53, v52, v54, v55);
              }
            }

LABEL_92:

            return;
          }
        }

        v57 = a1;
        v44 = a2;
        v58 = a2;
        v59 = v37;
        v60 = v38;
LABEL_90:
        sub_1A38BCF78(v57, v58, v59, v60);
        goto LABEL_91;
      case 34:
        v32 = Strong;
        [Strong handleUserChangedToFlashMode_];

        return;
      case 35:
        v30 = Strong;
        sub_1A39049DC(a1);

        return;
      case 36:
        if (a1 > 2)
        {
          if (a1 == 4)
          {
            v56 = 3;
LABEL_101:
            v31 = Strong;
            [Strong handleUserChangedProResMode:1 chromeSelectedProResColorSpace:v56];
            goto LABEL_81;
          }

          if (a1 == 3)
          {
            v56 = 2;
            goto LABEL_101;
          }
        }

        else
        {
          if (a1 < 2)
          {
            v31 = Strong;
            [Strong handleUserChangedProResMode_];
LABEL_81:

            return;
          }

          if (a1 == 2)
          {
            v56 = 0;
            goto LABEL_101;
          }
        }

        v69 = a1;
LABEL_140:
        sub_1A3A321F0();
        __break(1u);
        return;
      case 37:
        v29 = sel_handleUserChangedSmartFramingAutoZoomEnabled_;
        goto LABEL_62;
      case 38:
        v29 = sel_handleUserChangedSmartFramingAutoRotationEnabled_;
LABEL_62:
        v31 = Strong;
        [Strong v29];
        goto LABEL_81;
      case 39:
        v46 = *&a1;
        v47 = sel_handleChromeTopInset_;
LABEL_59:
        v31 = Strong;
        [Strong v47];
        goto LABEL_81;
      case 40:
        v45 = a3 | a2;
        if (a3 | a2 | a1 || v68 != 160)
        {
          if (v68 == 160 && a1 == 1 && !v45)
          {
            v31 = Strong;
            [Strong handleUserAdvancedVideoResolution];
          }

          else if (v68 == 160 && a1 == 2 && !v45)
          {
            v31 = Strong;
            [Strong handleUserDismissedLiftedText];
          }

          else if (v68 == 160 && a1 == 3 && !v45)
          {
            v31 = Strong;
            [Strong handleFlipButtonReleased];
          }

          else if (v68 == 160 && a1 == 4 && !v45)
          {
            v31 = Strong;
            [Strong sharedLibraryTapToRadarAction];
          }

          else if (v68 == 160 && a1 == 5 && !v45)
          {
            v31 = Strong;
            [Strong handleImageWellReleased];
          }

          else if (v68 == 160 && a1 == 6 && !v45)
          {
            v31 = Strong;
            [Strong handleSmartStyleResetValues];
          }

          else if (v68 == 160 && a1 == 7 && !v45)
          {
            v31 = Strong;
            [Strong handleDoneButtonReleased];
          }

          else
          {
            v31 = Strong;
            if (v68 == 160 && a1 == 8 && !v45)
            {
              [Strong handleUserDidToggleSpatialMode];
            }

            else
            {
              [Strong handleReviewButtonReleased];
            }
          }
        }

        else
        {
          v31 = Strong;
          [Strong handleUserAdvancedVideoFrameRate];
        }

        goto LABEL_81;
      default:
        v28 = sel_handleUserChangedVideoStabilizationMode_;
        v27 = a1 & 1;
        goto LABEL_80;
    }
  }
}

id sub_1A390A428(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 2;
  if (v4 > 0x20)
  {
    if (v4 == 33)
    {
      return sub_1A38BCF78(result, a2, a3, a4 & 3);
    }

    else if (v4 == 35)
    {
      return result;
    }
  }

  else if (v4 == 13 || v4 == 26)
  {
    return result;
  }

  return result;
}

unint64_t sub_1A390A488()
{
  result = qword_1ED996608;
  if (!qword_1ED996608)
  {
    type metadata accessor for ChromeViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996608);
  }

  return result;
}

uint64_t sub_1A390A5B0(void (*a1)(void))
{
  sub_1A3A2F240();
  sub_1A3A2F230();
  a1();
}

uint64_t sub_1A390A618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1A3A2F240();
  sub_1A3A2F230();
  a3();
}

uint64_t static ViewfinderLockScreenExtensionHelper.transitionToApplication(for:session:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A38910D8;

  return MEMORY[0x1EEDCCA38](a1);
}

id ViewfinderLockScreenExtensionHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewfinderLockScreenExtensionHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ViewfinderLockScreenExtensionHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s8CameraUI35ViewfinderLockScreenExtensionHelperC24executeUnlockOneUpAction_2onySo014PXUnlockDeviceL4TypeV_So05PUOneK14ViewControllerCSgtFZ_0(id result, id a2)
{
  if (a2)
  {
    v2 = result;
    result = [a2 actionsController];
    if (result)
    {
      if (v2 > 2)
      {
        if (v2 == 4)
        {
          [result performSimpleActionWithActionType_];
        }

        else if (v2 == 3)
        {
          [result performShareAction];
        }
      }

      else if (v2 == 1)
      {
        [result performSimpleActionWithActionType_];
      }

      else if (v2 == 2)
      {
        [result performSimpleActionWithActionType_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A390A8E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390B660(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 632);
  return sub_1A3A2EA60();
}

id sub_1A390A9C0(double a1, double a2, uint64_t a3, double *a4, char a5)
{
  v9 = sub_1A3A2FEE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x1E6993888]);
  v14 = sub_1A3A31810();
  v15 = [v13 initWithTitle:v14 tickMarkStyle:1];

  [v15 setValueLabelVisibility_];
  [v15 setLabelVerticalPadding_];
  [v15 setTickMarkSize_];
  [v15 setTickMarkCount_];
  [objc_msgSend(v15 tickMarksConfiguration)];
  swift_unknownObjectRelease();
  [objc_msgSend(v15 tickMarksConfiguration)];
  swift_unknownObjectRelease();
  [v15 setTransparentGradients];
  [v15 setGradientInsets_];
  [v15 setMinimumValue_];
  [v15 setMaximumValue_];
  [v15 setValueLabelMultiplier_];
  [v15 setValueLabelFormat_];
  sub_1A3A2EA60();
  if ((a5 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    a4 = v23;
  }

  swift_getKeyPath();
  v23 = a4;
  sub_1A390B660(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v17 = *(a4 + 79);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v23 = v17;
  sub_1A390B660(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  v18 = v17[3];

  [v15 setValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDED8);
  sub_1A3A304D0();
  v19 = v23;
  [v15 setDelegate_];

  sub_1A3A304D0();
  v20 = v23;
  [v15 addTarget:v23 action:sel_sliderValueChanged_ forControlEvents:4096];

  return v15;
}

id sub_1A390AE18(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isTracking];
  if ((result & 1) == 0)
  {
    sub_1A3A2EA60();
    if ((a4 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v8 + 8))(v10, v7);
      a3 = v16;
    }

    swift_getKeyPath();
    v16 = a3;
    sub_1A390B660(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v13 = *(a3 + 632);
    sub_1A3A2EA60();

    swift_getKeyPath();
    v16 = v13;
    sub_1A390B660(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
    sub_1A3A2F080();

    v14 = *(v13 + 24);

    return [a1 setValue_];
  }

  return result;
}

id sub_1A390B270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeLensPositionSlider.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A390B318(void *a1, void *a2)
{
  [a1 removeTarget:*a2 action:sel_sliderValueChanged_ forControlEvents:4096];

  return [a1 setDelegate_];
}

id sub_1A390B374@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = type metadata accessor for ChromeLensPositionSlider.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent];
  *v9 = v3;
  *(v9 + 1) = v4;
  *(v9 + 2) = v5;
  v9[24] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  sub_1A3A2EA60();
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A390B448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A390B6A8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A390B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A390B6A8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A390B510()
{
  sub_1A390B6A8();
  sub_1A3A301A0();
  __break(1u);
}

unint64_t sub_1A390B53C()
{
  result = qword_1EB0FDED0;
  if (!qword_1EB0FDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDED0);
  }

  return result;
}

double sub_1A390B590@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A390B660(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1A390B660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A390B6A8()
{
  result = qword_1EB0FDEE0;
  if (!qword_1EB0FDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDEE0);
  }

  return result;
}

uint64_t sub_1A390B6FC()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent + 16);
  v6 = *(v0 + OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent + 24);
  sub_1A3A2EA60();
  if ((v6 & 1) == 0)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);

    v5 = v12;
  }

  swift_getKeyPath();
  v12 = v5;
  sub_1A390B660(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v8 = *(v5 + 632);
  sub_1A3A2EA60();

  if (*(v8 + 34) == 1)
  {
    *(v8 + 34) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v8;
    *(&v11 - 8) = 1;
    v12 = v8;
    sub_1A390B660(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A390B9C0()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent + 16);
  v6 = *(v0 + OBJC_IVAR____TtCV8CameraUI24ChromeLensPositionSlider11Coordinator_parent + 24);
  sub_1A3A2EA60();
  if ((v6 & 1) == 0)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);

    v5 = v12;
  }

  swift_getKeyPath();
  v12 = v5;
  sub_1A390B660(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v8 = *(v5 + 632);
  sub_1A3A2EA60();

  if (*(v8 + 34))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v8;
    *(&v11 - 8) = 0;
    v12 = v8;
    sub_1A390B660(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
    sub_1A3A2F070();
  }

  else
  {
    *(v8 + 34) = 0;
  }
}

uint64_t sub_1A390BCB4()
{
  swift_getKeyPath();
  sub_1A390C304();
  sub_1A3A2F080();

  return *(v0 + 16);
}

uint64_t sub_1A390BD24(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A390C304();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390BE04()
{
  swift_getKeyPath();
  sub_1A390C304();
  sub_1A3A2F080();

  return *(v0 + 24);
}

uint64_t sub_1A390BE74(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A390C304();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390BF48(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1A390C304();
  sub_1A3A2F080();

  if (*(a2 + 16) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390C05C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A390C304();
  sub_1A3A2F080();

  if (*(a2 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A390C16C()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeMacroViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeMacroViewModel()
{
  result = qword_1ED9976D8;
  if (!qword_1ED9976D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A390C25C()
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

unint64_t sub_1A390C304()
{
  result = qword_1ED997770;
  if (!qword_1ED997770)
  {
    type metadata accessor for ChromeMacroViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997770);
  }

  return result;
}

uint64_t sub_1A390C390()
{
  if (!*(v0 + OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA60();
  sub_1A3A2F480();

  return v2;
}

uint64_t sub_1A390C428(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel;
  if (!*(v2 + OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel))
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2EA60();
  sub_1A3A2F480();

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v8 = *(v2 + v6);
      if (!v8)
      {
        return result;
      }

      v9 = (v8 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
      v10 = *(v8 + OBJC_IVAR____TtC8CameraUI29OnboardingBuddySetupViewModel_assetLoadingComplete);
      *v9 = a1;
      v9[1] = a2;
      sub_1A365F488(a1);
      sub_1A3A2EA60();
      sub_1A3671090(v10);
    }

    if (v12)
    {
      result = sub_1A3A321F0();
      __break(1u);
      return result;
    }

LABEL_9:
    type metadata accessor for OnboardingBuddySetupViewModel();
    swift_allocObject();
    sub_1A365F488(a1);
    v11 = sub_1A3A223C8(a1, a2);
    sub_1A3671090(a1);
    *(v3 + v6) = v11;
  }

  if (a1)
  {
    return a1(2);
  }

  return result;
}

uint64_t sub_1A390C670()
{
  v1 = v0;
  v2 = OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel;
  if (*(v0 + OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel))
  {
    v3 = *(v0 + OBJC_IVAR___CAMOnboardingBuddyViewManager_viewModel);
  }

  else
  {
    type metadata accessor for OnboardingBuddySetupViewModel();
    swift_allocObject();
    v3 = sub_1A3A223C8(0, 0);
  }

  *(v1 + v2) = v3;
  sub_1A3A2EA60();
  sub_1A3A2EA60();

  swift_unknownObjectWeakInit();
  v9 = CAMCameraAdjustmentsEnabled();
  sub_1A3A30F80();
  v14 = v7[0];
  v15 = v8;
  swift_unknownObjectWeakAssign();
  v11 = sub_1A390F8D8;
  v12 = v3;
  v13 = 0;
  sub_1A390F8E0(v10, v7);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF58));
  v5 = sub_1A3A30100();
  sub_1A390F918(v10);
  return v5;
}

id sub_1A390C860()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A390C8CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3A31480();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF60);
  sub_1A390CB60(v1, a1 + *(v4 + 44));
  v5 = sub_1A3A30DA0();
  v6 = sub_1A3A30610();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF68) + 36);
  *v7 = v5;
  v7[8] = v6;
  v18 = sub_1A3A314F0();
  type metadata accessor for OnboardingBuddySetupViewModel();
  sub_1A3910174(&qword_1EB0FDF70, type metadata accessor for OnboardingBuddySetupViewModel);
  sub_1A3A2F670();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  v8 = v19;
  v9 = v20;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF78) + 36));
  *v10 = v18;
  v10[1] = v8;
  v10[2] = v9;
  v11 = sub_1A3A314F0();
  sub_1A3A2F670();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  v12 = v19;
  v13 = v20;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF80) + 36));
  *v14 = v11;
  v14[1] = v12;
  v14[2] = v13;
  sub_1A390F8E0(v1, &v19);
  v15 = swift_allocObject();
  sub_1A390FA58(&v19, v15 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF88);
  v17 = (a1 + *(result + 36));
  *v17 = 0;
  v17[1] = 0;
  v17[2] = sub_1A390FA90;
  v17[3] = v15;
  return result;
}

uint64_t sub_1A390CB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF90);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-v6];
  *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDF98) - 8;
  v8 = MEMORY[0x1EEE9AC00](v49);
  v51 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v42[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42[-v12];
  v50 = sub_1A3A300B0();
  v81 = 1;
  type metadata accessor for OnboardingBuddySetupViewModel();
  sub_1A3910174(&qword_1EB0FDF70, type metadata accessor for OnboardingBuddySetupViewModel);
  sub_1A3A2F670();
  v13 = sub_1A3A2F970();
  v46 = v14;
  sub_1A3A31480();
  sub_1A3A2F780();
  v44 = v84;
  v45 = v82;
  v53 = v83;
  v54 = v85;
  v55 = v87;
  v56 = v86;
  v97 = 1;
  v96 = v83;
  v95 = v85;
  v15 = v81;
  v43 = v81;
  v52 = sub_1A3A30610();
  *v7 = sub_1A3A300B0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFA0);
  sub_1A390D01C(a1, &v7[*(v16 + 44)]);
  v17 = sub_1A3A30600();
  sub_1A3A2F520();
  v18 = &v7[*(v5 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_1A3A31470();
  sub_1A3A2FBF0();
  v23 = v7;
  v24 = v47;
  sub_1A388F670(v23, v47, &qword_1EB0FDF90);
  v25 = v48;
  v26 = &v24[*(v49 + 44)];
  v27 = v93;
  v26[4] = v92;
  v26[5] = v27;
  v26[6] = v94;
  v28 = v89;
  *v26 = v88;
  v26[1] = v28;
  v29 = v91;
  v26[2] = v90;
  v26[3] = v29;
  sub_1A388F670(v24, v25, &qword_1EB0FDF98);
  v30 = v51;
  sub_1A3662418(v25, v51);
  v31 = v50;
  v57 = v50;
  LOBYTE(v58) = v15;
  v32 = v13;
  *(&v58 + 1) = v13;
  v33 = v45;
  v34 = v46;
  *&v59 = v46;
  BYTE8(v59) = 0;
  v49 = xmmword_1A3A726D0;
  v60 = xmmword_1A3A726D0;
  *&v61 = 0;
  BYTE8(v61) = 1;
  *&v62 = v45;
  BYTE8(v62) = v53;
  v35 = v44;
  *&v63 = v44;
  BYTE8(v63) = v54;
  *&v64 = v56;
  *(&v64 + 1) = v55;
  v65 = v52;
  *(a2 + 128) = v52;
  v36 = v64;
  *(a2 + 96) = v63;
  *(a2 + 112) = v36;
  v37 = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v37;
  v38 = v62;
  *(a2 + 64) = v61;
  *(a2 + 80) = v38;
  v39 = v58;
  *a2 = v57;
  *(a2 + 16) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFA8);
  sub_1A3662418(v30, a2 + *(v40 + 48));
  sub_1A388F6D8(&v57, v66, &qword_1EB0FDFB0);
  sub_1A388F740(v25, &qword_1EB0FDF98);
  sub_1A388F740(v30, &qword_1EB0FDF98);
  v66[0] = v31;
  v66[1] = 0;
  v67 = v43;
  v68 = v32;
  v69 = v34;
  v70 = 0;
  v71 = v49;
  v72 = 0;
  v73 = 1;
  v74 = v33;
  v75 = v53;
  v76 = v35;
  v77 = v54;
  v78 = v56;
  v79 = v55;
  v80 = v52;
  return sub_1A388F740(v66, &qword_1EB0FDFB0);
}

uint64_t sub_1A390D01C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v132 = a2;
  v123 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v123);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A30E90();
  v130 = *(v5 - 8);
  v131 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v125 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v106 - v8;
  v113 = sub_1A3A304F0();
  v120 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v119 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFB8);
  v117 = *(v10 - 8);
  v118 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v106 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFC0);
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFC8);
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v126 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v106 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFD0);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v106 - v17;
  v108 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v108);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFD8);
  v20 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v106 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFE0);
  MEMORY[0x1EEE9AC00](v112);
  v114 = (&v106 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFE8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v121 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v106 - v28;
  v136 = sub_1A3A300C0();
  LOBYTE(v149) = 0;
  sub_1A390E0B4(a1, v139);
  memcpy(v152, v139, sizeof(v152));
  memcpy(v153, v139, 0x1F8uLL);
  sub_1A388F6D8(v152, v138, &qword_1EB0FDFF0);
  sub_1A388F740(v153, &qword_1EB0FDFF0);
  memcpy(&v140[7], v152, 0x1F8uLL);
  v134 = v149;
  v133 = a1;
  type metadata accessor for OnboardingBuddySetupViewModel();
  sub_1A3910174(&qword_1EB0FDF70, type metadata accessor for OnboardingBuddySetupViewModel);
  sub_1A3A2F670();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3A2F480();

  v29 = v139[1];
  if (v139[1])
  {
    v107 = v4;
    v30 = v139[0];
    v31 = *(v133 + 40);
    LOBYTE(v138[0]) = *(v133 + 32);
    v138[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    v32 = sub_1A3A30FB0();
    MEMORY[0x1EEE9AC00](v32);
    *(&v106 - 2) = v30;
    *(&v106 - 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE068);
    sub_1A390FE08();
    sub_1A3A31100();

    v33 = sub_1A3A30610();
    sub_1A3A2F520();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0B8) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = *(v108 + 20);
    v44 = *MEMORY[0x1E697F468];
    v45 = sub_1A3A30000();
    (*(*(v45 - 8) + 104))(&v19[v43], v44, v45);
    __asm { FMOV            V0.2D, #24.0 }

    *v19 = _Q0;
    sub_1A3A30DD0();
    v51 = sub_1A3A30E10();

    sub_1A3A2F680();
    v52 = &v23[*(v109 + 36)];
    v106 = v23;
    sub_1A3910090(v19, v52);
    v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0C0) + 36);
    v54 = v142;
    *v53 = v141;
    *(v53 + 16) = v54;
    *(v53 + 32) = v143;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0C8);
    *(v52 + *(v55 + 52)) = v51;
    *(v52 + *(v55 + 56)) = 256;
    v56 = sub_1A3A31480();
    v58 = v57;
    sub_1A39100F4(v19, MEMORY[0x1E697EAF0]);
    v59 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0D0) + 36));
    *v59 = v56;
    v59[1] = v58;
    v60 = sub_1A3A31480();
    v62 = v61;
    v63 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0D8) + 36));
    *v63 = v60;
    v63[1] = v62;
    sub_1A3A31480();
    sub_1A3A2F780();
    v108 = v146;
    v109 = v144;
    v65 = *(&v148 + 1);
    v64 = v148;
    LOBYTE(v139[0]) = 1;
    LOBYTE(v138[0]) = v145;
    LOBYTE(v149) = v147;
    v66 = v110;
    sub_1A388F6D8(v23, v110, &qword_1EB0FDFD8);
    v67 = v139[0];
    v68 = v138[0];
    v69 = v149;
    v70 = v111;
    sub_1A388F6D8(v66, v111, &qword_1EB0FDFD8);
    v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE0E0) + 48);
    *v71 = 0;
    *(v71 + 8) = v67;
    v72 = v108;
    *(v71 + 16) = v109;
    *(v71 + 24) = v68;
    *(v71 + 32) = v72;
    *(v71 + 40) = v69;
    *(v71 + 48) = __PAIR128__(v65, v64);
    sub_1A388F740(v66, &qword_1EB0FDFD8);
    sub_1A388F6D8(v70, v114, &qword_1EB0FDFD0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFF8);
    sub_1A38A08F8(&qword_1EB0FE000, &qword_1EB0FDFD0);
    sub_1A390FA98();
    v4 = v107;
    sub_1A3A301F0();
    sub_1A388F740(v70, &qword_1EB0FDFD0);
    sub_1A388F740(v106, &qword_1EB0FDFD8);
  }

  else
  {
    sub_1A3A31480();
    sub_1A3A2F780();
    v73 = v144;
    v74 = v145;
    v75 = v146;
    v76 = v147;
    LOBYTE(v139[0]) = 1;
    LOBYTE(v138[0]) = v145;
    LOBYTE(v149) = v147;
    v77 = v114;
    *v114 = 0;
    *(v77 + 8) = 1;
    v77[2] = v73;
    *(v77 + 24) = v74;
    v77[4] = v75;
    *(v77 + 40) = v76;
    *(v77 + 3) = v148;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDFF8);
    sub_1A38A08F8(&qword_1EB0FE000, &qword_1EB0FDFD0);
    sub_1A390FA98();
    sub_1A3A301F0();
  }

  v78 = v133;
  sub_1A390F8E0(v133, v139);
  v79 = swift_allocObject();
  v80 = sub_1A390FA58(v139, v79 + 16);
  MEMORY[0x1EEE9AC00](v80);
  *(&v106 - 2) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE010);
  sub_1A390FB78();
  v81 = v116;
  sub_1A3A30FE0();
  v82 = v119;
  sub_1A3A304E0();
  sub_1A38A08F8(&qword_1EB0FE020, &qword_1EB0FDFB8);
  sub_1A3910174(&qword_1EB0FE028, MEMORY[0x1E697CB70]);
  v83 = v124;
  v84 = v118;
  v85 = v113;
  sub_1A3A30960();
  (*(v120 + 8))(v82, v85);
  (*(v117 + 8))(v81, v84);
  sub_1A3A31480();
  sub_1A3A2F780();
  v86 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE030) + 36));
  v87 = v150;
  *v86 = v149;
  v86[1] = v87;
  v86[2] = v151;
  v88 = (v83 + *(v122 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE038);
  sub_1A3A2FC10();
  *v88 = swift_getKeyPath();
  v89 = v125;
  sub_1A3A30E80();
  v90 = v127;
  MEMORY[0x1A58F6CF0](1);
  v91 = v131;
  v92 = *(v130 + 8);
  v92(v89, v131);
  v93 = *MEMORY[0x1E697F468];
  v94 = sub_1A3A30000();
  (*(*(v94 - 8) + 104))(v4, v93, v94);
  sub_1A390FBFC();
  sub_1A3910174(qword_1ED9969F8, MEMORY[0x1E6981998]);
  v95 = v137;
  sub_1A3A30990();
  sub_1A39100F4(v4, MEMORY[0x1E6981998]);
  v92(v90, v91);
  sub_1A388F740(v83, &qword_1EB0FDFC0);
  v96 = v135;
  v97 = v121;
  sub_1A388F6D8(v135, v121, &qword_1EB0FDFE8);
  v99 = v128;
  v98 = v129;
  v100 = *(v128 + 16);
  v101 = v126;
  v100(v126, v95, v129);
  v138[0] = v136;
  v138[1] = 0;
  LOBYTE(v138[2]) = v134;
  memcpy(&v138[2] + 1, v140, 0x1FFuLL);
  v102 = v132;
  memcpy(v132, v138, 0x210uLL);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE058);
  sub_1A388F6D8(v97, &v102[*(v103 + 48)], &qword_1EB0FDFE8);
  v100(&v102[*(v103 + 64)], v101, v98);
  sub_1A388F6D8(v138, v139, &qword_1EB0FE060);
  v104 = *(v99 + 8);
  v104(v137, v98);
  sub_1A388F740(v96, &qword_1EB0FDFE8);
  v104(v101, v98);
  sub_1A388F740(v97, &qword_1EB0FDFE8);
  v139[0] = v136;
  v139[1] = 0;
  LOBYTE(v139[2]) = v134;
  memcpy(&v139[2] + 1, v140, 0x1FFuLL);
  return sub_1A388F740(v139, &qword_1EB0FE060);
}