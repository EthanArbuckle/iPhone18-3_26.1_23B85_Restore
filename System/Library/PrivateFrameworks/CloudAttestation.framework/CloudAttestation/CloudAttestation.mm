uint64_t sub_22FE9AA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9AA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9AAEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s11CertificateV20AttestationExtensionVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9AB98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s11CertificateV20AttestationExtensionVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9AC3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FE9AC4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for AttestedTLS.Configurator();
  v4 = *(*(v3 - 1) + 64);
  v5 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  v6 = sub_22FFB12F8();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v1 - 8) + 8))(v5 + v3[9], v1);
  v7 = *(v5 + v3[10]);
  if (v7 >= 4)
  {
  }

  v8 = *(v5 + v3[12]);

  v9 = (v5 + v3[13]);
  if (*v9)
  {
    v10 = v9[1];
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9ADAC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for AttestedTLS.Configurator();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = *(*(v7 - 1) + 64);
  (*(v4 + 8))(&v0[v5], v2);
  v10 = &v0[v8];
  v11 = sub_22FFB12F8();
  (*(*(v11 - 8) + 8))(&v0[v8], v11);
  (*(*(v1 - 8) + 8))(&v0[v8 + v7[9]], v1);
  v12 = *&v0[v8 + v7[10]];
  if (v12 >= 4)
  {
  }

  v13 = *&v10[v7[12]];

  v14 = &v10[v7[13]];
  if (*v14)
  {
    v15 = *(v14 + 1);
  }

  return swift_deallocObject();
}

__n128 sub_22FE9AF98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22FE9AFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FE9AFDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22FE9B014()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for AttestedTLS.Configurator();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 6);
  swift_unknownObjectRelease();
  v11 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], v2);
  v12 = &v0[v8];
  v13 = sub_22FFB12F8();
  (*(*(v13 - 8) + 8))(&v0[v8], v13);
  (*(*(v1 - 8) + 8))(&v0[v8 + v7[9]], v1);
  v14 = *&v0[v8 + v7[10]];
  if (v14 >= 4)
  {
  }

  v15 = *&v12[v7[12]];

  v16 = &v12[v7[13]];
  if (*v16)
  {
    v17 = *(v16 + 1);
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9B200()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for AttestedTLS.Configurator();
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v0 + v4;
  v7 = sub_22FFB12F8();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[9], v1);
  v8 = *(v0 + v4 + v3[10]);
  if (v8 >= 4)
  {
  }

  v9 = *(v6 + v3[12]);

  v10 = (v6 + v3[13]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = *(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_22FE9B384()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v2 = (type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  v5 = sub_22FFB12F8();
  (*(*(v5 - 8) + 8))(v4, v5);
  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v7 - 8) + 8))(v4 + v2[16]);
  return swift_deallocObject();
}

uint64_t sub_22FE9B4F0()
{
  v1 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 40);
  v2 = (type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_22FFB12F8();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v1 - 8) + 8))(v5 + v2[15], v1);
  (*(*(v10 - 8) + 8))(v5 + v2[16]);
  v7 = *(v0 + v4);
  if (v7 >= 4)
  {
  }

  v8 = *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_22FE9B688()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  v3 = (*(*v2 + 80) + 72) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(v0 + 48);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);

  v7 = sub_22FFB12F8();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[15], v1);
  (*(*(v9 - 8) + 8))(v0 + v3 + v2[16]);
  return swift_deallocObject();
}

uint64_t sub_22FE9B808()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_22FE9B84C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22FE9B914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9B980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9BA20()
{
  v1 = (type metadata accessor for EnsembleValidator() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_22FFB0C28();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Release();
  v6 = *(v3 + *(v5 + 20));

  v7 = *(v3 + *(v5 + 24));

  v8 = *(v3 + v1[13] + 8);

  __swift_destroy_boxed_opaque_existential_1((v3 + v1[14]));
  v9 = *(v3 + v1[15] + 8);

  v10 = *(v3 + v1[16]);

  v11 = *(v3 + v1[20]);

  v12 = v1[21];
  v13 = sub_22FFB0908();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v3 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Release();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 76);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FE9BD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Release();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 76);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FE9BE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22FE9BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0D78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9BFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0D78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0D78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s8PropertyV5ValueOMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9C14C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0D78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s8PropertyV5ValueOMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9C270()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB12F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9C36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB12F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9C438()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_22FE9C488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for X509Policy() + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_22FE9AC3C(v4);
}

uint64_t sub_22FE9C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9C59C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9C64C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

double sub_22FE9C68C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v9 = *a1;
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return AttestationPolicyContext.subscript.getter(&v6, a3);
}

