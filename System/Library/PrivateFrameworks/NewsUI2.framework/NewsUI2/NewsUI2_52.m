unsigned __int8 *sub_218C8C07C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_219BF5664();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2192590BC();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_219BF73B4();
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
                    goto LABEL_129;
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
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
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
              goto LABEL_129;
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

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_218C8C600(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
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
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
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
        result = sub_219BF73B4();
        v3 = v21;
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
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
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
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
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
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
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

  v6 = sub_218C8C07C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_218C8C900@<X0>(uint64_t a1@<X8>)
{
  sub_2187F3BD4();
  v2 = sub_219BF6FE4();

  v3 = v2[2];
  if (v3 != 4)
  {
    if (v3 == 2)
    {
      v4 = v2[6];
      v5 = v2[7];

      result = sub_218C8C600(v4, v5);
      if ((v7 & 1) == 0)
      {
        if (v2[2])
        {
          v8 = result;
          v10 = v2[4];
          v9 = v2[5];

          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 1;
LABEL_11:
          *a1 = v10;
          *(a1 + 8) = v9;
          *(a1 + 16) = v8;
          *(a1 + 24) = v12;
          *(a1 + 32) = v13;
          *(a1 + 40) = v11;
          *(a1 + 48) = v14;
          return result;
        }

        __break(1u);
        goto LABEL_16;
      }
    }

LABEL_9:

    v10 = 0;
    v9 = 0;
    v8 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v15 = v2[6];
  v16 = v2[7];

  result = sub_218C8C600(v15, v16);
  if (v17)
  {
    goto LABEL_9;
  }

  if (v2[2] < 4uLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v18 = v2[10];
  v19 = v2[11];

  result = sub_218C8C600(v18, v19);
  if (v20)
  {
    goto LABEL_9;
  }

  v21 = v2[2];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= 3)
  {
    v11 = result;
    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[8];
    v13 = v2[9];

    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_218C8CAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218C8CB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218C8CC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedAvailability();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218C8CC74(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v5 = sub_219BF5414();
  v7 = v6;

  v8 = [a1 feedConfiguration];
  v9 = [a1 alternativeFeedDescriptor];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 backingTag];

    v12 = [v11 identifier];
    swift_unknownObjectRelease();
    v13 = sub_219BF5414();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a1 alternativeFeedDescriptor];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 feedConfiguration];
  }

  else
  {
    v18 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17 == 0;
}

uint64_t sub_218C8CDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218C8CE44()
{
  result = qword_280E8FC70;
  if (!qword_280E8FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC70);
  }

  return result;
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

uint64_t sub_218C8CEB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_218C8CEFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void __swiftcall SportsManagementModule.createViewController()(UIViewController *__return_ptr retstr)
{
  sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SportsManagementViewController();

  v2 = sub_219BE1E04();

  if (v2)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218C8D03C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  return sub_219BE1B94();
}

uint64_t SportsManagementModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t SportsManagementModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218C8D104()
{
  v1 = *v0;
  sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SportsManagementViewController();

  v2 = sub_219BE1E04();

  if (v2)
  {

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EmailSignupModel.identifier.getter()
{
  v1 = *v0;
  v4 = sub_218C8D290(v0[1]);
  MEMORY[0x21CECC330](0x2D6D6F72662DLL, 0xE600000000000000);
  v2 = sub_218C8D290(v1);
  MEMORY[0x21CECC330](v2);

  return v4;
}

uint64_t sub_218C8D290(uint64_t a1)
{
  if (!a1)
  {
    return 0x656C7377654E6F6ELL;
  }

  sub_219BF7314();

  v1 = sub_219BF7894();
  MEMORY[0x21CECC330](v1);

  MEMORY[0x21CECC330](0x7365727574616566, 0xE800000000000000);
  return 0x7474656C7377656ELL;
}

uint64_t sub_218C8D370()
{
  v1 = *v0;
  v4 = sub_218C8D290(v0[1]);
  MEMORY[0x21CECC330](0x2D6D6F72662DLL, 0xE600000000000000);
  v2 = sub_218C8D290(v1);
  MEMORY[0x21CECC330](v2);

  return v4;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_218C8D3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_218C8D448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_218C8D4AC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_218C8D4FC(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_218C8D550(void *result, int a2)
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

uint64_t sub_218C8D588(unint64_t a1, char a2)
{
  if (a1 < 2)
  {
    return 0;
  }

  if (a1 == 3)
  {
    result = sub_2194B29F4(&unk_282A21EF0);
    v5 = result;
    if (a2)
    {
      sub_219498674(&v4, 1);
      return v5;
    }
  }

  else if (a1 == 2)
  {
    if (a2)
    {
      return sub_2194B29F4(&unk_282A21EC8);
    }

    else
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

unint64_t sub_218C8D678()
{
  result = qword_280EC88F0;
  if (!qword_280EC88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC88F0);
  }

  return result;
}

uint64_t sub_218C8D6DC()
{
  sub_218C8E34C(0, &qword_27CC10530, sub_218C8E2EC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218C8D760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a5;
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v6 = sub_219BED174();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BED1D4();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187D9028();
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);
  v16 = sub_219BF66E4();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v20 = v24;
  v19 = v25;
  v18[2] = v17;
  v18[3] = v20;
  v18[4] = a4;
  v18[5] = v19;
  v18[6] = v26;
  aBlock[4] = sub_218C8E33C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_45;
  v21 = _Block_copy(aBlock);

  sub_219BED1A4();
  v29 = MEMORY[0x277D84F90];
  sub_21874E180(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_218C8E34C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v11, v8, v21);
  _Block_release(v21);

  (*(v28 + 8))(v8, v6);
  (*(v9 + 8))(v11, v27);
}

void sub_218C8DB50(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_219BDC1A4();
    sub_219BDC194();
    sub_219BDC184();

    v11 = swift_allocObject();
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a2;
    v11[5] = a3;
    sub_218C8E3BC();
    sub_21874E180(&qword_27CC10548, sub_218C8E3BC);

    v12 = sub_219BEBBD4();

    *(v10 + 16) = v12;
  }

  else
  {
    v13 = sub_219BE1D94();
    sub_21874E180(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D6CAE0], v13);
    a2(v14);
  }
}

void sub_218C8DD60(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void *))
{
  v26 = a2;
  v27 = a4;
  v25 = a3;
  v5 = sub_219BE5094();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDC154();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8E424();
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8E4A4(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    swift_getErrorValue();
    v18 = sub_219BF7A04();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_219BE5314();

    v27(v16);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_219BE5084();
    sub_21874E180(&qword_27CC10550, MEMORY[0x277D38C50]);
    v21 = sub_219BE50A4();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186F20D4();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_2186FC3BC();
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;

    sub_219BE5314();

    v28 = v21;
    v29 = v23;
    v26(&v28);
    sub_2188398B4(v28, v29);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_218C8E2EC()
{
  if (!qword_280ED0A60[0])
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280ED0A60);
    }
  }
}

void sub_218C8E34C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218C8E3BC()
{
  if (!qword_27CC10538)
  {
    sub_218C8E424();
    v0 = sub_219BEBBC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10538);
    }
  }
}

void sub_218C8E424()
{
  if (!qword_27CC10540)
  {
    sub_219BDC154();
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF7AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10540);
    }
  }
}

uint64_t sub_218C8E4A4(uint64_t a1, uint64_t a2)
{
  sub_218C8E424();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C8E508()
{
  result = qword_27CC10558;
  if (!qword_27CC10558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10558);
  }

  return result;
}

unint64_t sub_218C8E570()
{
  result = qword_27CC10560;
  if (!qword_27CC10560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10560);
  }

  return result;
}

uint64_t sub_218C8E5C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_218C8E60C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_218C8E664(uint64_t a1)
{
  sub_219BED0C4();
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView);
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = *(a1 + OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel);
  v5 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];
}

