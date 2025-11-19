uint64_t sub_21463DAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
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

double sub_21463DB08(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21463DB98(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1;
    v3 = *(result + 56) & 1;
    v4 = *(result + 72) & 0xFF01;
    v5 = *(result + 104) & 0x101;
    v6 = *(result + 120) & 1;
    v7 = *(result + 136) & 1 | (a2 << 62);
    *(result + 24) &= 1uLL;
    *(result + 40) = v2;
    *(result + 56) = v3;
    *(result + 72) = v4;
    *(result + 104) = v5;
    *(result + 120) = v6;
    *(result + 136) = v7;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0x8000000000000000;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
  }

  return result;
}

uint64_t sub_21463DC50@<X0>(__CVBuffer *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v7 = BaseAddress;
    swift_beginAccess();
    v8 = sub_2144668E8(v7, *(v5 + 112));
    v10 = v9;
    result = CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    *a3 = v8;
    a3[1] = v10;
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v12 = 257;
    *(v12 + 8) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21463DD20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  swift_allocError();
  *v3 = 1281;
  *(v3 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_21463DDA4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  type metadata accessor for CGImage(0);
  v14[3] = v7;
  v14[4] = &off_28269F358;
  v14[0] = a1;
  v8 = a1;
  v9 = sub_2146411E0(v14);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v12 = v9;
  v13 = v10;
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v12;
  a3[1] = v13;
  return result;
}

uint64_t sub_21463DEB4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v5 = **(v2 + 16);
  result = a1();
  if (!v3)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_21463E004@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21463E084(mem_entry_name_port_t *a1, vm_size_t a2)
{
  v4 = swift_allocObject();
  sub_21463EB14(a1, a2);
  return v4;
}

uint64_t sub_21463E0DC@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21463E138()
{
  v1 = 1684104562;
  if (*v0 != 1)
  {
    v1 = 0x6574697277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

uint64_t sub_21463E194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684104562;
  if (v2 != 1)
  {
    v4 = 0x6574697277;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696C616974696E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE006E6F6974617ALL;
  }

  v7 = 0xE400000000000000;
  v8 = 1684104562;
  if (*a2 != 1)
  {
    v8 = 0x6574697277;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696C616974696E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE006E6F6974617ALL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_21463E288()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21463E32C()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21463E3BC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21463E45C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_21463E0DC(a1);
}

void sub_21463E468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F6974617ALL;
  v4 = 0xE400000000000000;
  v5 = 1684104562;
  if (v2 != 1)
  {
    v5 = 0x6574697277;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696C616974696E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21463E4C8@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21463E524()
{
  result = 0x6863614D6C6C756ELL;
  switch(*v0)
  {
    case 1:
      result = 0x654D64656C696166;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6F4379726F6D656DLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x65666675426C696ELL;
      break;
    case 7:
      result = 0x6567616D496C696ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x696C616E69666E75;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21463E6E0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = sub_21463E524();
  v4 = v3;
  if (v2 == sub_21463E524() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_21463E77C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21463E524();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21463E7E4()
{
  v2 = *v0;
  sub_21463E524();
  sub_2146D9698();
}

uint64_t sub_21463E848()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21463E524();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21463E8AC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_21463E4C8(a1);
}

unint64_t sub_21463E8B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21463E524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21463E900()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001DLL, 0x80000002147A61B0);
  v0 = sub_2146DA428();
  MEMORY[0x2160545D0](v0);

  MEMORY[0x2160545D0](0xD000000000000015, 0x80000002147A61D0);
  v1 = sub_2146DA428();
  MEMORY[0x2160545D0](v1);

  MEMORY[0x2160545D0](0x3A6874646977202CLL, 0xE900000000000020);
  v2 = sub_2146DA428();
  MEMORY[0x2160545D0](v2);

  MEMORY[0x2160545D0](0x746867696568202CLL, 0xEA0000000000203ALL);
  v3 = sub_2146DA428();
  MEMORY[0x2160545D0](v3);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_21463EAC0@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_21463EB14(mem_entry_name_port_t *a1, vm_size_t size)
{
  address[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 24) = size;
  if (v3)
  {
    address[0] = 0;
    if ((size & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v5 = 1;
    v6 = vm_map(*MEMORY[0x277D85F48], address, size, 0, 1, v3, 0, 0, 3, 3, 1u);
    v7 = address[0];
    *(v2 + 64) = address[0];
    *(v2 + 72) = 0;
    if (!v6)
    {
      if (v7)
      {
        if (*v7 == 0xB1A57D002)
        {
          *(v2 + 40) = v7;
          *(v2 + 48) = v7 + size;
          *(v2 + 56) = 0;
          *(v2 + 32) = 1;
          goto LABEL_7;
        }

        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    sub_21463EC98();
    swift_allocError();
    *v8 = 0;
    *(v8 + 1) = v5;
  }

  else
  {
    sub_21463EC98();
    swift_allocError();
    *v8 = 0;
  }

  *(v8 + 8) = 0;
  swift_willThrow();
  type metadata accessor for MachImage();
  swift_deallocPartialClassInstance();
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_21463EC98()
{
  result = qword_280B2F778[0];
  if (!qword_280B2F778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2F778);
  }

  return result;
}

uint64_t sub_21463ED10(const void *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  if (!a1)
  {
    *(v2 + 24) = 0;
    goto LABEL_5;
  }

  v4 = a2 - a1;
  *(v2 + 24) = a2 - a1;
  v5 = aligned_alloc(8uLL, a2 - a1);
  if (!v5)
  {
LABEL_5:
    type metadata accessor for MachImage();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  memmove(v5, a1, v4);
  *(v2 + 40) = v6;
  *(v2 + 48) = &v6[v4];
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  return v2;
}

void sub_21463EDAC()
{
  v1 = MEMORY[0x277D85F48];
  if ((*(v0 + 72) & 1) == 0)
  {
    if ((*(v0 + 24) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    MEMORY[0x216056C00](*MEMORY[0x277D85F48], *(v0 + 64));
  }

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    mach_port_deallocate(*v1, v2);
  }

  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      MEMORY[0x216056AC0](v3, -1, -1);
    }
  }
}

void sub_21463EE44()
{
  v1 = MEMORY[0x277D85F48];
  if ((*(v0 + 72) & 1) == 0)
  {
    if ((*(v0 + 24) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    MEMORY[0x216056C00](*MEMORY[0x277D85F48], *(v0 + 64));
  }

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    mach_port_deallocate(*v1, v2);
  }

  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      MEMORY[0x216056AC0](v3, -1, -1);
    }
  }

  swift_deallocClassInstance();
}

uint64_t sub_21463EEE8()
{
  if (*(v0 + 56))
  {
    return 0;
  }

  v4 = v0 + 40;
  v3 = *(v0 + 40);
  v2 = *(v4 + 8);
  type metadata accessor for MachImage();
  swift_allocObject();
  return sub_21463ED10(v3, v2);
}

void sub_21463EF3C(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(v1 + 56))
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1537;
    goto LABEL_3;
  }

  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  sub_2140615A8(v50);
  v51[8] = v50[8];
  v51[9] = v50[9];
  v51[10] = v50[10];
  v51[11] = v50[11];
  v51[4] = v50[4];
  v51[5] = v50[5];
  v51[6] = v50[6];
  v51[7] = v50[7];
  v51[0] = v50[0];
  v51[1] = v50[1];
  v51[2] = v50[2];
  v51[3] = v50[3];
  if (!v5)
  {
    v10 = sub_21449C904(v6, 0, v7, v51);
    if (v2)
    {
      goto LABEL_37;
    }

    v11 = v10;
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_28:
    sub_21463EC98();
    swift_allocError();
    v4 = 1794;
LABEL_3:
    *v3 = v4;
    *(v3 + 8) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  sub_2146A5650();
  if (v2)
  {
LABEL_36:

    goto LABEL_37;
  }

  v11 = sub_21449C904(v6, v5, v7, v51);
  if ((*(v5 + 40) & 1) == 0)
  {
    v15 = *(v5 + 32);
    v16 = sandbox_extension_release();
    if (v16 == sub_2146D93B8())
    {
      *(v5 + 32) = 0;
      *(v5 + 40) = 1;
      goto LABEL_27;
    }

    v23 = MEMORY[0x2160542A0]();
    sub_21408FA04();
    v24 = swift_allocError();
    *v25 = v23;
    *(v25 + 4) = 0;
    swift_willThrow();

    if (*(v5 + 40))
    {
      sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      sub_2146D91D8();
    }

    else
    {
      v26 = *(v5 + 32);
      v27 = sandbox_extension_release();
      if (v27 != sub_2146D93B8())
      {
        v29 = MEMORY[0x2160542A0]();
        sub_21408FA04();
        swift_allocError();
        *v30 = v29;
        *(v30 + 4) = 0;
        swift_willThrow();

        goto LABEL_37;
      }

      *(v5 + 32) = 0;
      *(v5 + 40) = 1;
    }

    swift_willThrow();
    goto LABEL_36;
  }

  sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    sub_2146D91D8();
LABEL_27:

    if (!v11)
    {
      goto LABEL_28;
    }

LABEL_12:
    sub_2143C122C(v47);
    if (!v8)
    {
      sub_21463F708(v47);
      sub_21463EC98();
      swift_allocError();
      v14 = 2050;
LABEL_24:
      *v13 = v14;
      *(v13 + 8) = 0;
LABEL_31:
      swift_willThrow();

      goto LABEL_37;
    }

    if (v48 <= -9.22337204e18)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v48 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    if (v49 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v49 < 9.22337204e18)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v12 = sub_21464050C(v48, v49);
  v17 = v9 - v8;
  if (v9 - v8 < v12)
  {
    v18 = v12;
    sub_21463F708(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    strcpy((inited + 32), "buffer.count");
    v20 = MEMORY[0x277D83B88];
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v17;
    *(inited + 72) = v20;
    *(inited + 80) = 0xD000000000000010;
    *(inited + 120) = v20;
    *(inited + 88) = 0x80000002147A6100;
    *(inited + 96) = v18;
    v21 = sub_2140457C0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    sub_21463EC98();
    swift_allocError();
    *v22 = 1282;
    *(v22 + 8) = v21;
    goto LABEL_31;
  }

  if (*v8 != 0xB1A57D002)
  {
    sub_21463F708(v47);
    sub_21463EC98();
    swift_allocError();
    v14 = 770;
    goto LABEL_24;
  }

  cbks.putBytes = sub_21463FE60;
  cbks.releaseConsumer = 0;
  v31 = CGDataConsumerCreate(v8, &cbks);
  if (v31)
  {
    v32 = v31;
    sub_21463F708(v47);
    v33 = sub_2146D9588();
    v34 = CGImageDestinationCreateWithDataConsumer(v32, v33, 1uLL, 0);
    if (v34)
    {
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
      v36 = swift_initStackObject();
      v37 = *MEMORY[0x277CD3618];
      *(v36 + 32) = *MEMORY[0x277CD3618];
      *(v36 + 16) = xmmword_2146E68D0;
      *(v36 + 40) = 0;
      v38 = *MEMORY[0x277CD3678];
      *(v36 + 48) = *MEMORY[0x277CD3678];
      *(v36 + 56) = 0;
      v39 = *MEMORY[0x277CD35A0];
      *(v36 + 64) = *MEMORY[0x277CD35A0];
      *(v36 + 72) = 1;
      v40 = v37;
      v41 = v38;
      v42 = v39;
      sub_214046938(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v43 = sub_2146D9468();

      CGImageDestinationAddImageFromSource(v35, v11, 0, v43);
      if (!CGImageDestinationFinalize(v35))
      {
        sub_21463EC98();
        swift_allocError();
        *v44 = 2562;
        *(v44 + 8) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_21463EC98();
      swift_allocError();
      *v45 = 2306;
      *(v45 + 8) = 0;
      swift_willThrow();
    }

LABEL_37:
    v28 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21463F774(uint64_t a1, const void *a2, int64_t a3)
{
  if (!a1)
  {
    v31 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v32 = qword_280B35408;
    if (!os_log_type_enabled(qword_280B35408, v31))
    {
      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = a3;
    v34 = "MachImage write had nil destPtr. bytesCount %ld";
LABEL_25:
    _os_log_impl(&dword_213FAF000, v32, v31, v34, v33, 0xCu);
    v35 = v33;
LABEL_31:
    MEMORY[0x216056AC0](v35, -1, -1);
    return 0;
  }

  if (*a1 != 0xB1A57D002)
  {
    v31 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v32 = qword_280B35408;
    if (!os_log_type_enabled(qword_280B35408, v31))
    {
      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = a3;
    v34 = "During MachImage write, the MachImageHeader was not valid at the destPtr. bytesCount %ld";
    goto LABEL_25;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v9 = qword_280B35408;
  if (os_log_type_enabled(qword_280B35408, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315394;
    v12 = sub_21463E900();
    v53 = v8;
    v14 = sub_2144AEA38(v12, v13, &v56);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_213FAF000, v9, v53, "MachImage destPtr has header: %s. bytesCount %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);
  }

  if (a3 < 1 || (v15 = v7 - a3, v7 < a3))
  {
    v36 = sub_2146D9BA8();
    if (os_log_type_enabled(v9, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 134218242;
      *(v37 + 4) = a3;
      *(v37 + 12) = 2080;
      v39 = sub_21463E900();
      v41 = sub_2144AEA38(v39, v40, &v56);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_213FAF000, v9, v36, "MachImage attempted to write more bytes than what was expected. bytesCount %ld, header: %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v42 = v38;
LABEL_30:
      MEMORY[0x216056AC0](v42, -1, -1);
      v35 = v37;
      goto LABEL_31;
    }

    return 0;
  }

  v16 = sub_2146D9B88();
  result = os_log_type_enabled(v9, v16);
  if (result)
  {
    v18 = swift_slowAlloc();
    v52 = v5;
    v19 = swift_slowAlloc();
    v56 = v19;
    *v18 = 136315650;
    v20 = sub_21463E900();
    v51 = v4;
    v22 = sub_2144AEA38(v20, v21, &v56);
    v15 = v7 - a3;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a3;
    *(v18 + 22) = 2080;
    v23 = sub_21463E900();
    v25 = sub_2144AEA38(v23, v24, &v56);
    v4 = v51;

    *(v18 + 24) = v25;
    _os_log_impl(&dword_213FAF000, v9, v16, "MachImage writing new header to destPtr: %s. bytesCount %ld, old header: %s", v18, 0x20u);
    swift_arrayDestroy();
    v26 = v19;
    v5 = v52;
    MEMORY[0x216056AC0](v26, -1, -1);
    result = MEMORY[0x216056AC0](v18, -1, -1);
  }

  *a1 = 0xB1A57D002;
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v15;
  v27 = v6 - 32;
  if (v6 < 0x20)
  {
    __break(1u);
  }

  else
  {
    v28 = v27 - v7;
    if (v27 >= v7)
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = sub_2146D9B88();
        if (os_log_type_enabled(v9, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134218240;
          *(v30 + 4) = a3;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v28;
          _os_log_impl(&dword_213FAF000, v9, v29, "MachImage writing %ld bytes to imageOffsetPointer. byteOffset: %llu", v30, 0x16u);
          MEMORY[0x216056AC0](v30, -1, -1);
        }

        memmove((a1 + 32 + v28), a2, a3);
        return a3;
      }

      v43 = sub_2146D9BA8();
      if (os_log_type_enabled(v9, v43))
      {
        v37 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v56 = v44;
        *v37 = 134218754;
        *(v37 + 4) = v28;
        *(v37 + 12) = 2048;
        *(v37 + 14) = a3;
        *(v37 + 22) = 2080;
        v45 = sub_21463E900();
        v47 = sub_2144AEA38(v45, v46, &v56);

        *(v37 + 24) = v47;
        *(v37 + 32) = 2080;
        v48 = sub_21463E900();
        v50 = sub_2144AEA38(v48, v49, &v56);

        *(v37 + 34) = v50;
        _os_log_impl(&dword_213FAF000, v9, v43, "byteOffset (%llu) was greater than Int.max, bailing on write. bytesCount %ld, header: %s, newHeader %s", v37, 0x2Au);
        swift_arrayDestroy();
        v42 = v44;
        goto LABEL_30;
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21463FF98()
{
  if (*(v0 + 56))
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1537;
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
LABEL_17:
    swift_willThrow();
    return ThumbnailAtIndex;
  }

  v5 = *(v0 + 40);
  if (!v5)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 2049;
    goto LABEL_16;
  }

  ThumbnailAtIndex = *(v0 + 48) - v5;
  if (ThumbnailAtIndex < 33)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 1025;
    goto LABEL_16;
  }

  if (*v5 != 0xB1A57D002)
  {
    sub_21463EC98();
    swift_allocError();
    v4 = 769;
    goto LABEL_16;
  }

  v6 = sub_21464050C(*(v5 + 8), *(v5 + 12));
  if (!v1)
  {
    if (ThumbnailAtIndex != v6)
    {
      v40 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2146E6910;
      strcpy((inited + 32), "buffer.count");
      v42 = MEMORY[0x277D83B88];
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = ThumbnailAtIndex;
      *(inited + 72) = v42;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = v42;
      *(inited + 88) = 0x80000002147A6100;
      *(inited + 96) = v40;
      ThumbnailAtIndex = sub_2140457C0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
      swift_arrayDestroy();
      sub_21463EC98();
      swift_allocError();
      *v43 = 1281;
      *(v43 + 8) = ThumbnailAtIndex;
      goto LABEL_17;
    }

    v7 = CGDataProviderCreateWithData(0, (v5 + 32), ThumbnailAtIndex - 32, nullsub_55);
    if (!v7)
    {
      sub_21463EC98();
      swift_allocError();
      v4 = 2305;
      goto LABEL_16;
    }

    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E68D0;
    v10 = *MEMORY[0x277CD3648];
    *(v9 + 32) = *MEMORY[0x277CD3648];
    v11 = MEMORY[0x277D839B0];
    *(v9 + 40) = 1;
    v12 = *MEMORY[0x277CD3668];
    *(v9 + 64) = v11;
    *(v9 + 72) = v12;
    v13 = v10;
    v14 = v12;
    v15 = sub_2146D9588();
    type metadata accessor for CFString(0);
    ThumbnailAtIndex = v16;
    v17 = MEMORY[0x277CD35A8];
    *(v9 + 80) = v15;
    v18 = *v17;
    *(v9 + 104) = v16;
    *(v9 + 112) = v18;
    *(v9 + 144) = v11;
    *(v9 + 120) = 1;
    v19 = v18;
    sub_214045EE0(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    sub_2143A6B04();
    v20 = sub_2146D9468();

    v21 = CGImageSourceCreateWithDataProvider(v8, v20);

    if (v21)
    {
      v46 = v8;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_214737980;
      v23 = *MEMORY[0x277CD3568];
      *(v22 + 32) = *MEMORY[0x277CD3568];
      v24 = MEMORY[0x277CD3578];
      *(v22 + 40) = 1;
      v25 = *v24;
      *(v22 + 64) = v11;
      *(v22 + 72) = v25;
      v26 = MEMORY[0x277CD3618];
      *(v22 + 80) = 1;
      v27 = v21;
      v28 = *v26;
      *(v22 + 104) = v11;
      *(v22 + 112) = v28;
      v29 = MEMORY[0x277CD3678];
      *(v22 + 120) = 0;
      v30 = *v29;
      *(v22 + 144) = v11;
      *(v22 + 152) = v30;
      v31 = MEMORY[0x277CD35A0];
      *(v22 + 160) = 0;
      v32 = *v31;
      *(v22 + 184) = v11;
      *(v22 + 192) = v32;
      *(v22 + 224) = v11;
      *(v22 + 200) = 1;
      v33 = v23;
      v34 = v25;
      v35 = v28;
      v36 = v30;
      v37 = v32;
      sub_214045EE0(v22);
      swift_setDeallocating();
      swift_arrayDestroy();
      v38 = sub_2146D9468();

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v27, 0, v38);

      if (!ThumbnailAtIndex)
      {
        sub_21463EC98();
        swift_allocError();
        *v45 = 3073;
        *(v45 + 8) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_21463EC98();
      swift_allocError();
      *v44 = 2817;
      *(v44 + 8) = 0;
      swift_willThrow();
    }
  }

  return ThumbnailAtIndex;
}

uint64_t sub_21464050C(uint64_t a1, uint64_t a2)
{
  v2 = a2 * a1;
  if ((a2 * a1) >> 64 != (a2 * a1) >> 63 || (v2 - 0x2000000000000000) >> 62 != 3)
  {
    v3 = 2;
LABEL_4:
    sub_21408014C();
    swift_allocError();
    *v4 = 0;
    v4[1] = v3;
    return swift_willThrow();
  }

  v6 = 4 * v2;
  v7 = __OFADD__(v6, 32);
  v8 = v6 + 32;
  if (v7 || (result = v8 + 32000, __OFADD__(v8, 32000)))
  {
    v3 = 0;
    goto LABEL_4;
  }

  return result;
}

unint64_t sub_2146405B0()
{
  result = qword_27C917570;
  if (!qword_27C917570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917570);
  }

  return result;
}

unint64_t sub_214640608()
{
  result = qword_27C917578;
  if (!qword_27C917578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917578);
  }

  return result;
}

unint64_t sub_214640830(uint64_t a1)
{
  *(a1 + 8) = sub_2142FCE0C();
  result = sub_2142FCF88();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214640870@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ATXEncoder.__allocating_init(configuration:maxPixelDimension:)(char *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  ATXEncoder.init(configuration:maxPixelDimension:)(a1, a2, a3 & 1);
  return v6;
}

uint64_t ATXEncoder.__allocating_init(configuration:)(char *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 16) = v3;
  *(result + 17) = v4;
  return result;
}

unint64_t sub_214640980()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  v4 = *MEMORY[0x277CD2F40];
  *(inited + 32) = *MEMORY[0x277CD2F40];
  v5 = *MEMORY[0x277CD2DD8];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CD2DD0];
  v7 = MEMORY[0x277D84CC0];
  *(inited + 64) = v8;
  *(inited + 72) = v6;
  *(inited + 80) = 68;
  v9 = *MEMORY[0x277CD2DE0];
  v10 = MEMORY[0x277D839B0];
  *(inited + 120) = v1;
  v11 = MEMORY[0x277CD2DE8];
  *(inited + 104) = v7;
  *(inited + 112) = v9;
  v12 = *v11;
  *(inited + 160) = v2;
  v13 = MEMORY[0x277CD3678];
  *(inited + 144) = v10;
  *(inited + 152) = v12;
  v14 = *v13;
  *(inited + 184) = v10;
  *(inited + 192) = v14;
  *(inited + 224) = v10;
  *(inited + 200) = 0;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v9;
  v19 = v12;
  v20 = v14;
  v21 = sub_214045EE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  return v21;
}

uint64_t ATXEncoder.maxPixelDimension.getter()
{
  swift_beginAccess();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ATXEncoder.maxPixelDimension.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ATXEncoder.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return v1;
}

uint64_t ATXEncoder.init(configuration:maxPixelDimension:)(char *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v12 = a1[1];
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EA710;
  if (a3)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    v9 = sub_2146D9618();
    v8 = v10;
  }

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_213FB2DA0();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  sub_2146D91D8();

  *(v3 + 16) = v6;
  *(v3 + 17) = v12;
  swift_beginAccess();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return v3;
}

void sub_214640D60(void *a1)
{
  v3 = v1;
  v5 = sub_2146D8898();
  v6 = sub_2146D9588();
  v7 = CGImageDestinationCreateWithURL(v5, v6, 1uLL, 0);

  if (v7)
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    swift_beginAccess();
    v10 = sub_214640EF0(a1, *(v3 + 24), *(v3 + 32));
    if (!v2)
    {
      v11 = v10;
      (*(v9 + 8))(v7, v10, v8, v9);

      if (!CGImageDestinationFinalize(v7))
      {
        sub_214641B7C();
        swift_allocError();
        *v12 = 2;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_214641B7C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }
}

uint64_t sub_214640EF0(void *a1, uint64_t a2, char a3)
{
  v8 = *(v3 + 17);
  LOBYTE(v40) = *(v3 + 16);
  BYTE1(v40) = v8;
  v9 = sub_214640980();
  if (a3)
  {
LABEL_12:
    type metadata accessor for CFString(0);
    sub_214641C1C(&qword_280B34D70, type metadata accessor for CFString);
    v15 = sub_2146D9468();

    return v15;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  v15 = type metadata accessor for EncoderUtils();
  sub_21407FF6C(a2, v12, v14);
  v17 = v16;
  v19 = v18;
  v20 = sub_21407E534(0x682E63696C627570, 0xEB00000000666965, v12, v14, v16, v18);
  if (!v4)
  {
    v21 = v12 == v17 && v14 == v19;
    v22 = MEMORY[0x277D83B88];
    if (!v21)
    {
      v23 = *MEMORY[0x277CD2D40];
      v41 = MEMORY[0x277D83B88];
      *&v40 = a2;
      v24 = v20;
      sub_213FDC730(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v9;
      sub_2140529F8(v39, v23, isUniquelyReferenced_nonNull_native);
      v20 = v24;
      v9 = v42;
    }

    v26 = *MEMORY[0x277CD3650];
    v27 = *&v20;
    v28 = MEMORY[0x277D85048];
    if (v20 <= 0.0)
    {
      v28 = v22;
      v27 = 2;
    }

    v41 = v28;
    *&v40 = v27;
    sub_213FDC730(&v40, v39);
    v29 = v26;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v9;
    sub_2140529F8(v39, v29, v30);

    v31 = v42;
    v32 = *MEMORY[0x277CD3578];
    v33 = MEMORY[0x277D839B0];
    v41 = MEMORY[0x277D839B0];
    LOBYTE(v40) = 1;
    sub_213FDC730(&v40, v39);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v31;
    sub_2140529F8(v39, v32, v34);
    v35 = v42;
    v36 = *MEMORY[0x277CD35A0];
    v41 = v33;
    LOBYTE(v40) = 1;
    sub_213FDC730(&v40, v39);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v35;
    sub_2140529F8(v39, v36, v37);
    goto LABEL_12;
  }

  return v15;
}

uint64_t sub_2146411E0(void *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    sub_214641B7C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    return v1;
  }

  v5 = Mutable;
  v6 = sub_2146D9588();
  v7 = CGImageDestinationCreateWithData(v5, v6, 1uLL, 0);

  if (!v7)
  {
    sub_214641B7C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    return v1;
  }

  swift_beginAccess();
  v8 = sub_214640EF0(a1, *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    v11 = v8;
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2146EA710;
    sub_214641BD0();
    sub_214641C1C(&qword_280B30DF0, sub_214641BD0);
    sub_2146D9488();
    sub_2146D9498();

    v13 = MEMORY[0x277D837D0];
    v14 = sub_2146D9618();
    v16 = v15;
    *(v12 + 56) = v13;
    *(v12 + 64) = sub_213FB2DA0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_2146D91D8();

    v17 = a1[3];
    v18 = a1[4];
    v1 = __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 8))(v7, v11, v17, v18);
    if (!CGImageDestinationFinalize(v7))
    {
      sub_214641B7C();
      swift_allocError();
      *v23 = 2;
      swift_willThrow();

LABEL_20:
      return v1;
    }

    v19 = v5;
    v1 = sub_2146D8A58();
    v21 = v20;

    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_19;
      }

      v24 = *(v1 + 16);
      v25 = *(v1 + 24);
    }

    else
    {
      if (!v22)
      {
        if ((v21 & 0xFF000000000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_22:

        return v1;
      }

      v24 = v1;
      v25 = v1 >> 32;
    }

    if (v24 != v25)
    {
      goto LABEL_22;
    }

LABEL_19:
    sub_214641B7C();
    swift_allocError();
    *v26 = 3;
    swift_willThrow();
    sub_213FB54FC(v1, v21);

    goto LABEL_20;
  }

  return v1;
}

uint64_t sub_21464167C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v8[3] = a2(0);
  v8[4] = a3;
  v8[0] = a1;
  v5 = a1;
  v6 = sub_2146411E0(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_21464172C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[3] = a3(0);
  v8[4] = a4;
  v8[0] = a1;
  v6 = a1;
  sub_214640D60(v8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ATXEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t ATXEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214641848@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 16) = v3;
  *(result + 17) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_21464193C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v9 = *v6;
  v12[3] = a5(0);
  v12[4] = a6;
  v12[0] = a1;
  v10 = a1;
  sub_214640D60(v12);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_2146419F0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v12[3] = a4(0);
  v12[4] = a5;
  v12[0] = a1;
  v9 = a1;
  v10 = sub_2146411E0(v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

double sub_214641A7C()
{
  v1 = *v0;
  Width = CGImageGetWidth(*v0);
  CGImageGetHeight(v1);
  return Width;
}

double sub_214641AC8()
{
  v1 = *v0;
  sub_2143C122C(v3);
  sub_21463F708(v3);
  return v4;
}

unint64_t sub_214641B7C()
{
  result = qword_27C917580;
  if (!qword_27C917580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917580);
  }

  return result;
}

unint64_t sub_214641BD0()
{
  result = qword_280B30DE8;
  if (!qword_280B30DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B30DE8);
  }

  return result;
}

uint64_t sub_214641C1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214641C78()
{
  result = qword_27C917588;
  if (!qword_27C917588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917588);
  }

  return result;
}

uint64_t sub_214641CCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2140537E4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_213FDC730(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_213FDC730(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_213FDC730(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2146D9E78();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_213FDC730(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_214641F94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041A8, &unk_2146EAEA0);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    sub_21402D9F8(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_213FDC730(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_213FDC730(v34, v35);
    v19 = *(v2 + 40);
    result = sub_2146D9E78();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_213FDC730(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_21464225C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_21404A8B8(0, &unk_27C9131C0, off_278175128);

        v20 = v19;
        swift_dynamicCast();
        sub_213FDC730(&v26, v28);
        sub_213FDC730(v28, v29);
        sub_213FDC730(v29, &v27);
        result = sub_21408C300(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_213FDC730(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_213FDC730(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2146424C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_213FDC730(&v27, v29);
        sub_213FDC730(v29, v30);
        sub_213FDC730(v30, &v28);
        result = sub_21408C300(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_213FDC730(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_213FDC730(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_214642720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v2 = sub_2146DA058();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2140537E4(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_213FDC730(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917590, &qword_214771DB8);
        swift_dynamicCast();
        sub_213FDC730(&v25, v27);
        sub_213FDC730(v27, v28);
        sub_213FDC730(v28, &v26);
        result = sub_21408C300(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_213FDC730(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_213FDC730(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2146429AC()
{
  sub_214642A54();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214642A00()
{
  sub_214642A54();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214642A54()
{
  v59 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v33 = sub_2146D93B8();
  v2 = [objc_allocWithZone(OPackCoder) init];
  v58 = xmmword_2146ECC00;
  if ((v1 - 16) >= 3)
  {
    if ((v1 - 21) > 2)
    {
      goto LABEL_23;
    }

    v3 = *(v0 + 120);
    v4 = *(v0 + 152);
    v54 = *(v0 + 136);
    v55 = v4;
    LOBYTE(v56) = v0[168];
    v5 = *(v0 + 56);
    v6 = *(v0 + 88);
    v50 = *(v0 + 72);
    v51 = v6;
    v52 = *(v0 + 104);
    v53 = v3;
    v7 = *(v0 + 24);
    v46 = *(v0 + 8);
    v47 = v7;
    v48 = *(v0 + 40);
    v49 = v5;
    result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v46);
    if (result != 1)
    {
      v42 = v54;
      v43 = v55;
      LOBYTE(v44) = v56;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v37 = v49;
      v9 = sub_2143DE178();
      sub_214641CCC(v9);

      v10 = sub_2146D9468();

      v11 = [v2 pack:v10 status:&v33];
      goto LABEL_7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 22);
  v56 = *(v0 + 21);
  v57[0] = v12;
  v13 = *(v0 + 18);
  v52 = *(v0 + 17);
  v53 = v13;
  v14 = *(v0 + 20);
  v54 = *(v0 + 19);
  v55 = v14;
  v15 = *(v0 + 14);
  v48 = *(v0 + 13);
  v49 = v15;
  v16 = *(v0 + 16);
  v50 = *(v0 + 15);
  v51 = v16;
  v17 = *(v0 + 12);
  v46 = *(v0 + 11);
  v47 = v17;
  *(v57 + 9) = *(v0 + 361);
  result = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v46);
  if (result == 1)
  {
    goto LABEL_25;
  }

  v44 = v56;
  v45[0] = v57[0];
  *(v45 + 9) = *(v57 + 9);
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v34 = v46;
  v35 = v47;
  v18 = sub_2143DFC90();
  sub_214641CCC(v18);

  v10 = sub_2146D9468();

  v11 = [v2 pack:v10 status:&v33];
LABEL_7:
  v19 = v11;

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = sub_2146D9CC8();
  v22 = sub_2146D9CD8();
  v23 = sub_2146D9CC8();
  v24 = sub_2146D9CD8();
  if (v21 < v23 || v24 < v21)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = sub_2146D9CC8();
  v26 = sub_2146D9CD8();

  if (v22 < v25 || v26 < v22)
  {
    goto LABEL_19;
  }

  v27 = v22 - v21;
  if (__OFSUB__(v22, v21))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v27))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  LODWORD(v46) = bswap32(v27);
  if (sub_214643890(&v46, &v46 + 4)[2])
  {
    sub_2146D8A08();
  }

  sub_2146D8A28();
  v28 = v20;

  sub_214642E88(v28);

  v29 = v58;
  *(&v47 + 1) = MEMORY[0x277CC9318];
  v46 = v58;
  sub_213FDC730(&v46, &v34);
  sub_21402D9F8(v29, *(&v29 + 1));
  v30 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v34, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);

  sub_213FB54FC(v29, *(&v29 + 1));
  result = v30;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_214642E88(void *a1)
{
  v2 = v1;
  v40[5] = *MEMORY[0x277D85DE8];
  sub_21404A8B8(0, &qword_27C9041F0, 0x277CBEA90);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B50, &qword_21476B170);
  if (swift_dynamicCast())
  {
    sub_213FB77C8(v38, v40);
    v5 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    MEMORY[0x28223BE20](v5);
    sub_2146D8788();
    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_51;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_21464390C(v38);
  v6 = sub_2146D9CC8();
  v7 = sub_2146D9CD8();
  v8 = sub_2146D9CC8();
  v9 = sub_2146D9CD8();
  if (v6 < v8 || v9 < v6)
  {
    goto LABEL_54;
  }

  v10 = sub_2146D9CC8();
  v11 = sub_2146D9CD8();
  if (v7 < v10 || v11 < v7)
  {
    goto LABEL_55;
  }

  v12 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = *v2;
  v14 = v2[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v14);
      v17 = BYTE6(v14);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v15 != 2)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v18 = v13 + 16;
  v13 = *(v13 + 16);
  v16 = *(v18 + 8);
  v17 = v16 - v13;
  if (__OFSUB__(v16, v13))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_63;
    }

    v17 = HIDWORD(v13) - v13;
    v16 = v13 >> 32;
  }

LABEL_18:
  if (__OFADD__(v16, v12))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 + v12 < v16)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v16 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v19 = sub_2146D89E8();
  MEMORY[0x28223BE20](v19);
  v22 = sub_2146432EC(sub_214643974);
  if (v21 != v12)
  {
LABEL_34:
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v34 = __OFADD__(v30, v17);
    v35 = v30 + v17;
    if (!v34)
    {
      if (!__OFADD__(v35, v21))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v36 = *(v31 + 24);
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v33)
        {
          v36 = v31 >> 32;
        }

        else
        {
          v36 = BYTE6(v32);
        }

        if (v36 >= v35 + v21)
        {
          sub_2146D89F8();
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v23 = v20;
  memset(v40, 0, 15);
  if (v20 == sub_2146D9CD8())
  {
    goto LABEL_50;
  }

  v24 = sub_2146D9CE8();
  v17 = sub_2146D9CC8();
  v25 = sub_2146D9CD8();
  if (v23 < v17 || v23 >= v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v26) = 0;
  v27 = v23 + 1;
  while (1)
  {
    *(v40 + v26) = v24;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v26 == 14)
    {
      *&v38[0] = v40[0];
      *(v38 + 6) = *(v40 + 6);
      sub_2146D8A08();
      if (v27 == sub_2146D9CD8())
      {
        goto LABEL_50;
      }

      LOBYTE(v26) = 0;
      goto LABEL_31;
    }

    if (v27 == sub_2146D9CD8())
    {
      break;
    }

LABEL_31:
    v24 = sub_2146D9CE8();
    v17 = sub_2146D9CC8();
    v28 = sub_2146D9CD8();
    if (v27 >= v17 && v27++ < v28)
    {
      continue;
    }

    goto LABEL_33;
  }

  *&v38[0] = v40[0];
  *(v38 + 6) = *(v40 + 6);
  sub_2146D8A08();
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x277D85DE8];
}

void *sub_2146432EC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_213FB54FC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_213FB54FC(v6, v5);
    *v3 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2146D8728() && __OFSUB__(v6, sub_2146D8758()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2146D8778();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2146D8708();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2146436EC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_213FB54FC(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    result = sub_2146436EC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_214643684(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2146436EC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2146D8728();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2146D8758();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2146D8748();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2146437A0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_2146D9CC8();
  v9 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v9;
    v14 = a4;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = v9 + v10;
      if (v9 + v10 == sub_2146D9CD8())
      {
        v9 += v10;
        a3 = v10;
        goto LABEL_15;
      }

      v12 = sub_2146D9CE8();
      v13 = sub_2146D9CC8();
      result = sub_2146D9CD8();
      if (v11 < v13 || v11 >= result)
      {
        break;
      }

      *(a2 + v10) = v12;
      if (a3 - 1 == v10)
      {
        v9 += v10 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_214643890(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_2146701CC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21464390C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B58, qword_21476B178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_214643974@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2146439DC(a1, a2, *(v3 + 16), **(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

id sub_2146439DC(id result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (!result)
  {
    v8 = a4;
    sub_2146D9CC8();
    return v8;
  }

  v6 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    v7 = a4;
    sub_2146437A0(&v9, v4 + a3, v6, v7);
    v8 = v9;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_214643A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_214643AC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t sub_214643B20()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214643B90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_214643BD4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_214643C40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_214643C54(uint64_t a1)
{
  v2 = sub_214643E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214643C90(uint64_t a1)
{
  v2 = sub_214643E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214643CCC(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917598, &qword_214771DC0);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214643E4C();

  sub_2146DAA28();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_2140A6418();
  v11 = v13[0];
  sub_2146DA388();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_214643E4C()
{
  result = qword_27C9175A0;
  if (!qword_27C9175A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175A0);
  }

  return result;
}

uint64_t sub_214643EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175A8, &qword_214771DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214643E4C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14[2];
    v12 = v15;
    *a2 = v14[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214644048()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21464407C(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2146440D4()
{
  v1 = *(v0 + 16);
  sub_21402D9F8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_214644108(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214644160()
{
  v1 = *(v0 + 32);
  sub_21402D9F8(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_214644194(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2146441F4(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_214644240@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146442D8(uint64_t a1)
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

void (*sub_214644358(uint64_t *a1))(uint64_t *a1, char a2)
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

void *sub_214644470(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_2146444C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

__n128 sub_214644550@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  result = *(v1 + 440);
  v4 = *(v1 + 456);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_214644568(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 440) = *a1;
  *(v1 + 456) = v4;
  *(v1 + 472) = v2;
  return result;
}

__n128 sub_2146445A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_214061854(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 1;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_2146446A4()
{
  if (*v0)
  {
    result = 0x756F72676B636162;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_2146446E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2146447C8(uint64_t a1)
{
  v2 = sub_214644A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214644804(uint64_t a1)
{
  v2 = sub_214644A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214644840(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175B0, &qword_214771DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214644A08();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + 472);
    v12 = *(v3 + 456);
    v15 = *(v3 + 440);
    v16 = v12;
    v17 = v11;
    v14[15] = 1;
    sub_2142FCF88();
    sub_2146DA308();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214644A08()
{
  result = qword_27C9175B8;
  if (!qword_27C9175B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175B8);
  }

  return result;
}

uint64_t sub_214644A5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175C0, &qword_214771DD8);
  v12 = *(v4 - 8);
  v5 = *(v12 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  sub_214061854(v33);
  v27 = v33[9];
  v28 = v33[10];
  v29 = v33[11];
  v23 = v33[5];
  v24 = v33[6];
  v25 = v33[7];
  v26 = v33[8];
  v19 = v33[1];
  v20 = v33[2];
  v21 = v33[3];
  v22 = v33[4];
  v18 = v33[0];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214644A08();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = v12;
    v10 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v13 = 0;
    sub_2140A4DD4(&qword_280B30CB8);
    sub_2146DA1C8();
    sub_2140A4E24(v14, v16);
    v13 = 1;
    sub_2142FCE0C();
    sub_2146DA148();
    (*(v9 + 8))(v7, v4);
    v30 = v14[0];
    v31 = v14[1];
    v32 = v15;
    sub_214644D3C(v16, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214644D0C(v16);
}

uint64_t sub_214644DA4(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v10 = *(v2 + 80);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 72);

    *(v2 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214644EE0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214644F78(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

uint64_t sub_214645018@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = sub_213FB7994;
  v16[3] = 0;
  v16[4] = 10;
  v16[5] = sub_21403C354;
  v16[6] = 0;
  *(v15 + 16) = sub_2146452D4;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214044818(inited, a7 + 56);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  sub_21402D9F8(a1, a2);
  sub_21402D9F8(a3, a4);
  sub_21402D9F8(a5, a6);
  v17 = MEMORY[0x277D84F90];
  *(a7 + 48) = sub_214046C88(MEMORY[0x277D84F90]);
  v18 = sub_214046D9C(v17);
  v26 = v18;
  v19 = *(a7 + 56);
  v20 = *(a7 + 64);
  v25 = *(a7 + 80);
  v24[0] = 0x6E776F6E6B6E753CLL;
  v24[1] = 0xE90000000000003ELL;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  if (v19(&v26, &v25, v24))
  {
    v21 = *(a7 + 72);

    *(a7 + 72) = v18;

    sub_213FB54FC(a5, a6);
    sub_213FB54FC(a3, a4);
    sub_213FB54FC(a1, a2);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0x6E776F6E6B6E753CLL;
    v23[1] = 0xE90000000000003ELL;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_2146452E0()
{
  result = qword_27C9175C8;
  if (!qword_27C9175C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175C8);
  }

  return result;
}

unint64_t sub_214645338()
{
  result = qword_27C9175D0;
  if (!qword_27C9175D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175D0);
  }

  return result;
}

unint64_t sub_21464538C(uint64_t a1)
{
  result = sub_2146453B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2146453B4()
{
  result = qword_27C9175D8;
  if (!qword_27C9175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175D8);
  }

  return result;
}

unint64_t sub_214645408(uint64_t a1)
{
  *(a1 + 8) = sub_214645438();
  result = sub_21464548C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214645438()
{
  result = qword_27C9175E0;
  if (!qword_27C9175E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175E0);
  }

  return result;
}

unint64_t sub_21464548C()
{
  result = qword_27C9175E8;
  if (!qword_27C9175E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175E8);
  }

  return result;
}

uint64_t sub_2146454E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214645528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146455D4()
{
  result = qword_27C9175F0;
  if (!qword_27C9175F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175F0);
  }

  return result;
}

unint64_t sub_21464562C()
{
  result = qword_27C9175F8;
  if (!qword_27C9175F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9175F8);
  }

  return result;
}

unint64_t sub_214645684()
{
  result = qword_27C917600;
  if (!qword_27C917600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917600);
  }

  return result;
}

unint64_t sub_2146456DC()
{
  result = qword_27C917608;
  if (!qword_27C917608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917608);
  }

  return result;
}

unint64_t sub_214645734()
{
  result = qword_27C917610;
  if (!qword_27C917610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917610);
  }

  return result;
}

unint64_t sub_21464578C()
{
  result = qword_27C917618;
  if (!qword_27C917618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917618);
  }

  return result;
}

uint64_t sub_2146457E0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v60 = sub_2146D8E38();
  v58 = *(v60 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 12);
  v81 = *(v1 + 13);
  v7 = *(v1 + 15);
  v82 = *(v1 + 14);
  v83 = v7;
  v8 = *(v1 + 11);
  v78 = *(v1 + 10);
  v9 = *v1;
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v12 = *(v1 + 8);
  v14 = *(v1 + 12);
  v13 = *(v1 + 13);
  LODWORD(v5) = v1[114];
  v62 = v1[113];
  v63 = v5;
  v79 = v8;
  v15 = *(v1 + 17);
  v16 = v1[144];
  v64 = v1[145];
  v65 = v16;
  v17 = *(v1 + 19);
  v84 = *(v1 + 32);
  v80 = v6;
  v18 = *(v1 + 35);
  v66 = v17;
  v67 = v18;
  memcpy(v85, v1 + 296, 0xB81uLL);
  v59 = *(v1 + 408);
  v68 = *(v1 + 409);
  v61 = *(v1 + 413);
  v19 = v1[3312];
  v69 = v1[3313];
  v70 = v19;
  *(&v77[1] + 1) = MEMORY[0x277D83B88];
  *&v77[0] = v9;
  sub_213FDC730(v77, v76);
  v20 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v20;
  sub_2140524DC(v76, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (!v10)
  {
    goto LABEL_21;
  }

  v22 = *v75;
  v9 = MEMORY[0x277D837D0];
  *(&v77[1] + 1) = MEMORY[0x277D837D0];
  *&v77[0] = v11;
  *(&v77[0] + 1) = v10;
  sub_213FDC730(v77, v76);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v22;
  sub_2140524DC(v76, 0xD000000000000012, 0x80000002147A6290, v23);
  if (!v12)
  {
    goto LABEL_21;
  }

  v24 = *v75;
  *(&v77[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v77[0] = v12;
  sub_213FDC730(v77, v76);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v24;
  sub_2140524DC(v76, 0xD000000000000017, 0x80000002147A62B0, v25);
  if (!v13)
  {
    goto LABEL_21;
  }

  v26 = *v75;
  *(&v77[1] + 1) = v9;
  *&v77[0] = v14;
  *(&v77[0] + 1) = v13;
  sub_213FDC730(v77, v76);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v26;
  sub_2140524DC(v76, 115, 0xE100000000000000, v27);
  v28 = *v75;
  v29 = MEMORY[0x277D839B0];
  *(&v77[1] + 1) = MEMORY[0x277D839B0];
  LOBYTE(v77[0]) = v62;
  sub_213FDC730(v77, v76);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v28;
  sub_2140524DC(v76, 0xD000000000000010, 0x80000002147A62D0, v30);
  v31 = *v75;
  if (v63 != 2)
  {
    *(&v77[1] + 1) = v29;
    LOBYTE(v77[0]) = v63 & 1;
    sub_213FDC730(v77, v76);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v75 = v31;
    sub_2140524DC(v76, 0xD000000000000011, 0x80000002147A6370, v32);
    v31 = *v75;
  }

  if (v64)
  {
    goto LABEL_21;
  }

  if ((v65 & 1) == 0)
  {
    *(&v77[1] + 1) = MEMORY[0x277D839F8];
    *&v77[0] = v15;
    sub_213FDC730(v77, v76);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *v75 = v31;
    sub_2140524DC(v76, 7627363, 0xE300000000000000, v33);
    v31 = *v75;
  }

  *(&v77[1] + 1) = MEMORY[0x277D84D38];
  *&v77[0] = v66;
  sub_213FDC730(v77, v76);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v31;
  sub_2140524DC(v76, 0xD000000000000012, 0x80000002147A62F0, v34);
  v35 = *v75;
  v36 = sub_2146D87D8();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v77[4] = v82;
  v77[5] = v83;
  *&v77[6] = v84;
  v77[0] = v78;
  v77[1] = v79;
  v77[2] = v80;
  v77[3] = v81;
  sub_2146479C8();
  v39 = sub_2146D87A8();
  v41 = v40;

  v42 = MEMORY[0x277CC9318];
  *(&v77[1] + 1) = MEMORY[0x277CC9318];
  *&v77[0] = v39;
  *(&v77[0] + 1) = v41;
  sub_213FDC730(v77, v76);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v35;
  sub_2140524DC(v76, 0xD000000000000014, 0x80000002147A6310, v43);
  v44 = *v75;
  v45 = v67;
  if (v67)
  {
    if (v67 == 1)
    {
LABEL_21:
      sub_2146DA018();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      (*(v58 + 8))(v14, v60);
      sub_214648D0C(v9, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    *(&v77[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907260, &qword_2146F4990);
    *&v77[0] = v45;
    sub_213FDC730(v77, v76);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v75 = v44;
    sub_2140524DC(v76, 0xD000000000000019, 0x80000002147A6350, v46);
    v44 = *v75;
  }

  memcpy(v76, v85, 0xB81uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v76) != 1)
  {
    v47 = memcpy(v77, v76, 0xB81uLL);
    MEMORY[0x28223BE20](v47);
    memcpy(v75, v85, sizeof(v75));
    sub_2142E8A8C(v75, &v73);
    sub_214648CC4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v9 = v56;
    sub_2146D9018();
    v14 = v57;
    sub_2146D8E28();
    v48 = MEMORY[0x277CC9318];
    sub_2146D8FE8();
    (*(v58 + 8))(v14, v60);
    sub_214648D0C(v9, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v74 = v48;
    v73 = v72[0];
    sub_213FDC730(&v73, v72);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v44;
    sub_2140524DC(v72, 0xD000000000000017, 0x80000002147A6330, v49);
    sub_213FB2DF4(v85, &qword_27C907278, &qword_2146F49A0);
    v44 = v71;
  }

  v50 = v68;
  if (v68 >> 60 == 11)
  {
    goto LABEL_21;
  }

  if (v68 >> 60 != 15)
  {
    *&v75[24] = v42;
    v51 = v59;
    *v75 = v59;
    *&v75[8] = v68;
    sub_213FDC730(v75, &v73);
    sub_21404F7E0(v51, v50);
    sub_213FDCA18(v51, v50);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v44;
    sub_2140524DC(&v73, 0x6B706D7472, 0xE500000000000000, v52);
    sub_214032564(v51, v50);
    v44 = *&v72[0];
  }

  if (v69)
  {
    goto LABEL_21;
  }

  if ((v70 & 1) == 0)
  {
    *&v75[24] = MEMORY[0x277D83B88];
    *v75 = v61;
    sub_213FDC730(v75, &v73);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v72[0] = v44;
    sub_2140524DC(&v73, 0x6D77706D7472, 0xE600000000000000, v53);
    return *&v72[0];
  }

  return v44;
}

uint64_t sub_2146461DC()
{
  v1 = sub_2146D8E38();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v1);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v54 = *(v0 + 4);
  v53 = *(v0 + 1);
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 14);
  v12 = *(v0 + 16);
  v13 = v0[136];
  v14 = v0[137];
  v15 = *(v0 + 20);
  v52 = v0[168];
  v16 = v0[169];
  v50 = v13;
  v51 = v16;
  v58 = MEMORY[0x277D83B88];
  *&v57 = v6;
  sub_213FDC730(&v57, v56);
  v17 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v17;
  sub_2140524DC(v56, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (!v8)
  {
    goto LABEL_13;
  }

  v19 = v59;
  v20 = MEMORY[0x277D837D0];
  v58 = MEMORY[0x277D837D0];
  *&v57 = v7;
  *(&v57 + 1) = v8;
  sub_213FDC730(&v57, v56);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v19;
  sub_2140524DC(v56, 115, 0xE100000000000000, v21);
  v22 = v55;
  v59 = v55;
  if (!v10)
  {
    goto LABEL_13;
  }

  v58 = v20;
  *&v57 = v9;
  *(&v57 + 1) = v10;
  sub_213FDC730(&v57, v56);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v22;
  sub_2140524DC(v56, 0xD000000000000012, 0x80000002147A6290, v23);
  if (!v11)
  {
    goto LABEL_13;
  }

  v24 = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v57 = v11;
  sub_213FDC730(&v57, v56);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v24;
  sub_2140524DC(v56, 0xD000000000000017, 0x80000002147A62B0, v25);
  v26 = v55;
  v58 = MEMORY[0x277D84D38];
  *&v57 = v12;
  sub_213FDC730(&v57, v56);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v26;
  sub_2140524DC(v56, 0xD000000000000012, 0x80000002147A62F0, v27);
  v28 = v55;
  v29 = MEMORY[0x277D839B0];
  v58 = MEMORY[0x277D839B0];
  LOBYTE(v57) = v50;
  sub_213FDC730(&v57, v56);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v28;
  sub_2140524DC(v56, 0xD000000000000010, 0x80000002147A62D0, v30);
  v31 = v55;
  v59 = v55;
  v9 = "uri-to-participant-id-key";
  if (v14 == 2)
  {
    sub_2144AEF6C(0xD000000000000011, 0x80000002147A6370, &v57);
    v32 = sub_213FB2DF4(&v57, &qword_27C913170, &qword_2146EAB20);
  }

  else
  {
    v58 = v29;
    LOBYTE(v57) = v14 & 1;
    sub_213FDC730(&v57, v56);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v31;
    v32 = sub_2140524DC(v56, 0xD000000000000011, 0x80000002147A6370, v33);
    v59 = v55;
  }

  if ((v51 & 1) == 0)
  {
    v34 = v53 | (v54 << 32);
    if ((v52 & 1) == 0)
    {
      v58 = MEMORY[0x277D839F8];
      *&v57 = v15;
      sub_213FDC730(&v57, v56);
      v35 = v59;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v35;
      v32 = sub_2140524DC(v56, 7627363, 0xE300000000000000, v36);
      v59 = v55;
    }

    if ((v34 & 0xFF0000000000) == 0x50000000000)
    {
      return v59;
    }

    else
    {
      MEMORY[0x28223BE20](v32);
      sub_214648CC4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
      v38 = v46;
      sub_2146D9018();
      v39 = v38;
      v40 = v47;
      sub_2146D8E28();
      v41 = MEMORY[0x277CC9318];
      sub_2146D8FE8();
      (*(v48 + 8))(v40, v49);
      sub_214648D0C(v39, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
      v58 = v41;
      sub_213FDC730(&v57, v56);
      v42 = v59;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v42;
      sub_2140524DC(v56, 0xD000000000000017, 0x80000002147A6330, v43);
      return v55;
    }
  }

  else
  {
LABEL_13:
    sub_2146DA018();
    __break(1u);
    (*(v48 + 8))(v14, v49);
    sub_214648D0C(v9, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_214646870(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_2146D8E38();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v10 = *(v2 + 3);
  v9 = *(v2 + 4);
  v11 = *(v2 + 8);
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v54 = v2[113];
  v14 = *(v2 + 31);
  v55 = *(v2 + 15);
  v56 = v14;
  memcpy(v64, v2 + 264, 0xB81uLL);
  v15 = "ession+Bridging.swift";
  *&v63[24] = MEMORY[0x277D83B88];
  *v63 = v8;
  sub_213FDC730(v63, v62);
  v16 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v16;
  sub_2140524DC(v62, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (!v9)
  {
    goto LABEL_10;
  }

  v18 = v61[0];
  v15 = MEMORY[0x277D837D0];
  *&v63[24] = MEMORY[0x277D837D0];
  *v63 = v10;
  *&v63[8] = v9;
  sub_213FDC730(v63, v62);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v18;
  sub_2140524DC(v62, 0xD000000000000012, 0x80000002147A6290, v19);
  if (!v11)
  {
    goto LABEL_10;
  }

  v20 = v61[0];
  *&v63[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *v63 = v11;
  sub_213FDC730(v63, v62);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v20;
  sub_2140524DC(v62, 0xD000000000000017, 0x80000002147A62B0, v21);
  if (!v13)
  {
    goto LABEL_10;
  }

  v22 = v61[0];
  *&v63[24] = v15;
  *v63 = v12;
  *&v63[8] = v13;
  sub_213FDC730(v63, v62);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v22;
  sub_2140524DC(v62, 115, 0xE100000000000000, v23);
  v24 = v61[0];
  *&v63[24] = MEMORY[0x277D839B0];
  v63[0] = v54;
  sub_213FDC730(v63, v62);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v24;
  sub_2140524DC(v62, 0xD000000000000010, 0x80000002147A62D0, v25);
  v26 = v61[0];
  *&v63[24] = MEMORY[0x277D84D38];
  *v63 = v55;
  sub_213FDC730(v63, v62);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v26;
  sub_2140524DC(v62, 0xD000000000000012, 0x80000002147A62F0, v27);
  v28 = v61[0];
  v29 = sub_2146D87D8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v32 = *(v2 + 13);
  *&v63[64] = *(v2 + 12);
  *&v63[80] = v32;
  *&v63[96] = *(v2 + 28);
  v33 = *(v2 + 9);
  *v63 = *(v2 + 8);
  *&v63[16] = v33;
  v34 = *(v2 + 11);
  *&v63[32] = *(v2 + 10);
  *&v63[48] = v34;
  sub_2146479C8();
  v35 = sub_2146D87A8();
  v37 = v36;

  *&v63[24] = MEMORY[0x277CC9318];
  v15 = "participant-id-key";
  *v63 = v35;
  *&v63[8] = v37;
  sub_213FDC730(v63, v62);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v28;
  sub_2140524DC(v62, 0xD000000000000014, 0x80000002147A6310, v38);
  v39 = v61[0];
  v40 = v56;
  if (v56)
  {
    if (v56 != 1)
    {
      *&v63[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907260, &qword_2146F4990);
      *v63 = v40;
      sub_213FDC730(v63, v62);

      v41 = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v39;
      sub_2140524DC(v62, 0xD000000000000019, 0x80000002147A6350, v41);
      v39 = v61[0];
      goto LABEL_7;
    }

LABEL_10:
    sub_2146DA018();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    (*(v52 + 8))(v15, v53);
    sub_214648D0C(v12, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_7:
  memcpy(v62, v64, 0xB81uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v62) != 1)
  {
    v42 = memcpy(v63, v62, sizeof(v63));
    MEMORY[0x28223BE20](v42);
    memcpy(v61, v64, 0xB81uLL);
    sub_2142E8A8C(v61, &v59);
    sub_214648CC4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v43 = v50;
    sub_2146D9018();
    v44 = v51;
    sub_2146D8E28();
    v45 = MEMORY[0x277CC9318];
    sub_2146D8FE8();
    (*(v52 + 8))(v44, v53);
    sub_214648D0C(v43, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v60 = v45;
    v59 = v58[0];
    sub_213FDC730(&v59, v58);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v39;
    sub_2140524DC(v58, 0xD000000000000017, 0x80000002147A6330, v46);
    sub_213FB2DF4(v64, &qword_27C907278, &qword_2146F49A0);
    return v57;
  }

  return v39;
}

uint64_t sub_214647040()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 105);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v18 = MEMORY[0x277D837D0];
  *&v17 = v2;
  *(&v17 + 1) = v1;
  sub_213FDC730(&v17, v16);

  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0xD000000000000012, 0x80000002147A6290, isUniquelyReferenced_nonNull_native);
  if (v4 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v18 = MEMORY[0x277CC9318];
  *&v17 = v3;
  *(&v17 + 1) = v4;
  sub_213FDC730(&v17, v16);
  sub_21402D9F8(v3, v4);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0x6B706D7472, 0xE500000000000000, v12);
  if (v7)
  {
    goto LABEL_8;
  }

  if ((v6 & 1) == 0)
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v5;
    sub_213FDC730(&v17, v16);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0x6D77706D7472, 0xE600000000000000, v13);
  }

  if (!v8)
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D837D0];
    *&v17 = v9;
    *(&v17 + 1) = v8;
    sub_213FDC730(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 115, 0xE100000000000000, v14);
    return v10;
  }

  return result;
}

uint64_t sub_21464724C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 128);
  v7 = *(v0 + 256);
  v78 = *(v0 + 240);
  v79[0] = v7;
  *(v79 + 15) = *(v0 + 271);
  v8 = *(v0 + 192);
  v74 = *(v0 + 176);
  v75 = v8;
  v9 = *(v0 + 224);
  v76 = *(v0 + 208);
  v77 = v9;
  v10 = *(v0 + 160);
  v72 = *(v0 + 144);
  v73 = v10;
  v11 = *(v0 + 392);
  v86 = *(v0 + 376);
  v87[0] = v11;
  *(v87 + 15) = *(v0 + 407);
  v12 = *(v0 + 328);
  v82 = *(v0 + 312);
  v83 = v12;
  v13 = *(v0 + 360);
  v84 = *(v0 + 344);
  v85 = v13;
  v14 = *(v0 + 296);
  v80 = *(v0 + 280);
  v81 = v14;
  if (!v2)
  {
    goto LABEL_18;
  }

  v15 = MEMORY[0x277D837D0];
  *(&v63 + 1) = MEMORY[0x277D837D0];
  *&v62 = v1;
  *(&v62 + 1) = v2;
  sub_213FDC730(&v62, &v54);

  v16 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v16;
  sub_2140524DC(&v54, 0xD000000000000012, 0x80000002147A6290, isUniquelyReferenced_nonNull_native);
  if (!v3)
  {
    goto LABEL_18;
  }

  *(&v63 + 1) = v15;
  *&v62 = v4;
  *(&v62 + 1) = v3;
  sub_213FDC730(&v62, &v54);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v54, 115, 0xE100000000000000, v18);
  v19 = v46;
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_18:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v20 = *(v5 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      *&v54 = MEMORY[0x277D84F90];

      sub_2140A0040(0, v20, 0);
      v21 = v54;
      v22 = (v5 + 32);
      do
      {
        v67 = v22[5];
        v68 = v22[6];
        v69[0] = v22[7];
        *(v69 + 15) = *(v22 + 127);
        v63 = v22[1];
        v64 = v22[2];
        v65 = v22[3];
        v66 = v22[4];
        v62 = *v22;
        v23 = sub_2146485D4();
        *&v54 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          v26 = v23;
          sub_2140A0040((v24 > 1), v25 + 1, 1);
          v23 = v26;
          v21 = v54;
        }

        *(v21 + 16) = v25 + 1;
        *(v21 + 8 * v25 + 32) = v23;
        v22 = (v22 + 136);
        --v20;
      }

      while (v20);
      sub_21403261C(v5);
    }

    *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
    *&v62 = v21;
    sub_213FDC730(&v62, &v54);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v19;
    sub_2140524DC(&v54, 0x6D6B6D6C6C617472, 0xE800000000000000, v27);
  }

  if (!v6)
  {
    goto LABEL_18;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v70 = v6;
  sub_213FDC730(&v70, &v62);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v54 = v19;
  sub_2140524DC(&v62, 0x6D6B6D6C6C617472, 0xEB00000000697275, v28);
  v29 = v54;
  v68 = v78;
  v69[0] = v79[0];
  *(v69 + 15) = *(v79 + 15);
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v62 = v72;
  v63 = v73;
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v62) != 1)
  {
    v52 = v68;
    v53[0] = v69[0];
    *(v53 + 15) = *(v69 + 15);
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v46 = v62;
    v47 = v63;
    v60 = v78;
    v61[0] = v79[0];
    *(v61 + 15) = *(v79 + 15);
    v56 = v74;
    v57 = v75;
    v58 = v76;
    v59 = v77;
    v54 = v72;
    v55 = v73;
    sub_2142F30BC(&v54, &v38);
    v30 = sub_2146485D4();
    *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v38 = v30;
    sub_213FDC730(&v38, &v36);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = v29;
    sub_2140524DC(&v36, 0x6D6B6D7472, 0xE500000000000000, v31);
    sub_213FB2DF4(&v72, &qword_27C907388, &qword_2147519C0);
  }

  v60 = v86;
  v61[0] = v87[0];
  *(v61 + 15) = *(v87 + 15);
  v56 = v82;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  v54 = v80;
  v55 = v81;
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v54) != 1)
  {
    v44 = v60;
    v45[0] = v61[0];
    *(v45 + 15) = *(v61 + 15);
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v38 = v54;
    v39 = v55;
    v52 = v86;
    v53[0] = v87[0];
    *(v53 + 15) = *(v87 + 15);
    v48 = v82;
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v46 = v80;
    v47 = v81;
    sub_2142F30BC(&v46, &v36);
    v32 = sub_2146485D4();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v36 = v32;
    sub_213FDC730(&v36, v35);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v35, 0x6D6B737472, 0xE500000000000000, v33);
    sub_213FB2DF4(&v80, &qword_27C907388, &qword_2147519C0);
  }

  return v29;
}

uint64_t sub_214647800()
{
  v1 = sub_2146D87D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v13 = v0[4];
  v14 = v0[5];
  v15 = *(v0 + 12);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  sub_2146479C8();
  v4 = sub_2146D87A8();
  v6 = v5;

  v7 = sub_2146D8A38();
  sub_213FB54FC(v4, v6);
  return v7;
}

uint64_t sub_2146478E4()
{
  v1 = sub_2146D87D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v13 = v0[4];
  v14 = v0[5];
  v15 = *(v0 + 12);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  sub_2146479C8();
  v4 = sub_2146D87A8();
  v6 = v5;

  v7 = sub_2146D8A38();
  sub_213FB54FC(v4, v6);
  return v7;
}

unint64_t sub_2146479C8()
{
  result = qword_27C917620;
  if (!qword_27C917620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917620);
  }

  return result;
}

uint64_t sub_214647A1C(uint64_t a1)
{
  sub_2146457E0(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647A70(uint64_t a1)
{
  sub_2146457E0(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647AC4()
{
  sub_2146461DC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647B18()
{
  sub_2146461DC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647B6C()
{
  sub_2146485D4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t KeyMaterial.bridgedToObjectiveC.getter()
{
  sub_2146485D4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647C14()
{
  sub_21464724C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647C68()
{
  sub_21464724C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647CBC()
{
  sub_214647040();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647D10()
{
  sub_214647040();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647D64(uint64_t a1)
{
  sub_214646870(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647DB8(uint64_t a1)
{
  sub_214646870(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647E18()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214647EF4()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214647FBC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214648094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214648C78();
  *a2 = result;
  return result;
}

void sub_2146480C4(unint64_t *a1@<X8>)
{
  v2 = 7221858;
  v3 = *v1;
  v4 = 0xE300000000000000;
  if (v3 != 3)
  {
    v2 = 7811682;
    v4 = 0xE300000000000000;
  }

  if (v3 == 2)
  {
    v2 = 0xD000000000000023;
    v4 = 0x80000002147884A0;
  }

  v5 = 0xD00000000000001BLL;
  v6 = 0x8000000214788450;
  if (*v1)
  {
    v5 = 0xD000000000000020;
    v6 = 0x8000000214788470;
  }

  if (*v1 > 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v5;
    v7 = v6;
  }

  *a1 = v2;
  a1[1] = v7;
}

unint64_t sub_21464815C()
{
  v1 = 7221858;
  v2 = *v0;
  if (v2 != 3)
  {
    v1 = 7811682;
  }

  if (v2 == 2)
  {
    v1 = 0xD000000000000023;
  }

  v3 = 0xD00000000000001BLL;
  if (*v0)
  {
    v3 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2146481F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214648C78();
  *a1 = result;
  return result;
}

uint64_t sub_214648218(uint64_t a1)
{
  v2 = sub_214648AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214648254(uint64_t a1)
{
  v2 = sub_214648AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214648290(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917628, &qword_214772510);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v20 = v1[6];
  v21 = v9;
  v10 = v1[7];
  v18 = v1[8];
  v19 = v10;
  v12 = v1[9];
  v11 = v1[10];
  v13 = v1[12];
  v23 = v1[11];
  v24 = v11;
  v22 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214648AFC();
  sub_2146DAA28();
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v27) = 0;

    v15 = v25;
    sub_2146DA2B8();
    if (v15)
    {
      (*(v26 + 8))(v6, v3);
      return sub_213FDC6D0(v7, v8);
    }

    else
    {
      sub_213FDC6D0(v7, v8);
      v27 = v12;
      v28 = v24;
      v29 = 3;
      sub_213FDCA18(v12, v24);
      sub_214061684();
      sub_2146DA308();
      sub_213FDC6BC(v27, v28);
      v27 = v23;
      v28 = v22;
      v29 = 4;
      sub_213FDCA18(v23, v22);
      sub_2146DA308();
      sub_213FDC6BC(v27, v28);
      v27 = v21;
      v28 = v20;
      v29 = 1;
      sub_213FDCA18(v21, v20);
      sub_2146DA308();
      sub_213FDC6BC(v27, v28);
      v27 = v19;
      v28 = v18;
      v29 = 2;
      sub_213FDCA18(v19, v18);
      sub_2146DA308();
      sub_213FDC6BC(v27, v28);
      return (*(v26 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2146485D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 84);
  v36 = *(v0 + 113);
  v37 = *(v0 + 112);
  v33 = *(v0 + 104);
  v34 = *(v0 + 120);
  v35 = *(v0 + 129);
  v38 = *(v0 + 128);
  v39 = *(v0 + 130);
  if (*v0)
  {
    if (v2 >> 60 != 15)
    {
      v9 = MEMORY[0x277CC9318];
      v43 = MEMORY[0x277CC9318];
      *&v42 = v1;
      *(&v42 + 1) = v2;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v1, v2);
      v10 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v10;
      sub_2140524DC(v41, 6908787, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      v12 = v44;
      v43 = v9;
      *&v42 = v4;
      *(&v42 + 1) = v3;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v4, v3);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v12;
      sub_2140524DC(v41, 7170931, 0xE300000000000000, v13);
      v14 = v44;
      v43 = v9;
      *&v42 = v6;
      *(&v42 + 1) = v5;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v6, v5);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v41, 7564147, 0xE300000000000000, v15);
      v44 = v14;
      if (v8)
      {
        sub_2144AEF6C(1667722099, 0xE400000000000000, &v42);
        v16 = &v42;
LABEL_8:
        sub_213FB2DF4(v16, &qword_27C913170, &qword_2146EAB20);
        goto LABEL_12;
      }

      v43 = MEMORY[0x277D84CC0];
      LODWORD(v42) = v7;
      sub_213FDC730(&v42, v41);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      v25 = 1667722099;
      goto LABEL_11;
    }

LABEL_21:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v2 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v17 = MEMORY[0x277CC9318];
  v43 = MEMORY[0x277CC9318];
  *&v42 = v1;
  *(&v42 + 1) = v2;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v1, v2);
  v18 = MEMORY[0x277D84F98];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v18;
  sub_2140524DC(v41, 6908781, 0xE300000000000000, v19);
  v20 = v44;
  v43 = v17;
  *&v42 = v4;
  *(&v42 + 1) = v3;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v4, v3);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v20;
  sub_2140524DC(v41, 7170925, 0xE300000000000000, v21);
  v22 = v44;
  v43 = v17;
  *&v42 = v6;
  *(&v42 + 1) = v5;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v6, v5);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 7564141, 0xE300000000000000, v23);
  v44 = v22;
  if (v8)
  {
    sub_2144AEF6C(1667722093, 0xE400000000000000, v41);
    v16 = v41;
    goto LABEL_8;
  }

  v43 = MEMORY[0x277D84CC0];
  LODWORD(v42) = v7;
  sub_213FDC730(&v42, v41);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v22;
  v25 = 1667722093;
LABEL_11:
  sub_2140524DC(v41, v25, 0xE400000000000000, v24);
  v44 = v40;
LABEL_12:
  if (v36)
  {
    goto LABEL_21;
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v43 = MEMORY[0x277D83B88];
    *&v42 = v33;
    sub_213FDC730(&v42, v41);
    v27 = v44;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v41, 0x6D77706D7472, 0xE600000000000000, v28);
    v44 = v27;
    if (v38)
    {
LABEL_15:
      if (v39)
      {
        return v44;
      }

      goto LABEL_19;
    }
  }

  v43 = MEMORY[0x277D84D38];
  *&v42 = v34;
  sub_213FDC730(&v42, v41);
  v29 = v44;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 0x7069636974726170, 0xED00004449746E61, v30);
  v44 = v29;
  if (v39)
  {
    return v44;
  }

LABEL_19:
  v43 = MEMORY[0x277D84B78];
  LOBYTE(v42) = v35;
  sub_213FDC730(&v42, v41);
  v31 = v44;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 0x6C696B6D73, 0xE500000000000000, v32);
  return v31;
}

unint64_t sub_214648AFC()
{
  result = qword_27C917630;
  if (!qword_27C917630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917630);
  }

  return result;
}

unint64_t sub_214648B74()
{
  result = qword_27C917638;
  if (!qword_27C917638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917638);
  }

  return result;
}

unint64_t sub_214648BCC()
{
  result = qword_27C917640;
  if (!qword_27C917640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917640);
  }

  return result;
}

unint64_t sub_214648C24()
{
  result = qword_27C917648;
  if (!qword_27C917648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917648);
  }

  return result;
}

uint64_t sub_214648C78()
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

uint64_t sub_214648CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214648D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PreviewImage.image.getter@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_214648EBC()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x7865646E69;
  v4 = 0x746E756F4378616DLL;
  if (v1 != 3)
  {
    v4 = 0x49696A6F6D457369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_214648F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21464AD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214648F84(uint64_t a1)
{
  v2 = sub_214649208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214648FC0(uint64_t a1)
{
  v2 = sub_214649208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewImage.Constraints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917650, &qword_2147726C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15 = v1[3];
  v16 = v11;
  v14[1] = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649208();
  sub_2146DAA28();
  v21 = 0;
  sub_2146DA368();
  if (!v2)
  {
    v20 = 1;
    sub_2146DA348();
    v19 = 2;
    sub_2146DA368();
    v18 = 3;
    sub_2146DA368();
    v17 = 4;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_214649208()
{
  result = qword_280B32358;
  if (!qword_280B32358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32358);
  }

  return result;
}

uint64_t PreviewImage.Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917658, &qword_2147726D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649208();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = 0;
    v11 = sub_2146DA1A8();
    v24 = 1;
    sub_2146DA188();
    v13 = v12;
    v23 = 2;
    v14 = sub_2146DA1A8();
    v22 = 3;
    v20 = sub_2146DA1A8();
    v21 = 4;
    v19 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    v16 = v19 & 1;
    *a2 = v11;
    *(a2 + 8) = v13;
    v17 = v20;
    *(a2 + 16) = v14;
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 PreviewImage.image.setter(uint64_t a1)
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

void (*PreviewImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
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

void *PreviewImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*PreviewImage.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t PreviewImage.frameDuration.getter()
{
  result = *(v0 + 448);
  v2 = *(v0 + 456);
  return result;
}

uint64_t PreviewImage.frameDuration.setter(uint64_t result, char a2)
{
  *(v2 + 448) = result;
  *(v2 + 456) = a2 & 1;
  return result;
}

uint64_t PreviewImage.utTypeString.getter()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return v1;
}

uint64_t PreviewImage.utTypeString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 472);

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return result;
}

double PreviewImage.alignmentInset.getter()
{
  result = *(v0 + 488);
  v2 = *(v0 + 496);
  return result;
}

uint64_t sub_2146498E4()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x6B736F6E6F4D7369;
  if (v1 != 6)
  {
    v3 = 0x6E656D6E67696C61;
  }

  v4 = 0x4572656B63697473;
  if (v1 != 4)
  {
    v4 = 0x7453657079547475;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x727544656D617266;
  if (v1 != 2)
  {
    v5 = 0x6E65657263537369;
  }

  if (*v0)
  {
    v2 = 0x756F43656D617266;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214649A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21464AAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214649A48(uint64_t a1)
{
  v2 = sub_214649DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214649A84(uint64_t a1)
{
  v2 = sub_214649DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917660, &qword_2147726D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649DEC();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + 440);
    LOBYTE(v19) = 1;
    sub_2146DA368();
    v12 = *(v3 + 448);
    v13 = *(v3 + 456);
    LOBYTE(v19) = 2;
    sub_2146DA2D8();
    v14 = *(v3 + 457);
    LOBYTE(v19) = 3;
    sub_2146DA338();
    LOBYTE(v19) = *(v3 + 458);
    v20 = 4;
    sub_214097618();
    sub_2146DA388();
    v15 = *(v3 + 464);
    v16 = *(v3 + 472);
    LOBYTE(v19) = 5;
    sub_2146DA2B8();
    v17 = *(v3 + 480);
    LOBYTE(v19) = 6;
    sub_2146DA338();
    v19 = *(v3 + 488);
    v20 = 7;
    type metadata accessor for CGSize(0);
    sub_21464A290(&qword_280B2E368);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214649DEC()
{
  result = qword_280B32370[0];
  if (!qword_280B32370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B32370);
  }

  return result;
}

uint64_t PreviewImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917668, &qword_2147726E0);
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v15 - v6;
  LOWORD(v40[0]) = 0;
  sub_2140615D0(v40);
  v31 = v40[9];
  v32 = v40[10];
  v33 = v40[11];
  v27 = v40[5];
  v28 = v40[6];
  v29 = v40[7];
  v30 = v40[8];
  v23 = v40[1];
  v24 = v40[2];
  v25 = v40[3];
  v26 = v40[4];
  v22 = v40[0];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649DEC();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FB2DF4(v20, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v18 = 0;
    sub_2140A4DD4(&qword_280B30CB8);
    v10 = v41;
    sub_2146DA1C8();
    sub_2140A4E24(v19, v20);
    LOBYTE(v19[0]) = 1;
    v34 = sub_2146DA1A8();
    LOBYTE(v19[0]) = 2;
    v35 = sub_2146DA118();
    v16 = v36;
    v36[0] = v11 & 1;
    LOBYTE(v19[0]) = 3;
    v36[1] = sub_2146DA178() & 1;
    v18 = 4;
    sub_2140975C4();
    sub_2146DA1C8();
    v36[2] = v19[0];
    LOBYTE(v19[0]) = 5;
    v37 = sub_2146DA0F8();
    v38 = v12;
    LOBYTE(v19[0]) = 6;
    v39 = sub_2146DA178() & 1;
    type metadata accessor for CGSize(0);
    v18 = 7;
    sub_21464A290(&qword_280B30B88);
    sub_2146DA1C8();
    (*(v9 + 8))(v7, v10);
    v13 = v17;
    *(v16 + 2) = v19[0];
    sub_214592A08(v20, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_214592A64(v20);
  }
}

uint64_t sub_21464A290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 PreviewImage.init(image:frameCount:frameDuration:isScreenshot:stickerEffect:utTypeString:isMonoskiAsset:alignmentInset:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  v22 = *a6;
  LOWORD(v40[0]) = 0;
  sub_2140615D0(v40);
  v23 = v40[8];
  v24 = v40[10];
  v25 = v40[11];
  *(a9 + 392) = v40[9];
  *(a9 + 408) = v24;
  *(a9 + 424) = v25;
  v26 = v40[4];
  v27 = v40[6];
  v28 = v40[7];
  *(a9 + 328) = v40[5];
  *(a9 + 344) = v27;
  *(a9 + 360) = v28;
  *(a9 + 376) = v23;
  v29 = v40[1];
  *(a9 + 248) = v40[0];
  v30 = v40[2];
  v31 = v40[3];
  *(a9 + 264) = v29;
  *(a9 + 280) = v30;
  *(a9 + 296) = v31;
  *(a9 + 312) = v26;
  *(a9 + 240) = 0;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  *(a9 + 440) = a2;
  *(a9 + 448) = a3;
  *(a9 + 456) = a4 & 1;
  *(a9 + 457) = a5;
  *(a9 + 464) = a7;
  *(a9 + 472) = a8;
  *(a9 + 458) = v22;
  *(a9 + 480) = a12;
  *(a9 + 488) = a10;
  *(a9 + 496) = a11;
  sub_213FB2DF4(a9, &qword_27C904858, &qword_214736F00);
  v32 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v32;
  *(a9 + 224) = *(a1 + 224);
  *(a9 + 240) = *(a1 + 240);
  v33 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v33;
  v34 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v34;
  v35 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v35;
  v36 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v36;
  v37 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v37;
  result = *(a1 + 32);
  v39 = *(a1 + 48);
  *(a9 + 32) = result;
  *(a9 + 48) = v39;
  return result;
}

void __swiftcall PreviewImage.Constraints.init(maxPixelDimension:scaleFactor:index:maxCount:isEmojiImage:)(BlastDoor::PreviewImage::Constraints *__return_ptr retstr, Swift::Int maxPixelDimension, Swift::Double scaleFactor, Swift::Int index, Swift::Int maxCount, Swift::Bool isEmojiImage)
{
  retstr->maxPixelDimension = maxPixelDimension;
  retstr->scale = scaleFactor;
  retstr->index = index;
  retstr->maxCount = maxCount;
  retstr->isEmojiImage = isEmojiImage;
}

unint64_t sub_21464A49C()
{
  result = qword_280B32338;
  if (!qword_280B32338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32338);
  }

  return result;
}

unint64_t sub_21464A4F4()
{
  result = qword_280B32340;
  if (!qword_280B32340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32340);
  }

  return result;
}

unint64_t sub_21464A548(uint64_t a1)
{
  result = sub_21464A570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21464A570()
{
  result = qword_280B32320;
  if (!qword_280B32320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32320);
  }

  return result;
}

unint64_t sub_21464A5C4(uint64_t a1)
{
  *(a1 + 8) = sub_21464A5F4();
  result = sub_21464A648();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464A5F4()
{
  result = qword_280B32328;
  if (!qword_280B32328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32328);
  }

  return result;
}

unint64_t sub_21464A648()
{
  result = qword_280B32330;
  if (!qword_280B32330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32330);
  }

  return result;
}

uint64_t sub_21464A6A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
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

double sub_21464A6F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 504) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21464A7E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21464A83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21464A8B8()
{
  result = qword_27C917670;
  if (!qword_27C917670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917670);
  }

  return result;
}

unint64_t sub_21464A910()
{
  result = qword_27C917678;
  if (!qword_27C917678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917678);
  }

  return result;
}

unint64_t sub_21464A968()
{
  result = qword_280B32360;
  if (!qword_280B32360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32360);
  }

  return result;
}

unint64_t sub_21464A9C0()
{
  result = qword_280B32368;
  if (!qword_280B32368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32368);
  }

  return result;
}

unint64_t sub_21464AA18()
{
  result = qword_280B32348;
  if (!qword_280B32348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32348);
  }

  return result;
}

unint64_t sub_21464AA70()
{
  result = qword_280B32350;
  if (!qword_280B32350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B32350);
  }

  return result;
}

uint64_t sub_21464AAC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F43656D617266 && a2 == 0xEA0000000000746ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544656D617266 && a2 == 0xED00006E6F697461 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65657263537369 && a2 == 0xEC000000746F6873 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4572656B63697473 && a2 == 0xED00007463656666 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B736F6E6F4D7369 && a2 == 0xEE00746573734169 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xEE007465736E4974)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21464AD84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49696A6F6D457369 && a2 == 0xEC0000006567616DLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_21464AF3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if ((v3 & 1) == 0)
    {
      [v5 writeUint32:v2 forTag:2];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21464B03C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

id sub_21464B06C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if ((v3 & 1) == 0)
    {
      [v5 writeUint32:v2 forTag:2];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21464B11C(uint64_t a1@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(MEMORY[0x277D43170]);
  v3 = sub_2146D8A38();
  v4 = [v2 initWithData_];

  v5 = [v4 position];
  if (v5 >= [v4 length])
  {
LABEL_47:
    v31 = 1;
LABEL_48:
    sub_2140861C4();
    swift_allocError();
    *v32 = v31;
    swift_willThrow();
  }

  else
  {
    v34 = a1;
    LODWORD(v6) = 0;
    v35 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v36 = 0;
        v13 = [v4 position] + 1;
        if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
        {
          v15 = [v4 data];
          [v15 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v12 |= (v36 & 0x7F) << v10;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_18;
        }
      }

      if ([v4 hasError])
      {
        v17 = 0;
      }

      else
      {
        v17 = v12;
      }

LABEL_18:
      if ([v4 hasError])
      {
        v31 = 0;
        goto LABEL_48;
      }

      if ((v17 >> 3) == 1)
      {
        v25 = 0;
        v26 = 0;
        v6 = 0;
        while (1)
        {
          v37 = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v6 |= (v37 & 0x7F) << v25;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v24 = v26++ > 8;
          if (v24)
          {
            LODWORD(v6) = 0;
            v7 = 0;
            goto LABEL_4;
          }
        }

        v7 = 0;
        if ([v4 hasError])
        {
          LODWORD(v6) = 0;
        }
      }

      else if ((v17 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v38 = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v38 & 0x7F) << v18;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            v35 = 0;
            v8 = 0;
            goto LABEL_4;
          }
        }

        v8 = 0;
        v30 = [v4 hasError] ? 0 : v20;
        v35 = v30;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v9 = [v4 position];
    }

    while (v9 < [v4 length]);
    if (v7)
    {
      goto LABEL_47;
    }

    *v34 = v6;
    *(v34 + 4) = v35;
    *(v34 + 8) = v8 & 1;
  }

  v33 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21464B564(uint64_t a1)
{
  *(a1 + 8) = sub_2143206C4();
  result = sub_214320520();
  *(a1 + 16) = result;
  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for WalletRemoteRegistrationRequestResultMessage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

BlastDoor::ChangeEvent::Trigger_optional __swiftcall ChangeEvent.Trigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MentionEvent.mentionedPersonHandle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MentionEvent.mentionedPersonHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MentionEvent.mentionedPersonIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_2142EC784(v2, v3, v4, v5, v6);
}

__n128 MentionEvent.mentionedPersonIdentity.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2142EC728(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t MentionEvent.highlightURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MentionEvent(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MentionEvent.highlightURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MentionEvent(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_21464BAF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2146D8958();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21464BBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_2146D8958();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t sub_21464BC74@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a3;
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 5)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

unint64_t sub_21464BC90@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21464BE44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_21464BE74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_21464BECC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CollaborationNotice(0) + 24);

  return sub_21464BF30(v3, a1);
}

uint64_t sub_21464BF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationHighlightEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21464BFB4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollaborationNotice(0) + 24);

  return sub_21464BFF8(a1, v3);
}

uint64_t sub_21464BFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationHighlightEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21464C0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollaborationNotice(0) + 28);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21464C120(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationNotice(0) + 28);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_21464C1E8()
{
  result = qword_27C917680;
  if (!qword_27C917680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917680);
  }

  return result;
}

uint64_t sub_21464C268(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C870, type metadata accessor for ChangeEvent);
  result = sub_21464C2EC(&qword_27C90C840, type metadata accessor for ChangeEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C2EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21464C334(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C868, type metadata accessor for MentionEvent);
  result = sub_21464C2EC(&qword_27C90C838, type metadata accessor for MentionEvent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464C3BC()
{
  result = qword_27C917688;
  if (!qword_27C917688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917688);
  }

  return result;
}

uint64_t sub_21464C43C(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C860, type metadata accessor for MembershipEvent);
  result = sub_21464C2EC(&qword_27C90C830, type metadata accessor for MembershipEvent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464C4C4()
{
  result = qword_27C917690;
  if (!qword_27C917690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917690);
  }

  return result;
}

uint64_t sub_21464C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C580(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C858, type metadata accessor for PersistenceEvent);
  result = sub_21464C2EC(&qword_27C90C828, type metadata accessor for PersistenceEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C604(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C906648, type metadata accessor for CollaborationHighlightEvent);
  result = sub_21464C2EC(&qword_27C906658, type metadata accessor for CollaborationHighlightEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C688(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C917698, type metadata accessor for CollaborationNotice);
  result = sub_21464C2EC(&qword_27C9176A0, type metadata accessor for CollaborationNotice);
  *(a1 + 16) = result;
  return result;
}

void sub_21464C778()
{
  sub_21464C80C();
  if (v0 <= 0x3F)
  {
    sub_2146D8958();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21464C80C()
{
  if (!qword_280B2E978)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E978);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2146D8958();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_3(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_2146D8958();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21464CA18()
{
  result = sub_2146D8958();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21464CA9C()
{
  result = type metadata accessor for ChangeEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MentionEvent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MembershipEvent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PersistenceEvent(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_21464CB60()
{
  result = type metadata accessor for CollaborationHighlightEvent(319);
  if (v1 <= 0x3F)
  {
    result = sub_2146D8B08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21464CBFC()
{
  result = qword_27C9176A8;
  if (!qword_27C9176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176A8);
  }

  return result;
}

unint64_t sub_21464CC50()
{
  result = qword_27C9176B0;
  if (!qword_27C9176B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176B0);
  }

  return result;
}

unint64_t sub_21464CCA4()
{
  result = qword_27C9176B8;
  if (!qword_27C9176B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176B8);
  }

  return result;
}

unint64_t sub_21464CD1C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 100;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

__n128 sub_21464CE68@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 1;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0;
  }

  else
  {
    v8 = sub_2146D85C8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_21402D9F8(a1, a2);
    sub_2146D85B8();
    sub_21464CF74();
    sub_2146D8598();

    sub_213FDC6BC(a1, a2);
    sub_213FDC6BC(a1, a2);
    if (!v3)
    {
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
      *(a3 + 64) = v15;
      result = v12;
      *a3 = v11;
      *(a3 + 16) = v12;
    }
  }

  return result;
}

unint64_t sub_21464CF74()
{
  result = qword_27C9176C0;
  if (!qword_27C9176C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176C0);
  }

  return result;
}

uint64_t sub_21464D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464D05C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_21464D0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21464D140@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_21464D1A4()
{
  if (*v0)
  {
    result = 0x6574697277;
  }

  else
  {
    result = 1684104562;
  }

  *v0;
  return result;
}

uint64_t sub_21464D1D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

uint64_t sub_21464D234@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21464D290()
{
  result = 0x726566736E617274;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      return result;
    case 5:
      result = 0x726F707075736E75;
      break;
    case 6:
      result = 0x4964696C61766E69;
      break;
    case 7:
      result = 0x41657361426C696ELL;
      break;
    case 8:
      result = 0x6863617474416F6ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x64616552626F6FLL;
      break;
    case 0xB:
      result = 0x4864696C61766E69;
      break;
    case 0xC:
      result = 0x6574707572726F63;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_21464D458(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = sub_21464D290();
  v4 = v3;
  if (v2 == sub_21464D290() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_21464D4F4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21464D290();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21464D55C()
{
  v2 = *v0;
  sub_21464D290();
  sub_2146D9698();
}

uint64_t sub_21464D5C0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21464D290();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21464D624@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_21464D234(a1);
}

unint64_t sub_21464D630@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21464D290();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21464D67C()
{
  result = qword_27C9176C8;
  if (!qword_27C9176C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176C8);
  }

  return result;
}

unint64_t sub_21464D6D4()
{
  result = qword_27C9176D0;
  if (!qword_27C9176D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176D0);
  }

  return result;
}

uint64_t sub_21464D764@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

unint64_t sub_21464D784()
{
  result = qword_27C9176D8;
  if (!qword_27C9176D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176D8);
  }

  return result;
}

uint64_t sub_21464D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464D93C()
{
  result = qword_27C9176E0;
  if (!qword_27C9176E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9176E0);
  }

  return result;
}

unint64_t sub_21464D990(uint64_t a1)
{
  *(a1 + 8) = sub_21431E99C();
  result = sub_21431DE30();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21464D9FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_21464DA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21464DAC4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214741330;
  *(v4 + 16) = sub_214442A04;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E04E4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21464DFB4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_21404441C(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214741340;
  *(v11 + 16) = sub_214442A14;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142E04E4(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21464DFBC;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_21404441C(v9, a1 + 32);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 200;
  *(v18 + 16) = sub_214084D54;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142E0070(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_21403254C;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  sub_214042A28(v16, a1 + 64);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = 100;
  *(v26 + 24) = 0;
  *(v25 + 16) = sub_21406418C;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  v27 = sub_2142E0070(v24);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = sub_214032610;
  *(v28 + 24) = v29;
  *(v23 + 32) = v28;
  sub_214042A28(v23, a1 + 104);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  v32 = sub_214069764(&unk_282653CE0);
  v33 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v33 + 16) = sub_214059810;
  *(v33 + 24) = v34;
  *(v31 + 32) = v33;
  v35 = sub_2142E0070(v31);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v36 + 16) = sub_214032610;
  *(v36 + 24) = v37;
  *(v30 + 32) = v36;
  return sub_214042A28(v30, a1 + 144);
}

unint64_t sub_21464DFC0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21464E158@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21464E1B0(__n128 *a1)
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

uint64_t sub_21464E218@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 73);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E23C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[3].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  v1[4].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E294@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 105);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E2B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[5].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  v1[6].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E310@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 137);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E334(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[7].n128_u64[1];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  v1[8].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E38C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21464E3D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_u64[1];
  v7 = v1[10].n128_u64[1];

  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u64[1] = v4;
  v1[11].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21464E434@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21464E480(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 224);
  v7 = *(v1 + 240);

  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_21464E4DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  v5 = *(v1 + 297);
  v6 = *(v1 + 298);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21464E508(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[17].n128_u64[1];

  result = *a1;
  v1[17] = *a1;
  v1[18].n128_u64[0] = v3;
  v1[18].n128_u8[8] = v4;
  v1[18].n128_u8[9] = v5;
  v1[18].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21464E568@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 329);
  v6 = *(v1 + 330);
  *a1 = *(v1 + 304);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21464E594(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[19].n128_u64[1];

  result = *a1;
  v1[19] = *a1;
  v1[20].n128_u64[0] = v3;
  v1[20].n128_u8[8] = v4;
  v1[20].n128_u8[9] = v5;
  v1[20].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21464E5F4()
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

uint64_t sub_21464E674()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E6D8()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E73C()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E7A0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 160);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464E81C()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 232);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464E898()
{
  if (*(v0 + 297))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 288);
    v2 = *(v0 + 296) & 1;
  }

  return result;
}

uint64_t sub_21464E904()
{
  if (*(v0 + 329))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 320);
    v2 = *(v0 + 328) & 1;
  }

  return result;
}

uint64_t sub_21464E9A8(uint64_t a1, uint64_t a2)
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

void (*sub_21464EAEC(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_21464EBC4(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21464EC94@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 64);
  }

  return result;
}

uint64_t (*sub_21464ED18(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 64);
    return sub_21464EDA0;
  }

  return result;
}

void (*sub_21464EDC8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 73);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21448855C;
}

uint64_t sub_21464EE60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 104))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 96);
  }

  return result;
}

uint64_t (*sub_21464EEE4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 104))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 96);
    return sub_21464EF6C;
  }

  return result;
}

uint64_t sub_21464EF94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 88);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 105) = v7;
  return result;
}

void (*sub_21464F000(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 105);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21464F098;
}

void sub_21464F098(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 88);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 88);

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
  }

  free(v2);
}

uint64_t sub_21464F144@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 136))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 128);
  }

  return result;
}