uint64_t sub_22FE9C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for KeyOptionsPolicy.OptionsLoader(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9C7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for KeyOptionsPolicy.OptionsLoader(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9C8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9C960(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FE9C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_22FE9CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_22FE9CC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9CCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9CD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureConfigPolicy.SealedHashLoader(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9CDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureConfigPolicy.SealedHashLoader(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9CE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9CEB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SEP.SealedHash(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FE9CF38()
{
  sub_22FEA55AC(*(v0 + 16), *(v0 + 24));
  sub_22FEA55AC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_22FE9CF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_22FE9AC3C(v3);
}

uint64_t sub_22FE9CF90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_22FE9AC3C(*a1);
  result = sub_22FEA5C80(v6);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_22FE9D020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9D08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9D0FC()
{
  v1 = type metadata accessor for NodeValidator();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for PCC.ProxyNodeValidator() - 8);
  v16 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v15 = *(v4 + 64);
  v5 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + 8));
  v6 = *(v0 + v2 + 64);

  v7 = *(v1 + 32);
  v8 = sub_22FFB0908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v0 + v16;
  __swift_destroy_boxed_opaque_existential_1((v0 + v16 + 8));
  v12 = *(v0 + v16 + 64);

  v13 = *(v1 + 32);
  if (!v10(v0 + v16 + v13, 1, v8))
  {
    (*(v9 + 8))(v11 + v13, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9D318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NodeValidator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AttestationBundle(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9D408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NodeValidator();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AttestationBundle(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9D5C4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for PCC.ProxyNodeValidator();
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_22FE9D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NodeValidator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22FE9D6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NodeValidator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudCompute_Environment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateCloudCompute_Environment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_22FE9D974(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9D990(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22FE9D9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 64) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9DA68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 56) = 0;
    *(result + 64) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9DB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22FFB0F88();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FE9DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22FFB0F88();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FE9DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9DCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9DD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FE9DE94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FE9DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22FE9E124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22FE9E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9E344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9E3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E5F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E8AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9EB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9EC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9ED08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FE9EE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FE9EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F020(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F0CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F178(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9F2C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F36C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_22FFB0F88();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_22FE9F4A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_22FFB0F88();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_22FE9F5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F68C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F738(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9F7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9F8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9FA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9FBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_22FEBF8F0(v4, v5);
}

uint64_t sub_22FE9FC4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22FFB0F88();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_22FE9FE24(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = sub_22FFB0F88();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22FE9FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA00B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FEA0290(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA046C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA05BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0660(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA070C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA07B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA08EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA0BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA0CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA0E18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA11F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA129C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FEA13CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 80);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22FFB0F88();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 48);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 52);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_22FEA162C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 80) = a2 + 1;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1758(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA19C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA1A78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA1B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1C6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_22FFB0F88();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FEA1E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_22FFB0F88();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FEA1ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SEP.SealedHash.Value(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FEA1F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SEP.SealedHash.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FEA1FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FEA207C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0C28();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FEA216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22FEA2290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FEA2458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttestationBundle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22FEA2524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttestationBundle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22FEA25E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEA2658(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FEA26EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22FEA275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA2818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_22FEA2910(void *result, int a2)
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

_OWORD *sub_22FEA2968(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22FEA2978(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation3SEPO0B0VAA0B6Policy_ps5Error_pIeghnrzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22FEA29F4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FEA2A0C()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_22FEA2A28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_22FEA2A44(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_22FEA2A64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for AttestedTLS(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AttestedTLS(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22FEA2C18()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22FFB0A38();
}

uint64_t sub_22FEA2C64()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22FFB0A28();
}

uint64_t sub_22FEA2CBC()
{
  sub_22FFB1CA8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_22FFB0A28();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEA2D24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_22FFB0A18();
}

void sub_22FEA2DF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22FEA2EA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FEA2EEC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05960);
  __swift_project_value_buffer(v0, qword_27DB05960);
  return sub_22FFB12E8();
}

void sub_22FEA2F6C(__SecCertificate *a1@<X0>, __SecCertificate **a2@<X8>)
{
  v5 = _s11CertificateV20AttestationExtensionVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = SecCertificateCopyKey(a1);
  if (v9)
  {
    v10 = v9;
    *a2 = a1;
    a2[1] = v9;
    v11 = qword_27DAF1238;
    a1 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_22FFB0C98();
    __swift_project_value_buffer(v12, qword_27DB05978);
    sub_22FFB0C78();
    v13 = sub_22FFB1488();

    v14 = SecCertificateCopyExtensionValue();

    if (v14)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v18 = xmmword_22FFB2D00;
        sub_22FFB07D8();

        if (*(&v18 + 1) >> 60 != 15)
        {
          sub_22FEA3190(v18, *(&v18 + 1), v8);
          if (!v2)
          {
            v15 = _s11CertificateVMa(0);
            sub_22FEA5764(v8, a2 + *(v15 + 24), _s11CertificateV20AttestationExtensionVMa);
            return;
          }

          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    sub_22FEA5550();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
LABEL_12:

    goto LABEL_13;
  }

  sub_22FEA5550();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();
LABEL_13:
}

uint64_t sub_22FEA3190@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for AttestationBundle(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0BE8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22FFB0C28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (2 * *(sub_22FF6C960(a1, a2) + 16)) | 1;
  sub_22FFB0DB8();
  result = sub_22FFB0DD8();
  if (!v3)
  {
    v18 = v27;
    v19 = sub_22FFB0C18();
    sub_22FF960FC(v19, v20, v21, v22);
    v23 = v28;
    AttestationBundle.init(data:)(v24, v25, v28);
    (*(v12 + 8))(v15, v11);
    return sub_22FEA5764(v23, v18, type metadata accessor for AttestationBundle);
  }

  return result;
}

uint64_t sub_22FEA33D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64) + 15;
  v7[45] = swift_task_alloc();
  v9 = sub_22FFB0EE8();
  v7[46] = v9;
  v10 = *(v9 - 8);
  v7[47] = v10;
  v11 = *(v10 + 64) + 15;
  v7[48] = swift_task_alloc();
  v12 = *(*(_s11CertificateV20AttestationExtensionVMa(0) - 8) + 64) + 15;
  v7[49] = swift_task_alloc();
  v13 = sub_22FFB0908();
  v7[50] = v13;
  v14 = *(v13 - 8);
  v7[51] = v14;
  v15 = *(v14 + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v16 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v17 = sub_22FFB13F8();
  v7[55] = v17;
  v18 = *(v17 - 8);
  v7[56] = v18;
  v19 = *(v18 + 64) + 15;
  v7[57] = swift_task_alloc();
  v20 = sub_22FFB13B8();
  v7[58] = v20;
  v21 = *(v20 - 8);
  v7[59] = v21;
  v22 = *(v21 + 64) + 15;
  v7[60] = swift_task_alloc();
  v23 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEA3678, 0, 0);
}

uint64_t sub_22FEA3678()
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = SecKeyCopyPublicKey(*(v0 + 312));
  *(v0 + 488) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 296) = 0;
    v3 = SecKeyCopyExternalRepresentation(v1, (v0 + 296));
    *(v0 + 496) = v3;
    if (v3)
    {
      v4 = *(v0 + 456);
      v50 = *(v0 + 472);
      v51 = *(v0 + 464);
      v5 = *(v0 + 440);
      v48 = *(v0 + 480);
      v49 = *(v0 + 448);
      v55 = *(v0 + 424);
      v56 = *(v0 + 408);
      v57 = *(v0 + 400);
      v53 = *(v0 + 416);
      v54 = *(v0 + 336);
      v52 = *(v0 + 328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1528, &qword_22FFB2D60);
      v47 = swift_allocObject();
      *(v0 + 504) = v47;
      *(v47 + 16) = xmmword_22FFB2D10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1530, &qword_22FFB2D68);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22FFB2D10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22FFB2D20;
      v8 = *MEMORY[0x277CDC448];
      *(v7 + 32) = sub_22FFB1498();
      *(v7 + 40) = v9;
      v10 = sub_22FFB07E8();
      v12 = v11;
      sub_22FEA5834(&qword_28148F188, MEMORY[0x277CC5550]);
      sub_22FFB1388();
      sub_22FEA5608(v10, v12);
      sub_22FED5478(v10, v12);
      sub_22FEA55AC(v10, v12);
      sub_22FFB1368();
      sub_22FEA55AC(v10, v12);
      (*(v49 + 8))(v4, v5);
      v13 = sub_22FF95E04();
      v15 = v14;
      (*(v50 + 8))(v48, v51);
      *(v7 + 48) = v13;
      *(v7 + 56) = v15;
      *(v6 + 32) = v7;
      *(v47 + 32) = v6;
      v16 = MEMORY[0x277D84F90];
      *(v0 + 512) = sub_22FFA6C20(MEMORY[0x277D84F90]);
      *(v0 + 520) = sub_22FFA6D50(v16);
      sub_22FFB08E8();
      sub_22FFB1D28();
      sub_22FFB1D28();
      sub_22FFB0858();
      v17 = *(v56 + 8);
      *(v0 + 528) = v17;
      *(v0 + 536) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v17(v53, v57);
      v18 = swift_task_alloc();
      *(v0 + 544) = v18;
      *v18 = v0;
      v18[1] = sub_22FEA3BEC;
      v20 = *(v0 + 424);
      v19 = *(v0 + 432);
      v21 = *(v0 + 344);
      v22 = *(v0 + 352);
      v23 = *(v0 + 312);
      v24 = *(v0 + 320);
      v25 = *MEMORY[0x277D85DE8];

      return Attestor.attest(key:expiration:)(v19, v23, v20, v21, v22);
    }

    v31 = *(v0 + 296);
    v32 = *(v0 + 344);
    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    if (v31)
    {
      type metadata accessor for CFError(0);
      sub_22FEA5834(&qword_27DAF1518, type metadata accessor for CFError);
      swift_allocError();
      *v35 = v31;
    }

    else
    {
      sub_22FEA5550();
      swift_allocError();
      *v36 = 1;
    }

    swift_willThrow();

    (*(*(v32 - 8) + 8))(v33, v32);
  }

  else
  {
    v27 = *(v0 + 344);
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    sub_22FEA5550();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    (*(*(v27 - 8) + 8))(v28, v27);
  }

  v37 = *(v0 + 480);
  v38 = *(v0 + 456);
  v40 = *(v0 + 424);
  v39 = *(v0 + 432);
  v41 = *(v0 + 416);
  v43 = *(v0 + 384);
  v42 = *(v0 + 392);
  v44 = *(v0 + 360);

  v45 = *(v0 + 8);
  v46 = *MEMORY[0x277D85DE8];

  return v45();
}

uint64_t sub_22FEA3BEC()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  v2[69] = v0;

  v5 = v2[67];
  v6 = v2[66];
  if (v0)
  {
    v7 = v2[65];
    v9 = v2[63];
    v8 = v2[64];
    v6(v2[53], v2[50]);

    v10 = sub_22FEA45B0;
  }

  else
  {
    v6(v2[53], v2[50]);
    v10 = sub_22FEA3D9C;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22FEA3D9C()
{
  v102 = *MEMORY[0x277D85DE8];
  sub_22FEA57CC(*(v0 + 432), *(v0 + 392), type metadata accessor for AttestationBundle);
  if (qword_27DAF1238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 392);
  v3 = sub_22FFB0C98();
  __swift_project_value_buffer(v3, qword_27DB05978);
  v4 = sub_22FFB0C78();
  v6 = v5;
  v7 = type metadata accessor for Proto_AttestationBundle(0);
  sub_22FEA5834(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  v8 = sub_22FFB1178();
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);
  if (v1)
  {
    v97 = *(v0 + 512);
    v13 = *(v0 + 496);
    v12 = *(v0 + 504);
    v14 = *(v0 + 488);
    v15 = *(v0 + 432);
    v16 = *(v0 + 392);
    v17 = *(v0 + 344);
    v18 = *(v0 + 312);
    v19 = *(v0 + 320);

    (*(*(v17 - 8) + 8))(v19, v17);
    sub_22FEA54F0(v16, _s11CertificateV20AttestationExtensionVMa);
    sub_22FEA54F0(v15, type metadata accessor for AttestationBundle);

LABEL_5:
    v20 = *(v0 + 480);
    v21 = *(v0 + 456);
    v23 = *(v0 + 424);
    v22 = *(v0 + 432);
    v24 = *(v0 + 416);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v27 = *(v0 + 360);

    v28 = *(v0 + 8);
    v29 = *MEMORY[0x277D85DE8];
    goto LABEL_15;
  }

  v30 = *(v0 + 376);
  v100 = *(v0 + 368);
  v95 = *(v0 + 432);
  v98 = *(v0 + 360);
  v31 = v8;
  v32 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CDE4(v31, v32, v4, v6, isUniquelyReferenced_nonNull_native);

  v34 = *MEMORY[0x277CDC200];
  v35 = sub_22FFB1498();
  v37 = v36;
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1540, &qword_22FFB2D78);
  *(v0 + 16) = v10;
  sub_22FEA2968((v0 + 16), (v0 + 48));
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 48), v35, v37, v38);

  v39 = *MEMORY[0x277CDC218];
  v93 = sub_22FFB1498();
  v41 = v40;
  v42 = *(v95 + *(v7 + 20));
  v43 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEA587C(v42 + v43, v98);
  v44 = *(v30 + 48);
  if (v44(v98, 1, v100) == 1)
  {
    v46 = *(v0 + 360);
    v45 = *(v0 + 368);
    v47 = *(v0 + 384);
    sub_22FFB0ED8();
    if (v44(v46, 1, v45) != 1)
    {
      sub_22FEA58EC(*(v0 + 360));
    }
  }

  else
  {
    (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
  }

  v48 = *(v0 + 536);
  v49 = *(v0 + 528);
  v50 = *(v0 + 416);
  v51 = *(v0 + 400);
  v53 = *(v0 + 376);
  v52 = *(v0 + 384);
  v54 = *(v0 + 368);
  sub_22FFB0EB8();
  (*(v53 + 8))(v52, v54);
  sub_22FFB08A8();
  v56 = v55;
  v57 = v55;
  v49(v50, v51);
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v56 >= 9.22337204e18)
  {
    goto LABEL_21;
  }

  v58 = *(v0 + 504);
  v59 = *(v0 + 488);
  v60 = *(v0 + 312);
  *(v0 + 104) = MEMORY[0x277D84A28];
  *(v0 + 80) = v56;
  sub_22FEA2968((v0 + 80), (v0 + 112));
  v61 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 112), v93, v41, v61);

  v62 = *MEMORY[0x277CDC220];
  v63 = sub_22FFB1498();
  v65 = v64;
  v66 = MEMORY[0x277D83B88];
  *(v0 + 168) = MEMORY[0x277D83B88];
  *(v0 + 144) = 0;
  sub_22FEA2968((v0 + 144), (v0 + 176));
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 176), v63, v65, v67);

  v68 = *MEMORY[0x277CDC210];
  v69 = sub_22FFB1498();
  v71 = v70;
  *(v0 + 232) = v66;
  *(v0 + 208) = 1;
  sub_22FEA2968((v0 + 208), (v0 + 240));
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 240), v69, v71, v72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1548, &unk_22FFB2D80);
  v73 = sub_22FFB16C8();

  v74 = sub_22FFB1408();

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();

  v76 = *(v0 + 488);
  v77 = *(v0 + 496);
  if (!SelfSignedCertificate)
  {
    v87 = *(v0 + 432);
    v88 = *(v0 + 392);
    v89 = *(v0 + 344);
    v90 = *(v0 + 312);
    v91 = *(v0 + 320);
    sub_22FEA5550();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();

    (*(*(v89 - 8) + 8))(v91, v89);
    sub_22FEA54F0(v88, _s11CertificateV20AttestationExtensionVMa);
    sub_22FEA54F0(v87, type metadata accessor for AttestationBundle);
    goto LABEL_5;
  }

  v78 = *(v0 + 480);
  v79 = *(v0 + 456);
  v80 = *(v0 + 432);
  v94 = *(v0 + 424);
  v96 = *(v0 + 416);
  v81 = *(v0 + 392);
  v99 = *(v0 + 384);
  v101 = *(v0 + 360);
  v82 = *(v0 + 312);
  v83 = *(v0 + 304);
  (*(*(*(v0 + 344) - 8) + 8))(*(v0 + 320));

  sub_22FEA54F0(v80, type metadata accessor for AttestationBundle);
  *v83 = SelfSignedCertificate;
  v83[1] = v76;
  v84 = _s11CertificateVMa(0);
  sub_22FEA5764(v81, v83 + *(v84 + 24), _s11CertificateV20AttestationExtensionVMa);

  v28 = *(v0 + 8);
  v85 = *MEMORY[0x277D85DE8];
LABEL_15:

  return v28();
}