uint64_t sub_218C8E754(void *a1, unint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_218818EFC(0, &qword_280E8D9C0, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71 - v6;
  sub_21875D3C8();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BF6E34();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218818EFC(0, &qword_280EE9D90, MEMORY[0x277CC8C40], v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_219BF6ED4();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDB624();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_219BDB5A4();
  v84 = *(v21 - 8);
  v85 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = &v71 - v25;
  v78 = a2;
  result = sub_218819C18(a2, v87);
  if (v87[1])
  {
    v75 = v7;
    v76 = a1;
    v27 = v88;
    v71 = v87[4];
    v72 = v88;
    if (v88)
    {
      v28 = v88;
    }

    else
    {
      v27 = [objc_opt_self() systemWhiteColor];
      v28 = 0;
    }

    v74 = v28;

    sub_219BDB614();
    sub_219BDB5B4();
    v86 = v27;
    sub_218C8FB50();
    v29 = v27;
    sub_219BDB5C4();
    v30 = 14.0;
    if ((sub_219BED0C4() & 1) == 0)
    {
      v31 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
      [v31 pointSize];
      v30 = v32;
    }

    v86 = [objc_opt_self() systemFontOfSize:v30 weight:*MEMORY[0x277D743F8]];
    sub_218C8FBA4();
    sub_219BDB5C4();
    v34 = v83;
    v33 = v84;
    v35 = v85;
    (*(v84 + 32))(v83, v24, v85);

    sub_219BF6EC4();
    (*(v33 + 16))(v16, v34, v35);
    (*(v33 + 56))(v16, 0, 1, v35);
    sub_219BF6E74();
    (*(v11 + 104))(v13, *MEMORY[0x277D74FD8], v77);
    sub_219BF6E44();
    v36 = v78 & 0xF000000000000000;
    v37 = v76;
    v38 = v75;
    if ((v78 & 0xF000000000000000) == 0x5000000000000000)
    {
      sub_218A6E4C8();
      v39 = swift_projectBox();
      v41 = v79;
      v40 = v80;
      (*(v79 + 16))(v10, v39, v80);
      v42 = (*(v41 + 88))(v10, v40);
      v43 = v74;
      if (v42 == *MEMORY[0x277D30130])
      {
        (*(v41 + 96))(v10, v40);
        sub_218A6E5D0(0);
        goto LABEL_19;
      }

      if (v42 == *MEMORY[0x277D30128])
      {
        (*(v41 + 96))(v10, v40);
        sub_218A6E554();
LABEL_19:
        v50 = *(v44 + 64);
        v51 = sub_219BDD9E4();
        (*(*(v51 - 8) + 8))(&v10[v50], v51);
        sub_2188190E4(v10, type metadata accessor for AudioFeedTrack);
        v52 = [objc_opt_self() systemGrayColor];
        sub_219BF6E84();
        v53 = [v37 imageView];
        if (v53)
        {
          v54 = v53;
          [v53 setHidden_];
        }

        goto LABEL_23;
      }

      if (v42 != *MEMORY[0x277D30138])
      {
        (*(v41 + 8))(v10, v40);
LABEL_23:
        sub_219BF5114();
        v55 = sub_219BF5074();
        v56 = 14.0;
        if ((sub_219BED0C4() & 1) == 0)
        {
          v57 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
          [v57 pointSize];
          v56 = v58;
        }

        v59 = objc_opt_self();
        v60 = [v59 configurationWithPointSize:5 weight:1 scale:v56];
        sub_2186DF030(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_219C146A0;
        v62 = v43;
        if (!v72)
        {
          v62 = [objc_opt_self() systemWhiteColor];
        }

        *(v61 + 32) = v62;
        sub_2186C6148(0, &qword_280E8DA80);
        v63 = v43;
        v64 = sub_219BF5904();

        v65 = [v59 configurationWithPaletteColors_];

        v66 = [v60 configurationByApplyingConfiguration_];
        v67 = v55;
        sub_219BF6E94();
        sub_219BF6E64();
        v68 = v66;
        sub_219BF6E24();
        sub_219BF6E54();

LABEL_28:
        v70 = v81;
        v69 = v82;
        (*(v81 + 16))(v38, v19, v82);
        (*(v70 + 56))(v38, 0, 1, v69);
        sub_219BF6EE4();
        sub_218C8FBF8(v87);
        (*(v70 + 8))(v19, v69);
        return (*(v84 + 8))(v83, v85);
      }
    }

    else
    {
      (*(v79 + 104))(v10, *MEMORY[0x277D30138], v80);
      v43 = v74;
    }

    v45 = v71;
    if (!v71)
    {
      v46 = *(*__swift_project_boxed_opaque_existential_1((v73 + 16), *(v73 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
    }

    v47 = v45;
    sub_219BF6E84();
    v48 = [v37 imageView];
    if (v48)
    {
      v49 = v48;
      [v48 setHidden_];
    }

    if (v36 != 0x5000000000000000)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_218C8F1D4()
{
  v0 = sub_219BDCAF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v4 = objc_opt_self();
  sub_219BF0CD4();
  (*(v1 + 104))(v3, *MEMORY[0x277D6D198], v0);
  sub_219BF0CC4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = [v4 systemFontOfSize:v6 weight:*MEMORY[0x277D743F8]];
  v8 = sub_219BF6BE4();

  return v8;
}

id sub_218C8F3C8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_218818EFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemFontOfSize_];
  v9 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  if (a3)
  {
    v11 = v10;
    v12 = a3;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = v10;
    v12 = [v13 secondaryLabelColor];
  }

  *(inited + 80) = v12;
  v15 = a3;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819A74(&qword_280E8E118, type metadata accessor for Key);
  v18 = sub_219BF5204();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

id sub_218C8F610(void *a1, char a2)
{
  v4 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v5 = MEMORY[0x277D76938];
    if ((a2 & 1) == 0)
    {
      v5 = MEMORY[0x277D76968];
    }

    v6 = *v5;
    v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v7 pointSize];
    v4 = v8;
  }

  v9 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:v4];
  v10 = [a1 imageByApplyingSymbolConfiguration_];

  return v10;
}

id sub_218C8F710()
{
  sub_218818EFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = v1;
  v6 = [v3 preferredFontDescriptorWithTextStyle_];
  [v6 pointSize];
  v8 = v7;

  v9 = [v2 systemFontOfSize:v8 weight:*MEMORY[0x277D743F8]];
  v10 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 secondaryLabelColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v16 = [v14 resolvedColorWithTraitCollection_];

  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v16;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819A74(&qword_280E8E118, type metadata accessor for Key);
  v19 = sub_219BF5204();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

void sub_218C8FA00(void *a1)
{
  v2 = [a1 layer];
  [v2 setCornerCurve_];

  v3 = [a1 layer];
  [a1 bounds];
  [v3 setCornerRadius_];

  [a1 setClipsToBounds_];
  v4 = [objc_opt_self() ne_visualEffectsForDailyBriefing];
  if (!v4)
  {
    sub_2186C6148(0, &qword_27CC10568);
    sub_219BF5924();
    v5 = sub_219BF5904();

    v4 = v5;
  }

  v6 = v4;
  [a1 setBackgroundEffects_];
}

unint64_t sub_218C8FB50()
{
  result = qword_280EE9DA0;
  if (!qword_280EE9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9DA0);
  }

  return result;
}

unint64_t sub_218C8FBA4()
{
  result = qword_280EE9D98;
  if (!qword_280EE9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9D98);
  }

  return result;
}

uint64_t sub_218C8FBF8(uint64_t a1)
{
  sub_2186DF030(0, &qword_280ECE5A0, &type metadata for MastheadCallToAction, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_218C8FC78(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = sub_219BDCAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218818EFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = objc_opt_self();
  sub_219BF0CD4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D198], v2);
  v9 = v7;
  sub_219BF0CC4();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = [v8 systemFontOfSize:v11 weight:*MEMORY[0x277D74410]];
  v13 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v12;
  v14 = *MEMORY[0x277D740D0];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 104) = MEMORY[0x277D839F8];
  *(inited + 80) = 0xBFDB851EB851EB85;
  v15 = v14;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819A74(&qword_280E8E118, type metadata accessor for Key);
  v18 = sub_219BF5204();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

uint64_t sub_218C8FF70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF1324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D33290])
  {
    v8 = MEMORY[0x277D2E7B0];
LABEL_19:
    v9 = *v8;
    v10 = sub_219BE0774();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (v7 == *MEMORY[0x277D33298])
  {
    v8 = MEMORY[0x277D2E7B8];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D33288])
  {
    v8 = MEMORY[0x277D2E7A8];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D332A8])
  {
    v8 = MEMORY[0x277D2E7C8];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D33268])
  {
    v8 = MEMORY[0x277D2E788];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D33278])
  {
    v8 = MEMORY[0x277D2E798];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D33280])
  {
    v8 = MEMORY[0x277D2E7A0];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D33270])
  {
    v8 = MEMORY[0x277D2E790];
    goto LABEL_19;
  }

  if (v7 == *MEMORY[0x277D332A0])
  {
    v8 = MEMORY[0x277D2E7C0];
    goto LABEL_19;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218C9022C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2186FF4C0(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C90C1C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  sub_218C90DEC(0, &qword_27CC10570, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C90C74();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_218C90E50(&unk_280E91A00, sub_2186FF4C0);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_218C90E50(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_218C90CC8(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_218C90E50(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_218C90D2C(v51);
    }
  }

  else
  {
    v30 = v48;
    (*(v24 + 32))(v48, v51, v20);
    v31 = v43;
    v32 = v44;
  }

  v33 = v52;
  (*(v24 + 32))(v52, v30, v27);
  v34 = v40;
  if (!v40)
  {
    v53 = 6;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(v5 + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_218C90D2C(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 1;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_218C90D2C(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(v5 + 24)) = v37;
  sub_218C90D88(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_218C907C4(void *a1)
{
  v3 = v1;
  sub_218C90DEC(0, &qword_27CC10580, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C90C74();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2186FF4C0(0);
  sub_218C90E50(&qword_27CC10588, sub_2186FF4C0);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_2186F9548();
    sub_218C90E50(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C90A28()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218C90A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218C90FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218C90AB0(uint64_t a1)
{
  v2 = sub_218C90C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C90AEC(uint64_t a1)
{
  v2 = sub_218C90C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C90B58()
{
  type metadata accessor for SearchFeedServiceConfig();
  sub_218C90E50(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_2186F9548(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

void sub_218C90C1C()
{
  if (!qword_280E919F0)
  {
    sub_2186FF4C0(255);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E919F0);
    }
  }
}

unint64_t sub_218C90C74()
{
  result = qword_27CC10578;
  if (!qword_27CC10578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10578);
  }

  return result;
}

uint64_t sub_218C90CC8(uint64_t a1, uint64_t a2)
{
  sub_218C90C1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C90D2C(uint64_t a1)
{
  sub_218C90C1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C90D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C90DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C90C74();
    v7 = a3(a1, &type metadata for SavedRecipesSearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C90E50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C90EAC()
{
  result = qword_27CC10590;
  if (!qword_27CC10590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10590);
  }

  return result;
}

unint64_t sub_218C90F04()
{
  result = qword_27CC10598;
  if (!qword_27CC10598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10598);
  }

  return result;
}

unint64_t sub_218C90F5C()
{
  result = qword_27CC105A0;
  if (!qword_27CC105A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC105A0);
  }

  return result;
}

uint64_t sub_218C90FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CEF680 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CEF6A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_218C910D4()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_config;
  sub_2186FF0D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218C93F58(v0 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SavedRecipesSearchFeedGroupEmitter()
{
  result = qword_27CC105C0;
  if (!qword_27CC105C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C9120C()
{
  sub_2186FF0D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218C912EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218C91398(a1, a2);
}

uint64_t sub_218C91398(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  sub_2186E46C0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[33] = swift_task_alloc();
  sub_219BEF554();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v5 = sub_219BDBD64();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v6 = sub_219BF3E84();
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v7 = sub_219BF2124();
  v3[46] = v7;
  v3[47] = *(v7 - 8);
  v3[48] = swift_task_alloc();
  v8 = sub_219BF14C4();
  v3[49] = v8;
  v3[50] = *(v8 - 8);
  v3[51] = swift_task_alloc();
  v9 = sub_219BF0B74();
  v3[52] = v9;
  v3[53] = *(v9 - 8);
  v3[54] = swift_task_alloc();
  sub_2186EB308();
  v3[55] = v10;
  v3[56] = *(v10 - 8);
  v3[57] = swift_task_alloc();
  v11 = sub_219BF0BD4();
  v3[58] = v11;
  v3[59] = *(v11 - 8);
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C91780, 0, 0);
}

uint64_t sub_218C91780()
{
  v73 = v0;
  sub_219BEF164();
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  *(v0 + 488) = OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs;
  type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = *(v0 + 224);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v6 = *(v0 + 48);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v25 = sub_219BEEDD4();
    sub_21871368C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D32428], v25);
    swift_willThrow();
LABEL_24:
    sub_218B6F84C(v0 + 16);

    v28 = *(v0 + 8);

    return v28();
  }

  v62 = *(v0 + 232);
  v8 = *(v0 + 448);
  v9 = v6 + 32;
  sub_218C92DAC(v6 + 32, v0 + 128);
  v10 = MEMORY[0x277D84F90];
  do
  {
    sub_218C92DAC(v9, v0 + 176);
    v12 = *(v0 + 176);

    sub_218C92E08(v0 + 176);
    v13 = *(v12 + 16);
    v14 = *(v10 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v10 + 24) >> 1)
    {
      if (!*(v12 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v10 = sub_2191F8404(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      if (!*(v12 + 16))
      {
LABEL_3:

        if (v13)
        {
          goto LABEL_45;
        }

        goto LABEL_4;
      }
    }

    v11 = *(v10 + 16);
    if (((*(v10 + 24) >> 1) - v11) < v13)
    {
      goto LABEL_46;
    }

    swift_arrayInitWithCopy();

    if (v13)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v13);
      v11 = v18 + v13;
      if (v19)
      {
        goto LABEL_47;
      }

      *(v10 + 16) = v11;
    }

LABEL_4:
    v9 += 48;
    --v7;
  }

  while (v7);
  v20 = *(v10 + 16);
  if (!v20)
  {

    v21 = sub_219BEEDD4();
    sub_21871368C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v23 = v27;
    v24 = MEMORY[0x277D32428];
    goto LABEL_23;
  }

  if (v20 < v5)
  {

    v21 = sub_219BEEDD4();
    sub_21871368C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v23 = v22;
    *v22 = v5;
    v22[1] = v20;
    v24 = MEMORY[0x277D32400];
LABEL_23:
    (*(*(v21 - 8) + 104))(v23, *v24, v21);
    swift_willThrow();
    sub_218C92E08(v0 + 128);
    goto LABEL_24;
  }

  sub_219A780F0(v62, v10);
  v11 = v31 >> 1;
  v69 = v32;
  v71 = v31 >> 1;
  v33 = (v31 >> 1) - v30;
  if (__OFSUB__(v31 >> 1, v30))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v33)
  {
    v34 = v30;
    v61 = v20;
    v72[0] = MEMORY[0x277D84F90];
    v10 = v72;
    sub_219BF73F4();
    if ((v33 & 0x8000000000000000) == 0)
    {
      v35 = *(v0 + 448);
      v63 = (*(v0 + 424) + 8);
      v65 = (v35 + 16);
      v36 = (v35 + 8);
      v37 = v71;
      if (v34 > v71)
      {
        v37 = v34;
      }

      v67 = v37;
      while (1)
      {
        v11 = v67;
        if (v67 == v34)
        {
          goto LABEL_48;
        }

        v38 = *(v0 + 456);
        v40 = *(v0 + 432);
        v39 = *(v0 + 440);
        v41 = *(v0 + 416);
        (*v65)(v38, v69 + v8[9] * v34, v39);
        sub_219BF07D4();
        v9 = sub_219BF0B44();
        (*v63)(v40, v41);
        (*v36)(v38, v39);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v10 = v72;
        sub_219BF73E4();
        if (v71 == ++v34)
        {
          swift_unknownObjectRelease();
          v42 = v72[0];
          v20 = v61;
          goto LABEL_37;
        }
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v8 = sub_2191F6E6C(v11 > 1, v9, 1, v8);
    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  v42 = MEMORY[0x277D84F90];
LABEL_37:
  *(v0 + 496) = v42;
  if (v62 < v20)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v43 = *(v0 + 400);
  v44 = *(v0 + 408);
  v45 = *(v0 + 384);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v64 = *(v0 + 392);
  v66 = *(v0 + 360);
  v70 = *(v0 + 352);
  v71 = v42;
  v48 = *(v0 + 344);
  v68 = *(v0 + 336);
  sub_218B6F8A0();
  v49 = swift_allocBox();
  *(v0 + 536) = 0;
  v50 = MEMORY[0x277D84F90];
  sub_219BF2704();
  *v45 = v49;
  (*(v46 + 104))(v45, *MEMORY[0x277D33758], v47);
  sub_219BF14A4();
  sub_2186E46C0(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v51 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09BA0;
  (*(v43 + 16))(v52 + v51, v44, v64);
  sub_218F0B984(v50);
  sub_218F0BA7C(v50);
  sub_218F0BB90(v50);
  sub_219BF3E74();
  (*(v48 + 16))(v70, v66, v68);
  v8 = sub_2191F6E6C(0, 1, 1, v50);
  v10 = v8[2];
  v11 = v8[3];
  v9 = v10 + 1;
  if (v10 >= v11 >> 1)
  {
    goto LABEL_51;
  }

LABEL_40:
  v54 = *(v0 + 400);
  v53 = *(v0 + 408);
  v55 = *(v0 + 392);
  v56 = *(v0 + 352);
  v57 = *(v0 + 336);
  v58 = *(v0 + 344);
  (*(v58 + 8))(*(v0 + 360), v57);
  (*(v54 + 8))(v53, v55);
  v8[2] = v9;
  (*(v58 + 32))(v8 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v10, v56, v57);
  v42 = v71;
LABEL_41:
  *(v0 + 504) = v8;
  v59 = swift_task_alloc();
  *(v0 + 512) = v59;
  *v59 = v0;
  v59[1] = sub_218C920B8;
  v60 = *(v0 + 248);

  return sub_218C92E5C(v60, v42, v8);
}

uint64_t sub_218C920B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = sub_218C92560;
  }

  else
  {
    *(v4 + 528) = a1;
    v5 = sub_218C9222C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218C9222C()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[36];
  v11 = v0[33];
  v4 = v0[30];
  sub_219BDBD54();
  v5 = sub_219BDBD44();
  v12 = v6;
  v13 = v5;
  (*(v2 + 8))(v1, v3);
  sub_2186FF0D4();
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2186FF4C0(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v7 = sub_219BEE5D4();
  (*(*(v7 - 8) + 56))(v11, 1, 1, v7);
  sub_219BED834();
  *v4 = v13;
  v4[1] = v12;
  v8 = type metadata accessor for SavedRecipesSearchFeedGroup();
  (*(v15 + 32))(v4 + *(v8 + 20), v14, v16);
  sub_218C93D70((v0 + 17), v4 + *(v8 + 24));
  sub_218C92E08((v0 + 16));
  type metadata accessor for SearchFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218B6F84C((v0 + 2));
  sub_218B6F29C(0);
  swift_storeEnumTagMultiPayload();

  v9 = v0[1];

  return v9();
}

uint64_t sub_218C92560()
{
  sub_218C92E08(v0 + 128);
  sub_218B6F84C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218C9267C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_218C926BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_config;
  sub_2186FF0D4();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218C92750@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  a1[4] = sub_21871368C(&qword_280EA4DB8, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  a1[5] = sub_21871368C(&qword_27CC0ECB8, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_218C93EC0(v3 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218C92838()
{
  sub_2186FF4C0(0);
  v0 = sub_219BEE964();
  sub_2186E46C0(0, &qword_27CC105F0, sub_218C93E04, MEMORY[0x277D84560]);
  sub_218C93E04(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218C93E24(0, &qword_27CC10600, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EE22C(v5);
  return v0;
}

uint64_t sub_218C92A38@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E46C0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FF0D4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218C93F58(inited + 32, sub_2188317B0);
  sub_218C93F24(0);
  a1[3] = v5;
  a1[4] = sub_21871368C(&qword_27CC10610, sub_218C93F24);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218C92BD8()
{
  sub_21871368C(&qword_27CC105E0, type metadata accessor for SavedRecipesSearchFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218C92E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186E46C0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186E46C0(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186E46C0(0, &qword_280E919F0, sub_2186FF4C0, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_2186E46C0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[12] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for SavedRecipesSearchFeedGroupConfigData();
  v4[17] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_219BF3E84();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C931B4, 0, 0);
}

uint64_t sub_218C931B4()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v52 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = *(v0 + 152);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277D34120];
      do
      {
        v12 = *(v0 + 168);
        v13 = *(v0 + 144);
        *v12 = MEMORY[0x21CECE0F0](v10, *(v0 + 24));
        (*(v9 + 104))(v12, v11, v13);
        v15 = *(v52 + 16);
        v14 = *(v52 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_218C34A88(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 168);
        v17 = *(v0 + 144);
        ++v10;
        *(v52 + 16) = v15 + 1;
        (*(v9 + 32))(v52 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
      }

      while (v2 != v10);
    }

    else
    {
      v18 = (*(v0 + 24) + 32);
      v49 = *(v9 + 104);
      do
      {
        v19 = *v18;
        **(v0 + 160) = *v18;
        v49();
        v20 = *(v52 + 16);
        v21 = *(v52 + 24);
        v22 = v19;
        if (v20 >= v21 >> 1)
        {
          sub_218C34A88(v21 > 1, v20 + 1, 1);
        }

        v23 = *(v0 + 160);
        v24 = *(v0 + 144);
        *(v52 + 16) = v20 + 1;
        (*(v9 + 32))(v52 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v23, v24);
        ++v18;
        --v2;
      }

      while (v2);
    }

    v3 = MEMORY[0x277D84F90];
  }

  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v50 = *(v0 + 176);
  v27 = *(v0 + 136);
  v44 = *(v0 + 128);
  v41 = *(v0 + 96);
  v42 = *(v0 + 64);
  v43 = *(v0 + 56);
  v46 = *(v0 + 48);
  v51 = *(v0 + 40);
  sub_218F0B984(v3);
  sub_218F0BA7C(v3);
  sub_218F0BB90(v3);
  sub_219BF3E74();
  sub_2186E46C0(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09BA0;
  (*(v26 + 16))(v29 + v28, v25, v50);

  sub_2191ED654(v30);
  v47 = *(v51 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService + 32);
  v48 = *(v51 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService), v48);
  sub_2186FF0D4();
  sub_219BEDD14();
  v45 = *(v44 + 20);
  *(v0 + 224) = v45;
  v31 = sub_219BEC004();
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_219A95188(v3);
  sub_219A95188(v3);
  sub_219A951A0(v3);
  sub_219A951B8(v3);
  sub_219A952CC(v3);
  sub_219A952E4(v3);
  sub_219A953F8(v3);
  sub_219BF2024();
  v32 = OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs;
  sub_2186FF4C0(0);
  v34 = v33;
  v35 = *(v33 - 8);
  (*(v35 + 16))(v42, v51 + v32, v33);
  (*(v35 + 56))(v42, 0, 1, v34);
  v36 = sub_219BF35D4();
  (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
  *(v0 + 228) = 5;
  sub_218C93E24(0, &qword_27CC0E508, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v37 = sub_219BF2774();
  (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
  v38 = qword_280E8D828;
  *MEMORY[0x277D30B98];
  if (v38 != -1)
  {
    swift_once();
  }

  qword_280F61720;
  sub_219BF2A84();
  v39 = swift_task_alloc();
  *(v0 + 200) = v39;
  *v39 = v0;
  v39[1] = sub_218C938D4;
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = v48;
  v4 = v27 + v45;
  v8 = v47;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

uint64_t sub_218C938D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = v1;

  v4 = *(v3 + 224);
  v5 = *(v3 + 136);
  v6 = *(v3 + 120);
  v7 = *(v3 + 112);
  v8 = *(v3 + 104);
  v9 = *(v3 + 88);
  v10 = *(v3 + 80);
  v11 = *(v3 + 72);
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = sub_219BF1934();
    (*(*(v12 - 8) + 8))(v5 + v4, v12);
    v13 = sub_218C93C6C;
  }

  else
  {
    *(v3 + 216) = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v14 = sub_219BF1934();
    (*(*(v14 - 8) + 8))(v5 + v4, v14);
    v13 = sub_218C93B64;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_218C93B64()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];
  v2 = v0[27];

  return v1(v2);
}

uint64_t sub_218C93C6C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_218C93D70(uint64_t a1, uint64_t a2)
{
  sub_2186E46C0(0, &qword_280EC6990, sub_218B16F50, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218C93E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchFeedServiceConfig();
    v7 = sub_21871368C(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218C93EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C93F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C93FE0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C94510(0, &qword_27CC10618, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C944BC();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 5;
    v13 = type metadata accessor for SavedRecipesSearchFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C94248(void *a1)
{
  v3 = v1;
  sub_218C94510(0, &qword_27CC10628, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C944BC();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218C94574();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SavedRecipesSearchFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C94414(uint64_t a1)
{
  v2 = sub_218C944BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C94450(uint64_t a1)
{
  v2 = sub_218C944BC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C944BC()
{
  result = qword_27CC10620;
  if (!qword_27CC10620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10620);
  }

  return result;
}

void sub_218C94510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C944BC();
    v7 = a3(a1, &type metadata for SavedRecipesSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C94574()
{
  result = qword_27CC10630;
  if (!qword_27CC10630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10630);
  }

  return result;
}

unint64_t sub_218C945DC()
{
  result = qword_27CC10638;
  if (!qword_27CC10638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10638);
  }

  return result;
}

unint64_t sub_218C94634()
{
  result = qword_27CC10640;
  if (!qword_27CC10640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10640);
  }

  return result;
}

unint64_t sub_218C9468C()
{
  result = qword_27CC10648;
  if (!qword_27CC10648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10648);
  }

  return result;
}

uint64_t type metadata accessor for SavedRecipesSearchFeedGroup()
{
  result = qword_280EB7460;
  if (!qword_280EB7460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C94754()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_218A35880();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218C947E8()
{
  sub_218C9496C(&qword_27CC10668);

  return sub_219BF1174();
}

uint64_t sub_218C94858(uint64_t a1)
{
  v2 = sub_218C9496C(&qword_27CC10668);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218C9496C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SavedRecipesSearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_218C949B0()
{
  v1 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsManagementLayoutModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952644();
  sub_219BE75E4();
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = *v6;
    v8 = *(v6 + 152);
    v9 = *(v6 + 184);
    v50 = *(v6 + 168);
    v51 = v9;
    v52 = *(v6 + 25);
    v10 = *(v6 + 88);
    v11 = *(v6 + 120);
    v46 = *(v6 + 104);
    v47 = v11;
    v48 = *(v6 + 136);
    v49 = v8;
    v12 = *(v6 + 24);
    v13 = *(v6 + 56);
    v42 = *(v6 + 40);
    v43 = v13;
    v44 = *(v6 + 72);
    v45 = v10;
    v14 = *(v6 + 8);
    v41 = v12;
    v40 = v14;
    sub_218C94EE0();
    v15 = sub_219BF5FA4();
    __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
    v16 = sub_219BE6134();
    sub_218E13964(v7, &v40, v16);

    v17 = v0[4];
    v18 = *(&v50 + 1);
    v20 = v51;
    v19 = v52;
    v21 = v15;
    [v21 setSeparatorInset_];
    [v21 setBackgroundColor_];
    [v21 setAccessoryType_];
    [v21 setSelectionStyle_];
    sub_218C954B4(v21);
  }

  else
  {
    sub_218C95678();
    v23 = &v6[*(v22 + 48)];
    v24 = *(v23 + 11);
    v50 = *(v23 + 10);
    v51 = v24;
    v52 = *(v23 + 24);
    v25 = *(v23 + 7);
    v46 = *(v23 + 6);
    v47 = v25;
    v26 = *(v23 + 9);
    v48 = *(v23 + 8);
    v49 = v26;
    v27 = *(v23 + 5);
    v44 = *(v23 + 4);
    v45 = v27;
    v28 = *(v23 + 2);
    v43 = *(v23 + 3);
    v42 = v28;
    v29 = *v23;
    v41 = *(v23 + 1);
    v40 = v29;
    sub_218A3A4F8(v6, v3);
    sub_218C94EE0();
    v30 = sub_219BF5FA4();
    __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
    v31 = *&v3[*(v1 + 24)];
    v32 = sub_219BE6134();
    sub_218E13964(v31, &v40, v32);

    v33 = v0[4];
    v34 = *(&v50 + 1);
    v36 = v51;
    v35 = v52;
    v21 = v30;
    [v21 setSeparatorInset_];
    [v21 setBackgroundColor_];
    v37 = *(*&v3[*(v1 + 20)] + 16);
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 0;
    }

    [v21 setAccessoryType_];
    [v21 setSelectionStyle_];
    sub_218C9510C(v21, v3);

    sub_218C956E4(v3);
  }

  return v21;
}

id sub_218C94EB0@<X0>(void *a1@<X8>)
{
  result = sub_218C949B0();
  *a1 = result;
  return result;
}

void sub_218C94EE0()
{
  if (!qword_27CC10670)
  {
    type metadata accessor for SportsTagView();
    sub_218C94F74(&qword_27CC10678, type metadata accessor for SportsTagView);
    v0 = sub_219BE6144();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10670);
    }
  }
}

uint64_t sub_218C94F74(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_218C94FBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_219BF53D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_218C95040(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_218C957B0();
    v4 = sub_219BF5904();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_218C950BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_218C9510C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218C9581C(a1, sub_218C957FC, &block_descriptor_24_2, sub_218C95804, &block_descriptor_28_0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  *(v11 + v10) = v7;
  v23 = sub_218C957A4;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C94FBC;
  v22 = &block_descriptor_46;
  v12 = _Block_copy(&aBlock);

  [a1 _setAccessibilityHintBlock_];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  *(v14 + v10) = v13;
  v23 = sub_218C957A8;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C95040;
  v22 = &block_descriptor_13_2;
  v15 = _Block_copy(&aBlock);

  [a1 _setAccessibilityCustomActionsBlock_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + ((v8 + 24) & ~v8));
  v23 = sub_218C957AC;
  v24 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C950BC;
  v22 = &block_descriptor_20_0;
  v18 = _Block_copy(&aBlock);

  [a1 _setAccessibilityActivationPointBlock_];
  _Block_release(v18);
}

void sub_218C954B4(void *a1)
{
  sub_218C9581C(a1, sub_218C957FC, &block_descriptor_24_2, sub_218C95804, &block_descriptor_28_0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_218C9580C;
  v11 = v2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_218C94FBC;
  v9 = &block_descriptor_32_0;
  v3 = _Block_copy(&v6);

  [a1 _setAccessibilityHintBlock_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_218C95814;
  v11 = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_218C950BC;
  v9 = &block_descriptor_36_1;
  v5 = _Block_copy(&v6);

  [a1 _setAccessibilityActivationPointBlock_];
  _Block_release(v5);
}

void sub_218C95678()
{
  if (!qword_27CC10680)
  {
    type metadata accessor for SportsModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10680);
    }
  }
}

uint64_t sub_218C956E4(uint64_t a1)
{
  v2 = type metadata accessor for SportsModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C95740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C957B0()
{
  result = qword_280E8DCF0;
  if (!qword_280E8DCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DCF0);
  }

  return result;
}

void sub_218C9581C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 setIsAccessibilityElement_];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a2;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_218C94FBC;
  v17 = a3;
  v11 = _Block_copy(&v14);

  [a1 _setAccessibilityLabelBlock_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a4;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_218C94FBC;
  v17 = a5;
  v13 = _Block_copy(&v14);

  [a1 _setAccessibilityValueBlock_];
  _Block_release(v13);
}

void sub_218C9599C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218C9581C(a1, sub_218C962BC, &block_descriptor_51_0, sub_218C962C0, &block_descriptor_56);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  *(v11 + v10) = v7;
  v23 = sub_218C962C4;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C94FBC;
  v22 = &block_descriptor_64;
  v12 = _Block_copy(&aBlock);

  [a1 _setAccessibilityHintBlock_];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  *(v14 + v10) = v13;
  v23 = sub_218C962C8;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C95040;
  v22 = &block_descriptor_72;
  v15 = _Block_copy(&aBlock);

  [a1 _setAccessibilityCustomActionsBlock_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218C95740(a2, &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_218A3A4F8(&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + ((v8 + 24) & ~v8));
  v23 = sub_218C962CC;
  v24 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218C950BC;
  v22 = &block_descriptor_80;
  v18 = _Block_copy(&aBlock);

  [a1 _setAccessibilityActivationPointBlock_];
  _Block_release(v18);
}

void sub_218C95D44(void *a1)
{
  sub_218C9581C(a1, sub_218C962BC, &block_descriptor_51_0, sub_218C962C0, &block_descriptor_56);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_218C962B4;
  v11 = v2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_218C94FBC;
  v9 = &block_descriptor_41;
  v3 = _Block_copy(&v6);

  [a1 _setAccessibilityHintBlock_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_218C962B8;
  v11 = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_218C950BC;
  v9 = &block_descriptor_46;
  v5 = _Block_copy(&v6);

  [a1 _setAccessibilityActivationPointBlock_];
  _Block_release(v5);
}

uint64_t sub_218C95F08()
{
  v1 = *(type metadata accessor for SportsModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21957B79C(v2);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(type metadata accessor for SportsModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_219BF34F4();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_218C9609C()
{
  v1 = *(type metadata accessor for SportsModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21957B8C8(v2);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(type metadata accessor for SportsModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_219BF34F4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

double sub_218C96224()
{
  v1 = *(type metadata accessor for SportsModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21957B958(v2, v3);
}

uint64_t FeatureAvailabilityProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FeatureAvailabilityProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_218A5FF2C;
}

uint64_t sub_218C96494(uint64_t *a1, void (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5 == 2)
  {
    LOBYTE(v5) = sub_218C97100(*(v3 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration), a2, a3);
    *(v3 + v4) = v5 & 1;
  }

  return v5 & 1;
}

uint64_t sub_218C964DC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___interstellarEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___interstellarEnabled);
  if (v2 == 2)
  {
    LOBYTE(v2) = [objc_opt_self() isAutomaticSharingEnabled];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_218C9652C()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNewsArticleSearch;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNewsArticleSearch);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC07E80 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 useNewsArticleSearch];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_218C9661C()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useContinueReading;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useContinueReading);
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = v4 + 1;
  if (v4 + 1 < 8 && ((0xDFu >> v5) & 1) != 0)
  {
    v2 = 0xA6u >> v5;
    *(v0 + v1) = v2 & 1;
    return v2 & 1;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218C9670C()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNotificationsV2;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNotificationsV2);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      LOBYTE(v2) = [v3 useNotificationsV2];
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_218C967B0()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowSharingAlways;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowSharingAlways);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9320 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

uint64_t sub_218C968CC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMultipleNativeAds;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMultipleNativeAds);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9250 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 useMultipleNativeAds];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_218C96ACC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useFineGrainedNewsletterManagement;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useFineGrainedNewsletterManagement);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE91D0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 fineGrainedNewsletterManagementEnabled];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_218C96BBC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___articleLinkBehaviorImprovementsEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___articleLinkBehaviorImprovementsEnabled);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE91E0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 articleLinkBehaviorImprovementsEnabled];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_218C96D3C(uint64_t *a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + *a1);
  if (v5 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    LOBYTE(v5) = sub_219BDC8C4();

    *(v3 + v4) = v5 & 1;
  }

  return v5 & 1;
}

uint64_t sub_218C96E20()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___widgetUpsellFeaturesEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___widgetUpsellFeaturesEnabled);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9298 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      v4 = [v3 paidBundleConfig];
      [v4 widgetUpsellFeaturesEnabled];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id FeatureAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218C97100(void *a1, void (*a2)(void), SEL *a3)
{
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 + 1;
  if (v7 + 1 > 7)
  {
    goto LABEL_8;
  }

  if (((1 << v8) & 0x59) != 0)
  {
    return 0;
  }

  if (((1 << v8) & 0x86) != 0)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    if ([a1 respondsToSelector_])
    {
      [a1 *a3];
    }

    v10 = sub_219BDC8C4();

    return v10 & 1;
  }

  else
  {
LABEL_8:
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218C97270(void *a1)
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9250 != -1)
  {
    swift_once();
  }

  if ([a1 respondsToSelector_])
  {
    [a1 moreToReadEOAEnabled];
  }

  v3 = sub_219BDC8C4();

  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMoreToReadEOA) = v3 & 1;
  sub_219BDC8B4();
  if ([a1 respondsToSelector_])
  {
    [a1 useMultipleNativeAds];
  }

  v4 = sub_219BDC8C4();

  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMultipleNativeAds) = v4 & 1;
  sub_219BDC8B4();
  sub_219BDC664();
  if ([a1 respondsToSelector_])
  {
    [a1 moreFromIssueEOAEnabled];
  }

  v5 = sub_219BDC8C4();

  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMoreFromIssueEOA) = v5 & 1;
  sub_219BDC8B4();
  sub_219BDC654();
  if ([a1 respondsToSelector_])
  {
    [a1 enableAIAttribution];
  }

  v6 = sub_219BDC8C4();

  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___enableAIAttribution) = v6 & 1;
  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___foodEnabled) = sub_218C97100(a1, MEMORY[0x277D319C8], &selRef_foodEnabled) & 1;
  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___exportToGroceryListEnabled) = sub_218C97100(a1, MEMORY[0x277D319B0], &selRef_exportToGroceryListEnabled) & 1;
  sub_219BDC8B4();
  sub_219BDC474();
  if ([a1 respondsToSelector_])
  {
    [a1 configurableOffersEnabled];
  }

  v7 = sub_219BDC8C4();

  *(v1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___configurableOffersEnabled) = v7 & 1;
  return result;
}

uint64_t sub_218C975B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_219BF09E4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_219BDB734();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_219BDBE34();
  v2[10] = swift_task_alloc();
  sub_219BF53C4();
  v2[11] = swift_task_alloc();
  sub_219BDB744();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C97754, 0, 0);
}

uint64_t sub_218C97754()
{
  sub_218E93A34();
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = result;
  }

  if (result < v5)
  {
LABEL_40:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {

        if (v5)
        {
          type metadata accessor for TagModel();
          v6 = 0;
          do
          {
            v7 = v6 + 1;
            sub_219BF7334();
            v6 = v7;
          }

          while (v5 != v7);
        }
      }

      else
      {
      }

      if (v3)
      {
        sub_219BF7564();
        v8 = v9;
        v3 = v10;
        v12 = v11;

        v5 = v12 >> 1;
      }

      else
      {
        v8 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      swift_unknownObjectRetain();
      if (v5 == v3)
      {
        break;
      }

      v17 = v0[5];
      v18 = v5 - v3;
      if (v5 <= v3)
      {
        v19 = v3;
      }

      else
      {
        v19 = v5;
      }

      v20 = v8 + 8 * v3;
      v3 = v19 - v3;
      v2 = MEMORY[0x277D84F90];
      while (v3)
      {
        swift_unknownObjectRetain();
        sub_219BF09D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2191F7EC4(0, *(v2 + 16) + 1, 1, v2);
        }

        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_2191F7EC4(v21 > 1, v22 + 1, 1, v2);
        }

        v23 = v0[6];
        v24 = v0[4];
        *(v2 + 16) = v22 + 1;
        (*(v17 + 32))(v2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v23, v24);
        v20 += 8;
        --v3;
        if (!--v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      v25 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
      }

      if (v25 >= 0xA)
      {
        v26 = 10;
      }

      else
      {
        v26 = v25;
      }

      if (v25 >= 0)
      {
        v5 = v26;
      }

      else
      {
        v5 = 10;
      }

      result = sub_219BF7214();
      if (result < v5)
      {
        goto LABEL_40;
      }
    }

LABEL_16:
    v13 = v0[9];
    v15 = v0[7];
    v14 = v0[8];
    swift_unknownObjectRelease_n();
    sub_219BF53B4();
    sub_219BDBDF4();
    (*(v14 + 104))(v13, *MEMORY[0x277CC9110], v15);
    sub_219BDB754();
    sub_218BB6E28();
    sub_219BDAE04();

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_218C97AC0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218C97B1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_218C975B4(a1);
}

id sub_218C97BC8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView);
  v3 = *(*__swift_project_boxed_opaque_existential_1(v1, v1[3]) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);

  return [v2 setBackgroundColor_];
}

uint64_t sub_218C97C34()
{
  sub_218736B5C();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v9 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B2A0(v45, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v14 + 32))(v16, v24, v13);
        v29 = sub_219BEDCA4();
        (*(v14 + 8))(v16, v13);
      }

      else
      {
        v30 = v44;
        (*(v44 + 32))(v11, v24, v9);
        v29 = sub_219BEDCA4();
        (*(v30 + 8))(v11, v9);
      }
    }

    else
    {
      (*(v19 + 32))(v21, v24, v18);
      v29 = sub_219BEDCA4();
      (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v26 = v38;
        v27 = v39;
        v28 = v40;
        (*(v39 + 32))(v38, v24, v40);
      }

      else
      {
        v26 = v41;
        v27 = v42;
        v28 = v43;
        (*(v42 + 32))(v41, v24, v43);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      (*(v33 + 32))(v32, v24, v34);
    }

    else
    {
      v26 = v35;
      v27 = v36;
      v28 = v37;
      (*(v36 + 32))(v35, v24, v37);
    }

    v29 = sub_219BEDCA4();
    (*(v27 + 8))(v26, v28);
  }

  return v29;
}

uint64_t sub_218C98274@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  sub_218736B5C();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v12 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B2A0(v49, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v47;
        (*(v47 + 32))(v18, v26, v16);
        v51(v16);
        return (*(v31 + 8))(v18, v16);
      }

      else
      {
        v35 = v48;
        (*(v48 + 32))(v14, v26, v12);
        v51(v12);
        return (*(v35 + 8))(v14, v12);
      }
    }

    else
    {
      (*(v21 + 32))(v23, v26, v20);
      v51(v20);
      return (*(v21 + 8))(v23, v20);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v32 = v41;
        v33 = v42;
        v34 = v43;
        (*(v42 + 32))(v41, v26, v43);
      }

      else
      {
        v32 = v44;
        v33 = v45;
        v34 = v46;
        (*(v45 + 32))(v44, v26, v46);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v29 = v36;
        v28 = v37;
        (*(v36 + 32))(v10, v26, v37);
        v51(v28);
        return (*(v29 + 8))(v10, v28);
      }

      v32 = v38;
      v33 = v39;
      v34 = v40;
      (*(v39 + 32))(v38, v26, v40);
    }

    v51(v34);
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_218C98870(uint64_t (*a1)(uint64_t))
{
  v51 = a1;
  sub_218736B5C();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v45 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v11 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v15 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B2A0(v50, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v31 = v42;
        v32 = v43;
        v33 = v44;
        (*(v43 + 32))(v42, v25, v44);
      }

      else
      {
        v31 = v45;
        v32 = v46;
        v33 = v47;
        (*(v46 + 32))(v45, v25, v47);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = v37;
        v27 = v38;
        (*(v37 + 32))(v9, v25, v38);
        v29 = v51(v27);
        (*(v28 + 8))(v9, v27);
        return v29;
      }

      v31 = v39;
      v32 = v40;
      v33 = v41;
      (*(v40 + 32))(v39, v25, v41);
    }

    v29 = v51(v33);
    (*(v32 + 8))(v31, v33);
    return v29;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v48;
      (*(v48 + 32))(v17, v25, v15);
      v29 = v51(v15);
      (*(v30 + 8))(v17, v15);
    }

    else
    {
      v34 = v49;
      (*(v49 + 32))(v13, v25, v11);
      v29 = v51(v11);
      (*(v34 + 8))(v13, v11);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v25, v19);
    v29 = v51(v19);
    (*(v20 + 8))(v22, v19);
  }

  return v29;
}

uint64_t sub_218C98ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218713450(&qword_27CC10820, type metadata accessor for SearchFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218C9907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v79 = a2;
  sub_218736B5C();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B304(0, &qword_27CC10818, type metadata accessor for SavedRecipesSearchFeedGroupConfigData);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v59 - v7;
  sub_218C9B304(0, &qword_27CC12720, MEMORY[0x277D32758]);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v59 - v9;
  sub_218C9B304(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v59 - v13;
  sub_218C9B304(0, &qword_280E91380, MEMORY[0x277D32648]);
  MEMORY[0x28223BE20](v14 - 8);
  v66 = &v59 - v15;
  sub_2186FF0D4();
  v74 = v16;
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v22 = v21;
  v76 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v26 = v25;
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v34);
  v36 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B2A0(v77, v36);
  v77 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v75;
        (*(v75 + 32))(v28, v36, v26);
        sub_2197EEAC8();
        (*(v40 + 8))(v28, v26);
      }

      else
      {
        v44 = v76;
        (*(v76 + 32))(v24, v36, v22);
        sub_21971A87C();
        (*(v44 + 8))(v24, v22);
      }
    }

    else
    {
      (*(v31 + 32))(v33, v36, v30);
      sub_218E89968();
      (*(v31 + 8))(v33, v30);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v41 = v61;
      v42 = v62;
      v43 = v63;
      (*(v62 + 32))(v61, v36, v63);
      sub_218FCFAD4();
    }

    else
    {
      v42 = v67;
      v43 = v68;
      v41 = v64;
      (*(v67 + 32))(v64, v36, v68);
      sub_2197DD680();
    }

    (*(v42 + 8))(v41, v43);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v39 = v59;
    v38 = v60;
    (*(v59 + 32))(v20, v36, v60);
    sub_218F87044();
    (*(v39 + 8))(v20, v38);
  }

  else
  {
    v45 = v65;
    (*(v65 + 32))(v73, v36);
    v46 = sub_219BEF554();
    v47 = v66;
    (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
    v48 = sub_219BE3184();
    v49 = *(*(v48 - 8) + 56);
    v50 = v69;
    v49(v69, 1, 1, v48);
    v51 = v70;
    v49(v70, 1, 1, v48);
    v52 = sub_219BEF874();
    v53 = v71;
    (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
    v54 = type metadata accessor for SavedRecipesSearchFeedGroupConfigData();
    v55 = v72;
    (*(*(v54 - 8) + 56))(v72, 1, 1, v54);
    v56 = v73;
    sub_219BEDD84();
    sub_218C9B358(v55, &qword_27CC10818, type metadata accessor for SavedRecipesSearchFeedGroupConfigData);
    sub_218C9B358(v53, &qword_27CC12720, MEMORY[0x277D32758]);
    v57 = MEMORY[0x277D6CF38];
    sub_218C9B358(v51, &qword_280EE68E0, MEMORY[0x277D6CF38]);
    sub_218C9B358(v50, &qword_280EE68E0, v57);
    sub_218C9B358(v47, &qword_280E91380, MEMORY[0x277D32648]);
    (*(v45 + 8))(v56, v74);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218C99A98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_218736B5C();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v60 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v50 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v48 = v12;
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v46 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v17 = v16;
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B138();
  v21 = v20;
  v61 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_218C9B194();
  v28 = v65;
  sub_219BF7B34();
  if (!v28)
  {
    v29 = v19;
    v43 = v17;
    v31 = v62;
    v30 = v63;
    v65 = v26;
    v32 = v64;
    sub_218C9B1E8();
    sub_219BF7734();
    if (v66[0] <= 2u)
    {
      if (v66[0])
      {
        if (v66[0] == 1)
        {
          v58 = v21;
          sub_218718690(v67, v66);
          type metadata accessor for ChannelsSearchFeedGroupConfigData();
          sub_218713450(&qword_280EA3A90, type metadata accessor for ChannelsSearchFeedGroupConfigData);
          sub_218713450(&qword_280EA3A98, type metadata accessor for ChannelsSearchFeedGroupConfigData);
          v35 = v57;
          sub_219BEDD24();
          (*(v61 + 8))(v23, v58);
          v39 = v35;
          v34 = v65;
          (*(v45 + 32))(v65, v39, v46);
        }

        else
        {
          sub_218718690(v67, v66);
          type metadata accessor for TopicsSearchFeedGroupConfigData();
          sub_218713450(&qword_280EA75F8, type metadata accessor for TopicsSearchFeedGroupConfigData);
          sub_218713450(&qword_280EA7600, type metadata accessor for TopicsSearchFeedGroupConfigData);
          v38 = v58;
          sub_219BEDD24();
          (*(v61 + 8))(v23, v21);
          v40 = v38;
          v34 = v65;
          (*(v47 + 32))(v65, v40, v48);
        }
      }

      else
      {
        v58 = v21;
        sub_218718690(v67, v66);
        type metadata accessor for ArticlesSearchFeedGroupConfigData();
        sub_218713450(&qword_280EA3EA0, type metadata accessor for ArticlesSearchFeedGroupConfigData);
        sub_218713450(&qword_280EA3EA8, type metadata accessor for ArticlesSearchFeedGroupConfigData);
        sub_219BEDD24();
        (*(v61 + 8))(v23, v58);
        v34 = v65;
        (*(v44 + 32))(v65, v29, v43);
      }
    }

    else
    {
      v57 = v23;
      v58 = v21;
      if (v66[0] > 4u)
      {
        if (v66[0] == 5)
        {
          sub_218718690(v67, v66);
          type metadata accessor for SportsSearchFeedGroupConfigData();
          sub_218713450(&qword_280EA7C98, type metadata accessor for SportsSearchFeedGroupConfigData);
          sub_218713450(&qword_280EA7CA0, type metadata accessor for SportsSearchFeedGroupConfigData);
          v36 = v60;
          sub_219BEDD24();
          (*(v61 + 8))(v57, v58);
          v37 = v36;
          v34 = v65;
          (*(v54 + 32))(v65, v37, v53);
        }

        else
        {
          sub_218718690(v67, v66);
          type metadata accessor for TopResultSearchFeedGroupConfigData();
          sub_218713450(&qword_280E9E3D0, type metadata accessor for TopResultSearchFeedGroupConfigData);
          sub_218713450(&qword_280E9E3D8, type metadata accessor for TopResultSearchFeedGroupConfigData);
          sub_219BEDD24();
          (*(v61 + 8))(v57, v58);
          v34 = v65;
          (*(v55 + 32))(v65, v30, v56);
        }
      }

      else if (v66[0] == 3)
      {
        sub_218718690(v67, v66);
        type metadata accessor for RecipesSearchFeedGroupConfigData();
        sub_218713450(&unk_280EA51F0, type metadata accessor for RecipesSearchFeedGroupConfigData);
        sub_218713450(&unk_280EA5200, type metadata accessor for RecipesSearchFeedGroupConfigData);
        v33 = v59;
        sub_219BEDD24();
        (*(v61 + 8))(v57, v58);
        v34 = v65;
        (*(v49 + 32))(v65, v33, v50);
      }

      else
      {
        sub_218718690(v67, v66);
        type metadata accessor for SavedRecipesSearchFeedGroupConfigData();
        sub_218713450(&qword_280E98FB8, type metadata accessor for SavedRecipesSearchFeedGroupConfigData);
        sub_218713450(&qword_280E98FC0, type metadata accessor for SavedRecipesSearchFeedGroupConfigData);
        sub_219BEDD24();
        (*(v61 + 8))(v57, v58);
        v34 = v65;
        (*(v51 + 32))(v65, v31, v52);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_218C9B23C(v34, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_218C9A6E4(uint64_t a1)
{
  v50 = a1;
  sub_218736B5C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v10 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v14 = v13;
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C9B2A0(v49, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v30 = v48;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v47;
        (*(v47 + 32))(v16, v24, v14);
        sub_219BEDD64();
        return (*(v31 + 8))(v16, v14);
      }

      else
      {
        (*(v48 + 32))(v12, v24, v10);
        sub_219BEDD64();
        return (*(v30 + 8))(v12, v10);
      }
    }

    else
    {
      (*(v19 + 32))(v21, v24, v18);
      sub_219BEDD64();
      return (*(v19 + 8))(v21, v18);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v32 = v41;
        v33 = v42;
        v34 = v43;
        (*(v42 + 32))(v41, v24, v43);
      }

      else
      {
        v32 = v44;
        v33 = v45;
        v34 = v46;
        (*(v45 + 32))(v44, v24, v46);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v26 = v35;
        v27 = v36;
        v28 = v37;
        (*(v36 + 32))(v35, v24, v37);
        sub_219BEDD64();
        return (*(v27 + 8))(v26, v28);
      }

      v32 = v38;
      v33 = v39;
      v34 = v40;
      (*(v39 + 32))(v38, v24, v40);
    }

    sub_219BEDD64();
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_218C9ACEC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218C9AD40@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218C9AD98(uint64_t a1)
{
  v2 = sub_218C9B194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C9ADD4(uint64_t a1)
{
  v2 = sub_218C9B194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C9AE28()
{
  sub_219BF5524();
}

uint64_t sub_218C9AF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218C9B588();
  *a1 = result;
  return result;
}

void sub_218C9AF74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73656C6369747261;
  v5 = 0xE600000000000000;
  v6 = 0x7374726F7073;
  if (v2 != 5)
  {
    v6 = 0x6C75736552706F74;
    v5 = 0xE900000000000074;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73657069636572;
  if (v2 != 3)
  {
    v8 = 0x6365526465766173;
    v7 = 0xEC00000073657069;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736C656E6E616863;
  if (v2 != 1)
  {
    v10 = 0x736369706F74;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void sub_218C9B138()
{
  if (!qword_280E8CE78)
  {
    sub_218C9B194();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CE78);
    }
  }
}

unint64_t sub_218C9B194()
{
  result = qword_280ECA0F8[0];
  if (!qword_280ECA0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECA0F8);
  }

  return result;
}

unint64_t sub_218C9B1E8()
{
  result = qword_280ECA0D8;
  if (!qword_280ECA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA0D8);
  }

  return result;
}

uint64_t sub_218C9B23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C9B2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218C9B304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218C9B358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218C9B304(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218C9B3D8()
{
  result = qword_27CC10828;
  if (!qword_27CC10828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10828);
  }

  return result;
}

unint64_t sub_218C9B430()
{
  result = qword_27CC10830;
  if (!qword_27CC10830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10830);
  }

  return result;
}

unint64_t sub_218C9B488()
{
  result = qword_280ECA0E8;
  if (!qword_280ECA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA0E8);
  }

  return result;
}

unint64_t sub_218C9B4E0()
{
  result = qword_280ECA0F0;
  if (!qword_280ECA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA0F0);
  }

  return result;
}

unint64_t sub_218C9B534()
{
  result = qword_280ECA0E0;
  if (!qword_280ECA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA0E0);
  }

  return result;
}

uint64_t sub_218C9B588()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

id sub_218C9B630()
{
  ObjectType = swift_getObjectType();

  v2 = v0;
  sub_219BE58F4();

  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_218C9B838()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_viewDidLoad);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_219BDB5E4();

  v5 = sub_219BF53D4();

  [v1 setTitle_];

  v6 = sub_219BED0C4();
  v7 = sub_219BF65B4();
  v8 = [v1 title];
  if (v6)
  {
    [v7 setBackButtonTitle_];

    v8 = sub_219BF65B4();
    [v8 setBackButtonDisplayMode_];
  }

  else
  {
    [v7 setTitle_];
  }

  v9 = *&v1[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  result = [v9 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  result = [v9 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v13 setFrame_];
  sub_219BE8664();
  v23 = sub_219BE7BC4();

  v24 = [v3 bundleForClass_];
  sub_219BDB5E4();

  v25 = sub_219BF53D4();

  [v23 setAccessibilityLabel_];

  sub_219BE8664();
  v26 = sub_219BE7BC4();

  sub_218807578();
  sub_2186EB0F8(&qword_280E90610, 255, sub_218807578);
  sub_219BF6C74();

  sub_219BE8664();
  v27 = sub_219BE7BC4();

  v28 = [v27 collectionViewLayout];

  [v28 setTs:1 sortItemsLogicallyForAccessibility:?];
  v29 = [v1 traitCollection];
  sub_218CA00C8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186EB0F8(qword_280EBB2B8, v30, type metadata accessor for MagazineFeedViewController);
  sub_2186EB0F8(qword_280EBB2A0, v31, type metadata accessor for MagazineFeedViewController);

  sub_219BEEA54();

  sub_219BE6AA4();
  swift_getObjectType();
  if (qword_280EE3860 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE7014();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_218C9BE80()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186EB0F8(&qword_280E92580, 255, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_218C9BF78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController);

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 reloadData];
  }
}

void sub_218C9C010()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
    v2 = Strong;
    sub_219BE86E4();
    v3 = objc_allocWithZone(sub_219BE9274());
    v4 = sub_219BE9254();
    v5 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v4, ObjectType, v5);
  }
}