uint64_t (*sub_21464F1C8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 136))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 128);
    return sub_21464F250;
  }

  return result;
}

uint64_t sub_21464F278(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 120);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 137) = v7;
  return result;
}

void (*sub_21464F2E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 137);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21464F37C;
}

void sub_21464F37C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 120);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 120);

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
  }

  free(v2);
}

uint64_t sub_21464F428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    *a2 = *(a1 + 160);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464F498(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21464F548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 144);
  v7 = *(v2 + 152);
  v12 = *(v3 + 176);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 168);

    *(v3 + 160) = a1;
    *(v3 + 168) = a2;
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

uint64_t (*sub_21464F690(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 168);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 160);
    a1[1] = v3;

    return sub_21464F72C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464F72C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 144);
    v11 = *(v4 + 152);
    v16 = *(v4 + 176);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 160) = v5;
      *(v4 + 168) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 144);
  v6 = *(v4 + 152);
  v16 = *(v4 + 176);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 160) = v5;
  *(v4 + 168) = v3;
}

uint64_t sub_21464F94C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);

  *(a2 + 144) = v4;
  *(a2 + 152) = v3;
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  *(a2 + 176) = v7;
  return result;
}

void (*sub_21464F9C4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 152);
  v7 = *(v1 + 160);
  v6 = *(v1 + 168);
  v8 = *(v1 + 176);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21464FA5C;
}