uint64_t sub_22FEA45B0()
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);

  (*(*(v3 - 8) + 8))(v4, v3);
  v5 = *(v0 + 552);
  v6 = *(v0 + 480);
  v7 = *(v0 + 456);
  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 416);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 360);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_22FEA46F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = *(*(_s11CertificateV20AttestationExtensionVMa(0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Validated.AttestationBundle(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_22FFB0908();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEA48A4, 0, 0);
}

uint64_t sub_22FEA48A4()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = v0[8];
  v15 = v0[7];
  v3 = _s11CertificateVMa(0);
  sub_22FEA57CC(v2 + *(v3 + 24), v1, _s11CertificateV20AttestationExtensionVMa);
  v14 = (*(v15 + 72) + **(v15 + 72));
  v4 = *(*(v15 + 72) + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_22FEA4A24;
  v6 = v0[17];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v12 = *MEMORY[0x277D85DE8];

  return v14(v0 + 2, v6, v7, v8, v9, v10);
}

uint64_t sub_22FEA4A24()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    sub_22FEA54F0(*(v2 + 80), type metadata accessor for AttestationBundle);
    v4 = sub_22FEA5338;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_22FEA54F0(*(v2 + 88), type metadata accessor for Validated.AttestationBundle);
    sub_22FEA54F0(v5, type metadata accessor for AttestationBundle);
    v4 = sub_22FEA4BC0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FEA4BC0()
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(*(v0 + 104) + 32);
  v4(*(v0 + 144), *(v0 + 136), *(v0 + 96));
  v5 = *v1;
  v6 = SecCertificateCopyNotValidAfterDate();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_7;
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 72);
  (*(v9 + 56))(v10, 1, 1, v8);
  sub_22FEA5834(qword_27DAF1580, MEMORY[0x277CC9578]);
  sub_22FFB1B18();

  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
LABEL_7:
    v22 = *(v0 + 144);
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    sub_22FEA5550();
    swift_allocError();
    *v25 = 6;
    swift_willThrow();
    sub_22FEA55A4(v3, v2);
    (*(v24 + 8))(v22, v23);
    goto LABEL_8;
  }

  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 96);
  v4(v13, *(v0 + 72), v14);
  v4(v12, v13, v14);
  sub_22FFB08F8();
  v15 = *(v0 + 144);
  if (v16 > 60.0)
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    sub_22FEA5550();
    swift_allocError();
    *v20 = 7;
    swift_willThrow();
    sub_22FEA55A4(v3, v2);
    v21 = *(v19 + 8);
    v21(v17, v18);
    v21(v15, v18);
    goto LABEL_8;
  }

  v38 = *(v0 + 104);
  v37 = *(v0 + 112);
  v39 = *(v0 + 96);
  sub_22FFB08E8();
  v40 = sub_22FFB0888();
  v41 = *(v38 + 8);
  v41(v37, v39);
  if (v40)
  {
    v42 = *(v0 + 64);
    *(v0 + 32) = 0;
    v43 = *(v42 + 8);
    sub_22FEA5600(v3, v2);
    v44 = SecKeyCopyExternalRepresentation(v43, (v0 + 32));
    if (v44)
    {
      v45 = v44;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_22FFB07D8();
      }
    }

    v50 = *(v0 + 32);
    if (v50)
    {
      v60 = *(v0 + 144);
      v51 = *(v0 + 128);
      v52 = *(v0 + 96);
      type metadata accessor for CFError(0);
      sub_22FEA5834(&qword_27DAF1518, type metadata accessor for CFError);
      swift_allocError();
      *v53 = v50;
      swift_willThrow();
      v54 = v50;
      sub_22FEA55A4(v3, v2);
      sub_22FEA55A4(v3, v2);

      v41(v51, v52);
      v41(v60, v52);
      goto LABEL_8;
    }

    if (qword_27DAF1230 != -1)
    {
      swift_once();
    }

    v55 = sub_22FFB12F8();
    __swift_project_value_buffer(v55, qword_27DB05960);
    v56 = sub_22FFB12D8();
    v57 = sub_22FFB1838();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_22FE99000, v56, v57, "SecKeyCopyExternalRepresentation failed but did not return an error object", v58, 2u);
      MEMORY[0x23190EFF0](v58, -1, -1);
    }

    v46 = *(v0 + 144);
    v47 = *(v0 + 128);
    v48 = *(v0 + 96);

    sub_22FEA5550();
    swift_allocError();
    *v59 = 0;
    swift_willThrow();
    sub_22FEA55A4(v3, v2);
  }

  else
  {
    v46 = *(v0 + 144);
    v47 = *(v0 + 128);
    v48 = *(v0 + 96);
    sub_22FEA5550();
    swift_allocError();
    *v49 = 9;
    swift_willThrow();
  }

  sub_22FEA55A4(v3, v2);
  v41(v47, v48);
  v41(v46, v48);
LABEL_8:
  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v30 = *(v0 + 112);
  v32 = *(v0 + 80);
  v31 = *(v0 + 88);
  v33 = *(v0 + 72);

  v34 = *(v0 + 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34();
}

uint64_t sub_22FEA5338()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22FEA54B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEA54F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEA5550()
{
  result = qword_27DAF1570;
  if (!qword_27DAF1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1570);
  }

  return result;
}

uint64_t sub_22FEA55AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22FEA5608(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22FEA5694()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_27DB05978);
  __swift_project_value_buffer(v0, qword_27DB05978);
  return sub_22FFB0C88();
}

uint64_t sub_22FEA56EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FEA55AC(a1, a2);
  }

  return a1;
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

uint64_t sub_22FEA5764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEA57CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEA5834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FEA587C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEA58EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEA597C()
{
  result = type metadata accessor for AttestationBundle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FEA5A10()
{
  type metadata accessor for SecCertificate(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SecKey(319);
    if (v1 <= 0x3F)
    {
      _s11CertificateV20AttestationExtensionVMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FEA5AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v8 = (a1 + *(type metadata accessor for AttestedTLS.Configurator() + 52));
  v9 = *v8;
  v10 = v8[1];
  if (*v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_22FEA9E44;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;

  return sub_22FE9AC3C(v9);
}

uint64_t sub_22FEA5B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_22FEA9E0C;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for AttestedTLS.Configurator() + 52));
  v12 = *v11;
  v13 = v11[1];
  sub_22FE9AC3C(v7);
  result = sub_22FEA5C80(v12);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t AttestedTLS.Configurator.errorHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];
  sub_22FE9AC3C(*v2);
  return v3;
}

uint64_t AttestedTLS.Configurator.errorHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  v7 = v6[1];
  result = sub_22FEA5C80(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_22FEA5C80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*AttestedTLS.Configurator.errorHandler.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t AttestedTLS.Configurator.init(using:with:lifetime:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a3;
  v7[9] = *a2;
  return MEMORY[0x2822009F8](sub_22FEA5CE4, 0, 0);
}

uint64_t sub_22FEA5CE4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  sub_22FFB12E8();
  v5 = type metadata accessor for AttestedTLS.Configurator();
  v0[10] = v5;
  v6 = (v4 + *(v5 + 52));
  *v6 = 0;
  v6[1] = 0;
  if (v2 == 3)
  {
    v7 = v0[3];
    v8 = sub_22FFB12D8();
    v9 = sub_22FFB1838();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FE99000, v8, v9, "Curve25519 keys not yet supported", v10, 2u);
      MEMORY[0x23190EFF0](v10, -1, -1);
    }

    v11 = v0[7];
    v12 = v0[4];

    sub_22FEA5550();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    v14 = *(v11 - 8);
    (*(v14 + 8))(v12, v11);
    v15 = v0[9];
    v16 = v0[3];
    v17 = sub_22FFB12F8();
    (*(*(v17 - 8) + 8))(v16, v17);
    if (v15 != 3)
    {
      v18 = v0[10];
      v19 = v0[7];
      v20 = v0[3];
      (*(v14 + 8))(v20 + *(v18 + 36));
      sub_22FEA6864(*(v20 + *(v18 + 40)));
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[9];
    v24 = v0[6];
    v25 = v0[4];
    v26 = v0[5];
    v27 = v0[3];
    v28 = *(v5 + 36);
    v29 = *(v0[7] - 8);
    v0[11] = v29;
    v0[12] = v29;
    v30 = v5;
    (*(v29 + 16))(v27 + v28, v25);
    *(v27 + *(v30 + 40)) = v23;
    v31 = (v27 + *(v30 + 44));
    *v31 = v26;
    v31[1] = v24;
    v0[2] = v23;
    sub_22FEA6854(v23);
    v32 = swift_task_alloc();
    v0[13] = v32;
    *v32 = v0;
    v32[1] = sub_22FEA6038;
    v33 = v0[7];
    v34 = v0[8];
    v35 = v0[5];
    v36 = v0[6];
    v37 = v0[4];

    return sub_22FEA6368(v0 + 2, v37, v35, v36, v33, v34);
  }
}