void sub_218C9C128(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1);
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_219BF6C14();

  if (!v6)
  {
    v9 = [v2 parentViewController];
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = v9;
    v11 = [v9 view];

    if (v11)
    {
      v6 = sub_219BF6C14();

      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_3:

  sub_219BE8664();
  v7 = sub_219BE7BC4();

  sub_219BF6C34();

LABEL_4:
  sub_219BE8694();
  sub_219BE20E4();

  if ((v12 & 1) == 0)
  {
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }

  sub_218C9C2B8();
}

uint64_t sub_218C9C2B8()
{
  if (qword_280EE3830 != -1)
  {
    swift_once();
  }

  v6 = 0;
  v7 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6A74();

  sub_2188097A4(&v4);
  sub_219BEAE34();
  sub_219BEE674();
  v0 = sub_219BEE664();
  v6 = 0;
  v7 = v0;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2188097A4(&v4);

  sub_219BEAE44();
  v1 = sub_219BEE664();
  v6 = 0;
  v7 = v1;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2188097A4(&v4);

  sub_219BEAE54();
  v2 = sub_219BEE664();
  v6 = 0;
  v7 = v2;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2188097A4(&v4);
}

id sub_218C9C4F8(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        v8 = [v2 title];
        [v7 setTitle_];
      }
    }

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C1D060;
    *(v9 + 32) = 2;
    v10 = v9 | 0x6000000000000006;
    sub_219BE7884();
    sub_218932F9C(v10);
    return sub_219BE5964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C9CA28()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_2186EB0F8(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218C9CD80()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218C9CF5C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_218C9D180(uint64_t a1)
{
  sub_219BE86E4();
  v2 = objc_allocWithZone(sub_219BE9274());
  v5 = sub_219BE9254();
  v3 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 64))(v5, ObjectType, v3);
}