void sub_21464FA5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 152);
  v10 = *(v3 + 168);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 152);

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
  }

  free(v2);
}

uint64_t sub_21464FB2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_21464FB78(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);

  result = *a1;
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  return result;
}

uint64_t sub_21464FBF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 240);
  if (v4)
  {
    *a2 = *(a1 + 232);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464FC60(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21464FD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 216);
  v7 = *(v2 + 224);
  v12 = *(v3 + 248);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 240);

    *(v3 + 232) = a1;
    *(v3 + 240) = a2;
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

uint64_t (*sub_21464FE58(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 240);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 232);
    a1[1] = v3;

    return sub_21464FEF4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464FEF4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 216);
    v11 = *(v4 + 224);
    v16 = *(v4 + 248);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 232) = v5;
      *(v4 + 240) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 216);
  v6 = *(v4 + 224);
  v16 = *(v4 + 248);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 232) = v5;
  *(v4 + 240) = v3;
}

uint64_t sub_214650114(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 224);
  v9 = *(a2 + 240);

  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v6;
  *(a2 + 240) = v5;
  *(a2 + 248) = v7;
  return result;
}

void (*sub_21465018C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 224);
  v7 = *(v1 + 232);
  v6 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214650224;
}

void sub_214650224(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 224);
  v10 = *(v3 + 240);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 224);

    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