uint64_t sub_22FEA6038(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_22FEA6230;
  }

  else
  {
    v8 = *(v4 + 72);
    *(v4 + 120) = a1;
    sub_22FEA6864(v8);
    v7 = sub_22FEA6168;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FEA6168()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  _s15IdentityStorageCMa();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v2 + 8))(v5, v4);
  *(v7 + 112) = v1;
  *(v6 + *(v3 + 48)) = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_22FEA6230()
{
  v1 = v0[9];
  (*(v0[12] + 8))(v0[4], v0[7]);
  sub_22FEA6864(v1);
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[3];
  v6 = sub_22FFB12F8();
  (*(*(v6 - 8) + 8))(v5, v6);
  if (v4 != 3)
  {
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[3];
    (*(v3 + 8))(v9 + *(v7 + 36));
    sub_22FEA6864(*(v9 + *(v7 + 40)));
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FEA6368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = *(a5 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = *(*(_s11CertificateVMa(0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  v6[9] = v11;
  v6[10] = v12;

  return MEMORY[0x2822009F8](sub_22FEA6458, 0, 0);
}

uint64_t sub_22FEA6458()
{
  v12 = v0[10];
  sub_22FEAA8F0();
  v0[11] = v1;
  v2 = v1;
  (*(v0[7] + 16))(v0[8], v0[2], v0[5]);
  v3 = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22FEA6590;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  return sub_22FEA33D0(v5, v3, v6, v9, v10, v7, v8);
}

uint64_t sub_22FEA6590()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22FEA67E0;
  }

  else
  {
    v3 = sub_22FEA66A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA66A4()
{
  v1 = *(v0 + 88);
  v2 = **(v0 + 72);
  v3 = SecIdentityCreate();
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  if (v3)
  {
    v6 = v3;
    v7 = *(v0 + 64);

    sub_22FEAA230(v5);

    v8 = *(v0 + 8);

    return v8(v6);
  }

  else
  {
    sub_22FEA5550();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    sub_22FEAA230(v5);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_22FEA67E0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

id sub_22FEA6854(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_22FEA6864(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t AttestedTLS.Configurator.createTLSOptions<A>(with:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v8 = *(a4 - 8);
  v6[20] = v8;
  v6[21] = *(v8 + 64);
  v6[22] = swift_task_alloc();
  v9 = *(a3 - 8);
  v6[23] = v9;
  v6[24] = *(v9 + 64);
  v6[25] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[26] = v10;
  *v10 = v6;
  v10[1] = sub_22FEA69C0;

  return AttestedTLS.Configurator.expired.getter(a3);
}

uint64_t sub_22FEA69C0(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_22FEA6AC0, 0, 0);
}

uint64_t sub_22FEA6AC0(__n128 a1)
{
  if (*(v1 + 224) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 216) = v2;
    *v2 = v1;
    v2[1] = sub_22FEA6EE4;
    v3 = *(v1 + 152);
    v4 = *(v1 + 128);

    return AttestedTLS.Configurator.refresh()(v4);
  }

  else
  {
    v6 = *(v1 + 200);
    v26 = *(v1 + 192);
    v7 = *(v1 + 184);
    v30 = *(v1 + 176);
    v8 = *(v1 + 160);
    v31 = *(v1 + 168);
    v9 = *(v1 + 152);
    v34 = *(v1 + 136);
    v10 = *(v1 + 128);
    v36 = *(v1 + 120);
    v29 = *(v1 + 112);
    v11 = sub_22FFB1328();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v32 = sub_22FFB1318();
    v35 = sub_22FFB1308();
    v25 = *(v7 + 16);
    v25(v6, v9, v10);
    v14 = *(v7 + 80);
    v15 = swift_allocObject();
    v27 = *(v10 + 16);
    v15[2] = v27;
    v15[3] = v34.f64[0];
    v24 = *(v10 + 24);
    v15[4] = v24;
    v15[5] = v34.f64[1];
    v28 = *(v7 + 32);
    v28(v15 + ((v14 + 48) & ~v14), v6, v10, a1);
    *(v1 + 48) = sub_22FEA9548;
    *(v1 + 56) = v15;
    *(v1 + 16) = MEMORY[0x277D85DD0];
    *(v1 + 24) = 1107296256;
    *(v1 + 32) = sub_22FEA87AC;
    *(v1 + 40) = &block_descriptor;
    v16 = _Block_copy((v1 + 16));
    v17 = *(v1 + 56);

    sec_protocol_options_set_challenge_block(v35, v16, v36);
    _Block_release(v16);
    (*(v8 + 16))(v30, v29, *&v34.f64[0]);
    v25(v6, v9, v10);
    v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v19 = swift_allocObject();
    v20 = (v19 + 16);
    v38.val[1] = v34;
    v38.val[0].f64[0] = v27;
    v38.val[0].f64[1] = v24;
    vst2q_f64(v20, v38);
    (*(v8 + 32))(v19 + v18, v30, *&v34.f64[0]);
    (v28)(v19 + ((v31 + v14 + v18) & ~v14), v6, v10);
    *(v1 + 96) = sub_22FEA9618;
    *(v1 + 104) = v19;
    *(v1 + 64) = MEMORY[0x277D85DD0];
    *(v1 + 72) = 1107296256;
    *(v1 + 80) = sub_22FEA901C;
    *(v1 + 88) = &block_descriptor_8;
    v21 = _Block_copy((v1 + 64));
    v22 = *(v1 + 104);

    sec_protocol_options_set_verify_block(v35, v21, v36);
    _Block_release(v21);
    sec_protocol_options_set_min_tls_protocol_version(v35, tls_protocol_version_TLSv13);
    sec_protocol_options_set_peer_authentication_required(v35, 1);
    swift_unknownObjectRelease();

    v23 = *(v1 + 8);

    return v23(v32);
  }
}

uint64_t sub_22FEA6EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 176);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FEA703C, 0, 0);
  }
}

uint64_t sub_22FEA703C(__n128 a1)
{
  v2 = v1[25];
  v23 = v1[24];
  v3 = v1[23];
  v27 = v1[22];
  v4 = v1[20];
  v28 = v1[21];
  v5 = v1[19];
  v31 = *(v1 + 17);
  v6 = v1[16];
  v33 = v1[15];
  v26 = v1[14];
  v7 = sub_22FFB1328();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v29 = sub_22FFB1318();
  v32 = sub_22FFB1308();
  v22 = *(v3 + 16);
  v22(v2, v5, v6);
  v10 = *(v3 + 80);
  v11 = swift_allocObject();
  v24 = *(v6 + 16);
  v11[2] = v24;
  v11[3] = v31.f64[0];
  v21 = *(v6 + 24);
  v11[4] = v21;
  v11[5] = v31.f64[1];
  v25 = *(v3 + 32);
  v25(v11 + ((v10 + 48) & ~v10), v2, v6, a1);
  v1[6] = sub_22FEA9548;
  v1[7] = v11;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_22FEA87AC;
  v1[5] = &block_descriptor;
  v12 = _Block_copy(v1 + 2);
  v13 = v1[7];

  sec_protocol_options_set_challenge_block(v32, v12, v33);
  _Block_release(v12);
  (*(v4 + 16))(v27, v26, *&v31.f64[0]);
  v22(v2, v5, v6);
  v14 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = (v15 + 16);
  v35.val[1] = v31;
  v35.val[0].f64[0] = v24;
  v35.val[0].f64[1] = v21;
  vst2q_f64(v16, v35);
  (*(v4 + 32))(v15 + v14, v27, *&v31.f64[0]);
  (v25)(v15 + ((v28 + v10 + v14) & ~v10), v2, v6);
  v1[12] = sub_22FEA9618;
  v1[13] = v15;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_22FEA901C;
  v1[11] = &block_descriptor_8;
  v17 = _Block_copy(v1 + 8);
  v18 = v1[13];

  sec_protocol_options_set_verify_block(v32, v17, v33);
  _Block_release(v17);
  sec_protocol_options_set_min_tls_protocol_version(v32, tls_protocol_version_TLSv13);
  sec_protocol_options_set_peer_authentication_required(v32, 1);
  swift_unknownObjectRelease();

  v19 = v1[1];

  return v19(v29);
}

uint64_t AttestedTLS.Configurator.expired.getter(uint64_t a1)
{
  v3 = sub_22FFB0908();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[5] = v6;
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_22FEA74E0;

  return AttestedTLS.Configurator.expiration.getter(v6, a1);
}

uint64_t sub_22FEA74E0()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22FEA75DC, 0, 0);
}

uint64_t sub_22FEA75DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_22FFB08E8();
  v5 = sub_22FFB0888();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);

  v7 = v0[1];

  return v7(v5 & 1);
}

uint64_t AttestedTLS.Configurator.refresh()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FEA76C4, 0, 0);
}

uint64_t sub_22FEA76C4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + *(v2 + 40));
  v0[2] = v3;
  v4 = *(v2 + 36);
  v5 = (v1 + *(v2 + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_22FEA6854(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  *v8 = v0;
  v8[1] = sub_22FEA779C;

  return sub_22FEA6368(v0 + 2, v1 + v4, v6, v7, v9, v10);
}

uint64_t sub_22FEA779C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v8 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    sub_22FEA6864(*(v4 + 16));
    v6 = sub_22FEA79D0;
  }

  else
  {
    *(v4 + 56) = a1;
    sub_22FEA6864(*(v4 + 16));
    v6 = sub_22FEA78D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FEA78D0()
{
  v1 = *(v0[4] + *(v0[3] + 48));
  v0[8] = v1;
  return MEMORY[0x2822009F8](sub_22FEA78F8, v1, 0);
}

uint64_t sub_22FEA78F8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_22FEA796C, 0, 0);
}

uint64_t sub_22FEA796C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEA79E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(_s11CertificateVMa(0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEA7A84, 0, 0);
}

