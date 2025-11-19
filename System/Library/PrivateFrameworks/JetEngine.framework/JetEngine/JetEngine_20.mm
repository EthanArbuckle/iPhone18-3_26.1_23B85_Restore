uint64_t sub_1AB1914D8(uint64_t a1)
{
  v2 = sub_1AB45FB04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437630);
    v9 = sub_1AB4615A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1AB1917D0(&qword_1EB433440);
      v16 = sub_1AB460444();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1AB1917D0(&qword_1EB433438);
          v23 = sub_1AB460504();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1AB1917D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AB45FB04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_75Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v8 = sub_1AB461354();
  v5[6] = v8;
  v5[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[8] = v9;
  v5[9] = *(a3 - 8);
  v5[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[11] = v10;
  *v10 = v5;
  v10[1] = sub_1AB1919E4;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v9, a2, a3);
}

uint64_t sub_1AB1919E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1AB191CA4;
  }

  else
  {
    v2 = sub_1AB191AF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB191AF8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[4];
    (*(v0[7] + 8))(v2, v0[6]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = BaseObjectGraph._downcast<A>(to:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v6;
    (*(*v6 + 104))(sub_1AB191D54, v7, v3);
  }

  else
  {
    v8 = v0[10];
    v9 = v0[2];
    v10 = *(v1 + 32);
    v10(v8, v2, v3);
    v10(v9, v8, v3);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1AB191CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1AB191D70(uint64_t a1, uint64_t a2)
{
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](a1, a2);
  MEMORY[0x1AC59BA20](10592, 0xE200000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1AB191E00(uint64_t a1, uint64_t a2)
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000030, 0x80000001AB500A70);
  MEMORY[0x1AC59BA20](a1, a2);
  MEMORY[0x1AC59BA20](10592, 0xE200000000000000);
  return 0;
}

uint64_t Models.AdamID.init(from:)()
{
  sub_1AB193210();
  v0 = sub_1AB461484();
  return _s9JetEngine6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v0, v1);
}

uint64_t Models.AdamID.init(from:)(void *a1)
{
  v2 = [a1 description];
  v3 = sub_1AB460544();
  v5 = v4;

  v6 = _s9JetEngine6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v3, v5);
  return v6;
}

uint64_t Models.AdamID.uint64.getter(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v23 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v23;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v23 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_1AB461714();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v21 = result;

  v7 = sub_1AB1924C4(v21, a2, 10);
  v20 = v22;

LABEL_65:
  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id Models.AdamID.nsNumber.getter(uint64_t a1, unint64_t a2)
{
  v2 = Models.AdamID.uint64.getter(a1, a2);
  if (v3)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  }
}

uint64_t Models.AdamID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB19237C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s9JetEngine6ModelsO6AdamIDV8rawValueAESS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1AB1923AC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1AB192A44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AB1923D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB192470()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

unsigned __int8 *sub_1AB1924C4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1AB4607D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AB45005C();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
      result = sub_1AB461714();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1AB192A44(void *a1)
{
  v3 = sub_1AB4616A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v1)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1Tm(v35, v35[3]);
  v8 = sub_1AB461DB4();
  v7 = v8;
  v10 = v9;
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v20 = sub_1AB4616B4();
    swift_allocError();
    v22 = v21;
    (*(v4 + 16))(v21, v6, v3);
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    goto LABEL_16;
  }

  v36 = v4;
  v31 = v8;
  v32 = v9;
  v33 = 0;
  v34 = v11;
  v30 = v11;

  v12 = sub_1AB460724();
  if (!v13)
  {
LABEL_13:

    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000031, 0x80000001AB5009A0);
    goto LABEL_14;
  }

  while (1)
  {
    if (v12 == 48 && v13 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v14 = sub_1AB461DA4();

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v12 = sub_1AB460724();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v31 = v7;
  v32 = v10;
  v33 = 0;
  v34 = v30;

  v24 = sub_1AB460724();
  if (!v25)
  {
LABEL_29:

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v7;
  }

  v26 = v24;
  v27 = v25;
  while (2)
  {
    if (v26 == 48 && v27 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

    if ((sub_1AB461DA4() & 1) == 0)
    {
      if (v26 == 57 && v27 == 0xE100000000000000)
      {

LABEL_22:
        v26 = sub_1AB460724();
        v27 = v29;
        if (!v29)
        {
          goto LABEL_29;
        }

        continue;
      }

LABEL_21:
      v28 = sub_1AB461DA4();

      if (v28)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    break;
  }

LABEL_31:

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB4621E4();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1AB4615D4();

  v31 = 0xD000000000000028;
  v32 = 0x80000001AB5009E0;
LABEL_14:
  MEMORY[0x1AC59BA20](v7, v10);

  MEMORY[0x1AC59BA20](96, 0xE100000000000000);
  sub_1AB461694();
  v15 = sub_1AB4616B4();
  swift_allocError();
  v17 = v16;
  v18 = v36;
  (*(v36 + 16))(v16, v6, v3);
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
  swift_willThrow();
  v19 = *(v18 + 8);
  v7 = v18 + 8;
  v19(v6, v3);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
LABEL_17:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t _s9JetEngine6ModelsO6AdamIDV8rawValueAESS_tcfC_0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1AB40715C("JetEngine/AdamID.swift", 0x16uLL, 2, 0x13uLL);
  }

  MEMORY[0x1EEE9AC00](a1);

  v4 = sub_1AB460724();
  if (!v5)
  {
LABEL_13:

    sub_1AB41C4F4("JetEngine/AdamID.swift", 22, 2, 21, sub_1AB1932CC);
    goto LABEL_15;
  }

  while (1)
  {
    if (v4 == 48 && v5 == 0xE100000000000000)
    {

      goto LABEL_9;
    }

    v6 = sub_1AB461DA4();

    if ((v6 & 1) == 0)
    {
      break;
    }

LABEL_9:
    v4 = sub_1AB460724();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](v7);

  v8 = sub_1AB460724();
  if (!v9)
  {
LABEL_25:

    return a1;
  }

  v10 = v8;
  v11 = v9;
  while (2)
  {
    if (v10 == 48 && v11 == 0xE100000000000000)
    {
      goto LABEL_17;
    }

    if ((sub_1AB461DA4() & 1) == 0)
    {
      if (v10 == 57 && v11 == 0xE100000000000000)
      {

LABEL_18:
        v10 = sub_1AB460724();
        v11 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }

        continue;
      }

LABEL_17:
      v12 = sub_1AB461DA4();

      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    break;
  }

LABEL_27:

  sub_1AB41C4F4("JetEngine/AdamID.swift", 22, 2, 23, sub_1AB1932D4);
  return a1;
}

unint64_t sub_1AB193210()
{
  result = qword_1EB437648;
  if (!qword_1EB437648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437648);
  }

  return result;
}

unint64_t sub_1AB193268()
{
  result = qword_1EB437650;
  if (!qword_1EB437650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437650);
  }

  return result;
}

void *static PipelinePhase<>.fetchScript(urlSession:urlEncoder:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v12 = sub_1AB033574();
  type metadata accessor for JSRemoteScriptFetcher();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = xmmword_1AB4D41A0;
  *(v13 + 48) = 4;
  *(v13 + 56) = 1;
  *(v13 + 64) = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = sub_1AB1938BC;
  v14[6] = v13;
  v15 = a1;
  v16 = a2;
  v17 = MEMORY[0x1E6969080];

  return PipelinePhase.init(mapOutput:)(sub_1AB1938C0, v14, a3, v17, a6);
}

uint64_t sub_1AB193424(void *a1)
{
  v27 = sub_1AB45F764();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v24 = *(v1 + 32);
  v25 = v6;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v33[0] = *(v1 + 57);
  *(v33 + 3) = *(v1 + 60);
  v26 = *(v1 + 64);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = v10;
  sub_1AB29D8B8(v5, v7, v8, v9, v10 & 1);
  (*(v3 + 8))(v5, v27);
  v14 = v24;
  v34 = v24;
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 16) = v25;
  *(v15 + 24) = v7;
  *(v15 + 32) = v14;
  *(v15 + 40) = v8;
  *(v15 + 48) = v9;
  *(v15 + 56) = v13;
  *(v15 + 57) = v33[0];
  *(v15 + 60) = *(v33 + 3);
  *(v15 + 64) = v26;
  v17 = v16;
  v18 = v7;
  sub_1AB1939BC(&v34, v28);

  sub_1AB3B53F0(sub_1AB193998, v15);

  v31 = &type metadata for SyncTaskScheduler;
  v32 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v22 = swift_allocObject();
  v22[2] = sub_1AB1937D0;
  v22[3] = 0;
  v22[4] = v19;
  v28[0] = sub_1AB193A2C;
  v28[1] = v22;
  v28[2] = sub_1AB193A38;
  v28[3] = v19;
  sub_1AB01494C(v30, v29);
  v29[40] = 0;
  swift_retain_n();

  sub_1AB09CF00(v28);

  sub_1AB09D0D8(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v19;
}

uint64_t sub_1AB19373C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = a2(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

void sub_1AB1937D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  v4 = sub_1AB45F854();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1AB193838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB1938E4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v7 = *a1;
  a2(&v5, &v7);
  v2 = v5;
  v3 = v6;
  sub_1AB42F918(v5, v6);

  return sub_1AB017254(v2, v3);
}

uint64_t sub_1AB1939BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall CryptoAlgorithm.makeDigest(fromContentsOf:)(Swift::String fromContentsOf)
{
  v9[2] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](fromContentsOf._countAndFlagsBits);
  sub_1AB193B04(&v9[-1] - v1, v1, v2, v3, v4, v9);
  v5 = v9[0];
  v6 = v9[1];
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1AB193B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v7 = a1;
  result = sub_1AB2C5C90(a3, a4, a5 & 1, a1);
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1AC59B990](2 * a2);
    if (v7 && a2)
    {
      v10 = MEMORY[0x1E69E7508];
      v11 = MEMORY[0x1E69E7558];
      do
      {
        v12 = *v7++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1AB4D4720;
        *(v13 + 56) = v10;
        *(v13 + 64) = v11;
        *(v13 + 32) = v12;
        v14 = sub_1AB460584();
        MEMORY[0x1AC59BA20](v14);

        --a2;
      }

      while (a2);
    }

    *a6 = 0;
    a6[1] = 0xE000000000000000;
  }

  return result;
}

size_t sub_1AB193C30(const char *a1, char a2, uint64_t a3)
{
  result = strlen(a1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = MEMORY[0x1E69E9498];
  if (a2)
  {
    v7 = MEMORY[0x1E69E94C0];
  }

  return v7(a1, result, a3);
}

uint64_t CryptoAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB193D44()
{
  result = qword_1EB437678;
  if (!qword_1EB437678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437678);
  }

  return result;
}

uint64_t dispatch thunk of JSRequestPerformer.performRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return v11(a1, a2, a3, a4);
}

uint64_t BaseObjectGraph.buildUpon.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for StandaloneObjectGraphBuilder;
  a1[4] = &off_1F2004B90;
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = v1;
  a1[1] = v2;
}