uint64_t sub_214650300(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 256);

  *(v1 + 256) = v2;
  return result;
}

uint64_t sub_21465037C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 297))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 296);
    *a2 = *(result + 288);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214650410(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 297))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 296);
    *a1 = *(v1 + 288);
    *(a1 + 8) = v2 & 1;
    return sub_2146504A4;
  }

  return result;
}

uint64_t sub_2146504D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 280);

  *(a2 + 272) = v4;
  *(a2 + 280) = v3;
  *(a2 + 288) = v5;
  *(a2 + 296) = v6;
  *(a2 + 297) = v7;
  *(a2 + 298) = v8;
  return result;
}

void (*sub_21465054C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  v7 = *(v1 + 296);
  v8 = *(v1 + 297);
  v9 = *(v1 + 298);
  *v4 = *(v1 + 272);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146505EC;
}

void sub_2146505EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 280);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 272) = v5;
    *(v3 + 280) = v4;
    *(v3 + 288) = v6;
    *(v3 + 296) = v7;
    *(v3 + 297) = v8;
    *(v3 + 298) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 280);

    *(v3 + 272) = v5;
    *(v3 + 280) = v4;
    *(v3 + 288) = v6;
    *(v3 + 296) = v7;
    *(v3 + 297) = v8;
    *(v3 + 298) = v9;
  }

  free(v2);
}