uint64_t sub_22FEA7A84()
{
  v1 = SecTrustCopyCertificateChain(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_22FFB16D8();
    }
  }

  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22FEA7DF8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22FEA8010;
  }

  else
  {
    v3 = sub_22FEA7F0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA7F0C()
{
  v1 = v0[4];
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "SecTrust verification completedly successfully", v7, 2u);
    MEMORY[0x23190EFF0](v7, -1, -1);
    v8 = v2;
  }

  else
  {
    v8 = v0[10];
    v6 = v2;
  }

  sub_22FEAA230(v5);
  v9 = v0[9];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_22FEA8010()
{
  v1 = *(v0 + 72);

  sub_22FEAA230(v1);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = v5 + *(type metadata accessor for AttestedTLS.Configurator() + 52);
  if (*v6)
  {
    v7 = *(v6 + 8);
    (*v6)(v2);
    v8 = *(v0 + 32);
  }

  v9 = v2;
  v10 = sub_22FFB12D8();
  v11 = sub_22FFB1838();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22FE99000, v10, v11, "SecTrust verification failed: %@", v12, 0xCu);
    sub_22FEAA1C8(v13);
    MEMORY[0x23190EFF0](v13, -1, -1);
    MEMORY[0x23190EFF0](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_22FEA81A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a6;
  v31 = a8;
  v32 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for AttestedTLS.Configurator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a4, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 2) = a5;
  *(v22 + 3) = v24;
  *(v22 + 4) = a7;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v25 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v32;
  *(v25 + 1) = a3;
  v26 = sub_22FFB17B8();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_22FFB2E58;
  v27[5] = v22;

  sub_22FEAB58C(0, 0, v15, &unk_22FFB2E68, v27);
}

uint64_t sub_22FEA83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a3;
  return MEMORY[0x2822009F8](sub_22FEA8424, 0, 0);
}

uint64_t sub_22FEA8424()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v3 + *(type metadata accessor for AttestedTLS.Configurator() + 48));
  v0[7] = v4;

  return MEMORY[0x2822009F8](sub_22FEA849C, v4, 0);
}

uint64_t sub_22FEA849C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22FEA8510, 0, 0);
}

uint64_t sub_22FEA8510()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  sec_identity_create(v1);
  v3();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEA859C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22FEA8698;

  return v9(a1, v4 + 16);
}

uint64_t sub_22FEA8698()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_22FEAA534;
  }

  else
  {
    v3 = sub_22FEAA540;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA87AC(uint64_t a1, int a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = swift_unknownObjectRetain();
  v4(v7, sub_22FEAA28C, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_22FEA885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a2;
  v38 = a7;
  v42 = a3;
  v43 = a4;
  v40 = a6;
  v41 = a10;
  v39 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v35 - v15;
  v16 = type metadata accessor for AttestedTLS.Configurator();
  v36 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v35 - v20;
  v22 = *(a8 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, a5, a8);
  (*(v17 + 16))(v21, v40, v16);
  v25 = (*(v22 + 80) + 72) & ~*(v22 + 80);
  v26 = (v23 + v25 + *(v17 + 80)) & ~*(v17 + 80);
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = a8;
  v30 = v41;
  v29 = v42;
  *(v27 + 4) = v28;
  *(v27 + 5) = v30;
  *(v27 + 6) = a2;
  *(v27 + 7) = v29;
  *(v27 + 8) = v43;
  (*(v22 + 32))(&v27[v25], v24, a8);
  (*(v17 + 32))(&v27[v26], v21, v36);
  v31 = sub_22FFB17B8();
  v32 = v44;
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_22FFB2E28;
  v33[5] = v27;
  swift_unknownObjectRetain();

  sub_22FEAB58C(0, 0, v32, &unk_22FFB2E38, v33);
}

uint64_t sub_22FEA8B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22FEA8BBC, 0, 0);
}

uint64_t sub_22FEA8BBC()
{
  v1 = sec_trust_copy_ref(*(v0 + 16));
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22FEA8C68;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return sub_22FEA79E8(v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_22FEA8C68(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22FEA8D68, 0, 0);
}

uint64_t sub_22FEA8D68()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 104));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FEA8DDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22FEA8ED8;

  return v9(a1, v4 + 16);
}

uint64_t sub_22FEA8ED8()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_22FEA9004;
  }

  else
  {
    v3 = sub_22FEA8FEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA901C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, sub_22FEA9E70, v9);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t AttestedTLS.Configurator.expiration.getter(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_22FFB0908();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEA9210, 0, 0);
}

uint64_t sub_22FEA9210()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0[5] + *(v0[4] + 48));
  v0[10] = v1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEA92A8, v1, 0);
}

uint64_t sub_22FEA92A8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 88) = v1;
  v2 = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEA9348, 0, 0);
}

uint64_t sub_22FEA9348()
{
  v26 = *MEMORY[0x277D85DE8];
  *(v0 + 16) = 0;
  v1 = SecIdentityCopyCertificate(*(v0 + 88), (v0 + 16));
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 24);
    sub_22FFB0838();

    goto LABEL_13;
  }

  v6 = v2;
  v7 = SecCertificateCopyNotValidAfterDate();
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = *(v0 + 56);
      v10 = *(v0 + 64);
      v11 = *(v0 + 48);
      (*(v10 + 56))(v11, 1, 1, v9);
      sub_22FEA972C();
      sub_22FFB1B18();

      if ((*(v10 + 48))(v11, 1, v9) != 1)
      {
        v12 = *(v0 + 88);
        v14 = *(v0 + 64);
        v13 = *(v0 + 72);
        v16 = *(v0 + 48);
        v15 = *(v0 + 56);
        v17 = *(v0 + 24);

        v18 = *(v14 + 32);
        v18(v13, v16, v15);
        v18(v17, v13, v15);
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 24);
  sub_22FFB0838();

LABEL_13:
  v21 = *(v0 + 72);
  v22 = *(v0 + 48);

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_22FEA9548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = *(type metadata accessor for AttestedTLS.Configurator() - 8);
  v12 = v3 + ((*(v11 + 80) + 48) & ~*(v11 + 80));

  return sub_22FEA81A8(a1, a2, a3, v12, v7, v8, v9, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22FEA9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(*(v9 - 8) + 64);
  v13 = (*(*(v9 - 8) + 80) + 48) & ~*(*(v9 - 8) + 80);
  v14 = *(type metadata accessor for AttestedTLS.Configurator() - 8);
  return sub_22FEA885C(a1, a2, a3, a4, v4 + v13, v4 + ((v13 + v12 + *(v14 + 80)) & ~*(v14 + 80)), v8, v9, v10, v11);
}

unint64_t sub_22FEA972C()
{
  result = qword_27DAF1580[0];
  if (!qword_27DAF1580[0])
  {
    sub_22FFB0908();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1580);
  }

  return result;
}