void sub_1AB193F18(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (*(v1 + 56) > 1u)
  {
    if (*(v1 + 56) == 2)
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA24C(v4);
      v20 = v4;
      v21 = v6;
      v22 = v5;
      v23 = v7;
      v24 = 2;
    }

    else
    {
      v25 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA24C(v4);
      v20 = v4;
      v21 = v6;
      v22 = v5;
      v23 = v7;
      v24 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 56))
  {
    sub_1AB144A64(*(v1 + 24), *(v1 + 32));
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436170(v4, v6, v5, v7);
    v20 = v4;
    v21 = v6;
    v22 = v5;
    v23 = v7;
    v24 = 1;
LABEL_12:
    sub_1AB199B30(v20, v21, v22, v23, v24);
    return;
  }

  sub_1AB014A58(a1, v26, &unk_1EB43D290);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2AFCF0(0, v4[2] + 1, 1, v4);
  }

  v9 = v4[2];
  v8 = v4[3];
  if (v9 >= v8 >> 1)
  {
    v4 = sub_1AB2AFCF0((v8 > 1), v9 + 1, 1, v4);
  }

  v4[2] = v9 + 1;
  v10 = &v4[10 * v9];
  v10[2] = v26[0];
  v11 = v26[1];
  v12 = v26[2];
  v13 = v27[0];
  *(v10 + 89) = *(v27 + 9);
  v10[4] = v12;
  v10[5] = v13;
  v10[3] = v11;
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v18 = *(v1 + 56);
  *(v1 + 56) = 0;
  sub_1AB199B30(v14, v15, v16, v17, v18);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB194128(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA27C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA27C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4362F0(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, qword_1EB437980);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2AFD14(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2AFD14((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1942DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA2DC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA2DC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436350(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB4377E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0204(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B0204((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1944E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &qword_1EB4378C8);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA3CC(v12);
  }

  else if (v20)
  {
    sub_1AB0149B0(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436638(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &unk_1EB4378D0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B03A4(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B03A4((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &qword_1EB4378C8);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB1946AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA3FC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA3FC(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1AB074080(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436794();
  }

  else
  {
    sub_1AB014A58(a1, v21, &unk_1EB4378E0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B03C8(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1AB2B03C8((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB074080(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB19484C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA42C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA42C(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1AB074080(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4368A4(v4);
  }

  else
  {
    sub_1AB014A58(a1, v21, &unk_1EB4397F0);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0504(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1AB2B0504((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB074080(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB1949F0(uint64_t a1)
{
  v23 = a1;
  v2 = sub_1AB45F0A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v22 - v10);
  v24 = v1[2];
  os_unfair_lock_lock(v24 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v11, &unk_1EB437820);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v21 = *v11;
    os_unfair_lock_unlock(v24 + 4);
    sub_1AB2AA5AC(v21);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v11, v2);
    os_unfair_lock_unlock(v24 + 4);
    sub_1AB436D44(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = *v11;
    sub_1AB014A58(v23, v25, &qword_1EB439E20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB2B0754(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB2B0754((v15 > 1), v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    v17 = &v14[10 * v16];
    v17[2] = v25[0];
    v18 = v25[1];
    v19 = v25[2];
    v20 = v26[0];
    *(v17 + 89) = *(v26 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    *v9 = v14;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v12, &unk_1EB437820);
    swift_endAccess();
    os_unfair_lock_unlock(v24 + 4);
  }
}

void sub_1AB194D18(uint64_t a1)
{
  v23 = a1;
  v2 = sub_1AB45F764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v22 - v10);
  v24 = v1[2];
  os_unfair_lock_lock(v24 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v11, &unk_1EB4377C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v21 = *v11;
    os_unfair_lock_unlock(v24 + 4);
    sub_1AB2AA63C(v21);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v11, v2);
    os_unfair_lock_unlock(v24 + 4);
    sub_1AB4370D8(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = *v11;
    sub_1AB014A58(v23, v25, &unk_1EB439840);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB2B08F0(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB2B08F0((v15 > 1), v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    v17 = &v14[10 * v16];
    v17[2] = v25[0];
    v18 = v25[1];
    v19 = v25[2];
    v20 = v26[0];
    *(v17 + 89) = *(v26 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    *v9 = v14;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v12, &unk_1EB4377C0);
    swift_endAccess();
    os_unfair_lock_unlock(v24 + 4);
  }
}

void sub_1AB195040(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &unk_1EB4397C0);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA66C(v12);
  }

  else if (v20)
  {
    sub_1AB0149B0(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43730C(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &unk_1EB4376E0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0A34(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B0A34((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &unk_1EB4397C0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB19520C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA54C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA54C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436BBC(v4, v5);
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_12:
    sub_1AB1997F8(v16, v17, v18);
    return;
  }

  sub_1AB014A58(a1, v20, &unk_1EB439CC0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0A58(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B0A58((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v21[0];
  *(v8 + 89) = *(v21 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1AB1997F8(v12, v13, v14);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1953D0(uint64_t a1)
{
  v3 = type metadata accessor for JSSource();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB4377B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA69C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for JSSource);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB437468(v5);
    sub_1AB059DC8(v5, type metadata accessor for JSSource);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &qword_1EB439D20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB2B0A7C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB2B0A7C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v9 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v13, &unk_1EB4377B0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1AB1956AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) == 2)
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA6CC(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 2;
    }

    else
    {
      v23 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA6CC(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 48))
  {
    sub_1AB017200(*(v1 + 24), *(v1 + 32));
    v22 = v5;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB437684(v4, v6, v22);
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = 1;
LABEL_12:
    sub_1AB199AA4(v18, v19, v20, v21);
    return;
  }

  sub_1AB014A58(a1, v24, &qword_1EB43A050);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0AA0(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1AB2B0AA0((v7 > 1), v8 + 1, 1, v4);
  }

  v4[2] = v8 + 1;
  v9 = &v4[10 * v8];
  v9[2] = v24[0];
  v10 = v24[1];
  v11 = v24[2];
  v12 = v25[0];
  *(v9 + 89) = *(v25 + 9);
  v9[4] = v11;
  v9[5] = v12;
  v9[3] = v10;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v16 = *(v1 + 48);
  *(v1 + 48) = 0;
  sub_1AB199AA4(v13, v14, v15, v16);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1958A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437940);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437940);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA6FC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB017FB8(v11, v5, &unk_1EB43D280);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB4377F8(v5);
    sub_1AB014AC0(v5, &unk_1EB43D280);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB439920);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB2B0AC4(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB2B0AC4((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v9 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v13, &unk_1EB437940);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1AB195B8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA72C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA72C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB437A28(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437960);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0AE8(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B0AE8((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB195D90(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA75C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA75C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB437A58(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437950);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0B0C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B0B0C((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB195F44(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &unk_1EB43D230);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA81C(v12);
  }

  else if (v20)
  {
    sub_1AB0149B0(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB437F04(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &unk_1EB437790);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0C58(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B0C58((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &unk_1EB43D230);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB196110(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 33) > 1u)
  {
    if (*(v1 + 33) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA84C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA84C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    sub_1AB06DD90(v16, v17, v18);
  }

  else if (*(v1 + 33))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB438060(v4, v5 & 1);
  }

  else
  {
    sub_1AB014A58(a1, v20, &unk_1EB439820);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0C7C(0, v4[2] + 1, 1, v4);
    }

    v7 = v4[2];
    v6 = v4[3];
    if (v7 >= v6 >> 1)
    {
      v4 = sub_1AB2B0C7C((v6 > 1), v7 + 1, 1, v4);
    }

    v4[2] = v7 + 1;
    v8 = &v4[10 * v7];
    v8[2] = v20[0];
    v9 = v20[1];
    v10 = v20[2];
    v11 = v21[0];
    *(v8 + 89) = *(v21 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 33);
    v14 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB06DD90(v12, v14, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB1962C8(uint64_t a1)
{
  v3 = type metadata accessor for PageIntentInstrumentation();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377A0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB4377A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA87C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for PageIntentInstrumentation);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB438090(v5);
    sub_1AB059DC8(v5, type metadata accessor for PageIntentInstrumentation);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB43D240);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB2B0CA0(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB2B0CA0((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v9 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v13, &unk_1EB4377A0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1AB1965A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA8AC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA8AC(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1AB074080(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4382AC(v4 & 1);
  }

  else
  {
    sub_1AB014A58(a1, v21, &unk_1EB437930);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0CC4(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1AB2B0CC4((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB074080(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB196748(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v37 = *(v1 + 120);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v35 = *(v1 + 88);
  v36 = v5;
  v6 = *(v1 + 40);
  v31 = *(v1 + 24);
  v32 = v6;
  v33 = *(v1 + 56);
  v34 = v4;
  if (v37 > 1u)
  {
    v16 = v31;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA96C(v31);
LABEL_10:
    sub_1AB014AC0(&v31, &unk_1EB437900);
    return;
  }

  if (v37)
  {

    os_unfair_lock_unlock(v3 + 4);
    v27[0] = v31;
    v27[1] = v32;
    v27[2] = v33;
    v27[3] = v34;
    v28 = v35 & 1;
    v29 = *(&v35 + 1);
    v30 = v36;
    sub_1AB4387F0(v27);
    goto LABEL_10;
  }

  v7 = v31;
  sub_1AB014A58(a1, v25, &unk_1EB438550);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB2B0CE8(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB2B0CE8((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[10 * v9];
  v10[2] = v25[0];
  v11 = v25[1];
  v12 = v25[2];
  v13 = v26[0];
  *(v10 + 89) = *(v26 + 9);
  v10[4] = v12;
  v10[5] = v13;
  v10[3] = v11;
  v14 = *(v1 + 88);
  v23[3] = *(v1 + 72);
  v23[4] = v14;
  v23[5] = *(v1 + 104);
  v24 = *(v1 + 120);
  v15 = *(v1 + 40);
  v23[0] = *(v1 + 24);
  v23[1] = v15;
  v23[2] = *(v1 + 56);
  *(v1 + 24) = v7;
  *(v1 + 64) = v19;
  *(v1 + 80) = v20;
  *(v1 + 96) = v21;
  *(v1 + 112) = v22;
  *(v1 + 32) = v17;
  *(v1 + 48) = v18;
  *(v1 + 120) = 0;
  sub_1AB014AC0(v23, &unk_1EB437900);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB196A00(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA8DC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA8DC(v4);
      v15 = v4;
      v16 = 3;
    }

    sub_1AB074080(v15, v16);
  }

  else if (*(v1 + 32))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4383EC(v4 & 1);
  }

  else
  {
    sub_1AB014A58(a1, v21, &unk_1EB437910);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B0D0C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v18 = v4;
      v19 = v4[2];
      v20 = sub_1AB2B0D0C((v6 > 1), v5 + 1, 1, v18);
      v5 = v19;
      v4 = v20;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22[0];
    *(v8 + 89) = *(v22 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB074080(v12, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB196BA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) == 2)
    {
      v23 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA90C(v4);
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = v8;
      v28 = v7;
      v29 = v9;
      v30 = 2;
    }

    else
    {
      v31 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA90C(v4);
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = v8;
      v28 = v7;
      v29 = v9;
      v30 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 72))
  {
    *&v32 = *(v1 + 24);
    *(&v32 + 1) = v6;
    *&v33 = v5;
    *(&v33 + 1) = v8;
    *&v34 = v7;
    *(&v34 + 1) = v9;

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB438530(&v32);
    v24 = v4;
    v25 = v6;
    v26 = v5;
    v27 = v8;
    v28 = v7;
    v29 = v9;
    v30 = 1;
LABEL_12:
    sub_1AB199A1C(v24, v25, v26, v27, v28, v29, v30);
    return;
  }

  sub_1AB014A58(a1, &v32, &qword_1EB439FD0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B0D30(0, v4[2] + 1, 1, v4);
  }

  v11 = v4[2];
  v10 = v4[3];
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1AB2B0D30((v10 > 1), v11 + 1, 1, v4);
  }

  v4[2] = v11 + 1;
  v12 = &v4[10 * v11];
  v12[2] = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35[0];
  *(v12 + 89) = *(v35 + 9);
  v12[4] = v14;
  v12[5] = v15;
  v12[3] = v13;
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = *(v1 + 56);
  v21 = *(v1 + 64);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v22 = *(v1 + 72);
  *(v1 + 57) = 0u;
  sub_1AB199A1C(v16, v17, v18, v19, v20, v21, v22);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB196DD8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &unk_1EB43D1F0);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA99C(v12);
  }

  else if (v20)
  {
    sub_1AB014B78(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4389EC(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &unk_1EB437700);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B105C(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B105C((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    LOBYTE(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &unk_1EB43D1F0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB196FA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &unk_1EB439900);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AA9CC(v12);
  }

  else if (v20)
  {
    sub_1AB0149B0(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB438B48(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &qword_1EB4378C0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B11A0(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B11A0((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &unk_1EB439900);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB19716C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v21, &unk_1EB4398E0);
  if (v22 > 1u)
  {
    v12 = *&v21[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AAA2C(v12);
  }

  else if (v22)
  {
    v18 = v21[2];
    *v19 = v21[3];
    *&v19[16] = v21[4];
    v16 = v21[0];
    v17 = v21[1];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB438ED4(&v16);
    sub_1AB026354(&v16);
  }

  else
  {
    v4 = *&v21[0];
    sub_1AB014A58(a1, &v16, &unk_1EB4378A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B11EC(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B11EC((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = *v19;
    *(v8 + 89) = *&v19[9];
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    v20 = 0;
    swift_beginAccess();
    sub_1AB017CC4(&v16, v1 + 24, &unk_1EB4398E0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB19734C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v19, &unk_1EB4398F0);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AAA5C(v12);
  }

  else if (v20)
  {
    sub_1AB0149B0(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439054(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1AB014A58(a1, v16, &unk_1EB4378B0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B1210(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B1210((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1AB017CC4(v16, v1 + 24, &unk_1EB4398F0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB197518(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAA8C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAA8C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4391B0(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &qword_1EB439EA0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1234(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B1234((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1976CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAABC(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAABC(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4391E0(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437890);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1258(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B1258((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1978D0(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437840);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437840);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AAB1C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for JetPackAsset);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB43942C(v5);
    sub_1AB059DC8(v5, type metadata accessor for JetPackAsset);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB4398A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB2B127C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB2B127C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB437840);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1AB197BAC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v20, &unk_1EB4398D0);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AAB4C(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439648(&v16);
    sub_1AB1999C8(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1AB014A58(a1, &v16, &unk_1EB437880);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B12A0(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B12A0((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1AB017CC4(&v16, v1 + 24, &unk_1EB4398D0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB197D8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v20, &unk_1EB437850);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB2AABAC(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4397D0(&v16);
    sub_1AB199974(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1AB014A58(a1, &v16, &unk_1EB4398B0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B12C4(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1AB2B12C4((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1AB017CC4(&v16, v1 + 24, &unk_1EB437850);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB197F6C(uint64_t a1)
{
  v3 = type metadata accessor for JSPackageIndex();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437810);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AABDC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for JSPackageIndex);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB439958(v5);
    sub_1AB059DC8(v5, type metadata accessor for JSPackageIndex);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &qword_1EB439E10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB2B1310(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB2B1310((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB437810);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1AB198248(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA5DC(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA5DC(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {
    sub_1AB017200(*(v1 + 24), *(v1 + 32));
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436F78(v4, v5);
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_12:
    sub_1AB199938(v16, v17, v18, sub_1AB017254);
    return;
  }

  sub_1AB014A58(a1, v20, &unk_1EB4377D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1334(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B1334((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v21[0];
  *(v8 + 89) = *(v21 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1AB199938(v12, v13, v14, sub_1AB017254);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198460(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC0C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC0C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439B74(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB439850);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1358(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B1358((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198614(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC3C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC3C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439BA4(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437800);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B14E4(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B14E4((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198818(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) == 2)
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC6C(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 2;
    }

    else
    {
      v22 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC6C(v4);
      v18 = v4;
      v19 = v6;
      v20 = v5;
      v21 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 48))
  {
    sub_1AB1998F8(*(v1 + 24));

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439CF4(v4, v6, v5);
    v18 = v4;
    v19 = v6;
    v20 = v5;
    v21 = 1;
LABEL_12:
    sub_1AB199834(v18, v19, v20, v21);
    return;
  }

  sub_1AB014A58(a1, v23, &unk_1EB4377F0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1508(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1AB2B1508((v7 > 1), v8 + 1, 1, v4);
  }

  v4[2] = v8 + 1;
  v9 = &v4[10 * v8];
  v9[2] = v23[0];
  v10 = v23[1];
  v11 = v23[2];
  v12 = v24[0];
  *(v9 + 89) = *(v24 + 9);
  v9[4] = v11;
  v9[5] = v12;
  v9[3] = v10;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v16 = *(v1 + 48);
  *(v1 + 48) = 0;
  sub_1AB199834(v13, v14, v15, v16);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198A10(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC9C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAC9C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 40))
  {
    sub_1AB1998F8(*(v1 + 24));
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439E70(v4, v5);
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_12:
    sub_1AB199938(v16, v17, v18, sub_1AB1998B8);
    return;
  }

  sub_1AB014A58(a1, v20, &unk_1EB43D260);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B152C(0, v4[2] + 1, 1, v4);
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B152C((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[10 * v7];
  v8[2] = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v21[0];
  *(v8 + 89) = *(v21 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  v14 = *(v1 + 40);
  *(v1 + 40) = 0;
  sub_1AB199938(v12, v13, v14, sub_1AB1998B8);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198C28(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA4BC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA4BC(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436A3C(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB4376D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1984(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B1984((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB198DDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) == 2)
    {
      v17 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD2C(v4);
      v18 = v4;
      v19 = v5;
      v20 = v6;
      v21 = 2;
    }

    else
    {
      v22 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD2C(v4);
      v18 = v4;
      v19 = v5;
      v20 = v6;
      v21 = 3;
    }

    sub_1AB199768(v18, v19, v20, v21);
  }

  else if (*(v1 + 48))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43A030(v4, v5, v6);
  }

  else
  {
    sub_1AB014A58(a1, v23, &qword_1EB4376C8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB2B19A8(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    if (v8 >= v7 >> 1)
    {
      v4 = sub_1AB2B19A8((v7 > 1), v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    v9 = &v4[10 * v8];
    v9[2] = v23[0];
    v10 = v23[1];
    v11 = v23[2];
    v12 = v24[0];
    *(v9 + 89) = *(v24 + 9);
    v9[4] = v11;
    v9[5] = v12;
    v9[3] = v10;
    v13 = *(v1 + 24);
    v14 = *(v1 + 32);
    v15 = *(v1 + 40);
    *(v1 + 24) = v4;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    v16 = *(v1 + 48);
    *(v1 + 48) = 0;
    sub_1AB199768(v13, v14, v15, v16);
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1AB198FE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AACCC(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AACCC(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB439FD0(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437710);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B19CC(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B19CC((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB1991E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AADEC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AADEC(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43A520(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB439870);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B1D74(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B1D74((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB199524(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1AB199678;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1AB199654;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB199678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncObjectGraphBuilder.makeObjectGraph()(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB025614, 0, 0);
}

uint64_t sub_1AB199700()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AB199768(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {
    }
  }

  else
  {
    if (!a4)
    {

      goto LABEL_6;
    }

    if (a4 == 1)
    {

LABEL_6:
    }
  }
}

void sub_1AB1997F8(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else
  {
  }
}

void sub_1AB199834(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {
    }
  }

  else
  {
    if (!a4)
    {

      goto LABEL_6;
    }

    if (a4 == 1)
    {
      sub_1AB1998B8(a1);

LABEL_6:
    }
  }
}

uint64_t sub_1AB1998B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AB1998F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1AB199938(void *a1, uint64_t a2, unsigned __int8 a3, void (*a4)(void))
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      a4();
    }
  }

  else
  {
  }
}

void sub_1AB199A1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 == 2 || a7 == 3)
    {
    }
  }

  else
  {
    if (!a7)
    {

      goto LABEL_6;
    }

    if (a7 == 1)
    {

LABEL_6:
    }
  }
}

void sub_1AB199AA4(void *a1, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      goto LABEL_6;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1AB017254(a1, a2);
      a1 = a3;

LABEL_6:
    }
  }

  else
  {
  }
}

void sub_1AB199B30(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
      sub_1AB093AF0(a1, a2);
    }
  }

  else
  {
  }
}

uint64_t TaggedValue<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaggedValue();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v4)
  {
    v14 = v8;
    v15 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
    v12 = v18;
    sub_1AB461DF4();
    (*(v16 + 32))(v11, v12, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t TaggedValue<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E74();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t TaggedValue<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1AC59D3F0](*(a2 + 24));

  return sub_1AB460454();
}

uint64_t TaggedValue<>.hashValue.getter(uint64_t a1)
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](*(a1 + 24));
  sub_1AB460454();
  return sub_1AB462104();
}

uint64_t sub_1AB19A060(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  TaggedValue<>.hash(into:)(v4, a2);
  return sub_1AB462104();
}

uint64_t sub_1AB19A0FC(int a1, void *__src)
{
  sub_1AB457AC0(__src);
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 21, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB500B70;
  v5._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v19[3] = &type metadata for OperationCheckpoint;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), __src, 0x190uLL);
  sub_1AB01522C(v19, v15);
  v16 = 0u;
  v17 = 0u;
  sub_1AB19A648(__src, v14);
  sub_1AB0169C4(v15, &v16);
  v18 = 1;
  v6 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
    v20 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v16;
  v11 = v17;
  v9[64] = v18;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v20 = v6;
  sub_1AB014AC0(v19, &unk_1EB437E60);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v4 + 32) = v20;
  v14[0] = v3;
  LOBYTE(v16) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v16);
}

uint64_t sub_1AB19A334(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v7 = *result;
  v8 = *(*result + 16);
  if (v8)
  {
    v16 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v7[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_1AB3C4AE4(v7);
      v7 = result;
      if (*(result + 16))
      {
LABEL_4:
        v13 = 0;
        v14 = v8 - 1;
        v15 = 4;
        do
        {
          memcpy(__dst, &v7[v15], sizeof(__dst));
          memmove(v21, &v7[v15], 0x190uLL);
          result = sub_1AB19A4CC(v21);
          if (result != 1)
          {
            memcpy(v19, __dst, sizeof(v19));
            __src[0] = a4;
            __src[1] = a5;
            __src[2] = a6;
            __src[3] = v22;
            result = sub_1AB2BB828(a2, a3, __src);
            if (result)
            {
              sub_1AB19A4E4(__src);
              memcpy(v19, &v7[v15], sizeof(v19));
              memcpy(&v7[v15], __src, 0x190uLL);
              result = sub_1AB014AC0(v19, &qword_1EB439FB0);
            }
          }

          if (v14 == v13)
          {
            goto LABEL_11;
          }

          ++v13;
          v15 += 50;
        }

        while (v13 < v7[2]);
      }
    }

    __break(1u);
LABEL_11:
    *v16 = v7;
  }

  return result;
}

uint64_t sub_1AB19A4CC(uint64_t a1)
{
  if ((*(a1 + 48) >> 9) > 0x80000000)
  {
    return -(*(a1 + 48) >> 9);
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_1AB19A4E4(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x1FFFFFFFE00;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 56) = 0u;
  result = (a1 + 56);
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  return result;
}

void sub_1AB19A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  v49 = a48 >> 61;

  if ((a48 >> 61) > 4)
  {
    if (v49 == 7)
    {
    }

    else
    {
      if (v49 == 6)
      {
      }
    }
  }
}

uint64_t JSIntentResult.requestDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F244();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JSIntentResult.jsonObject.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSIntentResult() + 20);

  return sub_1AB08C08C(v3, a1);
}

uint64_t JSIntentResult.incidents.getter()
{
  type metadata accessor for JSIntentResult();
}

uint64_t JSIntentResult.networkPerformance.getter()
{
  type metadata accessor for JSIntentResult();
}

uint64_t sub_1AB19A81C()
{
  if (*v0)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6E69676775626564;
  }
}

uint64_t sub_1AB19A860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69676775626564 && a2 == 0xE900000000000067;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB19A94C(uint64_t a1)
{
  v2 = sub_1AB19AD64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB19A988(uint64_t a1)
{
  v2 = sub_1AB19AD64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB19A9C4(uint64_t a1)
{
  v2 = sub_1AB19AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB19AA00(uint64_t a1)
{
  v2 = sub_1AB19AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB19AA3C(uint64_t a1)
{
  v2 = sub_1AB19ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB19AA78(uint64_t a1)
{
  v2 = sub_1AB19ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonRequestTypeKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A08);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A10);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB19AD64();
  sub_1AB462274();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1AB19ADB8();
    v14 = v18;
    sub_1AB461B24();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1AB19AE0C();
    sub_1AB461B24();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1AB19AD64()
{
  result = qword_1EB437A20;
  if (!qword_1EB437A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A20);
  }

  return result;
}

unint64_t sub_1AB19ADB8()
{
  result = qword_1EB437A28;
  if (!qword_1EB437A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A28);
  }

  return result;
}

unint64_t sub_1AB19AE0C()
{
  result = qword_1EB437A30;
  if (!qword_1EB437A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A30);
  }

  return result;
}

uint64_t DaemonRequestTypeKind.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t DaemonRequestTypeKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A38);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A40);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437A48);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB19AD64();
  v13 = v31;
  sub_1AB462224();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1AB461AE4();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1AB4616B4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
    *v21 = &type metadata for DaemonRequestTypeKind;
    sub_1AB4619E4();
    sub_1AB461694();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1AB19ADB8();
    sub_1AB4619D4();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1AB19AE0C();
    sub_1AB4619D4();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1AB19B328()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB19B35C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB19B394()
{
  result = qword_1EB437A50;
  if (!qword_1EB437A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A50);
  }

  return result;
}

unint64_t sub_1AB19B4CC()
{
  result = qword_1EB437A58;
  if (!qword_1EB437A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A58);
  }

  return result;
}

unint64_t sub_1AB19B524()
{
  result = qword_1EB437A60;
  if (!qword_1EB437A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A60);
  }

  return result;
}

unint64_t sub_1AB19B57C()
{
  result = qword_1EB437A68;
  if (!qword_1EB437A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A68);
  }

  return result;
}

unint64_t sub_1AB19B5D4()
{
  result = qword_1EB437A70;
  if (!qword_1EB437A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A70);
  }

  return result;
}

unint64_t sub_1AB19B62C()
{
  result = qword_1EB437A78;
  if (!qword_1EB437A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A78);
  }

  return result;
}

unint64_t sub_1AB19B684()
{
  result = qword_1EB437A80;
  if (!qword_1EB437A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A80);
  }

  return result;
}

unint64_t sub_1AB19B6DC()
{
  result = qword_1EB437A88;
  if (!qword_1EB437A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A88);
  }

  return result;
}

uint64_t sub_1AB19B740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64);
  result = (*(a3 + 24))(v4, a1);
  if (!v3)
  {
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        v13 = result;
        v8 = v6;
        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_13:
        sub_1AB19B9F4();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        return sub_1AB017254(v13, v8);
      }

      v11 = *(result + 16);
      v10 = *(result + 24);
      v12 = __OFSUB__(v10, v11);
      v9 = v10 - v11;
      if (!v12)
      {
        v8 = v6;
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      if (!v7)
      {
        v8 = v6;
        v9 = BYTE6(v6);
        goto LABEL_10;
      }

      LODWORD(v9) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v8 = v6;
        v9 = v9;
LABEL_10:
        v13 = result;
        if (v9 == v4)
        {
LABEL_11:
          MEMORY[0x1EEE9AC00](result);
          sub_1AB45F824();
          return sub_1AB017254(v13, v8);
        }

        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB19B8E0(uint64_t a1, uint64_t a2)
{
  sub_1AB19BC2C();
  result = sub_1AB19B740(a1, MEMORY[0x1E69E75F8], a2);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1AB19B940(uint64_t a1, uint64_t a2)
{
  sub_1AB19B9A0();
  result = sub_1AB19B740(a1, MEMORY[0x1E69E7668], a2);
  if (!v2)
  {
    return v6;
  }

  return result;
}

unint64_t sub_1AB19B9A0()
{
  result = qword_1EB435718;
  if (!qword_1EB435718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435718);
  }

  return result;
}

unint64_t sub_1AB19B9F4()
{
  result = qword_1EB437A90;
  if (!qword_1EB437A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A90);
  }

  return result;
}

uint64_t sub_1AB19BA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    sub_1AB19B9F4();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = v4;
    v9 = a2;
    v10 = swift_slowAlloc();
    v5 = 0;
    v21 = *(a4 + 8);
    v19 = a4;
    while ((v21(a3, a4) & 1) != 0)
    {
      v22 = v5;
      v11 = (*(a4 + 32))(v10, v9, a3, a4);
      if (v6)
      {
        break;
      }

      v12 = v11;
      v13 = v9;
      v14 = a1[3];
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v14);
      (*(v15 + 16))(v10, v12, v14, v15);
      v6 = 0;
      v16 = __OFADD__(v22, v12);
      v5 = v22 + v12;
      v9 = v13;
      a4 = v19;
      if (v16)
      {
        __break(1u);
        break;
      }
    }

    MEMORY[0x1AC59F020](v10, -1, -1);
  }

  return v5;
}

unint64_t sub_1AB19BC2C()
{
  result = qword_1EB435720;
  if (!qword_1EB435720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435720);
  }

  return result;
}

unint64_t sub_1AB19BC94()
{
  result = qword_1EB437A98;
  if (!qword_1EB437A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437A98);
  }

  return result;
}

id sub_1AB19BCE8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1AB45F9B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB19C120();
  v16 = sub_1AB460934();
  sub_1AB19C16C(a2, v11);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    sub_1AB45F994();
    if (v17(v11, 1, v12) != 1)
    {
      sub_1AB19C1DC(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v18 = sub_1AB45F914();
  (*(v13 + 8))(v15, v12);
  v19 = [v5 generateEventFieldsForKeys:v16 date:v18];

  v20 = sub_1AB4602F4();
  if ((a3 & 1) == 0)
  {
    return v20;
  }

  *&v31 = 0xD000000000000010;
  *(&v31 + 1) = 0x80000001AB500BC0;
  v21 = MEMORY[0x1E69E6158];
  sub_1AB461564();
  result = [v5 resetInterval];
  v24 = v23 * 1000.0;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v24 < 9.22337204e18)
  {
    v32 = MEMORY[0x1E69E7360];
    *&v31 = v24;
    sub_1AB014B78(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v20;
    sub_1AB1D5700(v30, v33, isUniquelyReferenced_nonNull_native);
    sub_1AB02B2E4(v33);
    v26 = v29;
    *&v31 = 0xD000000000000010;
    *(&v31 + 1) = 0x80000001AB500BE0;
    sub_1AB461564();
    v32 = v21;
    *&v31 = 0x656369766564;
    *(&v31 + 1) = 0xE600000000000000;
    sub_1AB014B78(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v26;
    sub_1AB1D5700(v30, v33, v27);
    sub_1AB02B2E4(v33);
    v20 = v29;
    if (a4)
    {
      *&v31 = 0xD000000000000011;
      *(&v31 + 1) = 0x80000001AB500C00;
      sub_1AB461564();
      v32 = v21;
      strcpy(&v31, "synchronized");
      BYTE13(v31) = 0;
      HIWORD(v31) = -5120;
      sub_1AB014B78(&v31, v30);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v20;
      sub_1AB1D5700(v30, v33, v28);
      sub_1AB02B2E4(v33);
      return v29;
    }

    return v20;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1AB19C120()
{
  result = qword_1EB433470;
  if (!qword_1EB433470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB433470);
  }

  return result;
}

uint64_t sub_1AB19C16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB19C1DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JetPackAMSRemoteStreamSource.init(url:urlSessionConfiguration:urlRequestEncoder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AB45F764();
  v9 = *(v8 - 8);
  v17 = a1;
  (*(v9 + 16))(a4, a1, v8);
  v10 = type metadata accessor for JetPackAMSRemoteStreamSource();
  *(a4 + v10[5]) = a2;
  *(a4 + v10[6]) = a3;
  type metadata accessor for BaseObjectGraph();
  v11 = a2;
  v12 = a3;
  v13 = static BaseObjectGraph.current.getter();
  v14 = sub_1AB460184();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  swift_task_localValuePush();
  v15 = sub_1AB12E7DC(v14, *(v13 + 16));
  swift_task_localValuePop();

  result = (*(v9 + 8))(v17, v8);
  *(a4 + v10[7]) = v15;
  return result;
}

uint64_t type metadata accessor for JetPackAMSRemoteStreamSource()
{
  result = qword_1EB434E00;
  if (!qword_1EB434E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackAMSRemoteStreamSource.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id JetPackAMSRemoteStreamSource.urlSessionConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAMSRemoteStreamSource() + 20));

  return v1;
}

id JetPackAMSRemoteStreamSource.urlRequestEncoder.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAMSRemoteStreamSource() + 24));

  return v1;
}

uint64_t JetPackAMSRemoteStreamSource.makeStream()()
{
  v1 = sub_1AB4601C4();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for JetPackAMSRemoteStreamSource();
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = v5;
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0;
  v44 = [objc_allocWithZone(MEMORY[0x1E698CBA8]) initWithConfiguration_];
  type metadata accessor for BaseObjectGraph();
  v14 = static BaseObjectGraph.current.getter();
  v15 = sub_1AB460184();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  *&v48 = v14;

  swift_task_localValuePush();
  v39 = sub_1AB12E7DC(v15, *(v14 + 16));
  swift_task_localValuePop();

  v16 = *(v10 + 16);
  v40 = v16;
  v16(v12, v13, v9);
  v16(v8, v12, v9);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  (*(v10 + 8))(v12, v9);
  v17[2] = v18;
  sub_1AB017FB8(v8, v17 + *(*v17 + 96), &unk_1EB4377C0);
  v19 = v43;
  sub_1AB19DC34(v13, v43);
  v20 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v21 = (v41 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v44;
  *(v22 + 16) = v44;
  sub_1AB19DC98(v19, v22 + v20);
  *(v22 + v21) = v39;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1AB19DCFC;
  *(v24 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA8);
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AB0);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_1AB19DE4C;
  v26[4] = v24;
  v40(v12, v13, v9);
  sub_1AB19E6E0(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v27 = v23;

  sub_1AB461564();
  sub_1AB016760(0, &qword_1ED4D2060);
  v29 = v45;
  v28 = v46;
  v30 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x1E69E7F98], v47);
  v31 = sub_1AB461164();
  (*(v28 + 8))(v29, v30);
  type metadata accessor for PersistentPipelineBackoff();
  v32 = swift_allocObject();
  v33 = v49;
  *(v32 + 16) = v48;
  *(v32 + 32) = v33;
  *(v32 + 48) = v50;
  *(v32 + 56) = sub_1AB19D508;
  *(v32 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AB8);
  *(swift_allocObject() + 16) = v26;

  v34 = v31;
  v35 = MEMORY[0x1AC59DDE0]();

  v37 = sub_1AB19E078(v36, v32, v34);

  objc_autoreleasePoolPop(v35);

  return v37;
}

uint64_t sub_1AB19CB68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v47 - v9);
  v11 = *(a3 + *(type metadata accessor for JetPackAMSRemoteStreamSource() + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658);
  swift_allocObject();
  v48 = v11;
  v50 = sub_1AB03356C();
  v61 = 1;
  v12 = qword_1ED4D1D90;
  v49 = a2;
  v51 = a4;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v14 = swift_allocObject();
  v47 = xmmword_1AB4D4720;
  *(v14 + 16) = xmmword_1AB4D4720;
  v60 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
  v15._object = 0x80000001AB500C20;
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v16 = sub_1AB45F764();
  v57 = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, a1, v16);
  sub_1AB01522C(v56, v59);
  v52 = 0u;
  v53 = 0u;
  sub_1AB0169C4(v59, &v52);
  v54[0] = 0;
  v18 = v60;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  v22 = v52;
  v23 = v53;
  v21[64] = v54[0];
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v60 = v18;
  sub_1AB014AC0(v56, &unk_1EB437E60);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v14 + 32) = v60;
  v25 = sub_1AB461094();
  if (os_log_type_enabled(v13, v25))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v26 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v26 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v52 = v14;
    *(&v52 + 1) = sub_1AB01A8D8;
    *&v53 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v29 = sub_1AB460484();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v32 = swift_allocObject();
    *(v32 + 16) = v47;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1AB016854();
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    sub_1AB45FF14();
  }

  else
  {
  }

  v33 = a1;
  v34 = v48;
  sub_1AB29D8B8(v33, v48, 0, 4, 1);
  v57 = &type metadata for SyncTaskScheduler;
  v58 = &protocol witness table for SyncTaskScheduler;
  v35 = MEMORY[0x1E69E7CC0];
  *v10 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AE0);
  v36 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v36[2] = v37;
  sub_1AB017FB8(v10, v36 + *(*v36 + 96), &unk_1EB437820);
  v38 = swift_allocObject();
  v38[2] = sub_1AB19D378;
  v38[3] = 0;
  v38[4] = v36;
  *&v52 = sub_1AB19E748;
  *(&v52 + 1) = v38;
  *&v53 = sub_1AB19E754;
  *(&v53 + 1) = v36;
  sub_1AB01494C(v56, v54);
  v55 = 0;
  swift_retain_n();

  sub_1AB1949F0(&v52);

  sub_1AB014AC0(&v52, &qword_1EB439E20);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v39 = swift_allocObject();
  v40 = v49;
  *(v39 + 16) = v49;
  *(v39 + 24) = v34;
  *(v39 + 32) = v51;
  *(v39 + 40) = xmmword_1AB4D9480;
  *(v39 + 56) = v61;
  *(v39 + 57) = *v59;
  *(v39 + 60) = *&v59[3];
  *(v39 + 64) = v50;
  v41 = v34;
  v42 = v40;

  sub_1AB3B53F0(sub_1AB193998, v39);

  v57 = &type metadata for SyncTaskScheduler;
  v58 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v43 = swift_allocObject();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v43 + 16) = v44;
  *(v43 + 24) = v35;
  *(v43 + 32) = 0;
  v45 = swift_allocObject();
  v45[2] = sub_1AB19D458;
  v45[3] = 0;
  v45[4] = v43;
  *&v52 = sub_1AB19E75C;
  *(&v52 + 1) = v45;
  *&v53 = sub_1AB19E740;
  *(&v53 + 1) = v43;
  sub_1AB01494C(v56, v54);
  v55 = 0;
  swift_retain_n();

  sub_1AB09CF00(&v52);

  sub_1AB014AC0(&v52, &unk_1EB439880);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v43;
}

uint64_t sub_1AB19D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45F0A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1AB45F094();
  sub_1AB45F044();
  sub_1AB460544();
  sub_1AB45F094();
}

uint64_t sub_1AB19D458@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 data];
  v4 = sub_1AB45F854();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v8 = sub_1AB45F834();
  v9 = [v7 initWithData_];

  result = sub_1AB017254(v4, v6);
  *a2 = v9;
  return result;
}

uint64_t sub_1AB19D508()
{
  type metadata accessor for JitterPipelineBackoff();
  v0 = swift_allocObject();
  type metadata accessor for ExponentialPipelineBackoff();
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v1 + 32) = v2;
  *(v1 + 16) = xmmword_1AB4D9490;
  *(v0 + 16) = v1;
  return v0;
}

id static JetPackAMSRemoteStreamSource.defaultURLEncoder(forContentsOf:using:from:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  [v4 setIncludeClientVersions_];
  [v4 setAnisetteType_];
  [v4 setMescalType_];
  [v4 setAccount_];
  [v4 setRequestEncoding_];
  [v4 setDialogOptions_];
  [v4 setClientInfo_];
  [v4 setDisableResponseDecoding_];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v5 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v5[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return v4;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return v4;
  }

  if (sub_1AB45F5C4())
  {
    [v4 setUrlKnownToBeTrusted_];
  }

  return v4;
}

uint64_t sub_1AB19D718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1AB19D7E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AC8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-v3];
  if (qword_1EB433428 != -1)
  {
    v2 = swift_once();
  }

  v5 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v2);
  *&v9[-16] = v0;
  os_unfair_lock_lock(v5 + 6);
  sub_1AB19E6B4(v4);
  os_unfair_lock_unlock(v5 + 6);
  v6 = *(v1 + 48);
  v7 = sub_1AB45F764();
  return (*(*(v7 - 8) + 8))(&v4[v6], v7);
}

uint64_t sub_1AB19D934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7[-v3];
  if (qword_1EB433428 != -1)
  {
    v2 = swift_once();
  }

  v5 = *(qword_1EB46BEF8 + 16);
  MEMORY[0x1EEE9AC00](v2);
  *&v7[-16] = v0;
  os_unfair_lock_lock(v5 + 6);
  sub_1AB19E680(v4);
  os_unfair_lock_unlock(v5 + 6);
  return sub_1AB014AC0(v4, &unk_1EB4395B0);
}

uint64_t sub_1AB19DB24@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AC8) + 48);
  (*(v5 + 16))(v7, a1, v4);
  result = sub_1AB249050(&a2[v8], v7);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AB19DC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAMSRemoteStreamSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB19DC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAMSRemoteStreamSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB19DCFC(uint64_t a1)
{
  v3 = *(type metadata accessor for JetPackAMSRemoteStreamSource() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_1AB19CB68(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1AB19DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 88))();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_1AB19DE54(sub_1AB19E728, v5);

  return v6;
}

uint64_t sub_1AB19DE54(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB19E730;
  v9[1] = v7;
  v9[2] = sub_1AB19E740;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB194D18(v9);

  sub_1AB014AC0(v9, &unk_1EB439840);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

void sub_1AB19DFCC(uint64_t *a1, void (*a2)(void **__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  v2 = v3;
  sub_1AB42FBFC(v3);
}

uint64_t sub_1AB19E078(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v5 = sub_1AB4601B4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601F4();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460214();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = 0;
  if (qword_1EB435810 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB432578;
  os_unfair_lock_lock((qword_1EB432578 + 24));
  sub_1AB449B54((v19 + 16), a2, aBlock);
  os_unfair_lock_unlock((v19 + 24));
  sub_1AB460204();
  sub_1AB460234();
  v20 = *(v10 + 8);
  v28 = v9;
  v29 = v20;
  v20(v13, v9);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = &off_1F201B9B8;
  v21[5] = v16;
  v22 = v30;
  v21[6] = v30;
  *&aBlock[4] = sub_1AB19E6D0;
  *&aBlock[5] = v21;
  *&aBlock[0] = MEMORY[0x1E69E9820];
  *&aBlock[1] = 1107296256;
  *&aBlock[2] = sub_1AB01D528;
  *&aBlock[3] = &block_descriptor_7;
  v23 = _Block_copy(aBlock);

  v22;
  v24 = v31;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1AB19E6E0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  v25 = v34;
  v26 = v36;
  sub_1AB4614E4();
  MEMORY[0x1AC59C430](v15, v24, v25, v23);
  _Block_release(v23);
  (*(v35 + 8))(v25, v26);
  (*(v32 + 8))(v24, v33);
  v29(v15, v28);

  return v16;
}

void sub_1AB19E554()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    sub_1AB016760(319, &qword_1EB435620);
    if (v1 <= 0x3F)
    {
      sub_1AB016760(319, &qword_1EB434E48);
      if (v2 <= 0x3F)
      {
        sub_1AB19E628();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB19E628()
{
  if (!qword_1EB437AC0)
  {
    sub_1AB460184();
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB437AC0);
    }
  }
}

uint64_t sub_1AB19E6E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB19E774(uint64_t a1)
{
  v2 = sub_1AB19E900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB19E7B0(uint64_t a1)
{
  v2 = sub_1AB19E900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NilState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB19E900();
  sub_1AB462274();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB19E900()
{
  result = qword_1EB437AF0;
  if (!qword_1EB437AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437AF0);
  }

  return result;
}

unint64_t sub_1AB19E97C(uint64_t a1)
{
  result = sub_1AB19E9A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AB19E9A4()
{
  result = qword_1EB432420;
  if (!qword_1EB432420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432420);
  }

  return result;
}

uint64_t sub_1AB19E9F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB19E900();
  sub_1AB462274();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB19EB44()
{
  result = qword_1EB437AF8;
  if (!qword_1EB437AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437AF8);
  }

  return result;
}

unint64_t sub_1AB19EB9C()
{
  result = qword_1EB437B00;
  if (!qword_1EB437B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437B00);
  }

  return result;
}

unint64_t sub_1AB19EC04(uint64_t a1)
{
  v2 = 0x2E6F6741656D6954;
  v3 = sub_1AB45FB04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LocalizerFormattingKey();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB19EF94(a1, v12);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v12, v3);
    (*(v4 + 16))(v7, v9, v3);
    v13 = (*(v4 + 88))(v7, v3);
    if (v13 == *MEMORY[0x1E6969A68])
    {
      v2 = 0xD000000000000010;
LABEL_7:
      (*(v4 + 8))(v9, v3);
      return v2;
    }

    if (v13 != *MEMORY[0x1E6969A78])
    {
      if (v13 != *MEMORY[0x1E6969A48])
      {
        if (v13 == *MEMORY[0x1E6969A58])
        {
          v2 = 0xD000000000000010;
        }

        else
        {
          if (v13 == *MEMORY[0x1E6969A88])
          {
            (*(v4 + 8))(v9, v3);
            return 0xD000000000000012;
          }

          if (v13 != *MEMORY[0x1E6969A98])
          {
            if (v13 != *MEMORY[0x1E6969A10])
            {
              v15 = *(v4 + 8);
              v15(v7, v3);
              v15(v9, v3);
              return v2;
            }

            v2 = 0xD000000000000010;
          }
        }
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v9, v3);
    return 0xD000000000000011;
  }

  return v2;
}

uint64_t sub_1AB19EF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizerFormattingKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB19EFF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v10[1] = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  v8 = type metadata accessor for DaemonError();
  if (swift_dynamicCast())
  {

    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1AB19FE08(v6, a2);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_1AB014AC0(v6, &qword_1EB437B28);
    *a2 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t DaemonError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1AB4600A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = type metadata accessor for DaemonError();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1AB19F6E0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB500D30);
      sub_1AB460E04();
      MEMORY[0x1AC59BA20](0x73646E6F63657320, 0xE800000000000000);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        return 0xD000000000000022;
      }

      v28 = *v8;
      v13 = v28;
      v14 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B08);
      if (swift_dynamicCast())
      {
        sub_1AB0149B0(v26, &v29);
        __swift_project_boxed_opaque_existential_1Tm(&v29, v31);
        v15 = sub_1AB45F4E4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v29);
        return v15;
      }

      v27 = 0;
      memset(v26, 0, sizeof(v26));
      sub_1AB014AC0(v26, &qword_1EB437B10);
      v29 = 0;
      v30 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1AB461D64();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1AB4615D4();

      v29 = 0xD000000000000025;
      v30 = 0x80000001AB500D00;
      sub_1AB19FDC0(&qword_1EB437B18, MEMORY[0x1E69E84C0]);
      v10 = sub_1AB462024();
      MEMORY[0x1AC59BA20](v10);

      v11 = v29;
      (*(v3 + 8))(v5, v2);
      return v11;
    }

    v20 = *v8;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1AB4615D4();

    v29 = 0xD000000000000012;
    v30 = 0x80000001AB500CE0;
    v21 = [v20 description];
    v22 = sub_1AB460544();
    v24 = v23;

    MEMORY[0x1AC59BA20](v22, v24);
  }

  else
  {
    v16 = *v8;
    v17 = *(v8 + 1);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1AB4615D4();

    v29 = 0xD000000000000016;
    v30 = 0x80000001AB500D80;
    *&v26[0] = v16;
    v18 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v18);

    MEMORY[0x1AC59BA20](0x202C736574796220, 0xEF203A74696D696CLL);
    *&v26[0] = v17;
    v19 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v19);

    MEMORY[0x1AC59BA20](0x736574796220, 0xE600000000000000);
  }

  return v29;
}

uint64_t type metadata accessor for DaemonError()
{
  result = qword_1EB435350;
  if (!qword_1EB435350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB19F6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t DaemonError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1AB4600A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DaemonError();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB19F6E0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v17 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AB4D4720;
      *(inited + 32) = sub_1AB460544();
      *(inited + 40) = v19;
      swift_getErrorValue();
      v20 = v24[20];
      v21 = v25;
      *(inited + 72) = v25;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
      v13 = sub_1AB01B220(inited);
      swift_setDeallocating();
      sub_1AB014AC0(inited + 32, &qword_1EB439AA0);

      break;
    case 2:
      v14 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1AB4D4720;
      *(v15 + 32) = sub_1AB460544();
      *(v15 + 40) = v16;
      *(v15 + 72) = sub_1AB19FC20();
      *(v15 + 48) = v14;
      v13 = sub_1AB01B220(v15);
      swift_setDeallocating();
      sub_1AB014AC0(v15 + 32, &qword_1EB439AA0);
      break;
    case 1:
      (*(v3 + 32))(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1AB4D4720;
      *(v10 + 32) = sub_1AB460544();
      *(v10 + 40) = v11;
      *(v10 + 72) = v2;
      v12 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
      (*(v3 + 16))(v12, v5, v2);
      v13 = sub_1AB01B220(v10);
      swift_setDeallocating();
      sub_1AB014AC0(v10 + 32, &qword_1EB439AA0);
      (*(v3 + 8))(v5, v2);
      break;
    default:
      v13 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      sub_1AB19FBC4(v8);
      break;
  }

  return v13;
}

uint64_t sub_1AB19FAEC(uint64_t a1)
{
  v2 = sub_1AB19FDC0(&qword_1EB437B20, type metadata accessor for DaemonError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB19FB58(uint64_t a1)
{
  v2 = sub_1AB19FDC0(&qword_1EB437B20, type metadata accessor for DaemonError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AB19FBC4(uint64_t a1)
{
  v2 = type metadata accessor for DaemonError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB19FC20()
{
  result = qword_1EB4353A0;
  if (!qword_1EB4353A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4353A0);
  }

  return result;
}

void sub_1AB19FCBC()
{
  sub_1AB19FD60();
  if (v0 <= 0x3F)
  {
    sub_1AB4600A4();
    if (v1 <= 0x3F)
    {
      sub_1AB19FC20();
      if (v2 <= 0x3F)
      {
        sub_1AB015798();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB19FD60()
{
  if (!qword_1EB434E68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB434E68);
    }
  }
}

uint64_t sub_1AB19FDC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB19FE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AB19FE70(char a1)
{
  v2 = v1;
  v4 = CGColorGetColorSpace(v1);
  if (v4 && (v5 = v4, Model = CGColorSpaceGetModel(v4), v5, Model == kCGColorSpaceModelRGB))
  {
    CopyByMatchingToColorSpace = v2;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v2, 0);

    if (!CopyByMatchingToColorSpace)
    {
      return;
    }
  }

  v9 = sub_1AB460FF4();

  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 32) * 255.0;
      if (COERCE__INT64(fabs(v11)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 > -1.0)
        {
          if (v11 < 256.0)
          {
            if (v10 != 1)
            {
              v12 = *(v9 + 40) * 255.0;
              if (COERCE__INT64(fabs(v12)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v12 > -1.0)
                {
                  if (v12 < 256.0)
                  {
                    if (v10 >= 3)
                    {
                      v13 = *(v9 + 48);

                      v14 = v13 * 255.0;
                      if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v14 > -1.0)
                        {
                          if (v14 < 256.0)
                          {
                            v15 = v11;
                            v16 = v12;
                            v17 = v14;
                            if ((a1 & 1) == 0)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
                              v23 = swift_allocObject();
                              v24 = MEMORY[0x1E69E7508];
                              *(v23 + 16) = xmmword_1AB4D4190;
                              v25 = MEMORY[0x1E69E7558];
                              *(v23 + 56) = v24;
                              *(v23 + 64) = v25;
                              *(v23 + 32) = v15;
                              *(v23 + 96) = v24;
                              *(v23 + 104) = v25;
                              *(v23 + 72) = v16;
                              *(v23 + 136) = v24;
                              *(v23 + 144) = v25;
                              *(v23 + 112) = v17;
                              goto LABEL_25;
                            }

                            v18 = CGColorGetAlpha(v2) * 255.0;
                            if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v18 > -1.0)
                              {
                                if (v18 < 256.0)
                                {
                                  v19 = v18;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
                                  v20 = swift_allocObject();
                                  *(v20 + 16) = xmmword_1AB4D9850;
                                  v21 = MEMORY[0x1E69E7508];
                                  v22 = MEMORY[0x1E69E7558];
                                  *(v20 + 56) = MEMORY[0x1E69E7508];
                                  *(v20 + 64) = v22;
                                  *(v20 + 32) = v15;
                                  *(v20 + 96) = v21;
                                  *(v20 + 104) = v22;
                                  *(v20 + 72) = v16;
                                  *(v20 + 136) = v21;
                                  *(v20 + 144) = v22;
                                  *(v20 + 112) = v17;
                                  *(v20 + 176) = v21;
                                  *(v20 + 184) = v22;
                                  *(v20 + 152) = v19;
LABEL_25:
                                  sub_1AB460584();
                                  return;
                                }

                                goto LABEL_40;
                              }

LABEL_39:
                              __break(1u);
LABEL_40:
                              __break(1u);
                              return;
                            }

LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t URL.withCacheBuster.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v57 - v4;
  v5 = sub_1AB45F9E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45F2C4();
  *&v65 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v66 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437570);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_1AB45F3E4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1AB45F5C4())
  {
    v20 = sub_1AB45F764();
    v21 = *(*(v20 - 8) + 16);

    return v21(a1, v1, v20);
  }

  else
  {
    sub_1AB45F324();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v23 = v1;
      v24 = a1;
      sub_1AB014AC0(v15, &qword_1EB437570);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D47F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v27 = swift_allocObject();
      v66 = xmmword_1AB4D4720;
      *(v27 + 16) = xmmword_1AB4D4720;
      v70 = MEMORY[0x1E69E6158];
      v68 = 0xD00000000000002BLL;
      v69 = 0x80000001AB500DD0;
      *(v27 + 48) = 0u;
      *(v27 + 32) = 0u;
      sub_1AB0169C4(&v68, v27 + 32);
      *(v27 + 64) = 0;
      *(v26 + 32) = v27;
      v28 = sub_1AB45F764();
      v70 = v28;
      v29 = __swift_allocate_boxed_opaque_existential_0(&v68);
      v30 = *(*(v28 - 8) + 16);
      v30(v29, v1, v28);
      v31 = swift_allocObject();
      *(v31 + 16) = v66;
      sub_1AB01522C(&v68, v67);
      *(v31 + 48) = 0u;
      *(v31 + 32) = 0u;
      sub_1AB0169C4(v67, v31 + 32);
      *(v31 + 64) = 2;
      *(v26 + 40) = v31;
      sub_1AB014AC0(&v68, &unk_1EB437E60);
      v68 = v25;
      v67[0] = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, v67);

      return (v30)(v24, v23, v28);
    }

    else
    {
      v61 = v16;
      v62 = v9;
      v58 = v1;
      v59 = v17;
      v60 = a1;
      v32 = v16;
      v33 = v19;
      (*(v17 + 32))(v19, v15, v32);
      sub_1AB460544();
      sub_1AB45F9D4();
      sub_1AB45F9C4();
      (*(v6 + 8))(v8, v5);
      v34 = v66;
      sub_1AB45F294();

      v35 = sub_1AB45F304();
      if (v35)
      {
        v36 = v35;
        v37 = v65;
        v39 = v62;
        v38 = v63;
        (*(v65 + 16))(v63, v34, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1AB2B0228(0, v36[2] + 1, 1, v36);
        }

        v41 = v36[2];
        v40 = v36[3];
        v42 = v59;
        if (v41 >= v40 >> 1)
        {
          v36 = sub_1AB2B0228(v40 > 1, v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        (*(v37 + 32))(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v41, v38, v39);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E40);
        v37 = v65;
        v43 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1AB4D4720;
        v39 = v62;
        (*(v37 + 16))(v44 + v43, v34, v62);
        v42 = v59;
      }

      v45 = v64;
      sub_1AB45F314();
      sub_1AB45F334();
      v46 = sub_1AB45F764();
      v47 = *(v46 - 8);
      v48 = (*(v47 + 48))(v45, 1, v46);
      v49 = v61;
      if (v48 == 1)
      {
        sub_1AB014AC0(v45, &unk_1EB4395B0);
        if (qword_1EB435660 != -1)
        {
          swift_once();
        }

        v50 = qword_1EB435668;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1AB4D47F0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v52 = swift_allocObject();
        v65 = xmmword_1AB4D4720;
        *(v52 + 16) = xmmword_1AB4D4720;
        v70 = MEMORY[0x1E69E6158];
        v68 = 0xD00000000000002CLL;
        v69 = 0x80000001AB500E00;
        *(v52 + 48) = 0u;
        *(v52 + 32) = 0u;
        sub_1AB0169C4(&v68, v52 + 32);
        *(v52 + 64) = 0;
        *(v51 + 32) = v52;
        v70 = v46;
        v53 = __swift_allocate_boxed_opaque_existential_0(&v68);
        v54 = *(v47 + 16);
        v55 = v58;
        v54(v53, v58, v46);
        v56 = swift_allocObject();
        *(v56 + 16) = v65;
        sub_1AB01522C(&v68, v67);
        *(v56 + 48) = 0u;
        *(v56 + 32) = 0u;
        sub_1AB0169C4(v67, v56 + 32);
        *(v56 + 64) = 2;
        *(v51 + 40) = v56;
        sub_1AB014AC0(&v68, &unk_1EB437E60);
        v68 = v50;
        v67[0] = 0;
        OSLogger.log(contentsOf:withLevel:)(v51, v67);

        (*(v37 + 8))(v66, v62);
        (*(v42 + 8))(v33, v61);
        return (v54)(v60, v55, v46);
      }

      else
      {
        (*(v37 + 8))(v34, v39);
        (*(v42 + 8))(v33, v49);
        return (*(v47 + 32))(v60, v45, v46);
      }
    }
  }
}

uint64_t ActionMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v9);

  *a3 = sub_1AB37F7F4(v9, v5);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v9);
  v7 = v5;
  ScalarDictionary.init(tryDeserializing:using:)(v9, &v7, &v8);
  result = sub_1AB066D84(a1);
  a3[1] = v8;
  return result;
}

uint64_t ActionMetrics.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ActionMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

JetEngine::ActionMetrics __swiftcall ActionMetrics.mergingWith(_:)(JetEngine::ActionMetrics a1)
{
  v3 = v1;
  v4 = *a1.data._rawValue;
  v5 = *(a1.data._rawValue + 1);
  v6 = *(v2 + 8);
  v15 = MEMORY[0x1E69E7CC0];

  sub_1AB164D0C(v7);
  sub_1AB164D0C(v4);
  v8 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v6;
  sub_1AB1A16CC(v5, sub_1AB1794AC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v10 = v14;

  *v3 = v8;
  v3[1] = v10;
  result.custom.values._rawValue = v12;
  result.data._rawValue = v11;
  return result;
}

uint64_t sub_1AB1A0DF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB1A0E8C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1A0F04()
{
  sub_1AB460684();
}

uint64_t sub_1AB1A0F68()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB1A0FDC@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

void sub_1AB1A103C(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AB1A1070()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1AB1A10A0@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

uint64_t sub_1AB1A1104(uint64_t a1)
{
  v2 = sub_1AB1A19B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1A1140(uint64_t a1)
{
  v2 = sub_1AB1A19B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1A19B4();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v14) = 0;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B48);
    v13 = 0;
    sub_1AB1A1A90(&qword_1EB437B50, sub_1AB1A1A08);
    sub_1AB461AC4();
    v10 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v14) = 1;
  if (sub_1AB461AF4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
    v13 = 1;
    sub_1AB1A1C08(qword_1EB4329D0);
    sub_1AB461AC4();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v11 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ActionMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB1A19B4();

  sub_1AB462274();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B48);
  sub_1AB1A1A90(&qword_1EB437B78, sub_1AB1A1B08);
  sub_1AB461BF4();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437B40);
    sub_1AB1A1C08(&qword_1EB437B90);
    sub_1AB461BF4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AB1A16CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v55[0] = *v19;
    v55[1] = v20;
    v56 = v23;
    v57 = v22;
    v58 = v24;

    sub_1AB16DB30(v23, v22, v24);
    a2(&v59, v55);
    v25 = v56;
    v26 = v57;
    v27 = v58;

    sub_1AB16DB5C(v25, v26, v27);
    v28 = v60;
    if (!v60)
    {
LABEL_22:
      sub_1AB0309A4();
    }

    v29 = v59;
    v30 = v61;
    v31 = v62;
    v53 = v63;
    v32 = *v64;
    v34 = sub_1AB014DB4(v59, v60);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_1AB1D7528();
      }
    }

    else
    {
      sub_1AB1D1BA4(v37, a4 & 1);
      v39 = sub_1AB014DB4(v29, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v15 - 1) & v15;
    v42 = *v64;
    if (v38)
    {

      v11 = v42[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      *v11 = v30;
      *(v11 + 8) = v31;
      v14 = *(v11 + 16);
      *(v11 + 16) = v53;
      sub_1AB16DB5C(v12, v13, v14);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v28;
      v44 = v42[7] + 24 * v34;
      *v44 = v30;
      *(v44 + 8) = v31;
      *(v44 + 16) = v53;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v16;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
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
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t sub_1AB1A19B4()
{
  result = qword_1EB437B38;
  if (!qword_1EB437B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437B38);
  }

  return result;
}

unint64_t sub_1AB1A1A3C()
{
  result = qword_1EB437B68;
  if (!qword_1EB437B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437B68);
  }

  return result;
}

uint64_t sub_1AB1A1A90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437B48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB1A1B3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437B60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB1A1BB4()
{
  result = qword_1EB437B88;
  if (!qword_1EB437B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437B88);
  }

  return result;
}

uint64_t sub_1AB1A1C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437B40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB1A1C88()
{
  result = qword_1EB437B98;
  if (!qword_1EB437B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437B98);
  }

  return result;
}

unint64_t sub_1AB1A1CE0()
{
  result = qword_1EB437BA0;
  if (!qword_1EB437BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437BA0);
  }

  return result;
}

unint64_t sub_1AB1A1D38()
{
  result = qword_1EB437BA8;
  if (!qword_1EB437BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437BA8);
  }

  return result;
}

uint64_t static Continuous._unwrapOnlyElement<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for _AsyncJust();
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v14);
  (*(v18 + 16))(&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v19 = type metadata accessor for Continuous();
  if (swift_dynamicCast())
  {
    v31[0] = v28;
    v31[1] = v29;
    v32 = v30;
    Continuous.base.getter(&v28);
    (*(*(v19 - 8) + 8))(v31, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437BB0);
    v20 = swift_dynamicCast();
    v21 = *(v13 + 56);
    if (v20)
    {
      v21(v12, 0, 1, v7);
      (*(v13 + 32))(v16, v12, v7);
      v22 = *(a2 - 8);
      v23 = v27;
      (*(v22 + 32))(v27, v16, a2);
      return (*(v22 + 56))(v23, 0, 1, a2);
    }

    v21(v12, 1, 1, v7);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v25 = sub_1AB461354();
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    (*(*(v25 - 8) + 8))(&v28, v25);
  }

  return (*(*(a2 - 8) + 56))(v27, 1, 1, a2);
}

uint64_t Continuous.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB1A219C, 0, 0);
}

uint64_t sub_1AB1A219C()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1AB091FE4;
  v6 = v0[2];

  return MEMORY[0x1EEE6D8C8](v6, v2, v4);
}

uint64_t Continuous.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1AB460AE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AB1A22F4, v5, v7);
}

uint64_t sub_1AB1A22F4()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  v0[8] = v2;
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v0[9] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v0[11] = v6;
  v0[12] = *(v6 + 64);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1AB1A2448;
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return MEMORY[0x1EEE6D8D0](v11, v9, v10, v7, v2, v4);
}

uint64_t sub_1AB1A2448()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1AB1A257C, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1AB1A257C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_1AB461D54())
  {
    (*(v0[11] + 8))(v4, v0[10]);
  }

  else
  {
    v6 = v0[10];
    swift_allocError();
    v5(v7, v4, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB1A26C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return Continuous.AsyncIterator.next()(a1);
}

uint64_t sub_1AB1A275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1AB1A2810;

  return Continuous.AsyncIterator.next(isolation:)(a1, a2, a3);
}

uint64_t sub_1AB1A2810()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t Continuous.init<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for _BoxedAsyncSequence();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t Continuous.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _AsyncJust();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  _AsyncJust.init(_:)(a1, a2, &v12 - v8);
  swift_getWitnessTable();
  a3[3] = type metadata accessor for _BoxedAsyncSequence();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v7 + 32))(boxed_opaque_existential_0, v9, v6);
}

uint64_t Continuous.init(_:makeElement:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v8 = sub_1AB460D44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9];
  v11 = sub_1AB460DC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a1;
  v20 = a2;
  sub_1AB1A33E4(v10);
  sub_1AB460DD4();

  swift_getWitnessTable();
  a4[3] = type metadata accessor for _BoxedAsyncSequence();
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return (*(v12 + 32))(boxed_opaque_existential_0, v14, v11);
}

uint64_t sub_1AB1A2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v8 = sub_1AB460D74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1AB460BE4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a4;
  *(v17 + 5) = a2;
  *(v17 + 6) = a3;
  (*(v9 + 32))(&v17[v16], v11, v8);

  sub_1AB2313A4(0, 0, v14, &unk_1AB4D9DD0, v17);
}

uint64_t sub_1AB1A2F10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v10 = sub_1AB460D34();
  v7[7] = v10;
  v7[8] = *(v10 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = *(a7 - 8);
  v7[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[12] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[13] = v12;
  *v12 = v7;
  v12[1] = sub_1AB1A30F8;

  return v14(v11);
}

uint64_t sub_1AB1A30F8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1AB1A3340;
  }

  else
  {
    v2 = sub_1AB1A320C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB1A320C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  (*(v3 + 16))(v0[11], v1, v6);
  sub_1AB460D74();
  sub_1AB460D54();
  (*(v5 + 8))(v2, v4);
  v0[3] = 0;
  sub_1AB460D64();
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB1A3340()
{
  v0[2] = v0[14];
  sub_1AB460D74();
  sub_1AB460D64();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB1A33E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v3 = sub_1AB460D44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Continuous._containsSingleElement.getter()
{
  v0 = type metadata accessor for _AsyncJust();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-1] - v2;
  Continuous.base.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437BB0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = result;
    (*(v1 + 8))(v3, v0);
    return v5;
  }

  return result;
}

uint64_t Continuous.base.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = *(v4 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return v5(v3, v4);
}

uint64_t Continuous.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  (*(v4 + 56))(v6, v3, v4);
  return sub_1AB0149B0(v6, a1);
}

uint64_t Continuous.description.getter()
{
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1AB461D64();
  return 0;
}

uint64_t sub_1AB1A3718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Continuous.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t Continuous._isEqual(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 48))(a1, v3, v4) & 1;
}

uint64_t Continuous<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v14 = a3;
  v15 = a2;
  v5 = type metadata accessor for _AsyncJust();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v3)
  {
    v13 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    v16[6] = v15;
    swift_getWitnessTable();
    sub_1AB461DF4();
    (*(v13 + 32))(v9, v11, v5);
    swift_getWitnessTable();
    Continuous.init<A>(contentsOf:)(v9, v5, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Continuous<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = type metadata accessor for _AsyncJust();
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - v11;
  Continuous.base.getter(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437BB0);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v9, 0, 1, v4);
    (*(v10 + 32))(v12, v9, v4);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462254();
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v29 = v24;
    swift_getWitnessTable();
    sub_1AB461E74();
    (*(v10 + 8))(v12, v4);
  }

  else
  {
    v14(v9, 1, 1, v4);
    (*(v6 + 8))(v9, v5);
    v15 = sub_1AB4616E4();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
    Continuous.base.getter(v27);
    v18 = v28;
    v19 = __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    v17[3] = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x6F756E69746E6F43, 0xEB000000003C7375);
    v21 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v21);

    MEMORY[0x1AC59BA20](0xD000000000000027, 0x80000001AB500E30);
    sub_1AB461694();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t static IntentOutcome.satisfied<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return Continuous.init(_:)(v6, a2, a3);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return Continuous.init<A>(contentsOf:)(v6, a2, a3);
}

uint64_t StaticIntent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Continuous.init(_:)(a1, a2, v6);
  v4 = type metadata accessor for Continuous();
  return StaticIntent.init(_:)(v6, v4, a3);
}

{
  swift_getAssociatedTypeWitness();
  Continuous.init<A>(contentsOf:)(a1, a2, v8);
  v6 = type metadata accessor for Continuous();
  return StaticIntent.init(_:)(v8, v6, a3);
}

uint64_t sub_1AB1A40C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB1A4104()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB1A4158(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AB027554;

  return MEMORY[0x1EEE6D8C8](a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1AB1A4258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v8[3] = a3;
  v8[4] = a5;
  v8[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[5] = AssociatedTypeWitness;
  v8[6] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v8[7] = v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  v8[8] = v14;
  *v14 = v8;
  v14[1] = sub_1AB1A43FC;

  return MEMORY[0x1EEE6D8D0](a1, a2, a3, v11, v12, AssociatedConformanceWitness);
}

uint64_t sub_1AB1A43FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    if (*(v2 + 16))
    {
      swift_getObjectType();
      v4 = sub_1AB460AE4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1AB1A4570, v4, v6);
  }

  else
  {

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1AB1A4570()
{
  (*(v0[6] + 32))(v0[4], v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB1A45F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB1A4158(a1);
}

uint64_t sub_1AB1A4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v5[4] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1AB1A47D4;

  return sub_1AB1A4258(a1, a2, a3, a5, v11);
}

uint64_t sub_1AB1A47D4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_1AB1A4908(void *a1, uint64_t a2)
{
  v11[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v2, a2);
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  v10[3] = v6;
  v8 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  LOBYTE(v6) = _isStructurallyEqual(_:to:with:at:)(v11, v10, 3uLL, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v6 & 1;
}

uint64_t sub_1AB1A49F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v5 + 16))(v7, v2, v4);
  sub_1AB460D24();
  a2[3] = type metadata accessor for _BoxedAsyncSequence._BoxedAsyncIterator();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  return (*(v9 + 32))(boxed_opaque_existential_0, v11, AssociatedTypeWitness);
}

uint64_t sub_1AB1A4C58(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v6 = *(sub_1AB460D74() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1AB027460;

  return sub_1AB1A2F10(a1, v8, v9, v10, v11, v1 + v7, v5);
}

uint64_t sub_1AB1A4D8C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB1A4E0C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1AB1A4FA0(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_1AB1A51CC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1AB1A526C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AB1A52C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (!*(a3 + 16) || (v7 = result, result = sub_1AB014DB4(result, a2), (v8 & 1) == 0))
  {
LABEL_18:
    v9 = 3;
    goto LABEL_19;
  }

  sub_1AB0165C4(*(a3 + 56) + 32 * result, &v31);
  sub_1AB014B78(&v31, v36);
  sub_1AB0165C4(v36, &v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D47F0;
    v35 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
    v12._object = 0x80000001AB501040;
    v12._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DF0);
    v34[0] = v7;
    v34[1] = a2;
    sub_1AB01522C(v34, v30);
    v31 = 0u;
    v32 = 0u;

    sub_1AB0169C4(v30, &v31);
    v33 = 1;
    v13 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
      v35 = v13;
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v31;
    v18 = v32;
    v16[64] = v33;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v35 = v13;
    sub_1AB014AC0(v34, &unk_1EB437E60);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v11 + 32) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v21 = MEMORY[0x1E69E6158];
    *(&v32 + 1) = MEMORY[0x1E69E6158];
    *&v31 = 0xD000000000000027;
    *(&v31 + 1) = 0x80000001AB501060;
    *(v20 + 48) = 0u;
    *(v20 + 32) = 0u;
    sub_1AB0169C4(&v31, v20 + 32);
    *(v20 + 64) = 0;
    *(v11 + 40) = v20;
    v22 = sub_1AB461094();
    if (os_log_type_enabled(v10, v22))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v23 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v31 = v11;
      *(&v31 + 1) = sub_1AB0223E4;
      *&v32 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AB4D4720;
      *(v29 + 56) = v21;
      *(v29 + 64) = sub_1AB016854();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1AB45FF14();
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v36);
    goto LABEL_18;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v9 = v34[0];
LABEL_19:
  *a4 = v9;
  return result;
}

uint64_t sub_1AB1A5740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DC0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

uint64_t sub_1AB1A5BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return LOBYTE(v33[0]);
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DD8);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 2;
}

uint64_t sub_1AB1A6028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  if (*(a3 + 16) && (v11 = sub_1AB014DB4(a1, a2), (v12 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * v11, &v42);
    sub_1AB014B78(&v42, v47);
    sub_1AB0165C4(v47, &v42);
    v13 = sub_1AB45F9E4();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      v15(v10, 0, 1, v13);
      (*(v14 + 32))(a4, v10, v13);
      return (v15)(a4, 0, 1, v13);
    }

    else
    {
      v19 = *(*(v13 - 8) + 56);
      v19(v10, 1, 1, v13);
      sub_1AB014AC0(v10, &qword_1EB437E08);
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v40 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D47F0;
      v46 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v21._object = 0x80000001AB501040;
      v21._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E10);
      v45[0] = a1;
      v45[1] = a2;
      sub_1AB01522C(v45, v41);
      v42 = 0u;
      v43 = 0u;

      sub_1AB0169C4(v41, &v42);
      v44 = 1;
      v22 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
        v46 = v22;
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[40 * v24];
      v26 = v42;
      v27 = v43;
      v25[64] = v44;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v46 = v22;
      sub_1AB014AC0(v45, &unk_1EB437E60);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      *(v20 + 32) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v29 = swift_allocObject();
      v39 = xmmword_1AB4D4720;
      *(v29 + 16) = xmmword_1AB4D4720;
      v30 = MEMORY[0x1E69E6158];
      *(&v43 + 1) = MEMORY[0x1E69E6158];
      *&v42 = 0xD000000000000027;
      *(&v42 + 1) = 0x80000001AB501060;
      *(v29 + 48) = 0u;
      *(v29 + 32) = 0u;
      sub_1AB0169C4(&v42, v29 + 32);
      *(v29 + 64) = 0;
      *(v20 + 40) = v29;
      v31 = sub_1AB461094();
      if (os_log_type_enabled(v40, v31))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v32 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v32[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v32 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v34 = swift_allocObject();
        *(v34 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v42 = v20;
        *(&v42 + 1) = sub_1AB0223E4;
        *&v43 = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v35 = sub_1AB460484();
        v37 = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v38 = swift_allocObject();
        *(v38 + 16) = v39;
        *(v38 + 56) = v30;
        *(v38 + 64) = sub_1AB016854();
        *(v38 + 32) = v35;
        *(v38 + 40) = v37;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      return (v19)(a4, 1, 1, v13);
    }
  }

  else
  {
    v17 = sub_1AB45F9E4();
    v18 = *(*(v17 - 8) + 56);

    return v18(a4, 1, 1, v17);
  }
}

double sub_1AB1A6678@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = sub_1AB014DB4(a1, a2);
    if (v9)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v8, &v34);
      sub_1AB014B78(&v34, v38);
      sub_1AB0165C4(v38, v37);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v10 = v35;
        *a4 = v34;
        a4[1] = v10;
        result = *&v36;
        a4[2] = v36;
        return result;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      sub_1AB158004(0, 0);
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v12 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AB4D47F0;
      v33 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v14._object = 0x80000001AB501040;
      v14._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DB8);
      v37[0] = a1;
      v37[1] = a2;
      sub_1AB01522C(v37, v32);
      v34 = 0u;
      v35 = 0u;

      sub_1AB0169C4(v32, &v34);
      LOBYTE(v36) = 1;
      v15 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
        v33 = v15;
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[40 * v17];
      v19 = v34;
      v20 = v35;
      v18[64] = v36;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v33 = v15;
      sub_1AB014AC0(v37, &unk_1EB437E60);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      *(v13 + 32) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      v23 = MEMORY[0x1E69E6158];
      *(&v35 + 1) = MEMORY[0x1E69E6158];
      *&v34 = 0xD000000000000027;
      *(&v34 + 1) = 0x80000001AB501060;
      *(v22 + 48) = 0u;
      *(v22 + 32) = 0u;
      sub_1AB0169C4(&v34, v22 + 32);
      *(v22 + 64) = 0;
      *(v13 + 40) = v22;
      v24 = sub_1AB461094();
      if (os_log_type_enabled(v12, v24))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v25 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v25 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v27 = swift_allocObject();
        *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v34 = v13;
        *(&v34 + 1) = sub_1AB01A8D8;
        *&v35 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v28 = sub_1AB460484();
        v30 = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1AB4D4720;
        *(v31 + 56) = v23;
        *(v31 + 64) = sub_1AB016854();
        *(v31 + 32) = v28;
        *(v31 + 40) = v30;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_1AB1A6B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DE8);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}