void sub_218C9D22C(uint64_t a1, uint64_t a2, char a3)
{
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:a3 & 1 scrollToTop:1 dismissKeyboard:?];
}

void sub_218C9D2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE86E4();
  v5 = objc_allocWithZone(sub_219BE9274());
  v8 = sub_219BE9254();
  v6 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  (*(v6 + 48))(v8, a3, ObjectType, v6);
}

void sub_218C9D358()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

uint64_t sub_218C9D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 tabBarSplitViewFocusable];
  if (v7)
  {
    [v7 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v8 = *&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler];
  sub_218E6DFC0();
  v9 = *(v8 + 40);
  ObjectType = swift_getObjectType();
  return (*(v9 + 72))(a2, 0, a4, ObjectType, v9);
}

void sub_218C9D474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 32))(0, 0, ObjectType, v10);
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
    sub_219BE86E4();
    v13 = objc_allocWithZone(sub_219BE9274());
    v14 = sub_219BE9254();
    v15 = *(v12 + 40);
    v16 = swift_getObjectType();
    (*(v15 + 56))(v14, 0, 0, v16, v15);
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E978])
    {
      if (v9 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v9 != *MEMORY[0x277D6E958])
      {
        if (v9 == *MEMORY[0x277D6E970])
        {
          goto LABEL_3;
        }

        sub_219BF7514();
        __break(1u);
      }
    }
  }
}