void sub_22FEA978C(uint64_t a1)
{
  sub_22FFB12F8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      _s15IdentityStorageCMa();
      if (v5 <= 0x3F)
      {
        sub_22FEA9D60();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22FEA985C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22FFB12F8();
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

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_22FEA9AB8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FFB12F8() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((((((((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v22 = 0;
    v23 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + 7 + v17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v15)
      {
        v26 = *(v8 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = (a1 + v16) & ~v13;
        if (v11 == v15)
        {
          v28 = *(v10 + 56);

          v28(v27, a2, v11);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v29 = (a2 - 1);
          }

          *((((((v18 + v27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) = v29;
        }
      }

      return;
    }
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if (v19)
  {
    v25 = ~v15 + a2;
    bzero(a1, v19);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(a1 + v19) = v24;
    }

    else
    {
      *(a1 + v19) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + v19) = v24;
  }
}

void sub_22FEA9D60()
{
  if (!qword_28148F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1610, &qword_22FFB4800);
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F088);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22FEA9E0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_22FEA9E44(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22FEA9E88(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v17 = v2[5];
  v8 = *(*(v6 - 8) + 64);
  v9 = (*(*(v6 - 8) + 80) + 72) & ~*(*(v6 - 8) + 80);
  v10 = *(type metadata accessor for AttestedTLS.Configurator() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = swift_task_alloc();
  *(v4 + 16) = v15;
  *v15 = v4;
  v15[1] = sub_22FEAA538;

  return sub_22FEA8B80(a1, a2, v12, v13, v14, v2 + v9, v2 + v11, v5);
}

uint64_t sub_22FEAA014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FEAA0D4;

  return sub_22FEA8DDC(a1, v4, v5, v7);
}

uint64_t sub_22FEAA0D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22FEAA1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1680, &unk_22FFB4B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAA230(uint64_t a1)
{
  v2 = _s11CertificateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAA2A0(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = v2[2];
  v18 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = *(type metadata accessor for AttestedTLS.Configurator() - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22FEAA538;

  return sub_22FEA83F8(a1, a2, v2 + v11, v13, v14, v7, v18, v8);
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_22FEAA440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FEAA538;

  return sub_22FEA859C(a1, v4, v5, v7);
}

uint64_t AttestedTLS.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t _s16CloudAttestation3SEPO0B0V5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEAA614()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEAA65C()
{
  result = qword_27DAF1750;
  if (!qword_27DAF1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1750);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation11AttestedTLSO7KeyTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22FEAA830(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEAA884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_22FEAA8F0()
{
  error[44] = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277CDBF00])
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v1 = *v0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, 0);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v145 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FFB2F70;
      v101 = *MEMORY[0x277CDC028];
      *(inited + 32) = *MEMORY[0x277CDC028];
      v102 = *MEMORY[0x277CDC048];
      if (!*MEMORY[0x277CDC048])
      {
LABEL_26:
        __break(1u);
        return;
      }

      v103 = inited;
      type metadata accessor for CFString(0);
      v105 = v104;
      *(v103 + 40) = v102;
      v106 = *MEMORY[0x277CDC018];
      *(v103 + 64) = v104;
      *(v103 + 72) = v106;
      v107 = v101;
      v108 = v102;
      v109 = v106;
      v110 = sub_22FFB17F8();
      type metadata accessor for CFNumber(0);
      *(v103 + 80) = v110;
      v141 = *MEMORY[0x277CDC158];
      v111 = *MEMORY[0x277CDC158];
      *(v103 + 104) = v112;
      *(v103 + 112) = v111;
      v113 = *MEMORY[0x277CDC170];
      *(v103 + 120) = *MEMORY[0x277CDC170];
      v114 = *MEMORY[0x277CDC4F0];
      *(v103 + 144) = v105;
      *(v103 + 152) = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
      v115 = swift_initStackObject();
      *(v115 + 16) = xmmword_22FFB2F60;
      v116 = *MEMORY[0x277CDC408];
      *(v115 + 32) = *MEMORY[0x277CDC408];
      v117 = MEMORY[0x277D839B0];
      *(v115 + 40) = 1;
      v118 = *MEMORY[0x277CDC418];
      *(v115 + 64) = v117;
      *(v115 + 72) = v118;
      *(v115 + 80) = 1;
      v119 = *MEMORY[0x277CDBEC0];
      *(v115 + 104) = v117;
      *(v115 + 112) = v119;
      type metadata accessor for SecAccessControl(0);
      *(v115 + 144) = v120;
      v26 = v145;
      *(v115 + 120) = v145;
      v121 = v118;
      v122 = v119;
      v123 = v145;
      v124 = v141;
      v125 = v113;
      v126 = v114;
      v127 = v116;
      sub_22FFA7650(v115);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
      sub_22FEAB490();
      v128 = sub_22FFB1408();

      type metadata accessor for CFDictionary(0);
      v129 = MEMORY[0x277CDBFD0];
      *(v103 + 160) = v128;
      v130 = *v129;
      *(v103 + 184) = v131;
      *(v103 + 192) = v130;
      *(v103 + 224) = MEMORY[0x277D839B0];
      *(v103 + 200) = 0;
      v132 = v130;
      sub_22FFA7778(v103);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
      goto LABEL_15;
    }

    if (v1 == 3)
    {
      v144 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_22FFB2F50;
      v39 = *MEMORY[0x277CDC028];
      *(v38 + 32) = *MEMORY[0x277CDC028];
      v140 = v39;
      v40 = *MEMORY[0x277CDC078];
      if (!*MEMORY[0x277CDC078])
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v41 = v38;
      type metadata accessor for CFString(0);
      *(v41 + 40) = v40;
      v139 = *MEMORY[0x277CDC158];
      v42 = *MEMORY[0x277CDC158];
      *(v41 + 64) = v43;
      *(v41 + 72) = v42;
      v138 = *MEMORY[0x277CDC170];
      *(v41 + 80) = *MEMORY[0x277CDC170];
      v44 = *MEMORY[0x277CDC4F0];
      *(v41 + 104) = v43;
      *(v41 + 112) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_22FFB2F60;
      v46 = *MEMORY[0x277CDC408];
      *(v45 + 32) = *MEMORY[0x277CDC408];
      v47 = MEMORY[0x277D839B0];
      *(v45 + 40) = 1;
      v48 = *MEMORY[0x277CDC418];
      *(v45 + 64) = v47;
      *(v45 + 72) = v48;
      *(v45 + 80) = 1;
      v49 = *MEMORY[0x277CDBEC0];
      *(v45 + 104) = v47;
      *(v45 + 112) = v49;
      type metadata accessor for SecAccessControl(0);
      *(v45 + 144) = v50;
      v26 = v144;
      *(v45 + 120) = v144;
      v51 = v48;
      v52 = v49;
      v53 = v144;
      v54 = v140;
      v55 = v40;
      v56 = v139;
      v57 = v138;
      v58 = v44;
      v59 = v46;
      sub_22FFA7650(v45);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
      sub_22FEAB490();
      v60 = sub_22FFB1408();

      type metadata accessor for CFDictionary(0);
      v61 = MEMORY[0x277CDBFD0];
      *(v41 + 120) = v60;
      v62 = *v61;
      *(v41 + 144) = v63;
      *(v41 + 152) = v62;
      *(v41 + 184) = MEMORY[0x277D839B0];
      *(v41 + 160) = 0;
      v64 = v62;
      sub_22FFA7778(v41);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
      goto LABEL_15;
    }

LABEL_11:

    v65 = v1;
    v66 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_22FFB2F70;
    v68 = *MEMORY[0x277CDC028];
    *(v67 + 32) = *MEMORY[0x277CDC028];
    v69 = *MEMORY[0x277CDC040];
    type metadata accessor for CFString(0);
    v71 = v70;
    *(v67 + 40) = v69;
    v72 = *MEMORY[0x277CDC018];
    *(v67 + 64) = v70;
    *(v67 + 72) = v72;
    v73 = v68;
    v74 = v69;
    v75 = v72;
    v76 = sub_22FFB17F8();
    type metadata accessor for CFNumber(0);
    *(v67 + 80) = v76;
    v143 = *MEMORY[0x277CDC158];
    v77 = *MEMORY[0x277CDC158];
    *(v67 + 104) = v78;
    *(v67 + 112) = v77;
    v79 = *MEMORY[0x277CDC170];
    *(v67 + 120) = *MEMORY[0x277CDC170];
    v80 = *MEMORY[0x277CDC4F0];
    *(v67 + 144) = v71;
    *(v67 + 152) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_22FFB2F60;
    v82 = *MEMORY[0x277CDC408];
    *(v81 + 32) = *MEMORY[0x277CDC408];
    v83 = MEMORY[0x277D839B0];
    *(v81 + 40) = 1;
    v84 = v3;
    v85 = *MEMORY[0x277CDC418];
    *(v81 + 64) = v83;
    *(v81 + 72) = v85;
    *(v81 + 80) = 1;
    v86 = *MEMORY[0x277CDBEC0];
    *(v81 + 104) = v83;
    *(v81 + 112) = v86;
    type metadata accessor for SecAccessControl(0);
    *(v81 + 144) = v87;
    *(v81 + 120) = v84;
    v88 = v85;
    v26 = v84;
    v89 = v86;
    v90 = v84;
    v91 = v143;
    v92 = v79;
    v93 = v80;
    v94 = v82;
    sub_22FFA7650(v81);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
    sub_22FEAB490();
    v95 = sub_22FFB1408();

    type metadata accessor for CFDictionary(0);
    v96 = MEMORY[0x277CDBFD0];
    *(v67 + 160) = v95;
    v97 = *v96;
    *(v67 + 184) = v98;
    *(v67 + 192) = v97;
    *(v67 + 224) = MEMORY[0x277D839B0];
    *(v67 + 200) = 0;
    v99 = v97;
    sub_22FFA7778(v67);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_16;
  }

  if (v1 != 1)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_22FFB2F70;
  v5 = *MEMORY[0x277CDC028];
  *(v4 + 32) = *MEMORY[0x277CDC028];
  v6 = *MEMORY[0x277CDC040];
  type metadata accessor for CFString(0);
  v8 = v7;
  *(v4 + 40) = v6;
  v9 = *MEMORY[0x277CDC018];
  *(v4 + 64) = v7;
  *(v4 + 72) = v9;
  v10 = v5;
  v11 = v6;
  v12 = v9;
  v13 = sub_22FFB17F8();
  type metadata accessor for CFNumber(0);
  *(v4 + 80) = v13;
  v142 = *MEMORY[0x277CDC158];
  v14 = *MEMORY[0x277CDC158];
  *(v4 + 104) = v15;
  *(v4 + 112) = v14;
  v16 = *MEMORY[0x277CDC170];
  *(v4 + 120) = *MEMORY[0x277CDC170];
  v17 = *MEMORY[0x277CDC4F0];
  *(v4 + 144) = v8;
  *(v4 + 152) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB2F60;
  v19 = *MEMORY[0x277CDC408];
  *(v18 + 32) = *MEMORY[0x277CDC408];
  v20 = MEMORY[0x277D839B0];
  *(v18 + 40) = 1;
  v21 = v3;
  v22 = *MEMORY[0x277CDC418];
  *(v18 + 64) = v20;
  *(v18 + 72) = v22;
  *(v18 + 80) = 1;
  v23 = *MEMORY[0x277CDBEC0];
  *(v18 + 104) = v20;
  *(v18 + 112) = v23;
  type metadata accessor for SecAccessControl(0);
  *(v18 + 144) = v24;
  *(v18 + 120) = v21;
  v25 = v22;
  v26 = v21;
  v27 = v23;
  v28 = v21;
  v29 = v142;
  v30 = v16;
  v31 = v17;
  v32 = v19;
  sub_22FFA7650(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
  sub_22FEAB490();
  v33 = sub_22FFB1408();

  type metadata accessor for CFDictionary(0);
  v34 = MEMORY[0x277CDBFD0];
  *(v4 + 160) = v33;
  v35 = *v34;
  *(v4 + 184) = v36;
  *(v4 + 192) = v35;
  *(v4 + 224) = MEMORY[0x277D839B0];
  *(v4 + 200) = 0;
  v37 = v35;
  sub_22FFA7778(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
LABEL_15:
  swift_arrayDestroy();
LABEL_16:
  error[0] = 0;
  type metadata accessor for CFString(0);
  sub_22FEAB544(&qword_27DAF1500, type metadata accessor for CFString);
  v133 = sub_22FFB1408();

  RandomKey = SecKeyCreateRandomKey(v133, error);

  v135 = error[0];
  if (!error[0])
  {
    if (RandomKey)
    {

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for CFError(0);
  sub_22FEAB544(&qword_27DAF1518, type metadata accessor for CFError);
  swift_allocError();
  *v136 = v135;
  swift_willThrow();

LABEL_20:
  v137 = *MEMORY[0x277D85DE8];
}

unint64_t sub_22FEAB490()
{
  result = qword_27DAF1778;
  if (!qword_27DAF1778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1770, &unk_22FFB2FF0);
    sub_22FEAB544(&qword_27DAF1500, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1778);
  }

  return result;
}

uint64_t sub_22FEAB544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FEAB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22FEAE9C4(a3, v24 - v10);
  v12 = sub_22FFB17B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22FEAEA34(v11, &qword_27DAF1618, &qword_22FFB30A0);
  }

  else
  {
    sub_22FFB17A8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22FFB1768();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22FFB1518() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22FEAEA34(a3, &qword_27DAF1618, &qword_22FFB30A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FEAEA34(a3, &qword_27DAF1618, &qword_22FFB30A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t AttestedTLS.OptionsFactory.init(attestor:validator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22FFB12E8();
  v10 = type metadata accessor for AttestedTLS.OptionsFactory();
  (*(*(a3 - 8) + 32))(a5 + *(v10 + 52), a1, a3);
  return (*(*(a4 - 8) + 32))(a5 + *(v10 + 56), a2, a4);
}

uint64_t AttestedTLS.OptionsFactory.createTLSOptions(using:queue:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEABA24;

  return (sub_22FEADB3C)(v3 + 16, a2, a3);
}

uint64_t sub_22FEABA24(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t AttestedTLS.OptionsFactory.createTLSOptions(using:lifetime:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22FEABC3C;

  return (sub_22FEADB3C)(a1, a4, a5);
}

uint64_t sub_22FEABC3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:queue:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEABE00;

  return AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:lifetime:queue:)((v3 + 16), 0x28093E61EE400000, 195, a2, a3);
}

uint64_t sub_22FEABE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 24);
  v9 = *v4;
  *(v9 + 32) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v10 = *(v9 + 8);

    return v10(a1, a2, a3);
  }
}

uint64_t AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:lifetime:queue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v8 = *(a5 - 8);
  v6[20] = v8;
  v6[21] = *(v8 + 64);
  v9 = swift_task_alloc();
  v10 = *a1;
  v6[22] = v9;
  v6[23] = v10;

  return MEMORY[0x2822009F8](sub_22FEAC020, 0, 0);
}

uint64_t sub_22FEAC020()
{
  v1 = v0[23];
  if (v1 == 3)
  {
    v2 = v0[19];
    v3 = sub_22FFB12D8();
    v4 = sub_22FFB1838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FE99000, v3, v4, "Curve25519 keys not yet supported", v5, 2u);
      MEMORY[0x23190EFF0](v5, -1, -1);
    }

    v1 = v0[23];
  }

  v6 = sub_22FFB1328();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[24] = sub_22FFB1318();
  v0[25] = sub_22FFB1308();
  v0[14] = v1;
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_22FEAC174;
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[15];
  v13 = v0[16];

  return sub_22FEAC6BC(v0 + 14, v12, v13, v10);
}

uint64_t sub_22FEAC174(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_22FEAC644;
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = sub_22FEAC29C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FEAC29C()
{
  v1 = v0[28];
  v2 = v0[25];
  v24 = v2;
  v3 = v0[22];
  v36 = v0[23];
  v4 = v0[20];
  v31 = v0[21];
  v5 = v0[18];
  v37 = v0[19];
  v6 = v0[17];
  v35 = v0[16];
  v34 = v0[15];
  _s15IdentityStorageCMa();
  v7 = swift_allocObject();
  v33 = v1;
  swift_defaultActor_initialize();
  *(v7 + 112) = v33;
  v0[6] = sub_22FEADD68;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FEA87AC;
  v0[5] = &block_descriptor_0;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  sec_protocol_options_set_challenge_block(v2, v8, v6);
  _Block_release(v8);
  v29 = *(v4 + 16);
  v23 = v3;
  v29(v3, v37, v5);
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = v5[2];
  *(v11 + 2) = v28;
  v27 = v5[3];
  *(v11 + 3) = v27;
  v26 = v5[4];
  *(v11 + 4) = v26;
  v25 = v5[5];
  *(v11 + 5) = v25;
  v12 = *(v4 + 32);
  v12(&v11[v10], v3, v5);
  v13 = v12;
  v0[12] = sub_22FEADD88;
  v0[13] = v11;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_22FEA901C;
  v0[11] = &block_descriptor_10;
  v14 = _Block_copy(v0 + 8);
  v15 = v0[13];

  sec_protocol_options_set_verify_block(v24, v14, v6);
  _Block_release(v14);
  sec_protocol_options_set_min_tls_protocol_version(v24, tls_protocol_version_TLSv13);
  sec_protocol_options_set_peer_authentication_required(v24, 1);

  swift_unknownObjectRelease();
  v29(v23, v37, v5);
  v16 = swift_allocObject();
  *&v17 = v28;
  *(&v17 + 1) = v27;
  *&v18 = v26;
  *(&v18 + 1) = v25;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  v13(v16 + v10, v23, v5);
  *(v16 + v32) = v36;
  v19 = (v16 + v30);
  *v19 = v34;
  v19[1] = v35;
  *(v16 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_22FEA6854(v36);

  v20 = v0[1];
  v21 = v0[24];

  return v20(v21, &unk_22FFB3038, v16);
}

uint64_t sub_22FEAC644()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];

  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_22FEAC6BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a2;
  v5[3] = a3;
  v7 = *(a4 + 16);
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(*(_s11CertificateVMa(0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  v5[9] = v11;
  v5[10] = v12;

  return MEMORY[0x2822009F8](sub_22FEAC7B0, 0, 0);
}

uint64_t sub_22FEAC7B0()
{
  v13 = v0[10];
  sub_22FEAA8F0();
  v0[11] = v1;
  v2 = v1;
  v3 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[5] + *(v3 + 52), v0[6]);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = *(v3 + 32);
  *v5 = v0;
  v5[1] = sub_22FEA6590;
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[2];
  v11 = v0[3];

  return sub_22FEA33D0(v7, v4, v8, v10, v11, v9, v6);
}

uint64_t sub_22FEAC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a2;
  v11[4] = a3;
  v12 = sub_22FFB17B8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FFB30F0;
  v13[5] = v11;

  sub_22FEAB58C(0, 0, v10, &unk_22FFB3100, v13);
}

uint64_t sub_22FEACA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return MEMORY[0x2822009F8](sub_22FEACA6C, a3, 0);
}

uint64_t sub_22FEACA6C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 40) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22FEACAE0, 0, 0);
}

uint64_t sub_22FEACAE0()
{
  v1 = v0[5];
  v2 = v0[3];
  sec_identity_create(v1);
  v2();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEACB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a3;
  v32 = a4;
  v29 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v30 = &v29 - v15;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v16 = type metadata accessor for AttestedTLS.OptionsFactory();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a5, v16);
  v21 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a6;
  *(v22 + 3) = a7;
  *(v22 + 4) = a8;
  *(v22 + 5) = a9;
  v23 = v31;
  v24 = v32;
  *(v22 + 6) = v29;
  *(v22 + 7) = v23;
  *(v22 + 8) = v24;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v25 = sub_22FFB17B8();
  v26 = v30;
  (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_22FFB30B8;
  v27[5] = v22;
  swift_unknownObjectRetain();

  sub_22FEAB58C(0, 0, v26, &unk_22FFB30C8, v27);
}

uint64_t sub_22FEACDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v10;
  v8[13] = v11;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_22FEACDFC, 0, 0);
}

uint64_t sub_22FEACDFC()
{
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v1 = sec_trust_copy_ref(*(v0 + 48));
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v3 = type metadata accessor for AttestedTLS.OptionsFactory();
  *v2 = v0;
  v2[1] = sub_22FEACED0;
  v4 = *(v0 + 72);

  return sub_22FEAD044(v1, v3);
}

uint64_t sub_22FEACED0(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_22FEACFD0, 0, 0);
}

uint64_t sub_22FEACFD0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 128));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FEAD044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(_s11CertificateVMa(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEAD0D8, 0, 0);
}

uint64_t sub_22FEAD0D8()
{
  v1 = SecTrustCopyCertificateChain(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_22FFB16D8();
    }
  }

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22FEAD438()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_22FEAD650;
  }

  else
  {
    v3 = sub_22FEAD54C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEAD54C()
{
  v1 = v0[4];
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  v6 = v0[6];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "SecTrust verification completedly successfully", v7, 2u);
    MEMORY[0x23190EFF0](v7, -1, -1);
    v8 = v2;
  }

  else
  {
    v8 = v0[6];
    v6 = v2;
  }

  sub_22FEAA230(v5);
  v9 = v0[5];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_22FEAD650()
{
  v1 = *(v0 + 40);

  sub_22FEAA230(v1);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = v2;
  v5 = sub_22FFB12D8();
  v6 = sub_22FFB1838();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FE99000, v5, v6, "SecTrust verification failed: %@", v7, 0xCu);
    sub_22FEAEA34(v8, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v8, -1, -1);
    MEMORY[0x23190EFF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_22FEAD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a5;
  v8[6] = a2;
  v14 = swift_task_alloc();
  v8[8] = v14;
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v18;
  v15 = type metadata accessor for AttestedTLS.OptionsFactory();
  *v14 = v8;
  v14[1] = sub_22FEAD8D0;

  return sub_22FEAC6BC(v8 + 6, a3, a4, v15);
}