uint64_t sub_2146506AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 329))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 328);
    *a2 = *(result + 320);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214650740(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 329))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 328);
    *a1 = *(v1 + 320);
    *(a1 + 8) = v2 & 1;
    return sub_2146507D4;
  }

  return result;
}

uint64_t sub_214650808(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 312);

  *(a2 + 304) = v4;
  *(a2 + 312) = v3;
  *(a2 + 320) = v5;
  *(a2 + 328) = v6;
  *(a2 + 329) = v7;
  *(a2 + 330) = v8;
  return result;
}

void (*sub_21465087C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  v8 = *(v1 + 329);
  v9 = *(v1 + 330);
  *v4 = *(v1 + 304);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_21465091C;
}

void sub_21465091C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 312);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v6;
    *(v3 + 328) = v7;
    *(v3 + 329) = v8;
    *(v3 + 330) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 312);

    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v6;
    *(v3 + 328) = v7;
    *(v3 + 329) = v8;
    *(v3 + 330) = v9;
  }

  free(v2);
}

uint64_t sub_2146509DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMS3GPPCharacteristic() + 68);

  return sub_214650A6C(v3, a1);
}

uint64_t type metadata accessor for IMS3GPPCharacteristic()
{
  result = qword_27C9176E8;
  if (!qword_27C9176E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214650A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214650ADC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMS3GPPCharacteristic() + 68);

  return sub_214650B20(a1, v3);
}

uint64_t sub_214650B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214650BD8(uint64_t a1)
{
  *(a1 + 8) = sub_214650C40(&qword_27C909218);
  result = sub_214650C40(&qword_27C909228);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214650C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMS3GPPCharacteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214650CAC()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        sub_2140939D4(319, &qword_27C9176F8, &type metadata for LBOPCSCFAddressCharacteristic, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
          if (v4 <= 0x3F)
          {
            sub_214650E5C();
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

void sub_214650E5C()
{
  if (!qword_27C917700)
  {
    type metadata accessor for IMS3GPPExtCharacteristic();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C917700);
    }
  }
}