uint64_t sub_218C9D714(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF04A4();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEDB94();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0018(0, &unk_27CC10910, MEMORY[0x277D335C0]);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v61 - v12;
  v13 = sub_219BF0AC4();
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x28223BE20](v15);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BF1094();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0018(0, &unk_280E90A30, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v19 - 8);
  v62 = &v61 - v20;
  sub_2186F700C();
  v67 = v21;
  v66 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v65 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF0F34();
  v88 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v87 = a2;
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = sub_219BF1584();
      (*(*(v60 - 8) + 8))(v33, v60);
      return 0;
    case 2u:
      v53 = v28;
      (*(v28 + 32))(v30, v33, v27);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v88 + 8))(v25, v23);
      sub_219BE5F84();
      v44 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v30, v27);
      return v44;
    case 3u:
    case 4u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xCu:
      v34 = type metadata accessor for MagazineFeedModel;
      v35 = v33;
      goto LABEL_3;
    case 5u:
      v54 = v66;
      v55 = v65;
      v56 = v33;
      v40 = v67;
      (*(v66 + 32))(v65, v56, v67);
      sub_219BF07D4();
      v57 = v62;
      sub_219BF1074();
      (*(v63 + 8))(v18, v64);
      v58 = v88;
      if ((*(v88 + 48))(v57, 1, v23) == 1)
      {
        sub_218CA006C(v57, &unk_280E90A30, MEMORY[0x277D33058]);
        (*(v54 + 8))(v55, v40);
        return 0;
      }

      else
      {
        sub_219BF0F14();
        (*(v58 + 8))(v57, v23);
        sub_219BE5F84();
        v44 = sub_219BF4FC4();
        swift_unknownObjectRelease();

        v45 = *(v54 + 8);
        v46 = v55;
LABEL_15:
        v45(v46, v40);
        return v44;
      }

    case 8u:
      v38 = v71;
      v37 = v72;
      v39 = v33;
      v40 = v73;
      (*(v72 + 32))(v71, v39, v73);
      v41 = v68;
      sub_219BF07D4();
      sub_219BF0AA4();
      (*(v69 + 8))(v41, v70);
      v42 = sub_219BF1D14();
      v43 = v74;
      (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
      v44 = sub_219BF4FD4();
      swift_unknownObjectRelease();
      sub_218CA006C(v43, &unk_27CC10910, MEMORY[0x277D335C0]);
      v45 = *(v37 + 8);
      v46 = v38;
      goto LABEL_15;
    case 9u:
      v48 = v77;
      v47 = v78;
      v49 = v75;
      (*(v77 + 32))(v75, v33, v78);
      v50 = v76;
      sub_219BF07D4();
      sub_219BEDB74();
      v52 = v79;
      v51 = v80;
      goto LABEL_13;
    case 0xBu:
      v48 = v83;
      v47 = v84;
      v49 = v81;
      (*(v83 + 32))(v81, v33, v84);
      v50 = v82;
      sub_219BF07D4();
      sub_219BF0404();
      v52 = v85;
      v51 = v86;
LABEL_13:
      (*(v52 + 8))(v50, v51);
      v44 = sub_219BF4FA4();
      swift_unknownObjectRelease();
      (*(v48 + 8))(v49, v47);
      return v44;
    default:

      sub_2186F6F00();
      v34 = type metadata accessor for MagazineFeedGapLocation;
      v35 = &v33[*(v59 + 48)];
LABEL_3:
      sub_218CA0684(v35, v34);
      return 0;
  }
}

uint64_t sub_218C9E270(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_2186EB0F8(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_218C9E668(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();
}

void sub_218C9E7F0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
  sub_219BE86E4();
  v5 = objc_allocWithZone(sub_219BE9274());
  v8 = sub_219BE9254();
  v6 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  (*(v6 + 40))(a2, v8, ObjectType, v6);
}

uint64_t sub_218C9E94C@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_218C9E9F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2FB0](ObjectType, a2);
}

void sub_218C9EB34()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 ts:1 scrollToTop:1 dismissKeyboard:?];
}

uint64_t sub_218C9EC1C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v80 = a4;
  v96 = a3;
  v84 = a2;
  v95 = sub_219BEF974();
  v99 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagazineFeedLayoutModel();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v93 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v71 - v10;
  v101 = a1(0);
  v85 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v71 - v11;
  sub_218C3ED68();
  v91 = v12;
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA04D0();
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951E9C();
  v18 = v17;
  v97 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  sub_218CA0568();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v83 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0600(0);
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v71 - v32;
  v104 = *(v4 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintLayoutProvider);
  sub_2187EE748(0);
  sub_2186EB0F8(&unk_280EE4C90, 255, sub_2187EE748);
  sub_219BE91E4();
  v103 = MEMORY[0x277D84F90];
  v73 = v28;
  v34 = *(v28 + 16);
  v72 = v33;
  v34(v31, v33, v27);
  sub_2186EB0F8(&qword_280EE5A60, 255, sub_218CA0600);
  v35 = v83;
  sub_219BF56A4();
  v36 = *(v24 + 44);
  v37 = v27;
  v38 = sub_2186EB0F8(&unk_280EE5A50, 255, sub_218CA0600);
  sub_219BF5E84();
  if (*(v35 + v36) != v102[0])
  {
    v79 = (v97 + 16);
    v89 = (v98 + 2);
    v88 = (v99 + 32);
    v87 = (v99 + 8);
    v86 = (v98 + 1);
    v98 = (v85 + 32);
    v99 = v85 + 16;
    v74 = (v97 + 8);
    v97 = v18;
    v78 = v22;
    v77 = v37;
    v76 = v36;
    v75 = v38;
    do
    {
      v40 = sub_219BF5EC4();
      v41 = *v79;
      (*v79)(v22);
      v40(v102, 0);
      sub_219BF5E94();
      (v41)(v81, v22, v18);
      sub_2186EB0F8(&unk_280EE4E08, 255, sub_218951E9C);
      sub_219BF56A4();
      v42 = *(v82 + 36);
      sub_2186EB0F8(&qword_280EE4E00, 255, sub_218951E9C);
      sub_219BF5E84();
      v43 = *&v16[v42];
      v44 = v102[0];
      v45 = MEMORY[0x277D84F90];
      while (v43 != v44)
      {
        v46 = sub_219BF5EC4();
        v47 = v90;
        v48 = v91;
        (*v89)(v90);
        v46(v102, 0);
        sub_219BF5E94();
        v49 = v92;
        sub_219BE75E4();
        v50 = v93;
        sub_218CA0620(v49, v93);
        v52 = v94;
        v51 = v95;
        v53 = (*v88)(v94, v50, v95);
        v54 = v96(v53);
        (*v87)(v52, v51);
        sub_218CA0684(v49, type metadata accessor for MagazineFeedLayoutModel);
        result = (*v86)(v47, v48);
        v55 = *(v54 + 16);
        v56 = *(v45 + 16);
        if (__OFADD__(v56, v55))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v56 + v55 > *(v45 + 24) >> 1)
        {
          result = v84();
          v45 = result;
        }

        v18 = v97;
        if (*(v54 + 16))
        {
          if ((*(v45 + 24) >> 1) - *(v45 + 16) < v55)
          {
            goto LABEL_27;
          }

          swift_arrayInitWithCopy();

          if (v55)
          {
            v57 = *(v45 + 16);
            v58 = __OFADD__(v57, v55);
            v59 = v57 + v55;
            if (v58)
            {
              goto LABEL_28;
            }

            *(v45 + 16) = v59;
          }
        }

        else
        {

          if (v55)
          {
            goto LABEL_26;
          }
        }

        sub_219BF5E84();
        v43 = *&v16[v42];
        v44 = v102[0];
      }

      sub_218CA0684(v16, sub_218CA04D0);
      v60 = *(v45 + 16);
      if (v60)
      {
        v61 = (v84)(0, 1, 1, MEMORY[0x277D84F90]);
        v62 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v63 = v45 + v62;
        v64 = *(v85 + 72);
        v65 = *(v85 + 16);
        v67 = v100;
        v66 = v101;
        do
        {
          v65(v67, v63, v66);
          v69 = *(v61 + 16);
          v68 = *(v61 + 24);
          if (v69 >= v68 >> 1)
          {
            v61 = (v84)(v68 > 1, v69 + 1, 1, v61);
          }

          *(v61 + 16) = v69 + 1;
          v70 = v61 + v62 + v69 * v64;
          v67 = v100;
          v66 = v101;
          (*v98)(v70, v100, v101);
          v63 += v64;
          --v60;
        }

        while (v60);

        v18 = v97;
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
      }

      v22 = v78;
      (*v74)(v78, v18);
      v80(v61);
      v35 = v83;
      v37 = v77;
      sub_219BF5E84();
    }

    while (*(v35 + v76) != v102[0]);
  }

  sub_218CA0684(v35, sub_218CA0568);
  (*(v73 + 8))(v72, v37);
  return v103;
}