uint64_t sub_22FEAD8D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_22FEADAE0;
    v8 = 0;
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 80) = a1;
    v7 = sub_22FEADA04;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22FEADA04()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;

  return MEMORY[0x2822009F8](sub_22FEADA7C, 0, 0);
}

uint64_t sub_22FEADA7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEADAF8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FEADB3C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEADBF0;

  return AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:queue:)((v3 + 16), a2, a3);
}

uint64_t sub_22FEADBF0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FEAEC1C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22FEADD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = *(type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  return sub_22FEACB6C(a1, a2, a3, a4, v4 + ((*(v13 + 80) + 48) & ~*(v13 + 80)), v9, v10, v11, v12);
}

uint64_t sub_22FEADE50()
{
  v2 = v0[2];
  v16 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v1[2] = v2;
  v1[3] = v16;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *(type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + v8 + 8);
  v12 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  v1[6] = v13;
  *v13 = v1;
  v13[1] = sub_22FEAEC20;

  return sub_22FEAD7C8(v0 + v6, v9, v10, v11, v12, v2, v16, v3);
}

uint64_t sub_22FEADFCC(uint64_t a1)
{
  result = sub_22FFB12F8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FEAE070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_22FFB12F8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(*(a3 + 16) - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + v16;
  if (a2 <= v19)
  {
    goto LABEL_31;
  }

  v21 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_30:
      if (v19)
      {
LABEL_31:
        if (v8 == v19)
        {
          v28 = *(v7 + 48);

          return v28(a1);
        }

        else
        {
          v30 = (a1 + v20) & ~v16;
          if (v11 == v19)
          {
            v31 = *(v10 + 48);

            return v31(v30, v11);
          }

          else
          {
            v32 = *(v13 + 48);
            v33 = (v30 + v17 + v18) & ~v18;

            return v32(v33, v14, v9);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_30;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v19 + (v27 | v25) + 1;
}

void sub_22FEAE35C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FFB12F8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_53:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v31 = *(v9 + 56);

    v31(a1, a2);
  }

  else
  {
    v32 = &a1[v23] & ~v19;
    if (v14 == v22)
    {
      v33 = *(v13 + 56);

      v33(v32, a2, v14);
    }

    else
    {
      v34 = *(v16 + 56);
      v35 = (v32 + v20 + v21) & ~v21;

      v34(v35, a2, v17, v11);
    }
  }
}

uint64_t sub_22FEAE6DC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[2];
  v5 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v8;
  v3[5] = v7;
  v9 = *(type metadata accessor for AttestedTLS.OptionsFactory() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2[8];
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_22FEAE810;

  return sub_22FEACDC8(a1, a2, v11, v12, v13, v2 + v10, v6, v5);
}

uint64_t sub_22FEAE810()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22FEAE904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FEAA0D4;

  return sub_22FEA8DDC(a1, v4, v5, v7);
}

uint64_t sub_22FEAE9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEAEA34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22FEAEA94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FEAA538;

  return sub_22FEACA48(a1, a2, v6, v7, v8);
}