void sub_218C9F7B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
    v2 = Strong;
    swift_unknownObjectRetain();
    sub_219BE86E4();
    v3 = objc_allocWithZone(sub_219BE9274());
    v4 = sub_219BE9254();
    v5 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v4, 1, ObjectType, v5);
    swift_unknownObjectRelease();

    sub_219BE8664();
    v7 = sub_219BE7BC4();

    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 adjustedContentInset];
    v10 = v9;

    [v7 setContentOffset:1 animated:{0.0, -v10}];
  }
}

void sub_218C9F9A8()
{
  swift_getObjectType();

  JUMPOUT(0x21CEBDAF0);
}

uint64_t sub_218C9F9E4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = sub_219BE6D14();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double sub_218C9FA6C()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    sub_219BE6D34();
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

uint64_t sub_218C9FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D3840](a1, ObjectType, a3);
}

uint64_t sub_218C9FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v22 = a3;
  v23 = a4;
  v30 = a1;
  v24 = a9;
  sub_2187EE128(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v11 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_219BE86A4();
  v41 = v33;
  sub_2187EE318();
  sub_2186EB0F8(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();

  sub_218C3DA24();
  v14 = swift_allocObject();
  v32 = xmmword_219C09BA0;
  v29 = v14;
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = swift_allocObject();
  *(v15 + 16) = v32;
  v16 = sub_219BE6684();
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EB0F8(&unk_280EBDFB0, 255, type metadata accessor for MagazineFeedServiceConfig);
  *&v32 = v11;
  v17 = sub_219BEB284();
  v33 = a2;
  v34 = v22;
  v35 = v23;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v24;
  sub_219BE57D4();
  type metadata accessor for MagazineFeedSectionDescriptor();
  type metadata accessor for MagazineFeedModel(0);
  sub_2186EB0F8(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_2186EB0F8(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
  sub_219BE57A4();
  v18 = sub_219BE6624();

  sub_21885AB78(v17);
  if (v18)
  {
    v19 = MEMORY[0x277D6D630];
  }

  else
  {
    v16 = 0;
    v19 = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
  }

  *(v15 + 32) = v18;
  *(v15 + 56) = v16;
  *(v15 + 64) = v19;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v20 = sub_219BE59D4();
  (*(v31 + 8))(v13, v32);
  return v20;
}

void sub_218CA0018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218CA006C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218CA0018(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218CA00C8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setAlwaysBounceVertical_];
    [v6 setKeyboardDismissMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218CA01F0()
{
  v1 = sub_219BE8C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MagazineFeedRouteModel();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
  sub_2187EE128(0, &qword_280EE5930, MEMORY[0x277D6D710]);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = type metadata accessor for MagazineFeedSectionDescriptor;
  if (EnumCaseMultiPayload == 5)
  {
    __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
    swift_storeEnumTagMultiPayload();
    sub_219BE8C04();
    v17 = sub_219BE6944();
    v18 = v14;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    sub_218969F44(v7, v4, &v17);
    (*(v2 + 8))(v4, v1);
    sub_218CA0684(v7, type metadata accessor for MagazineFeedRouteModel);
    sub_21896FC30(v17, v18, v19, v20, v21);
    v13 = type metadata accessor for MyMagazinesMagazineFeedGroup;
  }

  return sub_218CA0684(v10, v13);
}

uint64_t sub_218CA0460(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218E690E0(a1, v4);
}

void sub_218CA04D0()
{
  if (!qword_280E8D4C8)
  {
    sub_218951E9C();
    sub_2186EB0F8(&qword_280EE4E00, 255, sub_218951E9C);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D4C8);
    }
  }
}

void sub_218CA0568()
{
  if (!qword_280E8D518)
  {
    sub_218CA0600(255);
    sub_2186EB0F8(&unk_280EE5A50, 255, sub_218CA0600);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D518);
    }
  }
}