uint64_t sub_22FEAEB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FEAA538;

  return sub_22FEA859C(a1, v4, v5, v7);
}

uint64_t CeremonyAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error();
      sub_22FEAF398();
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error();
    sub_22FEAF398();
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

uint64_t CeremonyAttestor.assetProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_22FE9B84C(a1, v1 + 24);
}

void (*CeremonyAttestor.assetProvider.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 24, v3);
  return sub_22FEAEF7C;
}

void sub_22FEAEF7C(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  sub_22FE9B84C(v1, v2 + 24);

  free(v1);
}

uint64_t CeremonyAttestor.transparencyProver.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 104));

  return sub_22FE9B84C(a1, v1 + 104);
}

void (*CeremonyAttestor.transparencyProver.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 104, v3);
  return sub_22FEAF0A4;
}

void sub_22FEAF0A4(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  sub_22FE9B84C(v1, v2 + 104);

  free(v1);
}

uint64_t CeremonyAttestor.init()@<X0>(uint64_t a1@<X8>)
{
  NodeAttestor.init()(a1);
  *(a1 + 144) = 0;
  v4 = &type metadata for CeremonyAttestor.AssetProvider;
  v5 = &off_2844D9650;
  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  return sub_22FE9B84C(&v3, a1 + 24);
}

uint64_t CeremonyAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEAF29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_22FEAF398()
{
  result = qword_27DAF1810;
  if (!qword_27DAF1810)
  {
    type metadata accessor for NodeAttestor.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1810);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22FEAF43C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_22FEAF4D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
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

uint64_t sub_22FEAF51C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
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

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_22FEAF7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEAF83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CeremonyValidator.transparencyVerifier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_22FE9B84C(a1, v1 + 8);
}

void (*CeremonyValidator.transparencyVerifier.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 8, v3);
  return sub_22FEAF988;
}

void sub_22FEAF988(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 8));
  sub_22FE9B84C(v1, v2 + 8);

  free(v1);
}

uint64_t CeremonyValidator.init()@<X0>(uint64_t a1@<X8>)
{
  NodeValidator.init()(a1);
  result = type metadata accessor for NodeValidator();
  *(a1 + *(result + 40)) = 0;
  *(a1 + *(result + 68)) = 0;
  return result;
}

uint64_t CeremonyValidator.validate(bundle:nonce:signedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for NodeValidator();
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEAFAB0, 0, 0);
}

uint64_t sub_22FEAFAB0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_22FEAF7D0(v0[9], v2);
  v4 = *(v1 + 84);
  v5 = *(v2 + v4);
  v6 = v3;

  *(v2 + v4) = v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_22FEAFB80;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];
  v14 = v0[3];

  return NodeValidator.validate(bundle:nonce:)(v13, v14, v11, v12, v9, v10);
}

uint64_t sub_22FEAFB80()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22FEAFD04;
  }

  else
  {
    v3 = sub_22FEAFC94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEAFC94()
{
  sub_22FEAFE50(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEAFD04()
{
  sub_22FEAFE50(v0[11]);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t CeremonyValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEAFE50(uint64_t a1)
{
  v2 = type metadata accessor for NodeValidator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for CeremonyValidator()
{
  result = qword_27DAF1820;
  if (!qword_27DAF1820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEB0038()
{
  result = type metadata accessor for NodeValidator();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEB00FC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FEB0168()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22FEB01BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FEB0204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FEB0260(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22FFB0908();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FEB02E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22FFB0908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
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
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
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
      v19 = v14;
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

void sub_22FEB054C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_22FFB0908() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
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
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_22FEB0854()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B0, &qword_22FFB3358);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_22FFB0958();
  __swift_allocate_value_buffer(v4, qword_2814913A0);
  v5 = __swift_project_value_buffer(v4, qword_2814913A0);
  sub_22FFB0918();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEB0984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B0, &qword_22FFB3358);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_22FFB0958();
  __swift_allocate_value_buffer(v4, qword_281491418);
  v5 = __swift_project_value_buffer(v4, qword_281491418);
  sub_22FFB0918();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEB0AB4()
{
  result = sub_22FFB0728();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_27DB05990 = result;
    *algn_27DB05998 = v1;
  }

  return result;
}

uint64_t sub_22FEB0B04()
{
  result = sub_22FFB0728();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_281491378 = result;
    unk_281491380 = v1;
  }

  return result;
}

uint64_t sub_22FEB0B54(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_22FEA5608(a1, a2);
  sub_22FFB0828();
  sub_22FEB0EA8();
  sub_22FFB18A8();
  if (v27)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v24 = xmmword_22FFB2D10;
    v12 = MEMORY[0x277D84B78];
    v13 = MEMORY[0x277D84BC0];
    do
    {
      v14 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v15 = swift_allocObject();
      *(v15 + 16) = v24;
      *(v15 + 56) = v12;
      *(v15 + 64) = v13;
      *(v15 + 32) = v14;
      v16 = sub_22FFB14D8();
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22FEC2E8C(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_22FEC2E8C((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      sub_22FFB18A8();
    }

    while (v27 != 1);
  }

  (*(v23 + 8))(v7, v4);
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
  sub_22FEB0F00();
  v10 = sub_22FFB1458();

  return v10;
}

unint64_t sub_22FEB0E54()
{
  result = qword_281491348;
  if (!qword_281491348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491348);
  }

  return result;
}

unint64_t sub_22FEB0EA8()
{
  result = qword_281491358;
  if (!qword_281491358)
  {
    sub_22FFB0818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491358);
  }

  return result;
}

unint64_t sub_22FEB0F00()
{
  result = qword_28148F130;
  if (!qword_28148F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F130);
  }

  return result;
}

double Duration.timeInterval.getter()
{
  v0 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v1 * 1.0e-18 + v0;
}

uint64_t IORegistryEntry.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t IORegistryEntry.property<A>(key:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v5, v6, *MEMORY[0x277CBECE8], 0);

  if (CFProperty)
  {
    v8 = MEMORY[0x277CC9318];
    result = swift_dynamicCast();
    if (!result)
    {
      return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
    }

    if (a1 == v8)
    {
      v13 = swift_dynamicCast();
      return (*(*(v8 - 8) + 56))(a2, v13 ^ 1u, 1, v8);
    }

    v10 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (!v10)
      {
        v11 = BYTE6(v19);
        goto LABEL_19;
      }

LABEL_16:
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        __break(1u);
        return result;
      }

      v11 = HIDWORD(v18) - v18;
      goto LABEL_19;
    }

    if (v10 == 2)
    {
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      v16 = __OFSUB__(v14, v15);
      v11 = v14 - v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_19:
    v17 = *(a1 - 8);
    if (v11 == *(v17 + 72))
    {
      MEMORY[0x28223BE20](result);
      sub_22FFB07A8();
      sub_22FEA55AC(v18, v19);
      return (*(v17 + 56))(a2, 0, 1, a1);
    }

    else
    {
      (*(v17 + 56))(a2, 1, 1, a1);
      return sub_22FEA55AC(v18, v19);
    }
  }

  v12 = *(*(a1 - 8) + 56);

  return v12(a2, 1, 1, a1);
}

SecTrustRef sub_22FEB1380(uint64_t a1)
{
  v1 = 0;
  trust[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D84F90];
  trust[0] = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  v4 = a1 + 40;
LABEL_2:
  v5 = (v4 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (sub_22FFB1AB8() != v3)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    sub_22FEA5608(v8, *v5);
    v9 = sub_22FFB07B8();
    v10 = SecCertificateCreateWithData(0, v9);

    v11 = sub_22FEA55AC(v8, v7);
    ++v1;
    v5 += 2;
    if (v10)
    {
      MEMORY[0x23190DE60](v11);
      if (*((trust[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((trust[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((trust[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22FFB1708();
      }

      sub_22FFB1728();
      v2 = trust[0];
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != v3)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_12:
  trust[0] = 0;
  type metadata accessor for SecCertificate(0);
  v13 = sub_22FFB16C8();

  type metadata accessor for SecPolicy(0);
  v14 = sub_22FFB16C8();
  v15 = SecTrustCreateWithCertificates(v13, v14, trust);

  result = trust[0];
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = 0;
LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEB157C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_22FFB0798();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_22FEB1604@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  result = sysctlbyname(a1, 0, &v8, 0, 0);
  if (result)
  {
    goto LABEL_5;
  }

  *&v9 = sub_22FF55750(v8);
  *(&v9 + 1) = v5;
  sub_22FF55368(&v9, 0);
  *v10 = v9;
  v6 = sub_22FEB1798(v10, a1, &v8);
  result = v10[0];
  if ((v6 & 1) == 0)
  {
    result = sub_22FEA55AC(v10[0], v10[1]);
LABEL_5:
    *a2 = xmmword_22FFB2D00;
    goto LABEL_6;
  }

  *a2 = *v10;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}