uint64_t sub_218CA0620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CA0684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218CA06FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0EE8(0, &qword_27CC109A0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA0E30();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218CA0F4C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218CA0E84(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218CA09A8(uint64_t a1)
{
  v2 = sub_218CA0E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CA09E4(uint64_t a1)
{
  v2 = sub_218CA0E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218CA0A60(void *a1)
{
  sub_218CA0EE8(0, &qword_27CC109B0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA0E30();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218CA0F4C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218CA0CC0(uint64_t a1)
{
  result = sub_218CA0F4C(&qword_27CC1C6B0, type metadata accessor for ArticleListTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218CA0D18(void *a1)
{
  a1[1] = sub_218CA0F4C(&qword_27CC10990, type metadata accessor for ArticleListTagFeedGroup);
  a1[2] = sub_218CA0F4C(&qword_27CC10998, type metadata accessor for ArticleListTagFeedGroup);
  result = sub_218CA0F4C(&unk_27CC1C8D0, type metadata accessor for ArticleListTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218CA0DC4(uint64_t a1)
{
  v2 = sub_218CA0F4C(&qword_27CC10990, type metadata accessor for ArticleListTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218CA0E30()
{
  result = qword_27CC109A8;
  if (!qword_27CC109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC109A8);
  }

  return result;
}

uint64_t sub_218CA0E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218CA0EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CA0E30();
    v7 = a3(a1, &type metadata for ArticleListTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218CA0F4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218CA0FA8()
{
  result = qword_27CC109B8;
  if (!qword_27CC109B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC109B8);
  }

  return result;
}

unint64_t sub_218CA1000()
{
  result = qword_27CC109C0;
  if (!qword_27CC109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC109C0);
  }

  return result;
}

unint64_t sub_218CA1058()
{
  result = qword_27CC109C8;
  if (!qword_27CC109C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC109C8);
  }

  return result;
}

uint64_t sub_218CA10D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_2186FF4C0(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C90C1C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = v39 - v11;
  sub_218CA1B50(0, &qword_280E8CC58, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA1A50();
  v17 = v51;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v51 = v7;
  LOBYTE(v54) = 0;
  sub_218CA1AA4(&unk_280E91A00, sub_2186FF4C0);
  v19 = v50;
  v20 = v46;
  sub_219BF7674();
  sub_2186F9548();
  v22 = v21;
  LOBYTE(v53) = 1;
  sub_218CA1AA4(&qword_280E913B8, sub_2186F9548);
  v39[0] = v22;
  sub_219BF7674();
  v40 = v54;
  sub_2186F95C4();
  v24 = v23;
  LOBYTE(v52) = 2;
  sub_218CA1AA4(&qword_280E913F8, sub_2186F95C4);
  v25 = v13;
  v39[1] = v24;
  sub_219BF7674();
  v41 = v53;
  v26 = v49;
  sub_218C90CC8(v19, v49);
  v27 = v45;
  v28 = *(v45 + 48);
  if (v28(v26, 1, v20) == 1)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_218CA1AA4(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    v29 = v47;
    sub_219BEE974();
    v30 = v28(v26, 1, v20);
    v31 = v44;
    if (v30 != 1)
    {
      sub_218C90D2C(v49);
    }
  }

  else
  {
    v29 = v47;
    (*(v27 + 32))(v47, v26, v20);
    v31 = v44;
  }

  v32 = v51;
  (*(v27 + 32))(v51, v29, v20);
  v33 = v25;
  v34 = v40;
  if (!v40)
  {
    v52 = 5;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v48;
  v36 = v50;
  v37 = v43;
  *(v32 + *(v5 + 20)) = v34;
  v38 = v41;
  if (!v41)
  {
    LOBYTE(v52) = 0;
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  sub_218C90D2C(v36);
  (*(v37 + 8))(v16, v33);
  *(v32 + *(v5 + 24)) = v38;
  sub_218CA1AEC(v32, v35);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_218CA1688(void *a1)
{
  v3 = v1;
  sub_218CA1B50(0, &qword_27CC109D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA1A50();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2186FF4C0(0);
  sub_218CA1AA4(&qword_27CC10588, sub_2186FF4C0);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_2186F9548();
    sub_218CA1AA4(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186F95C4();
    sub_218CA1AA4(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CA1920()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218CA1980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CA1CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CA19A8(uint64_t a1)
{
  v2 = sub_218CA1A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CA19E4(uint64_t a1)
{
  v2 = sub_218CA1A50();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CA1A50()
{
  result = qword_280EB5810;
  if (!qword_280EB5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB5810);
  }

  return result;
}

uint64_t sub_218CA1AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CA1AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218CA1B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CA1A50();
    v7 = a3(a1, &type metadata for ArticlesSearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CA1BC8()
{
  result = qword_27CC109D8;
  if (!qword_27CC109D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC109D8);
  }

  return result;
}

unint64_t sub_218CA1C20()
{
  result = qword_280EB5800;
  if (!qword_280EB5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB5800);
  }

  return result;
}

unint64_t sub_218CA1C78()
{
  result = qword_280EB5808;
  if (!qword_280EB5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB5808);
  }

  return result;
}

uint64_t sub_218CA1CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CEF680 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CF0360 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_218CA1E04()
{
  if (!qword_280E92020)
  {
    type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData();
    sub_218CA4BCC(&unk_280E95210, type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData);
    sub_218CA4BCC(&qword_280E95220, type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92020);
    }
  }
}

uint64_t type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter()
{
  result = qword_280E97DC0;
  if (!qword_280E97DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218CA1F30()
{
  sub_218CA1E04();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E8FD40);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_218CA200C()
{
  sub_218CA4B14(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218CA208C(uint64_t a1)
{
  v3 = type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v20 = a1;
  v18[0] = v1;
  sub_218CA4B14(0, &qword_27CC10A00, MEMORY[0x277D34630], MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218CA4C14(v1, v6, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_218CA3078(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v11 = v18[0];
  sub_218CA4C14(v18[0], v6, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218CA3078(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218CA4C14(v11, v6, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_218CA3078(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_218CA2370(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_218CA23A8@<X0>(uint64_t *a1@<X8>)
{
  sub_218CA1E04();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x5000000000000002;
  return result;
}

uint64_t sub_218CA2428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  a2[4] = sub_218CA4BCC(&qword_280E9A690, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  a2[5] = sub_218CA4BCC(&qword_27CC10A08, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218CA4C14(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
}

unint64_t sub_218CA24F0(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v27 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() + 20);
  LOBYTE(v35) = 20;
  sub_2189AD5C8();
  v29 = v7;
  v30 = a1;
  v34 = sub_219BEE964();
  sub_218CA4B14(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v31 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = (v11 + v10);
  type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  sub_219BEF134();
  v13 = sub_219BEEDF4();
  v14 = *(v4 + 8);
  v26[1] = v4 + 8;
  v28 = v14;
  v14(v6, v3);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001BLL;
  v36 = 0x8000000219CE4670;
  sub_218A80DA8();
  v15 = sub_219BF5D54();
  MEMORY[0x21CECC330](v15);

  *(swift_allocObject() + 16) = v13;
  sub_218A7F1DC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v16 = *MEMORY[0x277D32308];
  v17 = *(v9 + 104);
  v26[0] = v9 + 104;
  v18 = v12;
  v19 = v12;
  v20 = v31;
  v17(v18, v16, v31);
  sub_219BEF134();
  v21 = sub_219BEEDF4();
  v28(v6, v27);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001ELL;
  v36 = 0x8000000219CE4690;
  v22 = sub_219BF5D54();
  MEMORY[0x21CECC330](v22);

  *(swift_allocObject() + 16) = v21;
  swift_allocObject();
  v23 = sub_219BEFB94();
  v24 = v33;
  *(v19 + v33) = v23;
  v17((v19 + v24), v16, v20);
  v35 = v34;
  sub_2191EDA0C(v32);
  return v35;
}

uint64_t sub_218CA297C()
{
  sub_218CA1E04();

  return sub_219BEDCA4();
}

uint64_t sub_218CA29A8@<X0>(uint64_t *a1@<X8>)
{
  sub_218CA4B14(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218CA1E04();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A80EBC(inited + 32, sub_2188317B0);
  sub_218CA4B14(0, &qword_27CC10A10, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218CA4C7C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218CA2B2C()
{
  sub_218CA4BCC(&qword_27CC109F0, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218CA2CE0()
{
  sub_219BEF0B4();
  v0 = *(v10 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BEF0B4();
  v1 = *(v10 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  if (v1)
  {
    MEMORY[0x28223BE20](v2);
    sub_219BF3824();
    sub_219BE3204();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v0;
    v4 = v0;

    v5 = sub_219BE2E54();
    sub_218CA4B14(0, &qword_27CC10A00, MEMORY[0x277D34630], MEMORY[0x277D83940]);
    sub_219BE2F74();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
  }

  else
  {
    v7 = sub_219BEEDD4();
    sub_218CA4BCC(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D32410], v7);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_218CA2F70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BF2034();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA3174(*a1, v8);
  v9 = sub_218CA3910(a3, v8);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_218CA3078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CA30DC(unint64_t *a1)
{
  v3 = *(type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218CA2F70(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_218CA3174@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34[4] = a2;
  sub_218CA4B14(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - v4;
  v40 = sub_219BF3484();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_219BF3C84();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2124();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = MEMORY[0x277D84560];
  sub_218CA4B14(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v11 = *(sub_219BF3E84() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v34[2] = *(v11 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v34[3] = v13;
  v14 = v13 + v12;
  sub_218CA4B14(0, &qword_280E8B860, MEMORY[0x277D333A8], v10);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  sub_219BF14A4();
  v17 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v17);
  sub_218F0BB90(v17);
  v34[1] = v14;
  sub_219BF3E74();
  if (a1 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_13:
    sub_218F0B984(v19);
    sub_218F0BA7C(v19);
    sub_218F0BB90(v19);
    sub_219BF3E74();
    v33 = sub_219BEC004();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    sub_219A95188(v19);
    sub_219A95188(v19);
    sub_219A951A0(v19);
    sub_219A951B8(v19);
    sub_219A952CC(v19);
    sub_219A952E4(v19);
    sub_219A953F8(v19);
    return sub_219BF2024();
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v34[0] = v5;
    v21 = 0;
    v37 = a1 & 0xC000000000000001;
    v36 = *MEMORY[0x277D33DE8];
    v22 = (v35 + 104);
    LODWORD(v35) = *MEMORY[0x277D34130];
    v23 = v42;
    v24 = (v41 + 104);
    v34[5] = v41 + 32;
    v25 = a1;
    v26 = v38;
    do
    {
      if (v37)
      {
        v27 = MEMORY[0x21CECE0F0](v21, a1);
      }

      else
      {
        v27 = *(a1 + 8 * v21 + 32);
      }

      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v30 = v39;
      v29 = v40;
      *v39 = v28;
      (*v22)(v30, v36, v29);
      sub_219BF1AC4();
      (*v24)(v8, v35, v26);
      v42 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C34A88(v31 > 1, v32 + 1, 1);
        v23 = v42;
      }

      ++v21;
      *(v23 + 16) = v32 + 1;
      (*(v41 + 32))(v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, v8, v26);
      a1 = v25;
    }

    while (v18 != v21);
    v5 = v34[0];
    v19 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_218CA3910(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218CA4B14(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  sub_218CA4B14(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_218CA4B14(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v38 = sub_219BF2AB4();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() + 24));
  v20 = v19[3];
  v35 = v19[4];
  v36 = v20;
  v34 = __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_218CA1E04();
  sub_219BEDD14();
  v33 = *(v16 + 28);
  sub_2189AD5C8();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_219BEF0B4();
  v22 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v23 = sub_219BF35D4();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  LOBYTE(v40) = 22;
  sub_218A7F1DC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v24 = *(v40 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  v25 = v37;
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v12 + 8))(v14, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v18[v28], v30);
  return v29;
}

uint64_t sub_218CA3E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA40BC(a1, a3, v10);
  sub_218CA4C14(v10, v7, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218CA4B14(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v11 = sub_219BE3014();
  sub_218A80EBC(v10, type metadata accessor for TagFeedGroup);
  return v11;
}

uint64_t sub_218CA4024(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218CA3E90(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218CA40BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  sub_218CA4B14(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_219BEF554();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v21[0] = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = sub_219BF1904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  sub_218CA1E04();
  v17 = sub_219BEDCB4();
  v21[1] = v18;
  v21[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_219BED854();
  (*(v14 + 32))(v24, v16, v22);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218CA4440()
{
  type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_218CA4580(uint64_t a1)
{
  v2 = sub_219BF4684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 28)), *(a1 + *(v6 + 28) + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D34480], v2);
  v7 = sub_219BF4C14();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_218CA46B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = sub_219BF43F4();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v10);
  v15[2] = a1;
  v15[3] = a2;
  v11 = sub_218DDEBF0(sub_218CA4BB0, v15, v6);

  if (v11 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    *a3 = v11;
    return result;
  }

  v13 = sub_219BEEDD4();
  sub_218CA4BCC(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D32428], v13);
  return swift_willThrow();
}

uint64_t sub_218CA490C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_219BF4C34();
  v6 = [a2 alternativeFeedDescriptor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 feedConfiguration];
  }

  else
  {
    v8 = [a2 feedConfiguration];
  }

  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_218CCFCD4(v9, v5, 22, v8);
  result = swift_unknownObjectRelease_n();
  *a3 = v10;
  return result;
}

uint64_t sub_218CA49E8()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

void sub_218CA4B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218CA4BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CA4C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218CA4C7C()
{
  result = qword_27CC10A18;
  if (!qword_27CC10A18)
  {
    sub_218CA4B14(255, &qword_27CC10A10, type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A18);
  }

  return result;
}

char *sub_218CA4D04(uint64_t *a1)
{
  v2 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v2);
  v4 = (v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189522EC();
  v31 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  *v4 = *a1;
  v28[1] = v2;
  swift_storeEnumTagMultiPayload();

  sub_218CA4FF4(v11, v4, v10);
  sub_218CA5C08(v4, type metadata accessor for SportsManagementSectionDescriptor);
  v12 = sub_2191F7F2C(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2191F7F2C(v13 > 1, v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v16 = *(v6 + 32);
  v15 = v6 + 32;
  v17 = (*(v15 + 48) + 32) & ~*(v15 + 48);
  v18 = *(v15 + 40);
  v28[0] = v16;
  v16(&v12[v17 + v18 * v14], v10, v31);
  v19 = a1[1];
  v20 = a1[2];
  v30 = a1;
  v21 = a1[3];

  v22 = sub_2193F8EA4(v19, v20, v21);
  *v4 = v19;
  v4[1] = v20;
  v4[2] = v21;
  swift_storeEnumTagMultiPayload();
  v23 = v29;
  sub_218CA4FF4(v22, v4, v29);

  sub_218CA5C08(v4, type metadata accessor for SportsManagementSectionDescriptor);
  v25 = *(v12 + 2);
  v24 = *(v12 + 3);
  if (v25 >= v24 >> 1)
  {
    v12 = sub_2191F7F2C(v24 > 1, v25 + 1, 1, v12);
  }

  *(v12 + 2) = v25 + 1;
  (v28[0])(&v12[v17 + v25 * v18], v23, v31);
  v32 = v12;
  v26 = sub_218CA545C(v30[4]);
  sub_2191EDE84(v26);
  return v32;
}

size_t sub_218CA4FF4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v31);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189525B0();
  v30 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BA1CA4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA5BA0(a2, v17, type metadata accessor for SportsManagementSectionDescriptor);
  if (a1 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_12:
    v26 = sub_218CA5B58(&qword_27CC0E998, sub_2189525B0);
    v27 = sub_218CA5B58(&unk_27CC0E9A0, sub_2189525B0);
    MEMORY[0x21CEB9170](v19, v30, v26, v27);
    sub_218CA5B58(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_218CA5B58(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    return sub_219BE6924();
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_218C34ED0(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v28[3] = a3;
    v29 = v18;
    v28[0] = v17;
    v28[1] = v15;
    v28[2] = v14;
    v21 = 0;
    v19 = v32;
    v22 = a1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x21CECE0F0](v21, v22);
      }

      else
      {
      }

      *v7 = v23;
      swift_storeEnumTagMultiPayload();
      sub_218CA5B58(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
      sub_219BE5FB4();
      v32 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C34ED0(v24 > 1, v25 + 1, 1);
        v19 = v32;
      }

      ++v21;
      *(v19 + 16) = v25 + 1;
      (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v11, v30);
      v22 = a1;
    }

    while (v29 != v21);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_218CA545C(uint64_t a1)
{
  v58 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v58);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsModel();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0();
  v57 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BA1CA4();
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v51);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsManagementSection();
  v15 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189522EC();
  v49 = v18;
  MEMORY[0x28223BE20](v18);
  v48 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v60 = MEMORY[0x277D84F90];
  v53 = v19;
  v46 = v21;
  sub_218C34E80(0, v21, 0);
  v23 = 0;
  v45 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v55 = v60;
  v56 = v8 + 32;
  v43 = *(v15 + 72);
  v44 = v53 + 32;
  v41 = v14;
  v47 = v17;
  do
  {
    v54 = v23;
    sub_218CA5BA0(v45 + v43 * v23, v17, type metadata accessor for SportsManagementSection);
    sub_218CA5BA0(v17, v14, type metadata accessor for SportsManagementSectionDescriptor);
    v24 = *&v17[*(v50 + 20)];
    v25 = *(v24 + 16);
    if (v25)
    {
      v59 = v22;
      sub_218C34ED0(0, v25, 0);
      v26 = v59;
      v27 = v24 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v28 = *(v42 + 72);
      do
      {
        sub_218CA5BA0(v27, v6, type metadata accessor for SportsModel);
        sub_218CA5BA0(v6, v3, type metadata accessor for SportsModel);
        swift_storeEnumTagMultiPayload();
        sub_218CA5B58(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
        sub_219BE5FB4();
        sub_218CA5C08(v6, type metadata accessor for SportsModel);
        v59 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_218C34ED0(v29 > 1, v30 + 1, 1);
          v26 = v59;
        }

        *(v26 + 16) = v30 + 1;
        (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v10, v57);
        v27 += v28;
        --v25;
      }

      while (v25);
      v14 = v41;
    }

    else
    {
      v26 = v22;
    }

    v31 = sub_218CA5B58(&qword_27CC0E998, sub_2189525B0);
    v32 = sub_218CA5B58(&unk_27CC0E9A0, sub_2189525B0);
    MEMORY[0x21CEB9170](v26, v57, v31, v32);
    sub_218CA5B58(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_218CA5B58(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v33 = v48;
    sub_219BE6924();
    v17 = v47;
    sub_218CA5C08(v47, type metadata accessor for SportsManagementSection);
    v34 = v55;
    v60 = v55;
    v36 = *(v55 + 16);
    v35 = *(v55 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_218C34E80(v35 > 1, v36 + 1, 1);
      v34 = v60;
    }

    v37 = v53;
    v23 = v54 + 1;
    *(v34 + 16) = v36 + 1;
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v55 = v34;
    (*(v37 + 32))(v34 + v38 + *(v37 + 72) * v36, v33, v49);
    v22 = MEMORY[0x277D84F90];
  }

  while (v23 != v46);
  return v55;
}

uint64_t sub_218CA5B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218CA5BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CA5C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218CA5C68(uint64_t a1, uint64_t a2)
{
  sub_219BF51C4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BF5194();
}

void sub_218CA5D80(void *a1, void (**a2)(void, void))
{
  v4 = sub_219BED214();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF51A4();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  _Block_copy(a2);

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (!v11)
  {
    goto LABEL_18;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(&v43, &v44);
  sub_218805E54();
  swift_dynamicCast();
  v12 = v42;
  sub_218803390();
  sub_219BF6584();
  v13 = v44;
  if (!v44)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a2)[2](a2, v35);

LABEL_15:
    return;
  }

  v14 = [v44 childViewControllers];
  v15 = sub_219BF5924();

  if (v15 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    type metadata accessor for TodayViewController();
    v35 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a2)[2](a2, v35);

    goto LABEL_15;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x21CECE0F0](0, v15);
    goto LABEL_8;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_8:
    v17 = v16;

    type metadata accessor for TodayViewController();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = v17;

      v21 = sub_219BF53D4();

      [a1 setObject:v19 forKey:v21];
      v37 = v20;

      v36 = sub_219BF51C4();
      sub_219BE8664();
      v22 = sub_219BE7BC4();

      [v22 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v45.origin.x = v24;
      v45.origin.y = v26;
      v45.size.width = v28;
      v45.size.height = v30;
      *v8 = CGRectGetHeight(v45) * 4.0;
      v31 = v39;
      (*(v6 + 104))(v8, *MEMORY[0x277D6D130], v39);
      sub_219BE8664();
      v32 = sub_219BE7BC4();

      v33 = swift_allocObject();
      *(v33 + 16) = sub_218967168;
      *(v33 + 24) = v9;

      v34 = v38;
      sub_219BED1E4();
      sub_219BF51B4();

      (*(v40 + 8))(v34, v41);
      (*(v6 + 8))(v8, v31);

      return;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_18:
  _Block_release(a2);
  __break(1u);
}

size_t sub_218CA6324()
{
  v151 = sub_219BDB224();
  v1 = *(v151 - 8);
  v2 = v1;
  v3 = MEMORY[0x28223BE20](v151);
  v150 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v132 = &v121 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v145 = &v121 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v121 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v121 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v148 = &v121 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v154 = &v121 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v153 = &v121 - v26;
  MEMORY[0x28223BE20](v25);
  v125 = &v121 - v27;
  v28 = sub_219BDB0F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v0;
  v33 = *(v0 + 8);
  v34 = *(v0 + 16);
  v134 = *(v0 + 24);
  v135 = *(v0 + 32);
  v136 = *(v0 + 40);
  v137 = *(v0 + 48);
  v35 = *(v0 + 64);
  v126 = *(v0 + 56);
  v152 = v35;
  v36 = *(v0 + 80);
  v127 = *(v0 + 72);
  v138 = v36;
  v37 = *(v0 + 96);
  v128 = *(v0 + 88);
  v139 = v37;
  v38 = *(v0 + 112);
  v141 = *(v0 + 104);
  v130 = v38;
  v39 = *(v0 + 128);
  v142 = *(v0 + 120);
  v121 = v39;
  v40 = *(v0 + 144);
  v133 = *(v0 + 136);
  v131 = v40;
  v41 = *(v0 + 160);
  v143 = *(v0 + 152);
  v144 = v41;
  sub_218CA7AF4(0, &qword_27CC0F588, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v42 = v1;
  v43 = v29;
  v44 = *(v42 + 72);
  v146 = v2;
  v45 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v157 = v44;
  v124 = v45 + v44;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_219C09BA0;
  sub_219BDB0C4();
  sub_219BDB0E4();
  sub_219BDB0E4();
  v158 = v32;
  v159 = v33;
  v47 = sub_2187F3BD4();
  sub_219BF7044();
  v50 = *(v43 + 8);
  v49 = v43 + 8;
  v48 = v50;
  v50(v31, v28);
  v156 = v45;
  sub_219BDB1F4();

  v155 = v50;
  if (v34)
  {
    v158 = v34;
    sub_2186D0BA8();
    sub_2189DD328();
    v51 = sub_219BF5324();
    v53 = v52;
    sub_219BDB0C4();
    sub_219BDB0E4();
    sub_219BDB0E4();
    v158 = v51;
    v159 = v53;
    sub_219BF7044();
    v48(v31, v28);

    v54 = v125;
    sub_219BDB1F4();

    v46 = sub_2191F84A0(1uLL, 2, 1, v46);
    *(v46 + 16) = 2;
    v55 = v146;
    (*(v146 + 32))(v46 + v124, v54, v151);
  }

  else
  {
    v55 = v146;
  }

  v56 = v47;
  v57 = v133;
  if (v133 < 2)
  {
    v58 = v151;
    v59 = v152;
    if (!v152)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_219BDB0C4();
  sub_219BDB0E4();
  sub_219BDB0E4();
  v158 = v121;
  v159 = v57;
  sub_219BF7044();
  v155(v31, v28);
  sub_219BDB1F4();

  v61 = *(v46 + 16);
  v60 = *(v46 + 24);
  if (v61 >= v60 >> 1)
  {
    v46 = sub_2191F84A0(v60 > 1, v61 + 1, 1, v46);
  }

  v58 = v151;
  *(v46 + 16) = v61 + 1;
  (*(v55 + 32))(v46 + v156 + v61 * v157, v153, v58);
  v59 = v152;
  if (v152)
  {
LABEL_10:
    sub_219BDB0C4();
    sub_219BDB0E4();
    sub_219BDB0E4();
    v158 = v126;
    v159 = v59;
    sub_219BF7044();
    v155(v31, v28);
    sub_219BDB1F4();

    v63 = *(v46 + 16);
    v62 = *(v46 + 24);
    if (v63 >= v62 >> 1)
    {
      v46 = sub_2191F84A0(v62 > 1, v63 + 1, 1, v46);
    }

    *(v46 + 16) = v63 + 1;
    (*(v55 + 32))(v46 + v156 + v63 * v157, v154, v58);
  }

LABEL_13:
  v153 = v28;
  v154 = v56;
  v152 = v49;
  v64 = *(v134 + 16);
  if (v64)
  {
    v65 = (v55 + 32);
    v66 = (v134 + 40);
    do
    {
      v68 = *(v66 - 1);
      v67 = *v66;

      sub_219BDB0C4();
      sub_219BDB0E4();
      sub_219BDB0E4();
      v158 = v68;
      v159 = v67;
      sub_219BF7044();
      v155(v31, v153);

      sub_219BDB1F4();

      v70 = *(v46 + 16);
      v69 = *(v46 + 24);
      if (v70 >= v69 >> 1)
      {
        v46 = sub_2191F84A0(v69 > 1, v70 + 1, 1, v46);
      }

      *(v46 + 16) = v70 + 1;
      v71 = v46 + v156 + v70 * v157;
      v58 = v151;
      (*v65)(v71, v147, v151);
      v66 += 2;
      --v64;
    }

    while (v64);
  }

  if (v135 == 2)
  {
    v72 = v146;
    v73 = v136;
    v74 = *(v136 + 16);
    if (!v74)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v158 = 0;
  v159 = 0xE000000000000000;
  if (v135)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v135)
  {
    v76 = 0xE400000000000000;
  }

  else
  {
    v76 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v75, v76);

  v77 = v122;
  sub_219BDB1F4();

  v79 = *(v46 + 16);
  v78 = *(v46 + 24);
  v72 = v146;
  v73 = v136;
  if (v79 >= v78 >> 1)
  {
    v46 = sub_2191F84A0(v78 > 1, v79 + 1, 1, v46);
  }

  *(v46 + 16) = v79 + 1;
  (*(v72 + 32))(v46 + v156 + v79 * v157, v77, v58);
  v74 = *(v73 + 16);
  if (v74)
  {
LABEL_30:
    v80 = (v73 + 40);
    do
    {
      v82 = *(v80 - 1);
      v81 = *v80;

      sub_219BDB0C4();
      sub_219BDB0E4();
      sub_219BDB0E4();
      v158 = v82;
      v159 = v81;
      sub_219BF7044();
      v155(v31, v153);

      sub_219BDB1F4();

      v84 = *(v46 + 16);
      v83 = *(v46 + 24);
      if (v84 >= v83 >> 1)
      {
        v46 = sub_2191F84A0(v83 > 1, v84 + 1, 1, v46);
      }

      v58 = v151;
      *(v46 + 16) = v84 + 1;
      (*(v72 + 32))(v46 + v156 + v84 * v157, v148, v58);
      v80 += 2;
      --v74;
    }

    while (v74);
  }

LABEL_34:
  if (v137 == 2)
  {
    v85 = v153;
    v86 = v146;
    v87 = v140;
  }

  else
  {
    v88 = v123;
    sub_219BDB1F4();

    v90 = *(v46 + 16);
    v89 = *(v46 + 24);
    v85 = v153;
    v86 = v146;
    v87 = v140;
    if (v90 >= v89 >> 1)
    {
      v46 = sub_2191F84A0(v89 > 1, v90 + 1, 1, v46);
    }

    *(v46 + 16) = v90 + 1;
    (*(v86 + 32))(v46 + v156 + v90 * v157, v88, v58);
  }

  v91 = v138;
  if (v138)
  {
    sub_219BDB0C4();
    sub_219BDB0E4();
    sub_219BDB0E4();
    v158 = v127;
    v159 = v91;
    sub_219BF7044();
    v155(v31, v85);
    sub_219BDB1F4();

    v93 = *(v46 + 16);
    v92 = *(v46 + 24);
    if (v93 >= v92 >> 1)
    {
      v46 = sub_2191F84A0(v92 > 1, v93 + 1, 1, v46);
    }

    *(v46 + 16) = v93 + 1;
    (*(v86 + 32))(v46 + v156 + v93 * v157, v87, v58);
  }

  v94 = v139;
  if (v139)
  {
    sub_219BDB0C4();
    sub_219BDB0E4();
    sub_219BDB0E4();
    v158 = v128;
    v159 = v94;
    sub_219BF7044();
    v155(v31, v85);
    v95 = v129;
    sub_219BDB1F4();

    v97 = *(v46 + 16);
    v96 = *(v46 + 24);
    if (v97 >= v96 >> 1)
    {
      v46 = sub_2191F84A0(v96 > 1, v97 + 1, 1, v46);
    }

    *(v46 + 16) = v97 + 1;
    (*(v86 + 32))(v46 + v156 + v97 * v157, v95, v58);
  }

  v98 = *(v141 + 16);
  if (v98)
  {
    v99 = (v141 + 40);
    do
    {
      v100 = *(v99 - 1);
      v101 = *v99;

      sub_219BDB0C4();
      sub_219BDB0E4();
      sub_219BDB0E4();
      v158 = v100;
      v159 = v101;
      sub_219BF7044();
      v155(v31, v153);

      sub_219BDB1F4();

      v103 = *(v46 + 16);
      v102 = *(v46 + 24);
      if (v103 >= v102 >> 1)
      {
        v46 = sub_2191F84A0(v102 > 1, v103 + 1, 1, v46);
      }

      v58 = v151;
      *(v46 + 16) = v103 + 1;
      (*(v86 + 32))(v46 + v156 + v103 * v157, v149, v58);
      v99 += 2;
      --v98;
    }

    while (v98);
  }

  v104 = v142;
  if (!v142)
  {
    v105 = v153;
    v109 = v146;
    v106 = v155;
    v110 = v143;
    if (!v143)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  sub_219BDB0C4();
  sub_219BDB0E4();
  sub_219BDB0E4();
  v158 = v130;
  v159 = v104;
  sub_219BF7044();
  v105 = v153;
  v106 = v155;
  v155(v31, v153);
  sub_219BDB1F4();

  v108 = *(v46 + 16);
  v107 = *(v46 + 24);
  v109 = v146;
  if (v108 >= v107 >> 1)
  {
    v46 = sub_2191F84A0(v107 > 1, v108 + 1, 1, v46);
  }

  *(v46 + 16) = v108 + 1;
  (*(v109 + 32))(v46 + v156 + v108 * v157, v145, v58);
  v110 = v143;
  if (v143)
  {
LABEL_58:
    sub_219BDB0C4();
    sub_219BDB0E4();
    sub_219BDB0E4();
    v158 = v131;
    v159 = v110;
    sub_219BF7044();
    v106(v31, v105);
    v111 = v132;
    sub_219BDB1F4();

    v113 = *(v46 + 16);
    v112 = *(v46 + 24);
    if (v113 >= v112 >> 1)
    {
      v46 = sub_2191F84A0(v112 > 1, v113 + 1, 1, v46);
    }

    *(v46 + 16) = v113 + 1;
    (*(v109 + 32))(v46 + v156 + v113 * v157, v111, v58);
  }

LABEL_61:
  v114 = *(v144 + 16);
  if (v114)
  {
    v115 = (v144 + 40);
    do
    {
      v117 = *(v115 - 1);
      v116 = *v115;

      sub_219BDB0C4();
      sub_219BDB0E4();
      sub_219BDB0E4();
      v158 = v117;
      v159 = v116;
      sub_219BF7044();
      v155(v31, v153);

      sub_219BDB1F4();

      v119 = *(v46 + 16);
      v118 = *(v46 + 24);
      if (v119 >= v118 >> 1)
      {
        v46 = sub_2191F84A0(v118 > 1, v119 + 1, 1, v46);
      }

      *(v46 + 16) = v119 + 1;
      (*(v109 + 32))(v46 + v156 + v119 * v157, v150, v151);
      v115 += 2;
      --v114;
    }

    while (v114);
  }

  return v46;
}

uint64_t sub_218CA7594()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v34 = *(v0 + 48);
  v5 = v0[8];
  v6 = v0[10];
  v35 = v0[7];
  v36 = v0[9];
  v7 = v0[12];
  v37 = v0[11];
  v38 = v0[13];
  v39 = v0[14];
  v33 = v0[5];
  v40 = v0[15];
  v41 = v0[17];
  v42 = v0[18];
  v43 = v0[19];
  v44 = v0[20];
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CF04D0);
  MEMORY[0x21CECC330](v1, v2);
  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219CF04F0);
  sub_218CA7AF4(0, &qword_280E8EDB0, sub_2186D0BA8, MEMORY[0x277D83D88]);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD00000000000001DLL, 0x8000000219CF0510);
  v8 = MEMORY[0x21CECC6D0](v3, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v8);

  MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CF0530);
  if (v4 == 2)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    if (v4)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v4)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v11, v12);

    v10 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v10, v9);

  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219CF0550);
  v13 = MEMORY[0x21CECC6D0](v33, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v13);

  MEMORY[0x21CECC330](0x6564202020200A2CLL, 0xED0000203A677562);
  v14 = 0xE300000000000000;
  v15 = 7104878;
  v16 = 0xE300000000000000;
  if (v34 != 2)
  {
    if (v34)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v34)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v17, v18);

    v15 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v15, v16);

  MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219CF0570);
  if (v5)
  {
    v19 = v35;
  }

  else
  {
    v19 = 7104878;
  }

  if (v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x21CECC330](v19, v20);

  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219CF0590);
  if (v6)
  {
    v21 = v36;
  }

  else
  {
    v21 = 7104878;
  }

  if (v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219CF05B0);
  if (v7)
  {
    v23 = v37;
  }

  else
  {
    v23 = 7104878;
  }

  if (v7)
  {
    v24 = v7;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  MEMORY[0x21CECC330](v23, v24);

  MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CF05D0);
  v25 = MEMORY[0x21CECC6D0](v38, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v25);

  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CF05F0);
  if (v40)
  {
    v26 = v39;
  }

  else
  {
    v26 = 7104878;
  }

  if (v40)
  {
    v27 = v40;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  MEMORY[0x21CECC330](v26, v27);

  MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219CF0610);
  v28 = 7104878;
  if (v41 != 1)
  {
    sub_219BF7484();
    v28 = 0;
    v14 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v28, v14);

  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219CF0630);
  if (v43)
  {
    v29 = v42;
  }

  else
  {
    v29 = 7104878;
  }

  if (v43)
  {
    v30 = v43;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x21CECC330](v29, v30);

  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219CF0650);
  v31 = MEMORY[0x21CECC6D0](v44, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v31);

  MEMORY[0x21CECC330](10506, 0xE200000000000000);
  return 0;
}

void sub_218CA7AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7NewsUI219PegasusQueryContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_218CA7BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_218CA7C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AppGroup.news.getter()
{
  if (qword_280EE9050 != -1)
  {
    swift_once();
  }
}

void sub_218CA7CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v8;
  v12[4] = sub_218807D28;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_47;
  v11 = _Block_copy(v12);

  [v9 ensureSyncedWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_218CA7DE8()
{
  v1 = v0;
  v2 = [*(v0 + 24) articleIDs];
  v3 = sub_219BF5924();

  v4 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = v3 + 40 + 16 * v6;
      v8 = v6;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = v8 + 1;

        sub_219BE2DD4();

        if (v31)
        {
          break;
        }

        v7 += 16;
        ++v8;
        if (v5 == v6)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x21CECC690](v9);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v4 = v32;
    }

    while (v5 - 1 != v8);
  }

LABEL_11:
  v5 = *(v3 + 16);
  if (v4 >> 62)
  {
LABEL_17:
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D837D0];
  if (v5 == v10)
  {

    sub_2186C6148(0, &qword_280E8D790);
    v12 = sub_219BF6F74();
    sub_219BF6214();
    sub_2186E7E28(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v14 = sub_219BF7894();
    v16 = v15;
    *(v13 + 56) = v11;
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_219BE5314();

    sub_2186E7E28(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {

    sub_219BE2DB4();
    sub_218731D50();
    v18 = sub_219BE2814();

    sub_2186C6148(0, &qword_280E8D790);
    v19 = sub_219BF6F74();
    sub_219BF6214();
    sub_2186E7E28(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    v21 = sub_219BF7894();
    v23 = v22;
    *(v20 + 56) = v11;
    v24 = sub_2186FC3BC();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v25 = MEMORY[0x21CECC6D0](v18, v11);
    *(v20 + 96) = v11;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    sub_219BE5314();

    MEMORY[0x28223BE20](v27);
    sub_2187E7248();
    sub_219BE3204();

    sub_2186C6148(0, &qword_280E8E3B0);
    v28 = sub_219BF66A4();
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    *(v29 + 24) = v3;

    v30 = sub_219BE2F64();

    return v30;
  }
}

uint64_t sub_218CA82FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
LABEL_27:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v34 = v3 & 0xFFFFFFFFFFFFFF8;
      v35 = v3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F98];
      v32 = v4;
      v33 = v3;
      do
      {
        if (v35)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v36 = v8;
        v9 = [v7 articleID];
        v10 = sub_219BF5414();
        v3 = v11;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_21870F700(v10, v3);
        v15 = v6[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_25;
        }

        v18 = v13;
        if (v6[3] >= v17)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v13)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_2194902C8();
            if (v18)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21947DE18(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_21870F700(v10, v3);
          if ((v18 & 1) != (v20 & 1))
          {
LABEL_42:
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v14 = v19;
          if (v18)
          {
LABEL_4:

            *(v6[7] + 8 * v14) = v7;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v6[(v14 >> 6) + 8] |= 1 << v14;
        v21 = (v6[6] + 16 * v14);
        *v21 = v10;
        v21[1] = v3;
        *(v6[7] + 8 * v14) = v7;
        swift_unknownObjectRelease();
        v22 = v6[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v6[2] = v24;
LABEL_5:
        ++v5;
        v3 = v33;
      }

      while (v36 != v32);
    }
  }

  sub_21872C32C();
  sub_219BE2D84();

  v38 = MEMORY[0x277D84F90];
  v25 = *(a3 + 16);
  if (v25)
  {
    v26 = 0;
    do
    {
      v27 = a3 + 40 + 16 * v26;
      v28 = v26;
      while (1)
      {
        if (v28 >= v25)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_41;
        }

        sub_219BE2DD4();

        if (v37)
        {
          break;
        }

        ++v28;
        v27 += 16;
        if (v26 == v25)
        {
          goto LABEL_39;
        }
      }

      MEMORY[0x21CECC690](v29);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
    }

    while (v26 != v25);
  }

LABEL_39:
  sub_2186E7E28(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}