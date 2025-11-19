uint64_t __sharedCache_block_invoke()
{
  sharedCache_cache = [objc_alloc(MEMORY[0x277D07160]) initWithCountLimit:150];

  return MEMORY[0x2821F96F8]();
}

void sub_22D093D60(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_22D093EA8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22D093F3C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t _parseAddress(void *a1, void *a2, __CFString **a3, __CFString **a4, void *a5)
{
  if (_parseMailbox(a1, a2, a3, a4))
  {
    return 1;
  }

  v9 = a1[3];
  if (_parseOneStarWord(a1, _parseWord, a2))
  {
    v10 = a1[3];
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = a1[2];
      v12 = *(v11 + 160);
      if (v12 > v10)
      {
        v13 = *(v11 + 136);
        if (v13)
        {
          v14 = *(v13 + 2 * *(v11 + 152) + 2 * v10);
        }

        else
        {
          v15 = *(v11 + 144);
          if (v15)
          {
            v14 = *(v15 + *(v11 + 152) + v10);
          }

          else
          {
            if (*(v11 + 176) <= v10 || (v16 = *(v11 + 168), v16 > v10))
            {
              v17 = v10 - 4;
              if (v10 < 4)
              {
                v17 = 0;
              }

              if (v17 + 64 < v12)
              {
                v12 = v17 + 64;
              }

              *(v11 + 168) = v17;
              *(v11 + 176) = v12;
              v36.length = v12 - v17;
              v36.location = *(v11 + 152) + v17;
              CFStringGetCharacters(*(v11 + 128), v36, v11);
              v16 = *(v11 + 168);
            }

            v14 = *(v11 + 2 * (v10 - v16));
          }
        }

        if (v14 == 58)
        {
          ++a1[3];
          if ((_parseElementList(a1, 0, _parseMailboxAppendingToList, a5) & 1) == 0)
          {
            if (*a1 != 1)
            {
              goto LABEL_42;
            }

            v18 = a1[3];
            while (1)
            {
              _parseCFWS(a1);
              v19 = a1[3];
              if (v19 < 0)
              {
                break;
              }

              v20 = a1[2];
              v21 = *(v20 + 160);
              if (v21 <= v19)
              {
                break;
              }

              v22 = *(v20 + 136);
              if (v22)
              {
                v23 = *(v22 + 2 * *(v20 + 152) + 2 * v19);
              }

              else
              {
                v24 = *(v20 + 144);
                if (v24)
                {
                  v23 = *(v24 + *(v20 + 152) + v19);
                }

                else
                {
                  if (*(v20 + 176) <= v19 || (v25 = *(v20 + 168), v26 = a1[3], v25 > v19))
                  {
                    v27 = v19 - 4;
                    if (v19 < 4)
                    {
                      v27 = 0;
                    }

                    if (v27 + 64 < v21)
                    {
                      v21 = v27 + 64;
                    }

                    *(v20 + 168) = v27;
                    *(v20 + 176) = v21;
                    v37.length = v21 - v27;
                    v37.location = *(v20 + 152) + v27;
                    CFStringGetCharacters(*(v20 + 128), v37, v20);
                    v25 = *(v20 + 168);
                    v26 = a1[3];
                  }

                  v23 = *(v20 + 2 * (v19 - v25));
                  v19 = v26;
                }
              }

              if (v23 != 44)
              {
                break;
              }

              a1[3] = v19 + 1;
            }

            if (a5 && v18 != v19)
            {
              *a5 = MEMORY[0x277CBEBF8];
            }

            if (v18 == v19)
            {
LABEL_42:
              if (a5)
              {
                *a5 = 0;
                _parseCFWS(a1);
                *a5 = MEMORY[0x277CBEBF8];
              }

              else
              {
                _parseCFWS(a1);
              }
            }
          }

          v28 = a1[3];
          if ((v28 & 0x8000000000000000) == 0)
          {
            v29 = a1[2];
            v30 = *(v29 + 160);
            if (v30 > v28)
            {
              v31 = *(v29 + 136);
              if (v31)
              {
                v32 = *(v31 + 2 * *(v29 + 152) + 2 * v28);
              }

              else
              {
                v33 = *(v29 + 144);
                if (v33)
                {
                  v32 = *(v33 + *(v29 + 152) + v28);
                }

                else
                {
                  if (*(v29 + 176) <= v28 || (v34 = *(v29 + 168), v34 > v28))
                  {
                    v35 = v28 - 4;
                    if (v28 < 4)
                    {
                      v35 = 0;
                    }

                    if (v35 + 64 < v30)
                    {
                      v30 = v35 + 64;
                    }

                    *(v29 + 168) = v35;
                    *(v29 + 176) = v30;
                    v38.length = v30 - v35;
                    v38.location = *(v29 + 152) + v35;
                    CFStringGetCharacters(*(v29 + 128), v38, v29);
                    v34 = *(v29 + 168);
                  }

                  v32 = *(v29 + 2 * (v28 - v34));
                }
              }

              if (v32 == 59)
              {
                ++a1[3];
                _parseCFWS(a1);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  a1[3] = v9;
  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t _parseMailbox(uint64_t a1, void *a2, __CFString **a3, __CFString **a4)
{
  v8 = *(a1 + 24);
  if (*(a1 + 1))
  {
    v9 = 0;
    goto LABEL_3;
  }

  v82 = 0;
  v12 = _parseOneStarWord(a1, _parseWord, &v82);
  v9 = v82;
  if (!v12)
  {
LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if (*(a1 + 1))
  {
LABEL_3:
    v81 = v9;
    v10 = _parseOneStarWord(a1, _parseLenWord, &v81);
    v11 = v81;

    v9 = v11;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  _parseCFWS(a1);
  v13 = *(a1 + 24);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 160);
    if (v15 > v13)
    {
      v16 = *(v14 + 136);
      if (v16)
      {
        v17 = *(v16 + 2 * *(v14 + 152) + 2 * v13);
      }

      else
      {
        v18 = *(v14 + 144);
        if (v18)
        {
          v17 = *(v18 + *(v14 + 152) + v13);
        }

        else
        {
          if (*(v14 + 176) <= v13 || (v19 = *(v14 + 168), v19 > v13))
          {
            v20 = v13 - 4;
            if (v13 < 4)
            {
              v20 = 0;
            }

            if (v20 + 64 < v15)
            {
              v15 = v20 + 64;
            }

            *(v14 + 168) = v20;
            *(v14 + 176) = v15;
            v83.length = v15 - v20;
            v83.location = *(v14 + 152) + v20;
            CFStringGetCharacters(*(v14 + 128), v83, v14);
            v19 = *(v14 + 168);
          }

          v17 = *(v14 + 2 * (v13 - v19));
        }
      }

      if (v17 == 60)
      {
        ++*(a1 + 24);
        if (_parseAddrSpec(a1, a3, a4))
        {
          v21 = *(a1 + 24);
          if ((v21 & 0x8000000000000000) == 0)
          {
            v22 = *(a1 + 16);
            v23 = *(v22 + 160);
            if (v23 > v21)
            {
              v24 = *(v22 + 136);
              if (v24)
              {
                v25 = *(v24 + 2 * *(v22 + 152) + 2 * v21);
              }

              else
              {
                v26 = *(v22 + 144);
                if (v26)
                {
                  v25 = *(v26 + *(v22 + 152) + v21);
                }

                else
                {
                  if (*(v22 + 176) <= v21 || (v27 = *(v22 + 168), v27 > v21))
                  {
                    v28 = v21 - 4;
                    if (v21 < 4)
                    {
                      v28 = 0;
                    }

                    if (v28 + 64 < v23)
                    {
                      v23 = v28 + 64;
                    }

                    *(v22 + 168) = v28;
                    *(v22 + 176) = v23;
                    v84.length = v23 - v28;
                    v84.location = *(v22 + 152) + v28;
                    CFStringGetCharacters(*(v22 + 128), v84, v22);
                    v27 = *(v22 + 168);
                  }

                  v25 = *(v22 + 2 * (v21 - v27));
                }
              }

              if (v25 == 62)
              {
LABEL_40:
                ++*(a1 + 24);
                _parseCFWS(a1);
                if (a2)
                {
                  v29 = v9;
                  *a2 = v9;
                }

                return 1;
              }
            }
          }
        }
      }
    }
  }

  *(a1 + 24) = v13;
  if (*a1 == 1)
  {
    _parseCFWS(a1);
    v31 = *(a1 + 24);
    if (v31 < 0)
    {
      goto LABEL_167;
    }

    v32 = *(a1 + 16);
    v33 = *(v32 + 160);
    if (v33 <= v31)
    {
      goto LABEL_167;
    }

    v34 = *(v32 + 136);
    if (v34)
    {
      v35 = *(v34 + 2 * *(v32 + 152) + 2 * v31);
    }

    else
    {
      v36 = *(v32 + 144);
      if (v36)
      {
        v35 = *(v36 + *(v32 + 152) + v31);
      }

      else
      {
        if (*(v32 + 176) <= v31 || (v37 = *(v32 + 168), v37 > v31))
        {
          v38 = v31 - 4;
          if (v31 < 4)
          {
            v38 = 0;
          }

          if (v38 + 64 < v33)
          {
            v33 = v38 + 64;
          }

          *(v32 + 168) = v38;
          *(v32 + 176) = v33;
          v85.length = v33 - v38;
          v85.location = *(v32 + 152) + v38;
          CFStringGetCharacters(*(v32 + 128), v85, v32);
          v37 = *(v32 + 168);
        }

        v35 = *(v32 + 2 * (v31 - v37));
      }
    }

    if (v35 != 60)
    {
      goto LABEL_167;
    }

    ++*(a1 + 24);
    if (*a1 != 1)
    {
      goto LABEL_167;
    }

    while (1)
    {
        ;
      }

      v39 = *(a1 + 24);
      if (v39 < 0)
      {
        goto LABEL_167;
      }

      v40 = *(a1 + 16);
      v41 = *(v40 + 160);
      if (v41 <= v39)
      {
        break;
      }

      v42 = *(v40 + 136);
      if (v42)
      {
        v43 = *(v42 + 2 * *(v40 + 152) + 2 * v39);
      }

      else
      {
        v44 = *(v40 + 144);
        if (v44)
        {
          v43 = *(v44 + *(v40 + 152) + v39);
        }

        else
        {
          if (*(v40 + 176) <= v39 || (v45 = *(v40 + 168), v46 = *(a1 + 24), v45 > v39))
          {
            v47 = v39 - 4;
            if (v39 < 4)
            {
              v47 = 0;
            }

            if (v47 + 64 < v41)
            {
              v41 = v47 + 64;
            }

            *(v40 + 168) = v47;
            *(v40 + 176) = v41;
            v86.length = v41 - v47;
            v86.location = *(v40 + 152) + v47;
            CFStringGetCharacters(*(v40 + 128), v86, v40);
            v45 = *(v40 + 168);
            v46 = *(a1 + 24);
          }

          v43 = *(v40 + 2 * (v39 - v45));
          v39 = v46;
        }
      }

      if (v43 != 44)
      {
        if (v39 < 0)
        {
          goto LABEL_167;
        }

        v40 = *(a1 + 16);
        v41 = *(v40 + 160);
        break;
      }

      *(a1 + 24) = v39 + 1;
    }

    if (v41 <= v39)
    {
      goto LABEL_167;
    }

    v48 = *(v40 + 136);
    if (v48)
    {
      v49 = *(v48 + 2 * *(v40 + 152) + 2 * v39);
    }

    else
    {
      v50 = *(v40 + 144);
      if (v50)
      {
        v49 = *(v50 + *(v40 + 152) + v39);
      }

      else
      {
        if (*(v40 + 176) <= v39 || (v51 = *(v40 + 168), v51 > v39))
        {
          v52 = v39 - 4;
          if (v39 < 4)
          {
            v52 = 0;
          }

          if (v52 + 64 < v41)
          {
            v41 = v52 + 64;
          }

          *(v40 + 168) = v52;
          *(v40 + 176) = v41;
          v87.length = v41 - v52;
          v87.location = *(v40 + 152) + v52;
          CFStringGetCharacters(*(v40 + 128), v87, v40);
          v51 = *(v40 + 168);
        }

        v49 = *(v40 + 2 * (v39 - v51));
      }
    }

    if (v49 != 64)
    {
      goto LABEL_167;
    }

    ++*(a1 + 24);
    if (!_parseDomain(a1, 0))
    {
      goto LABEL_167;
    }

    v53 = *(a1 + 24);
    if (v53 < 0)
    {
      goto LABEL_167;
    }

    v54 = *(a1 + 16);
    v55 = *(v54 + 160);
    if (v55 > v53)
    {
      v56 = *(a1 + 24);
      while (1)
      {
        v57 = *(v54 + 136);
        if (v57)
        {
          v58 = *(v57 + 2 * *(v54 + 152) + 2 * v53);
        }

        else
        {
          v59 = *(v54 + 144);
          if (v59)
          {
            v58 = *(v59 + *(v54 + 152) + v53);
          }

          else
          {
            if (*(v54 + 176) <= v53 || (v60 = *(v54 + 168), v60 > v53))
            {
              v61 = v53 - 4;
              if (v53 < 4)
              {
                v61 = 0;
              }

              if (v61 + 64 < v55)
              {
                v55 = v61 + 64;
              }

              *(v54 + 168) = v61;
              *(v54 + 176) = v55;
              v88.length = v55 - v61;
              v88.location = *(v54 + 152) + v61;
              CFStringGetCharacters(*(v54 + 128), v88, v54);
              v60 = *(v54 + 168);
            }

            v58 = *(v54 + 2 * (v53 - v60));
          }
        }

        if (v58 != 44)
        {
          v54 = *(a1 + 16);
LABEL_135:
          *(a1 + 24) = v56;
          if ((v56 & 0x8000000000000000) == 0)
          {
            v55 = *(v54 + 160);
            goto LABEL_137;
          }

          goto LABEL_167;
        }

        ++*(a1 + 24);
        _parseCFWS(a1);
        v56 = *(a1 + 24);
        if (v56 < 0)
        {
          goto LABEL_167;
        }

        v54 = *(a1 + 16);
        v55 = *(v54 + 160);
        if (v55 <= v56)
        {
          v53 = *(a1 + 24);
          goto LABEL_123;
        }

        v62 = *(v54 + 136);
        if (v62)
        {
          v63 = *(v62 + 2 * *(v54 + 152) + 2 * v56);
        }

        else
        {
          v64 = *(v54 + 144);
          if (!v64)
          {
            if (*(v54 + 176) <= v56 || (v66 = *(v54 + 168), v53 = *(a1 + 24), v66 > v56))
            {
              v67 = v56 - 4;
              if (v56 < 4)
              {
                v67 = 0;
              }

              if (v67 + 64 < v55)
              {
                v55 = v67 + 64;
              }

              *(v54 + 168) = v67;
              *(v54 + 176) = v55;
              v89.length = v55 - v67;
              v89.location = *(v54 + 152) + v67;
              CFStringGetCharacters(*(v54 + 128), v89, v54);
              v66 = *(v54 + 168);
              v53 = *(a1 + 24);
            }

            v63 = *(v54 + 2 * (v56 - v66));
            goto LABEL_118;
          }

          v63 = *(v64 + *(v54 + 152) + v56);
        }

        v53 = *(a1 + 24);
LABEL_118:
        if (v63 == 64)
        {
          *(a1 + 24) = v53 + 1;
          v65 = _parseDomain(a1, 0);
          v53 = *(a1 + 24);
          if (v65)
          {
            v56 = *(a1 + 24);
          }
        }

        v54 = *(a1 + 16);
        if (v53 < 0)
        {
          goto LABEL_135;
        }

        v55 = *(v54 + 160);
LABEL_123:
        if (v55 <= v53)
        {
          goto LABEL_135;
        }
      }
    }

    v56 = *(a1 + 24);
LABEL_137:
    if (v55 > v56)
    {
      v68 = *(v54 + 136);
      if (v68)
      {
        v69 = *(v68 + 2 * *(v54 + 152) + 2 * v56);
      }

      else
      {
        v70 = *(v54 + 144);
        if (v70)
        {
          v69 = *(v70 + *(v54 + 152) + v56);
        }

        else
        {
          if (*(v54 + 176) <= v56 || (v71 = *(v54 + 168), v71 > v56))
          {
            v72 = v56 - 4;
            if (v56 < 4)
            {
              v72 = 0;
            }

            if (v72 + 64 < v55)
            {
              v55 = v72 + 64;
            }

            *(v54 + 168) = v72;
            *(v54 + 176) = v55;
            v90.length = v55 - v72;
            v90.location = *(v54 + 152) + v72;
            CFStringGetCharacters(*(v54 + 128), v90, v54);
            v71 = *(v54 + 168);
          }

          v69 = *(v54 + 2 * (v56 - v71));
        }
      }

      if (v69 == 58)
      {
        ++*(a1 + 24);
        if (_parseAddrSpec(a1, a3, a4))
        {
          v73 = *(a1 + 24);
          if ((v73 & 0x8000000000000000) == 0)
          {
            v74 = *(a1 + 16);
            v75 = *(v74 + 160);
            if (v75 > v73)
            {
              v76 = *(v74 + 136);
              if (v76)
              {
                v77 = *(v76 + 2 * *(v74 + 152) + 2 * v73);
              }

              else
              {
                v78 = *(v74 + 144);
                if (v78)
                {
                  v77 = *(v78 + *(v74 + 152) + v73);
                }

                else
                {
                  if (*(v74 + 176) <= v73 || (v79 = *(v74 + 168), v79 > v73))
                  {
                    v80 = v73 - 4;
                    if (v73 < 4)
                    {
                      v80 = 0;
                    }

                    if (v80 + 64 < v75)
                    {
                      v75 = v80 + 64;
                    }

                    *(v74 + 168) = v80;
                    *(v74 + 176) = v75;
                    v91.length = v75 - v80;
                    v91.location = *(v74 + 152) + v80;
                    CFStringGetCharacters(*(v74 + 128), v91, v74);
                    v79 = *(v74 + 168);
                  }

                  v77 = *(v74 + 2 * (v73 - v79));
                }
              }

              if (v77 == 62)
              {
                goto LABEL_40;
              }
            }
          }
        }
      }
    }

LABEL_167:
    *(a1 + 24) = v13;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  *(a1 + 24) = v8;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return _parseAddrSpec(a1, a3, a4);
}

BOOL _parseCFWS(void *a1)
{
  v2 = a1[3];
  _parseFWS(a1, 0);
  if (_parseComment(a1))
  {
    do
    {
      _parseFWS(a1, 0);
    }

    while ((_parseComment(a1) & 1) != 0);
  }

  return a1[3] != v2;
}

uint64_t _parseWord(void *a1, __CFString **a2)
{
  if (_parseAtom(a1, a2))
  {
    return 1;
  }

  return _parseStringWithWrappingCharacters(a1, _parseQContent, 34, 34, 0, a2);
}

uint64_t _parseComment(void *a1)
{
  v2 = a1[3];
  if (v2 < 0)
  {
    goto LABEL_55;
  }

  v3 = a1[2];
  v4 = *(v3 + 160);
  if (v4 <= v2)
  {
    goto LABEL_55;
  }

  v5 = *(v3 + 136);
  if (v5)
  {
    v6 = *(v5 + 2 * *(v3 + 152) + 2 * v2);
  }

  else
  {
    v7 = *(v3 + 144);
    if (v7)
    {
      v6 = *(v7 + *(v3 + 152) + v2);
    }

    else
    {
      if (*(v3 + 176) <= v2 || (v8 = *(v3 + 168), v8 > v2))
      {
        v9 = v2 - 4;
        if (v2 < 4)
        {
          v9 = 0;
        }

        if (v9 + 64 < v4)
        {
          v4 = v9 + 64;
        }

        *(v3 + 168) = v9;
        *(v3 + 176) = v4;
        v27.length = v4 - v9;
        v27.location = *(v3 + 152) + v9;
        CFStringGetCharacters(*(v3 + 128), v27, v3);
        v8 = *(v3 + 168);
      }

      v6 = *(v3 + 2 * (v2 - v8));
    }
  }

  if (v6 != 40)
  {
LABEL_55:
    result = 0;
    goto LABEL_56;
  }

LABEL_16:
  ++a1[3];
  do
  {
    _parseFWS(a1, 0);
    v10 = a1[3];
    if (v10 < 0 || (v11 = a1[2], v12 = *(v11 + 160), v12 <= v10))
    {
      v14 = 0;
    }

    else
    {
      v13 = *(v11 + 136);
      if (v13)
      {
        v14 = *(v13 + 2 * *(v11 + 152) + 2 * v10);
      }

      else
      {
        v15 = *(v11 + 144);
        if (v15)
        {
          v14 = *(v15 + *(v11 + 152) + v10);
        }

        else
        {
          if (*(v11 + 176) <= v10 || (v16 = *(v11 + 168), v16 > v10))
          {
            v17 = v10 - 4;
            if (v10 < 4)
            {
              v17 = 0;
            }

            if (v17 + 64 < v12)
            {
              v12 = v17 + 64;
            }

            *(v11 + 168) = v17;
            *(v11 + 176) = v12;
            v28.length = v12 - v17;
            v28.location = *(v11 + 152) + v17;
            CFStringGetCharacters(*(v11 + 128), v28, v11);
            v16 = *(v11 + 168);
          }

          v14 = *(v11 + 2 * (v10 - v16));
        }
      }
    }

    if ((v14 - 33) < 7u || (v14 - 42) < 0x32u || v14 > 0x7Fu || (v14 - 93) < 0x22u)
    {
      goto LABEL_16;
    }
  }

  while ((_parseQuotedPair(a1, 0) & 1) != 0 || (_parseComment(a1) & 1) != 0);
  v18 = a1[3];
  if (v18 < 0)
  {
    goto LABEL_55;
  }

  v19 = a1[2];
  v20 = *(v19 + 160);
  if (v20 <= v18)
  {
    goto LABEL_55;
  }

  v21 = *(v19 + 136);
  if (v21)
  {
    v22 = *(v21 + 2 * *(v19 + 152) + 2 * v18);
  }

  else
  {
    v23 = *(v19 + 144);
    if (v23)
    {
      v22 = *(v23 + *(v19 + 152) + v18);
    }

    else
    {
      if (*(v19 + 176) <= v18 || (v24 = *(v19 + 168), v24 > v18))
      {
        v25 = v18 - 4;
        if (v18 < 4)
        {
          v25 = 0;
        }

        if (v25 + 64 < v20)
        {
          v20 = v25 + 64;
        }

        *(v19 + 168) = v25;
        *(v19 + 176) = v20;
        v29.length = v20 - v25;
        v29.location = *(v19 + 152) + v25;
        CFStringGetCharacters(*(v19 + 128), v29, v19);
        v24 = *(v19 + 168);
      }

      v22 = *(v19 + 2 * (v18 - v24));
    }
  }

  if (v22 != 41)
  {
    goto LABEL_55;
  }

  v2 = a1[3] + 1;
  result = 1;
LABEL_56:
  a1[3] = v2;
  return result;
}

uint64_t _parseFWS(void *a1, _DWORD *a2)
{
  v2 = a1[3];
  if (v2 >= a1[4])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = -v2;
  v8 = v2 + 64;
  v9 = a1[3];
  do
  {
    v10 = v9 >= 4 ? 4 : v9;
    if (v2 < 0)
    {
      break;
    }

    v11 = a1[2];
    v12 = *(v11 + 160);
    if (v12 <= v9)
    {
      break;
    }

    v13 = *(v11 + 136);
    if (v13)
    {
      v14 = v13 + 2 * *(v11 + 152);
LABEL_10:
      v15 = *(v14 + 2 * v9);
      goto LABEL_13;
    }

    v16 = *(v11 + 144);
    if (!v16)
    {
      if (*(v11 + 176) <= v9 || (v17 = *(v11 + 168), v17 > v9))
      {
        v18 = v9 - v10;
        v19 = v10 + v7;
        v20 = v8 - v10;
        v21 = v18 + 64;
        if (v18 + 64 >= v12)
        {
          v21 = *(v11 + 160);
        }

        *(v11 + 168) = v18;
        *(v11 + 176) = v21;
        if (v12 >= v20)
        {
          v12 = v20;
        }

        v24.location = *(v11 + 152) + v18;
        v24.length = v12 + v19;
        CFStringGetCharacters(*(v11 + 128), v24, v11);
        v17 = *(v11 + 168);
      }

      v14 = v11 - 2 * v17;
      goto LABEL_10;
    }

    v15 = *(v16 + *(v11 + 152) + v9);
LABEL_13:
    if (v15 != 32)
    {
      if (v15 == 10)
      {
        v4 = 0;
        v5 = 1;
        goto LABEL_18;
      }

      if (v15 != 9)
      {
        break;
      }
    }

    v6 += v4 & 1 | ((v5 & 1) == 0);
    v4 = v5;
LABEL_18:
    ++v9;
    --v7;
    ++v8;
  }

  while (v9 < a1[4]);
  result = 0;
  if (a1[3] != v9 && ((v4 | v5 ^ 1) & 1) != 0)
  {
    a1[3] = v9;
    if (a2)
    {
      *a2 = v6;
    }

    return 1;
  }

  return result;
}

uint64_t _parseStringWithWrappingCharacters(void *a1, uint64_t (*a2)(void *, UniChar *), int a3, int a4, int a5, __CFString **a6)
{
  chars = a3;
  v37 = a4;
  _parseCFWS(a1);
  v12 = a1[3];
  if (v12 < 0 || (v13 = a1[2], v14 = *(v13 + 160), v14 <= v12))
  {
    v16 = 0;
  }

  else
  {
    v15 = *(v13 + 136);
    if (v15)
    {
      v16 = *(v15 + 2 * *(v13 + 152) + 2 * v12);
    }

    else
    {
      v28 = *(v13 + 144);
      if (v28)
      {
        v16 = *(v28 + *(v13 + 152) + v12);
      }

      else
      {
        if (*(v13 + 176) <= v12 || (v30 = *(v13 + 168), v30 > v12))
        {
          v31 = v12 - 4;
          if (v12 < 4)
          {
            v31 = 0;
          }

          if (v31 + 64 < v14)
          {
            v14 = v31 + 64;
          }

          *(v13 + 168) = v31;
          *(v13 + 176) = v14;
          v39.length = v14 - v31;
          v39.location = *(v13 + 152) + v31;
          CFStringGetCharacters(*(v13 + 128), v39, v13);
          v30 = *(v13 + 168);
        }

        v16 = *(v13 + 2 * (v12 - v30));
      }
    }
  }

  if (a3 != v16)
  {
    goto LABEL_29;
  }

  ++a1[3];
  if (a6)
  {
    v17 = [MEMORY[0x277CCAB68] string];
    v18 = v17;
    v34 = 0;
    v19 = v17 != 0;
    if (a5 && v17)
    {
      v34 = 1;
      CFStringAppendCharacters(v17, &chars, 1);
      v19 = 1;
    }
  }

  else
  {
    v34 = 0;
    v19 = 0;
    v18 = 0;
  }

  do
  {
    while (1)
    {
      v36 = 0;
      if (_parseFWS(a1, &v36))
      {
        [(__CFString *)v18 appendFormat:@"%*c", v36, 32];
      }

      v35 = -21846;
      v20 = a2(a1, &v35);
      if ((v20 & v19) != 1)
      {
        break;
      }

      CFStringAppendCharacters(v18, &v35, 1);
    }
  }

  while ((v20 & 1) != 0);
  v21 = a1[3];
  if (v21 < 0 || (v22 = a1[2], v23 = *(v22 + 160), v23 <= v21))
  {
    v25 = 0;
  }

  else
  {
    v24 = *(v22 + 136);
    if (v24)
    {
      v25 = *(v24 + 2 * *(v22 + 152) + 2 * v21);
    }

    else
    {
      v29 = *(v22 + 144);
      if (v29)
      {
        v25 = *(v29 + *(v22 + 152) + v21);
      }

      else
      {
        if (*(v22 + 176) <= v21 || (v32 = *(v22 + 168), v32 > v21))
        {
          v33 = v21 - 4;
          if (v21 < 4)
          {
            v33 = 0;
          }

          if (v33 + 64 < v23)
          {
            v23 = v33 + 64;
          }

          *(v22 + 168) = v33;
          *(v22 + 176) = v23;
          v40.length = v23 - v33;
          v40.location = *(v22 + 152) + v33;
          CFStringGetCharacters(*(v22 + 128), v40, v22);
          v32 = *(v22 + 168);
        }

        v25 = *(v22 + 2 * (v21 - v32));
      }
    }
  }

  if (a4 != v25)
  {

LABEL_29:
    result = 0;
    a1[3] = v12;
    return result;
  }

  ++a1[3];
  if (v34)
  {
    CFStringAppendCharacters(v18, &v37, 1);
  }

  _parseCFWS(a1);
  if (a6)
  {
    v26 = v18;
    *a6 = v18;
  }

  return 1;
}

uint64_t _parseLocalPart(void *a1, __CFString **a2)
{
  if (_parseStringWithWrappingCharacters(a1, _parseQContent, 34, 34, 0, a2))
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (a2)
    {
      v5 = [MEMORY[0x277CCAB68] string];
      if (v5)
      {
        v6 = 0;
        v24 = 0;
        v7 = &v24;
        goto LABEL_10;
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    v6 = 1;
LABEL_10:
    v8 = _parseWord(a1, v7);
    v9 = v8;
    if (v6)
    {
      v10 = 0;
      if ((v8 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v10 = v24;
      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    [(__CFString *)v5 appendString:v10];
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v23;
    }

    while (1)
    {
      v12 = a1[3];
      if (v12 < 0)
      {
        break;
      }

      v13 = a1[2];
      v14 = *(v13 + 160);
      if (v14 <= v12)
      {
        break;
      }

      v15 = *(v13 + 136);
      if (v15)
      {
        v16 = *(v15 + 2 * *(v13 + 152) + 2 * v12);
      }

      else
      {
        v17 = *(v13 + 144);
        if (v17)
        {
          v16 = *(v17 + *(v13 + 152) + v12);
        }

        else
        {
          if (*(v13 + 176) <= v12 || (v18 = *(v13 + 168), v18 > v12))
          {
            v19 = v12 - 4;
            if (v12 < 4)
            {
              v19 = 0;
            }

            if (v19 + 64 < v14)
            {
              v14 = v19 + 64;
            }

            *(v13 + 168) = v19;
            *(v13 + 176) = v14;
            v25.length = v14 - v19;
            v25.location = *(v13 + 152) + v19;
            CFStringGetCharacters(*(v13 + 128), v25, v13);
            v18 = *(v13 + 168);
          }

          v16 = *(v13 + 2 * (v12 - v18));
        }
      }

      if (v16 != 46)
      {
        break;
      }

      ++a1[3];
      if ((v6 & 1) == 0)
      {
        v23 = v10;
      }

      v20 = _parseWord(a1, v11);
      if ((v6 & 1) == 0)
      {
        v21 = v23;

        v10 = v21;
      }

      if (!v20)
      {
        break;
      }

      [(__CFString *)v5 appendFormat:@".%@", v10];
    }

    a1[3] = v12;
    if (a2)
    {
      v22 = v5;
      *a2 = v5;
    }

    return 1;
  }

LABEL_13:
  if (a2)
  {
    *a2 = 0;
  }

  return _parseDotAtom(a1, a2);
}

uint64_t _parseAddrSpec(void *a1, __CFString **a2, __CFString **a3)
{
  v6 = a1[3];
  if (_parseLocalPart(a1, a2))
  {
    v7 = a1[3];
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = a1[2];
      v9 = *(v8 + 160);
      if (v9 > v7)
      {
        v10 = *(v8 + 136);
        if (v10)
        {
          v11 = *(v10 + 2 * *(v8 + 152) + 2 * v7);
        }

        else
        {
          v12 = *(v8 + 144);
          if (v12)
          {
            v11 = *(v12 + *(v8 + 152) + v7);
          }

          else
          {
            if (*(v8 + 176) <= v7 || (v13 = *(v8 + 168), v13 > v7))
            {
              v14 = v7 - 4;
              if (v7 < 4)
              {
                v14 = 0;
              }

              if (v14 + 64 < v9)
              {
                v9 = v14 + 64;
              }

              *(v8 + 168) = v14;
              *(v8 + 176) = v9;
              v16.length = v9 - v14;
              v16.location = *(v8 + 152) + v14;
              CFStringGetCharacters(*(v8 + 128), v16, v8);
              v13 = *(v8 + 168);
            }

            v11 = *(v8 + 2 * (v7 - v13));
          }
        }

        if (v11 == 64)
        {
          ++a1[3];
          if (_parseDomain(a1, a3))
          {
            return 1;
          }
        }
      }
    }
  }

  a1[3] = v6;
  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t _parseDotAtom(uint64_t a1, void *a2)
{
  _parseCFWS(a1);
  v4 = *(a1 + 24);
  v5 = MEMORY[0x277D85DE0];
  v6 = v4;
  if (v4 < 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = *(a1 + 16);
  v8 = *(v7 + 160);
  if (v8 > v6)
  {
    v9 = *(v7 + 136);
    if (v9)
    {
      v10 = *(v9 + 2 * *(v7 + 152) + 2 * v6);
    }

    else
    {
      v15 = *(v7 + 144);
      if (v15)
      {
        v10 = *(v15 + *(v7 + 152) + v6);
      }

      else
      {
        if (*(v7 + 176) <= v6 || (v16 = *(v7 + 168), v16 > v6))
        {
          v17 = v6 - 4;
          if (v6 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v8)
          {
            v8 = v17 + 64;
          }

          *(v7 + 168) = v17;
          *(v7 + 176) = v8;
          v55.length = v8 - v17;
          v55.location = *(v7 + 152) + v17;
          CFStringGetCharacters(*(v7 + 128), v55, v7);
          v16 = *(v7 + 168);
        }

        v10 = *(v7 + 2 * (v6 - v16));
      }
    }

    v11 = v10;
    if (v10 > 0x7Fu)
    {
      v12 = __maskrune(v10, 0x500uLL);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_5:
  while (1)
  {
    v11 = 0;
    v10 = 0;
LABEL_6:
    v12 = *(v5 + 4 * v11 + 60) & 0x500;
LABEL_7:
    v13 = vand_s8(vdup_n_s16(v10), 0xFFEDFFFEFFFCFFFDLL);
    v14 = *(a1 + 24);
    if ((vmaxv_u16(vceq_s16(v13, 0x2D002A00240021)) & 1) == 0 && v13.u16[2] != 94 && v10 != 96 && v10 <= 0x7Fu && (v10 - 123) >= 4u && !v12)
    {
      break;
    }

    v6 = v14 + 1;
    *(a1 + 24) = v14 + 1;
    if (((v14 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v18 = v14 > v4;
  if (v14 - v4 >= 1)
  {
    v51 = v14 > v4;
    v52 = a2;
    if (v14 == v4)
    {
      location = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      location = v4;
    }

    if (v14 == v4)
    {
      length = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      length = v14 - v4;
    }

    if (v14 < 0)
    {
      goto LABEL_88;
    }

    v21 = 0xAAAAAAAAAAAAAAAALL;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    while (1)
    {
      v23 = *(a1 + 16);
      v24 = *(v23 + 160);
      if (v24 <= v14)
      {
        goto LABEL_88;
      }

      v25 = *(v23 + 136);
      if (v25)
      {
        v26 = *(v25 + 2 * *(v23 + 152) + 2 * v14);
      }

      else
      {
        v27 = *(v23 + 144);
        if (v27)
        {
          v26 = *(v27 + *(v23 + 152) + v14);
        }

        else
        {
          if (*(v23 + 176) <= v14 || (v28 = *(v23 + 168), v28 > v14))
          {
            v29 = v14 - 4;
            if (v14 < 4)
            {
              v29 = 0;
            }

            if (v29 + 64 < v24)
            {
              v24 = v29 + 64;
            }

            *(v23 + 168) = v29;
            *(v23 + 176) = v24;
            v56.length = v24 - v29;
            v56.location = *(v23 + 152) + v29;
            CFStringGetCharacters(*(v23 + 128), v56, v23);
            v28 = *(v23 + 168);
          }

          v26 = *(v23 + 2 * (v14 - v28));
        }
      }

      if (v26 != 46)
      {
        goto LABEL_88;
      }

      range1 = location;
      v30 = *(a1 + 24) + 1;
      v31 = v30;
      do
      {
        *(a1 + 24) = v31;
        if (v31 < 0 || (v32 = *(a1 + 16), v33 = *(v32 + 160), v33 <= v31))
        {
          v36 = 0;
          v35 = 0;
        }

        else
        {
          v34 = *(v32 + 136);
          if (v34)
          {
            v35 = *(v34 + 2 * *(v32 + 152) + 2 * v31);
          }

          else
          {
            v40 = *(v32 + 144);
            if (v40)
            {
              v35 = *(v40 + *(v32 + 152) + v31);
            }

            else
            {
              if (*(v32 + 176) <= v31 || (v41 = *(v32 + 168), v41 > v31))
              {
                v42 = v31 - 4;
                if (v31 < 4)
                {
                  v42 = 0;
                }

                if (v42 + 64 < v33)
                {
                  v33 = v42 + 64;
                }

                *(v32 + 168) = v42;
                *(v32 + 176) = v33;
                v57.length = v33 - v42;
                v57.location = *(v32 + 152) + v42;
                CFStringGetCharacters(*(v32 + 128), v57, v32);
                v41 = *(v32 + 168);
              }

              v35 = *(v32 + 2 * (v31 - v41));
            }
          }

          v36 = v35;
          if (v35 > 0x7Fu)
          {
            v37 = __maskrune(v35, 0x500uLL);
            goto LABEL_57;
          }
        }

        v37 = *(v5 + 4 * v36 + 60) & 0x500;
LABEL_57:
        v38 = vand_s8(vdup_n_s16(v35), 0xFFEDFFFEFFFCFFFDLL);
        v39 = *(a1 + 24);
        v31 = v39 + 1;
      }

      while ((vmaxv_u16(vceq_s16(v38, 0x2D002A00240021)) & 1) != 0 || v38.u16[2] == 94 || v35 == 96 || v35 > 0x7Fu || (v35 - 123) < 4u || v37);
      v43 = v39 - v30;
      if (v39 - v30 < 1)
      {
        location = range1;
        goto LABEL_88;
      }

      v44 = v39 == v30;
      if (v39 == v30)
      {
        v45 = v21;
      }

      else
      {
        v45 = v30;
      }

      if (v44)
      {
        v43 = v22;
      }

      v21 = v45 - 1;
      v22 = v43 + 1;
      v54.location = range1;
      v54.length = length;
      v58.location = v45 - 1;
      v58.length = v43 + 1;
      v46 = NSUnionRange(v54, v58);
      location = v46.location;
      length = v46.length;
      v14 = *(a1 + 24);
      if (v14 < 0)
      {
LABEL_88:
        *(a1 + 24) = v14;
        _parseCFWS(a1);
        a2 = v52;
        if (!v52)
        {
          return 1;
        }

        v48 = *(a1 + 24);
        v47 = [*(a1 + 8) substringWithRange:{location, length}];
        *(a1 + 24) = v48;
        v18 = v51;
LABEL_90:
        v49 = v47;
        *a2 = v49;

        return v18;
      }
    }
  }

  *(a1 + 24) = v4;
  if (a2)
  {
    v47 = 0;
    goto LABEL_90;
  }

  return 0;
}

uint64_t _parseLenWord(uint64_t a1, __CFString **a2)
{
  _parseCFWS(a1);
  v4 = *(a1 + 24);
  v5 = MEMORY[0x277D85DE0];
  v6 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = *(a1 + 16);
  v8 = *(v7 + 160);
  if (v8 > v6)
  {
    v9 = *(v7 + 136);
    if (v9)
    {
      v10 = *(v9 + 2 * *(v7 + 152) + 2 * v6);
    }

    else
    {
      v17 = *(v7 + 144);
      if (v17)
      {
        v10 = *(v17 + *(v7 + 152) + v6);
      }

      else
      {
        if (*(v7 + 176) <= v6 || (v18 = *(v7 + 168), v18 > v6))
        {
          v19 = v6 - 4;
          if (v6 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v8)
          {
            v8 = v19 + 64;
          }

          *(v7 + 168) = v19;
          *(v7 + 176) = v8;
          v25.length = v8 - v19;
          v25.location = *(v7 + 152) + v19;
          CFStringGetCharacters(*(v7 + 128), v25, v7);
          v18 = *(v7 + 168);
        }

        v10 = *(v7 + 2 * (v6 - v18));
      }
    }

    v11 = v10;
    if (v10 > 0x7Fu)
    {
      v12 = __maskrune(v10, 0x500uLL);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_5:
  while (1)
  {
    v11 = 0;
    v10 = 0;
LABEL_6:
    v12 = *(v5 + 4 * v11 + 60) & 0x500;
LABEL_7:
    v13 = vand_s8(vdup_n_s16(v10), 0xFFEDFFFEFFFCFFFDLL);
    v14 = vceq_s16(v13, 0x2D002A00240021);
    v15 = vdup_lane_s16(v13, 2);
    v15.i16[1] = v10;
    v16 = *(a1 + 24);
    if ((vmaxv_u16(vorr_s8(v14, vceq_s16(vzip1_s16(v15, vdup_lane_s16(v15, 1)), 0x2E00400060005ELL))) & 1) == 0 && v10 <= 0x7Fu && (v10 - 123) >= 4u && !v12)
    {
      break;
    }

    v6 = v16 + 1;
    *(a1 + 24) = v16 + 1;
    if (((v16 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v20 = v16 - v4;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v20)
  {
    v22 = v4;
  }

  else
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v20 < 1)
  {
    *(a1 + 24) = v4;

    return _parseStringWithWrappingCharacters(a1, _parseQContent, 34, 34, 0, a2);
  }

  else
  {
    if (a2)
    {
      *a2 = [*(a1 + 8) substringWithRange:{v22, v21}];
    }

    _parseCFWS(a1);
    return 1;
  }
}

uint64_t _parseOneStarWord(uint64_t a1, uint64_t (*a2)(uint64_t, id *), void *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v14 = *(a1 + 24);
LABEL_2:
  v9 = v7;
LABEL_3:
  v10 = v9;
  while (1)
  {
    v15 = v10;
    v11 = a2(a1, &v15);
    v9 = v15;

    if (!v11)
    {
      break;
    }

    v8 = 1;
    v10 = v9;
    if (a3)
    {
      if (!v7)
      {
        v7 = v9;
        goto LABEL_2;
      }

      if (!v6)
      {
        v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ %@", v7, v9];
        goto LABEL_3;
      }

      v10 = v9;
      [v6 appendFormat:@" %@", v9];
    }
  }

  if (v8)
  {
    if (a3)
    {
      if (v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      *a3 = v12;
    }
  }

  else
  {
    *(a1 + 24) = v14;
  }

  return v8 & 1;
}

BOOL _parseAtom(uint64_t a1, void *a2)
{
  _parseCFWS(a1);
  v4 = *(a1 + 24);
  v5 = MEMORY[0x277D85DE0];
  v6 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = *(a1 + 16);
  v8 = *(v7 + 160);
  if (v8 > v6)
  {
    v9 = *(v7 + 136);
    if (v9)
    {
      v10 = *(v9 + 2 * *(v7 + 152) + 2 * v6);
    }

    else
    {
      v15 = *(v7 + 144);
      if (v15)
      {
        v10 = *(v15 + *(v7 + 152) + v6);
      }

      else
      {
        if (*(v7 + 176) <= v6 || (v16 = *(v7 + 168), v16 > v6))
        {
          v17 = v6 - 4;
          if (v6 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v8)
          {
            v8 = v17 + 64;
          }

          *(v7 + 168) = v17;
          *(v7 + 176) = v8;
          v22.length = v8 - v17;
          v22.location = *(v7 + 152) + v17;
          CFStringGetCharacters(*(v7 + 128), v22, v7);
          v16 = *(v7 + 168);
        }

        v10 = *(v7 + 2 * (v6 - v16));
      }
    }

    v11 = v10;
    if (v10 > 0x7Fu)
    {
      v12 = __maskrune(v10, 0x500uLL);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_5:
  while (1)
  {
    v11 = 0;
    v10 = 0;
LABEL_6:
    v12 = *(v5 + 4 * v11 + 60) & 0x500;
LABEL_7:
    v13 = vand_s8(vdup_n_s16(v10), 0xFFEDFFFEFFFCFFFDLL);
    v14 = *(a1 + 24);
    if ((vmaxv_u16(vceq_s16(v13, 0x2D002A00240021)) & 1) == 0 && v13.u16[2] != 94 && v10 != 96 && v10 <= 0x7Fu && (v10 - 123) >= 4u && !v12)
    {
      break;
    }

    v6 = v14 + 1;
    *(a1 + 24) = v14 + 1;
    if (((v14 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v18 = v14 - v4;
  if (v14 == v4)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    v19 = v14 - v4;
  }

  if (v14 == v4)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    v20 = v4;
  }

  if (v18 < 1)
  {
    *(a1 + 24) = v4;
  }

  else
  {
    if (a2)
    {
      *a2 = [*(a1 + 8) substringWithRange:{v20, v19}];
    }

    _parseCFWS(a1);
  }

  return v18 > 0;
}

void _IncrementThreadLocalCounterForKey(void *a1)
{
  v8 = a1;
  v1 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v1 threadDictionary];

  v3 = [v2 objectForKeyedSubscript:v8];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = "[countNumber isKindOfClass:[NSNumber class]]";
      v6 = 31;
LABEL_10:
      __assert_rtn("_IncrementThreadLocalCounterForKey", "ECNetworkAssertions.m", v6, v5);
    }

    v4 = [v3 unsignedIntegerValue];
    if (v4 == -1)
    {
      v5 = "count < NSUIntegerMax";
      v6 = 35;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 1];
  [v2 setObject:v7 forKeyedSubscript:v8];
}

void sub_22D096578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_22D096640(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void _DecrementThreadLocalCounterForKey(void *a1)
{
  v9 = a1;
  v1 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v1 threadDictionary];

  v3 = [v2 objectForKeyedSubscript:v9];
  if (!v3)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = "[countNumber isKindOfClass:[NSNumber class]]";
    v8 = 46;
    goto LABEL_11;
  }

  v4 = [v3 unsignedIntegerValue];
  v5 = v4 - 1;
  if (v4 == 1)
  {
    [v2 setObject:v5 forKeyedSubscript:v9];
    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_12:
    v7 = "0 < count";
    v8 = 50;
LABEL_11:
    __assert_rtn("_DecrementThreadLocalCounterForKey", "ECNetworkAssertions.m", v8, v7);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v2 setObject:v6 forKeyedSubscript:v9];

LABEL_7:
}

void sub_22D096788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t _parseDomain(void *a1, __CFString **a2)
{
  v4 = 1;
  if ((_parseStringWithWrappingCharacters(a1, _parseDText, 91, 93, 1, a2) & 1) == 0)
  {
    if (*a1 == 1)
    {
      v5 = a1[3];
      if (a2)
      {
        v6 = [MEMORY[0x277CCAB68] string];
      }

      else
      {
        v6 = 0;
      }

      v21 = 0;
      v7 = _parseAtom(a1, &v21);
      v8 = v21;
      if (v7)
      {
        [(__CFString *)v6 appendString:v8];
        while (1)
        {
          v5 = a1[3];
          if (v5 < 0)
          {
            break;
          }

          v9 = a1[2];
          v10 = *(v9 + 160);
          if (v10 <= v5)
          {
            break;
          }

          v11 = *(v9 + 136);
          if (v11)
          {
            v12 = *(v11 + 2 * *(v9 + 152) + 2 * v5);
          }

          else
          {
            v13 = *(v9 + 144);
            if (v13)
            {
              v12 = *(v13 + *(v9 + 152) + v5);
            }

            else
            {
              if (*(v9 + 176) <= v5 || (v14 = *(v9 + 168), v14 > v5))
              {
                v15 = v5 - 4;
                if (v5 < 4)
                {
                  v15 = 0;
                }

                if (v15 + 64 < v10)
                {
                  v10 = v15 + 64;
                }

                *(v9 + 168) = v15;
                *(v9 + 176) = v10;
                v22.length = v10 - v15;
                v22.location = *(v9 + 152) + v15;
                CFStringGetCharacters(*(v9 + 128), v22, v9);
                v14 = *(v9 + 168);
              }

              v12 = *(v9 + 2 * (v5 - v14));
            }
          }

          if (v12 != 46)
          {
            break;
          }

          ++a1[3];
          v20 = v8;
          v16 = _parseAtom(a1, &v20);
          v17 = v20;

          if (!v16)
          {
            v8 = v17;
            break;
          }

          v8 = v17;
          [(__CFString *)v6 appendFormat:@".%@", v17];
        }
      }

      else
      {

        v6 = 0;
      }

      a1[3] = v5;
      if (a2)
      {
        v18 = v6;
        *a2 = v6;
      }

      if (v7)
      {
        return 1;
      }
    }

    else if (a2)
    {
      *a2 = 0;
    }

    return _parseDotAtom(a1, a2);
  }

  return v4;
}

void sub_22D096B0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t _parseQContent(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 24);
  if (v4 < 0 || (v5 = *(a1 + 16), v6 = *(v5 + 160), v6 <= v4))
  {
    v8 = 0;
  }

  else
  {
    v7 = *(v5 + 136);
    if (v7)
    {
      v8 = *(v7 + 2 * *(v5 + 152) + 2 * v4);
    }

    else
    {
      v10 = *(v5 + 144);
      if (v10)
      {
        v8 = *(v10 + *(v5 + 152) + v4);
      }

      else
      {
        if (*(v5 + 176) <= v4 || (v11 = *(v5 + 168), v11 > v4))
        {
          v12 = v4 - 4;
          if (v4 < 4)
          {
            v12 = 0;
          }

          if (v12 + 64 < v6)
          {
            v6 = v12 + 64;
          }

          *(v5 + 168) = v12;
          *(v5 + 176) = v6;
          v14.length = v6 - v12;
          v14.location = *(v5 + 152) + v12;
          CFStringGetCharacters(*(v5 + 128), v14, v5);
          v11 = *(v5 + 168);
        }

        v8 = *(v5 + 2 * (v4 - v11));
      }
    }
  }

  if (v8 == 33 || (v8 - 35) < 0x39u || v8 > 0x7Fu || (v8 - 93) <= 0x21u)
  {
    *a2 = v8;
    ++*(a1 + 24);
    return 1;
  }

  else
  {

    return _parseQuotedPair(a1, a2);
  }
}

uint64_t _parseQuotedPair(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (v2 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(v4 + 160);
  if (v5 <= v2)
  {
    return 0;
  }

  v7 = *(v4 + 136);
  if (v7)
  {
    v8 = *(v7 + 2 * *(v4 + 152) + 2 * v2);
  }

  else
  {
    v9 = *(v4 + 144);
    if (v9)
    {
      v8 = *(v9 + *(v4 + 152) + v2);
    }

    else
    {
      if (*(v4 + 176) <= v2 || (v10 = *(v4 + 168), v10 > v2))
      {
        v11 = v2 - 4;
        if (v2 < 4)
        {
          v11 = 0;
        }

        if (v11 + 64 < v5)
        {
          v5 = v11 + 64;
        }

        *(v4 + 168) = v11;
        *(v4 + 176) = v5;
        v33.length = v5 - v11;
        v33.location = *(v4 + 152) + v11;
        CFStringGetCharacters(*(v4 + 128), v33, v4);
        v10 = *(v4 + 168);
      }

      v8 = *(v4 + 2 * (v2 - v10));
    }
  }

  if (v8 != 92)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  v13 = v12 + 1;
  *(a1 + 24) = v12 + 1;
  if (v12 < -1 || (v14 = *(a1 + 16), v15 = *(v14 + 160), v15 <= v13))
  {
    v17 = 0;
  }

  else
  {
    v16 = *(v14 + 136);
    if (v16)
    {
      v17 = *(v16 + 2 * *(v14 + 152) + 2 * v13);
    }

    else
    {
      v27 = *(v14 + 144);
      if (v27)
      {
        v17 = *(v27 + *(v14 + 152) + v13);
      }

      else
      {
        if (*(v14 + 176) <= v13 || (v29 = *(v14 + 168), v29 > v13))
        {
          v30 = v13 - 4;
          if (v13 < 4)
          {
            v30 = 0;
          }

          if (v30 + 64 < v15)
          {
            v15 = v30 + 64;
          }

          *(v14 + 168) = v30;
          *(v14 + 176) = v15;
          v34.length = v15 - v30;
          v34.location = *(v14 + 152) + v30;
          CFStringGetCharacters(*(v14 + 128), v34, v14);
          v29 = *(v14 + 168);
        }

        v17 = *(v14 + 2 * (v13 - v29));
      }
    }
  }

  v20 = v17 > 0x7Fu || (v17 - 33) < 0x5Eu;
  if (v20)
  {
    if (a2)
    {
      *a2 = v17;
    }

    v21 = *(a1 + 24) + 1;
    goto LABEL_66;
  }

  v22 = *(a1 + 24);
  if (v22 < 0 || (v23 = *(a1 + 16), v24 = *(v23 + 160), v24 <= v22))
  {
LABEL_65:
    v21 = v22 - 1;
LABEL_66:
    *(a1 + 24) = v21;
    return v20;
  }

  v25 = *(v23 + 136);
  if (v25)
  {
    v26 = *(v25 + 2 * *(v23 + 152) + 2 * v22);
  }

  else
  {
    v28 = *(v23 + 144);
    if (v28)
    {
      v26 = *(v28 + *(v23 + 152) + v22);
    }

    else
    {
      if (*(v23 + 176) <= v22 || (v31 = *(v23 + 168), v31 > v22))
      {
        v32 = v22 - 4;
        if (v22 < 4)
        {
          v32 = 0;
        }

        if (v32 + 64 < v24)
        {
          v24 = v32 + 64;
        }

        *(v23 + 168) = v32;
        *(v23 + 176) = v24;
        v35.length = v24 - v32;
        v35.location = *(v23 + 152) + v32;
        CFStringGetCharacters(*(v23 + 128), v35, v23);
        v31 = *(v23 + 168);
      }

      v26 = *(v23 + 2 * (v22 - v31));
    }
  }

  if (v26 != 9 && v26 != 32)
  {
    v22 = *(a1 + 24);
    goto LABEL_65;
  }

  if (a2)
  {
    *a2 = v26;
  }

  v22 = *(a1 + 24) + 1;
  *(a1 + 24) = v22;
  result = 1;
  if (v26 != 9 && v26 != 32)
  {
    goto LABEL_65;
  }

  return result;
}

void sub_22D09777C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, void *a12, void *a13, void *a14, void *a15, char a16, char a17, char a18, char a19, void *a20)
{
  if ((v22 & 0x80) == 0)
  {
  }

  if ((v20 & 8) != 0)
  {
  }

  if ((v21 & 0x10) == 0)
  {
  }

  if ((a17 & 0x40) == 0)
  {
  }

  if ((a18 & 0x20) == 0)
  {
  }

  if ((a16 & 4) == 0)
  {
  }

  if ((a19 & 2) == 0)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _parseElementList(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, void *), void *a4)
{
  if (*a1 == 1)
  {
    v8 = *(a1 + 24);
    while (1)
    {
        ;
      }

      v9 = *(a1 + 24);
      if (v9 < 0)
      {
        break;
      }

      v10 = *(a1 + 16);
      v11 = *(v10 + 160);
      if (v11 <= v9)
      {
        break;
      }

      v12 = *(v10 + 136);
      if (v12)
      {
        v13 = *(v12 + 2 * *(v10 + 152) + 2 * v9);
      }

      else
      {
        v14 = *(v10 + 144);
        if (v14)
        {
          v13 = *(v14 + *(v10 + 152) + v9);
        }

        else
        {
          if (*(v10 + 176) <= v9 || (v15 = *(v10 + 168), v15 > v9))
          {
            v16 = v9 - 4;
            if (v9 < 4)
            {
              v16 = 0;
            }

            if (v16 + 64 < v11)
            {
              v11 = v16 + 64;
            }

            *(v10 + 168) = v16;
            *(v10 + 176) = v11;
            v58.length = v11 - v16;
            v58.location = *(v10 + 152) + v16;
            CFStringGetCharacters(*(v10 + 128), v58, v10);
            v15 = *(v10 + 168);
          }

          v13 = *(v10 + 2 * (v9 - v15));
        }
      }

      if (v13 != 44)
      {
        break;
      }

      ++*(a1 + 24);
    }

    if (a4)
    {
      v17 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      v17 = 0;
    }

    if (a3(a1, v17))
    {
      v18 = *(a1 + 24);
      if (v18 < 0 || (v19 = *(a1 + 16), v20 = *(v19 + 160), v20 <= v18))
      {
        v21 = *(a1 + 24);
      }

      else
      {
        v21 = *(a1 + 24);
        do
        {
          v22 = *(v19 + 136);
          if (v22)
          {
            v23 = *(v22 + 2 * *(v19 + 152) + 2 * v18);
          }

          else
          {
            v24 = *(v19 + 144);
            if (v24)
            {
              v23 = *(v24 + *(v19 + 152) + v18);
            }

            else
            {
              if (*(v19 + 176) <= v18 || (v25 = *(v19 + 168), v25 > v18))
              {
                v26 = v18 - 4;
                if (v18 < 4)
                {
                  v26 = 0;
                }

                if (v26 + 64 < v20)
                {
                  v20 = v26 + 64;
                }

                *(v19 + 168) = v26;
                *(v19 + 176) = v20;
                v59.length = v20 - v26;
                v59.location = *(v19 + 152) + v26;
                CFStringGetCharacters(*(v19 + 128), v59, v19);
                v25 = *(v19 + 168);
              }

              v23 = *(v19 + 2 * (v18 - v25));
            }
          }

          if (v23 != 44)
          {
            break;
          }

          ++*(a1 + 24);
          _parseCFWS(a1);
          v27 = *(a1 + 24);
          v28 = a3(a1, v17);
          v18 = *(a1 + 24);
          v21 = v28 ? *(a1 + 24) : v27;
          if (v18 < 0)
          {
            break;
          }

          v19 = *(a1 + 16);
          v20 = *(v19 + 160);
        }

        while (v20 > v18);
      }

      *(a1 + 24) = v21;
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_100;
    }

    *(a1 + 24) = v8;
  }

  if (a4)
  {
    *a4 = 0;
    v30 = (a1 + 24);
    v29 = *(a1 + 24);
    v17 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v17 = 0;
    v30 = (a1 + 24);
    v29 = *(a1 + 24);
  }

  v31 = a3(a1, v17);
  v32 = *v30;
  if (v31 && (v32 & 0x8000000000000000) == 0)
  {
    do
    {
      v33 = *(a1 + 16);
      v34 = *(v33 + 160);
      if (v34 <= v32)
      {
        break;
      }

      v35 = *(v33 + 136);
      if (v35)
      {
        v36 = *(v35 + 2 * *(v33 + 152) + 2 * v32);
      }

      else
      {
        v37 = *(v33 + 144);
        if (v37)
        {
          v36 = *(v37 + *(v33 + 152) + v32);
        }

        else
        {
          if (*(v33 + 176) <= v32 || (v38 = *(v33 + 168), v39 = v32, v38 > v32))
          {
            v40 = v32 - 4;
            if (v32 < 4)
            {
              v40 = 0;
            }

            if (v40 + 64 < v34)
            {
              v34 = v40 + 64;
            }

            *(v33 + 168) = v40;
            *(v33 + 176) = v34;
            v60.length = v34 - v40;
            v60.location = *(v33 + 152) + v40;
            CFStringGetCharacters(*(v33 + 128), v60, v33);
            v38 = *(v33 + 168);
            v39 = *v30;
          }

          v36 = *(v33 + 2 * (v32 - v38));
          v32 = v39;
        }
      }

      if (v36 != 44)
      {
        break;
      }

      *(a1 + 24) = v32 + 1;
      if ((a3(a1, v17) & 1) == 0)
      {
        v41 = *v30;
        if (!a2 || v41 < 0)
        {
          goto LABEL_95;
        }

        v42 = *v30;
        do
        {
          v43 = *(a1 + 16);
          v44 = *(v43 + 160);
          if (v44 <= v42)
          {
            break;
          }

          v45 = *(v43 + 136);
          if (v45)
          {
            v46 = *(v45 + 2 * *(v43 + 152) + 2 * v42);
          }

          else
          {
            v47 = *(v43 + 144);
            if (v47)
            {
              v46 = *(v47 + *(v43 + 152) + v42);
            }

            else
            {
              if (*(v43 + 176) <= v42 || (v48 = *(v43 + 168), v48 > v42))
              {
                v49 = v42 - 4;
                if (v42 < 4)
                {
                  v49 = 0;
                }

                if (v49 + 64 < v44)
                {
                  v44 = v49 + 64;
                }

                *(v43 + 168) = v49;
                *(v43 + 176) = v44;
                v61.length = v44 - v49;
                v61.location = *(v43 + 152) + v49;
                CFStringGetCharacters(*(v43 + 128), v61, v43);
                v48 = *(v43 + 168);
              }

              v46 = *(v43 + 2 * (v42 - v48));
            }
          }

          if (!v46)
          {
            break;
          }

          if (v46 == 44)
          {
            break;
          }

          v50 = *v30;
          v42 = *v30 + 1;
          *v30 = v42;
        }

        while (v50 >= -1);
        if (*v30 == v41)
        {
LABEL_95:
          v32 = v41 - 1;
          *v30 = v41 - 1;
          break;
        }

        v51 = [*(a1 + 8) substringWithRange:{v41, *v30 - v41}];
        v52 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v53 = [v51 stringByTrimmingCharactersInSet:v52];

        if ([v53 length])
        {
          [v17 addObject:v53];
        }
      }

      v32 = *v30;
    }

    while ((*v30 & 0x8000000000000000) == 0);
  }

  if (v32 == v29)
  {
    v54 = 0;
    if (!a4)
    {
      goto LABEL_102;
    }

    v55 = 0;
LABEL_101:
    *a4 = v55;
    goto LABEL_102;
  }

  if (a4)
  {
LABEL_100:
    v56 = v17;
    v54 = 1;
    v55 = v17;
    goto LABEL_101;
  }

LABEL_94:
  v54 = 1;
LABEL_102:

  return v54;
}

uint64_t _parseMailboxAppendingToList(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v5 = _parseMailbox(a1, &v15, &v14, &v13);
  v6 = v15;
  v7 = v14;
  v8 = v13;
  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [*(a1 + 8) substringWithRange:{v4, *(a1 + 24) - v4}];
    v11 = [[ECEmailAddressComponents alloc] _initWithString:v10 displayName:v6 localPart:v7 domain:v8 groupList:0];
    [v3 addObject:v11];
  }

  return v5;
}

void sub_22D09882C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22D098C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_22D099138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_22D0992B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_22D099FF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D09B368(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_22D09B604(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D09C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECAPOPAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D09C388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECAppleToken2AuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D09C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECAppleTokenAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D09E1C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t ECBytesInEncodingCanBeConcatenated(unint64_t a1)
{
  v1 = CFStringConvertNSStringEncodingToEncoding(a1);
  result = 1;
  if (v1 <= 2351)
  {
    if ((v1 - 1584) >= 3 && v1 != 1058)
    {
      return 0;
    }
  }

  else if (((v1 - 2352) > 0x10 || ((1 << (v1 - 48)) & 0x10003) == 0) && v1 != 2565 && v1 != 134217984)
  {
    return 0;
  }

  return result;
}

id ECConvertCharacterSetNameToEncoding(const __CFString *a1)
{
  v1 = CFStringConvertIANACharSetNameToEncoding(a1);
  if (v1 == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CFStringConvertEncodingToNSStringEncoding(v1)];
  }

  return v2;
}

__CFString *ECConvertEncodingToCharacterSetName(unint64_t a1)
{
  v2 = CFStringConvertNSStringEncodingToEncoding(a1);
  if (v2 <= 1583)
  {
    if (v2 <= 1056)
    {
      if (v2 == 518)
      {
        v3 = @"ISO-8859-6-i";
        goto LABEL_18;
      }

      if (v2 == 520)
      {
        v3 = @"ISO-8859-8-i";
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v2 != 1057)
    {
      if (v2 == 1058)
      {
        v3 = @"KS_C_5601-1987";
        goto LABEL_18;
      }

      goto LABEL_13;
    }

LABEL_16:
    v3 = @"GB2312";
    goto LABEL_18;
  }

  if ((v2 - 3056) < 3)
  {
    v2 = 2561;
    goto LABEL_13;
  }

  if ((v2 - 3059) < 2)
  {
    v2 = 2080;
    goto LABEL_13;
  }

  if (v2 == 1584)
  {
    goto LABEL_16;
  }

LABEL_13:
  v3 = CFStringConvertEncodingToIANACharSetName(v2);
  if (!v3)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull ECConvertEncodingToCharacterSetName(NSStringEncoding)"];
    v6 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:a1];
    [v4 handleFailureInFunction:v5 file:@"ECCharacterSet.m" lineNumber:93 description:{@"No character set name for string encoding %@ (%lu)", v6, a1}];

    v3 = 0;
  }

LABEL_18:

  return v3;
}

uint64_t ECEncodingIsASCIISuperset(unint64_t a1)
{
  v1 = CFStringConvertNSStringEncodingToEncoding(a1);
  result = 0;
  if (v1 <= 1023)
  {
    if ((v1 - 513) <= 0xF && v1 != 524 || v1 <= 0x26 && ((1 << v1) & 0x78200000D1) != 0 || v1 == 152)
    {
      return 1;
    }
  }

  else
  {
    if (v1 <= 1279)
    {
      v3 = v1 - 1024;
      if (v3 > 0x1D)
      {
        return result;
      }

      v4 = 1 << v3;
      v5 = 1073676385;
      goto LABEL_18;
    }

    if (v1 <= 2561)
    {
      if ((v1 - 1280) >= 9 && (v1 - 1536) >= 2)
      {
        return result;
      }

      return 1;
    }

    if (v1 <= 2816)
    {
      v6 = v1 - 2562;
      if (v6 > 6)
      {
        return result;
      }

      v4 = 1 << v6;
      v5 = 101;
LABEL_18:
      if ((v4 & v5) == 0)
      {
        return result;
      }

      return 1;
    }

    if (v1 == 2817 || v1 == 134217984 || v1 == 3071)
    {
      return 1;
    }
  }

  return result;
}

void sub_22D09F5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ECSignatureInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D09F6CC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);

  _Unwind_Resume(a1);
}

void sub_22D09F7A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id _ef_log_ECCMSEncoder()
{
  if (_ef_log_ECCMSEncoder_onceToken != -1)
  {
    _ef_log_ECCMSEncoder_cold_1();
  }

  v1 = _ef_log_ECCMSEncoder_log;

  return v1;
}

void sub_22D0A124C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ECCMSRecipient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_22D0A1588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECCramMD5AuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0A188C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECDigestMD5AuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

id _ef_log_ECDKIMCryptoUtil()
{
  if (_ef_log_ECDKIMCryptoUtil_onceToken != -1)
  {
    _ef_log_ECDKIMCryptoUtil_cold_1();
  }

  v1 = _ef_log_ECDKIMCryptoUtil_log;

  return v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_22D0A3340(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id _ef_log_ECDKIMVerifier()
{
  if (_ef_log_ECDKIMVerifier_onceToken != -1)
  {
    _ef_log_ECDKIMVerifier_cold_1();
  }

  v1 = _ef_log_ECDKIMVerifier_log;

  return v1;
}

void sub_22D0A5BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D0A6A04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_0_1(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_22D0A7990(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22D0A7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D0A7EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

void query_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = MEMORY[0x2318C92C0](a11);
  if (!a4 && a8 && a9 && a11)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a9 length:a8];
    v14 = [v13 bytes];
    v15 = *v14;
    v16 = objc_opt_new();
    v17 = v14 + 1;
    for (i = 1; i < [v13 length]; ++i)
    {
      if (i <= v15)
      {
        [v16 appendBytes:v17 length:1];
      }

      v19 = (v15 + 1);
      if (i == v19)
      {
        v15 = v19 + *v17;
      }

      ++v17;
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:1];
    v22[2](v22, v21, 0);

    v20 = v22;
  }

  else
  {
    v20 = v22;
    if (v22)
    {
      v22[2](v22, 0, a4);
      v20 = v22;
    }
  }
}

void sub_22D0A9DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_22D0A9ED0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22D0A9F6C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22D0AA030(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22D0AA0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_22D0AA4E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D0AB004(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _parseDText(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 24);
  if (v4 < 0 || (v5 = *(a1 + 16), v6 = *(v5 + 160), v6 <= v4))
  {
    v8 = 0;
  }

  else
  {
    v7 = *(v5 + 136);
    if (v7)
    {
      v8 = *(v7 + 2 * *(v5 + 152) + 2 * v4);
    }

    else
    {
      v14 = *(v5 + 144);
      if (v14)
      {
        v8 = *(v14 + *(v5 + 152) + v4);
      }

      else
      {
        if (*(v5 + 176) <= v4 || (v15 = *(v5 + 168), v15 > v4))
        {
          v16 = v4 - 4;
          if (v4 < 4)
          {
            v16 = 0;
          }

          if (v16 + 64 < v6)
          {
            v6 = v16 + 64;
          }

          *(v5 + 168) = v16;
          *(v5 + 176) = v6;
          v21.length = v6 - v16;
          v21.location = *(v5 + 152) + v16;
          CFStringGetCharacters(*(v5 + 128), v21, v5);
          v15 = *(v5 + 168);
        }

        v8 = *(v5 + 2 * (v4 - v15));
      }
    }

    if ((v8 - 33) < 0x3Au)
    {
      goto LABEL_31;
    }
  }

  if (v8 > 0x7Fu || (v8 - 94) <= 0x20u)
  {
LABEL_31:
    *a2 = v8;
    ++*(a1 + 24);
    return 1;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  if (v9 < 0 || (v10 = *(a1 + 16), v11 = *(v10 + 160), v11 <= v9))
  {
    v8 = 0;
  }

  else
  {
    v12 = *(v10 + 136);
    if (v12)
    {
      v8 = *(v12 + 2 * *(v10 + 152) + 2 * v9);
    }

    else
    {
      v17 = *(v10 + 144);
      if (v17)
      {
        v8 = *(v17 + *(v10 + 152) + v9);
      }

      else
      {
        if (*(v10 + 176) <= v9 || (v18 = *(v10 + 168), v18 > v9))
        {
          v19 = v9 - 4;
          if (v9 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v11)
          {
            v11 = v19 + 64;
          }

          *(v10 + 168) = v19;
          *(v10 + 176) = v11;
          v22.length = v11 - v19;
          v22.location = *(v10 + 152) + v19;
          CFStringGetCharacters(*(v10 + 128), v22, v10);
          v18 = *(v10 + 168);
        }

        v8 = *(v10 + 2 * (v9 - v18));
      }
    }

    if (v8 - 1) < 0xCu && ((0xCFFu >> (v8 - 1)))
    {
      v8 = word_22D0EE1E0[(v8 - 1)];
      goto LABEL_31;
    }
  }

  if (v8 == 127 || (v8 - 14) < 0x12u)
  {
    goto LABEL_31;
  }

  return _parseQuotedPair(a1, a2);
}

uint64_t _parseAddressAppendingToList(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v5 = _parseAddress(a1, &v17, &v16, &v15, &v14);
  v6 = v17;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  if (v3)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [*(a1 + 8) substringWithRange:{v4, *(a1 + 24) - v4}];
    v12 = [[ECEmailAddressComponents alloc] _initWithString:v11 displayName:v6 localPart:v7 domain:v8 groupList:v9];
    [v3 addObject:v12];
  }

  return v5;
}

void sub_22D0AC51C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0AC6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_22D0AE3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Block_object_dispose((v31 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22D0AED14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECExternalAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0AFA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECGSSAPIAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

id _ef_log_ECHeaderAuthenticationResults()
{
  if (_ef_log_ECHeaderAuthenticationResults_onceToken != -1)
  {
    _ef_log_ECHeaderAuthenticationResults_cold_1();
  }

  v1 = _ef_log_ECHeaderAuthenticationResults_log;

  return v1;
}

__CFString *_stringByApplyingIDNATranslationWithRange(void *a1, uint64_t (*a2)(uint64_t, const UniChar *, unint64_t, uint64_t, void, _DWORD *, int *))
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (_stringByApplyingIDNATranslationWithRange_onceToken != -1)
  {
    _stringByApplyingIDNATranslationWithRange_cold_1();
  }

  if (!_stringByApplyingIDNATranslationWithRange_sIDNA || (v4 = [(__CFString *)v3 length], v4 >> 31))
  {
    v5 = v3;
    goto LABEL_6;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v26 + 14) = v8;
  v25[29] = v8;
  v26[0] = v8;
  v25[27] = v8;
  v25[28] = v8;
  v25[25] = v8;
  v25[26] = v8;
  v25[23] = v8;
  v25[24] = v8;
  v25[21] = v8;
  v25[22] = v8;
  v25[19] = v8;
  v25[20] = v8;
  v25[17] = v8;
  v25[18] = v8;
  v25[15] = v8;
  v25[16] = v8;
  v25[13] = v8;
  v25[14] = v8;
  v25[11] = v8;
  v25[12] = v8;
  v25[9] = v8;
  v25[10] = v8;
  v25[7] = v8;
  v25[8] = v8;
  v25[6] = v8;
  v25[4] = v8;
  v25[5] = v8;
  v25[2] = v8;
  v25[3] = v8;
  v25[0] = v8;
  v25[1] = v8;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  if (CharactersPtr)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v11 = v4 > 0xFF;
  if (v4 < 0x100)
  {
    v10 = v25;
    goto LABEL_17;
  }

  v10 = MEMORY[0x2318C8830](*MEMORY[0x277CBECE8], (2 * v4), 0x1000040BDFB0063, 0);
  if (v10)
  {
LABEL_17:
    [(__CFString *)v3 getCharacters:v10 range:0, v4];
    CharactersPtr = v10;
LABEL_18:
    ptr = v10;
    v24 = 0;
    LOWORD(v23[0]) = 16;
    memset(v23 + 2, 0, 14);
    v13 = a2(_stringByApplyingIDNATranslationWithRange_sIDNA, CharactersPtr, v4, 0, 0, v23, &v24);
    v14 = v13;
    v16 = v24 < 1 && v23[1] == 0;
    if (v24 == 15 || v16)
    {
      v17 = *MEMORY[0x277CBECE8];
      v18 = MEMORY[0x2318C8830](*MEMORY[0x277CBECE8], 2 * (v13 + 1), 0x1000040BDFB0063, 0);
      v19 = v18;
      v20 = v18 ? 0 : 7;
      v24 = v20;
      if (v18)
      {
        LOWORD(v22[0]) = 16;
        memset(v22 + 2, 0, 14);
        a2(_stringByApplyingIDNATranslationWithRange_sIDNA, CharactersPtr, v4, v18, (v14 + 1), v22, &v24);
        if (v24 <= 0 && !v22[1])
        {
          v5 = CFStringCreateWithCharactersNoCopy(v17, v19, v14, v17);
          if (v5)
          {
LABEL_35:
            if (v11)
            {
              CFAllocatorDeallocate(*MEMORY[0x277CBECE8], ptr);
            }

            goto LABEL_6;
          }
        }

        CFAllocatorDeallocate(v17, v19);
      }
    }

    v5 = 0;
    goto LABEL_35;
  }

  v12 = ECIDNALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _stringByApplyingIDNATranslationWithRange_cold_2(2 * v4, v12);
  }

  v5 = 0;
LABEL_6:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void ___stringByApplyingIDNATranslationWithRange_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  code = U_ZERO_ERROR;
  _stringByApplyingIDNATranslationWithRange_sIDNA = MEMORY[0x2318C9780](60, &code);
  if (code >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v0 = ECIDNALog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = u_errorName(code);
      ___stringByApplyingIDNATranslationWithRange_block_invoke_cold_1(v1, buf, v0);
    }

    _stringByApplyingIDNATranslationWithRange_sIDNA = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

id ECIDNALog()
{
  if (ECIDNALog_onceToken != -1)
  {
    ECIDNALog_cold_1();
  }

  v1 = ECIDNALog_log;

  return v1;
}

uint64_t __ECIDNALog_block_invoke()
{
  ECIDNALog_log = os_log_create("com.apple.email", "ECIDNA");

  return MEMORY[0x2821F96F8]();
}

void sub_22D0B2D94(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id ECSMIMELog()
{
  if (ECSMIMELog_onceToken != -1)
  {
    ECSMIMELog_cold_1();
  }

  v1 = ECSMIMELog_log;

  return v1;
}

uint64_t __ECSMIMELog_block_invoke()
{
  ECSMIMELog_log = os_log_create("com.apple.email", "SMIME");

  return MEMORY[0x2821F96F8]();
}

__CFString *ECNSStringFromMailboxMailboxType(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 < 0)
    {
      if (a1 == -500)
      {
        v2 = @"ECMailboxTypeInvalid";

        return v2;
      }

      if (a1 == -100)
      {
        v2 = @"ECMailboxTypeRootless";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          v2 = @"ECMailboxTypeGeneric";

          return v2;
        case 1:
          v2 = @"ECMailboxTypeJunk";

          return v2;
        case 2:
          v2 = @"ECMailboxTypeArchive";

          return v2;
      }
    }

LABEL_47:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown mailbox type: %ld", a1];

    return v2;
  }

  if (a1 <= 5)
  {
    if (a1 == 3)
    {
      v2 = @"ECMailboxTypeTrash";
    }

    else if (a1 == 4)
    {
      v2 = @"ECMailboxTypeSentMessages";
    }

    else
    {
      v2 = @"ECMailboxTypeDrafts";
    }

    return v2;
  }

  switch(a1)
  {
    case 6:
      v2 = @"ECMailboxTypeOutbox";

      break;
    case 7:
      v2 = @"ECMailboxTypeInbox";

      break;
    case 8:
      v2 = @"ECMailboxTypeRoot";

      return v2;
    default:
      goto LABEL_47;
  }

  return v2;
}

__CFString *ECPrettyDescriptionFromMailboxType(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 < 0)
    {
      if (a1 == -500)
      {
        return @"Invalid";
      }

      if (a1 == -100)
      {
        return @"Rootless";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return @"Generic";
        case 1:
          return @"Junk";
        case 2:
          return @"Archive";
      }
    }

    return @"Unknown";
  }

  if (a1 > 5)
  {
    switch(a1)
    {
      case 6:
        return @"Outbox";
      case 7:
        return @"Inbox";
      case 8:
        return @"Root";
    }

    return @"Unknown";
  }

  if (a1 == 3)
  {
    return @"Trash";
  }

  if (a1 == 4)
  {
    return @"Sent";
  }

  return @"Drafts";
}

void sub_22D0B4448(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0B4F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL bufferIsHorizontalSeparator(char *a1, unint64_t a2)
{
  for (i = a1; i < a2; i += 2)
  {
    if (!isWhitespaceCharacter(*i))
    {
      break;
    }
  }

  if (i >= a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = i;
  do
  {
    do
    {
      v6 = *v5;
      v7 = (v6 - 43) > 0x34 || ((1 << (v6 - 43)) & 0x10000000040005) == 0;
      if (v7 && v6 != 126)
      {
        break;
      }

      v5 += 2;
    }

    while (v5 < a2);
    if (v5 - i < 5)
    {
      if ((i + 2) >= a2 || *i != 56 || *(i + 1) != 60)
      {
        return 0;
      }

      v5 = i + 4;
    }

    else
    {
      ++v4;
    }

    while (v5 < a2 && isWhitespaceCharacter(*v5))
    {
      v5 += 2;
    }

    i = v5;
  }

  while (v5 < a2);
  return v4 > 0;
}

uint64_t isWhitespaceCharacter(unsigned int a1)
{
  result = 1;
  if (a1 > 0x20 || ((1 << a1) & 0x100003600) == 0)
  {
    v5 = a1 == 8239 || a1 == 8287 || a1 - 8194 < 0xA;
    return a1 == 160 || v5;
  }

  return result;
}

uint64_t _ef_log_ECMessageBodyParser()
{
  if (_ef_log_ECMessageBodyParser_onceToken != -1)
  {
    _ef_log_ECMessageBodyParser_cold_1();
  }

  return _ef_log_ECMessageBodyParser_log;
}

uint64_t ECGetNextHeaderFromData(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 bytes];
  HeaderFromBytes = ECGetNextHeaderFromBytes(a1, a2, v9, v11, &v11[a5], &v11[[v10 length]]);

  return HeaderFromBytes;
}

uint64_t ECGetNextHeaderFromBytes(void *a1, void *a2, void *a3, _BYTE *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v10 = a3;
  v11 = v10;
  if (a4)
  {
    v12 = [v10 cStringUsingEncoding:1];
    v13 = v12;
    if (!v11 || v12)
    {
      if (v12)
      {
        v38 = strlen(v12);
      }

      else
      {
        v38 = 0;
      }

      if (a5 < a6 && *a5 == 10)
      {
        ++a5;
      }

      if (a5 < a6)
      {
        v37 = a1;
        v14 = (a6 - 1);
        do
        {
          if (*a5 == 10)
          {
            break;
          }

          v15 = memchr(a5, 10, a6 - a5);
          v16 = v15 != 0;
          if (v15 > a5 && v15 < v14)
          {
            v16 = 1;
            do
            {
              v17 = *(v15 + 1);
              if (v17 != 32 && v17 != 9)
              {
                break;
              }

              v15 = memchr((v15 + 1), 10, &a6[~v15]);
              v16 = v15 != 0;
              if (v15 <= a5)
              {
                break;
              }
            }

            while (v15 < v14);
          }

          if (v16)
          {
            v19 = v15;
          }

          else
          {
            v19 = a6;
          }

          v20 = (a5 - a4);
          if (a5 == a4 && (v21 = a5 + 5, a5 + 5 <= v19) && !strncasecmp(a5, "From ", 5uLL))
          {
            if (v13 && (v38 != 5 || strncasecmp(v13, "From ", 5uLL)))
            {
              goto LABEL_46;
            }

            if (a2)
            {
              *a2 = v20;
              a2[1] = 5;
            }
          }

          else
          {
            v22 = memchr(a5, 58, a6 - a5);
            if (!v22)
            {
              goto LABEL_46;
            }

            v23 = v22;
            v24 = v22;
            if (v22 > a5)
            {
              v25 = v22;
              while (1)
              {
                v27 = *--v25;
                v26 = v27;
                if (v27 != 32 && v26 != 9)
                {
                  break;
                }

                v24 = v25;
                if (v25 <= a5)
                {
                  v24 = a5;
                  break;
                }
              }
            }

            if (v13 && (v24 - a5 != v38 || strncasecmp(a5, v13, v38)))
            {
              goto LABEL_46;
            }

            if (a2)
            {
              *a2 = v20;
              a2[1] = v24 - a5;
            }

            v21 = v23 + 1;
          }

          if (v21 <= v19)
          {
            if (v21 >= v19)
            {
              v32 = v37;
            }

            else
            {
              v31 = v19 - v21;
              v32 = v37;
              while (1)
              {
                v33 = *v21;
                v34 = v33 > 0x20;
                v35 = (1 << v33) & 0x100000600;
                if (v34 || v35 == 0)
                {
                  break;
                }

                ++v21;
                if (!--v31)
                {
                  v21 = v19;
                  break;
                }
              }
            }

            if (v32)
            {
              *v32 = v21 - a4;
              v32[1] = v19 - v21;
            }

            v29 = 1;
            goto LABEL_57;
          }

LABEL_46:
          if (v19 < a6 && *v19 == 10)
          {
            ++v19;
          }

          a5 = v19;
        }

        while (v19 < a6);
      }
    }
  }

  v29 = 0;
LABEL_57:

  return v29;
}

uint64_t ECGetNextHeaderFromDataInRange(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 bytes];
    HeaderFromBytes = ECGetNextHeaderFromBytes(a1, a2, v11, v14, &v14[a5], &v14[a5 + a6]);
  }

  else
  {
    HeaderFromBytes = 0;
  }

  return HeaderFromBytes;
}

void ECAllowNetworkActivityButLog(void *a1)
{
  v1 = a1;
  _IncrementThreadLocalCounterForKey(@"_ECLogNetworkActivity");
  v1[2]();
  _DecrementThreadLocalCounterForKey(@"_ECLogNetworkActivity");
}

void ECAssertNetworkActivityAllowed()
{
  if (!_ECIsNetworkActivityAllowed())
  {
    v0 = [MEMORY[0x277CCACC8] currentThread];
    v1 = [v0 threadDictionary];
    v2 = [v1 objectForKeyedSubscript:@"_ECLogNetworkActivity"];

    if (v2)
    {
      v3 = ECNetworkAllowedLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        ECAssertNetworkActivityAllowed_cold_1(v3);
      }
    }

    else if ((EFIsSeedBuild() & 1) != 0 || ([MEMORY[0x277D07148] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isInternal"), v4, v5))
    {
      ECAssertNetworkActivityAllowed_cold_2();
    }
  }
}

BOOL _ECIsNetworkActivityAllowed()
{
  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    return !_ThreadLocalAssertionForKey(@"_ECDisallowNetworkActivityAssertion");
  }

  result = _ThreadLocalAssertionForKey(@"_ECMainThreadNetworkingAllowedAssertion");
  if (result)
  {
    return !_ThreadLocalAssertionForKey(@"_ECDisallowNetworkActivityAssertion");
  }

  return result;
}

id ECNetworkAllowedLog()
{
  if (ECNetworkAllowedLog_onceToken != -1)
  {
    ECNetworkAllowedLog_cold_1();
  }

  v1 = ECNetworkAllowedLog_log;

  return v1;
}

BOOL _ThreadLocalAssertionForKey(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:v1];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("_ThreadLocalAssertionForKey", "ECNetworkAssertions.m", 64, "[number isKindOfClass:[NSNumber class]]");
    }

    v5 = [v4 unsignedIntegerValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __ECNetworkAllowedLog_block_invoke()
{
  ECNetworkAllowedLog_log = os_log_create("com.apple.email", "ECNetworkAllowed");

  return MEMORY[0x2821F96F8]();
}

void sub_22D0BEA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECNTLMAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0BF290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECOAuth2AuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0BF5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ECPlainAuthScheme;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0C09CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ECSASLClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t getMechanismInformation(uint64_t result, int a2, void *a3)
{
  if (a2 == 1)
  {
    return [a3 setMechanismUsesPlainText:(*(*(result + 16) + 12) & 1) == 0];
  }

  return result;
}

void __initializeSASLIfNecessary_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  initializeSASLIfNecessary_saslInitializationStatus = sasl_client_init(0);
  if (initializeSASLIfNecessary_saslInitializationStatus)
  {
    v0 = [MEMORY[0x277CBEAF8] currentLocale];
    v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];
    v2 = [v0 objectForKey:*MEMORY[0x277CBE690]];
    v3 = v1;
    v4 = v3;
    if (v2)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v3, v2];
    }

    v5 = [v4 UTF8String];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sasl_errstring(initializeSASLIfNecessary_saslInitializationStatus, v5, 0)}];
    v7 = +[ECSASLClient log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v10 = initializeSASLIfNecessary_saslInitializationStatus;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_22D092000, v7, OS_LOG_TYPE_DEFAULT, "Failed to initialize the SASL library, %d (%{public}@)", buf, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22D0C1FCC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t getOption(int a1, int a2, char *__s1, void *a4, _DWORD *a5)
{
  if (strcmp(__s1, "ntlm_v2"))
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = "yes";
  result = 0;
  if (a5)
  {
    *a5 = 3;
  }

  return result;
}

uint64_t getSimpleValue(void *a1, int a2, void *a3, _DWORD *a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0xFFFFFFFFLL;
  if (a2 <= 18945)
  {
    if (a2 <= 16386)
    {
      if (a2 == 16385)
      {
        v12 = v7 + 3;
        if ([v7 excludeAuthorizationName])
        {
          v9 = 0;
          goto LABEL_56;
        }

        v17 = [v8 credentials];
        v11 = [v17 username];
      }

      else
      {
        if (a2 != 16386)
        {
          goto LABEL_58;
        }

        v17 = [v7 credentials];
        v11 = [v17 username];
        v12 = v8 + 2;
      }

      v13 = 0;
      v14 = @"Username";
      if (!v11)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }

    if (a2 == 16387)
    {
      v20 = [MEMORY[0x277CBEAF8] currentLocale];
      v21 = [v20 objectForKey:*MEMORY[0x277CBE6C8]];
      v22 = [v20 objectForKey:*MEMORY[0x277CBE690]];
      v23 = v21;
      v11 = v23;
      if (v22)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v23, v22];
      }

      v13 = 0;
      v12 = v8 + 1;
      v14 = @"Current language";
      if (v11)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a2 == 18944)
      {
        v15 = [v7 credentials];
        v11 = [v15 applePersonID];
        v12 = v8 + 6;
      }

      else
      {
        if (a2 != 18945)
        {
          goto LABEL_58;
        }

        v15 = [v7 credentials];
        v11 = [v15 applePersonID];
        v12 = v8 + 5;
      }

      v13 = 0;
      v14 = @"Person ID";
      if (v11)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_38;
  }

  if (a2 > 18949)
  {
    if (a2 == 18950)
    {
      v25 = [v7 credentials];
      v11 = [v25 oneTimePassword];
      v12 = v8 + 9;

      v13 = 1;
      v14 = @"Apple One Time Password";
      if (v11)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a2 != 18951)
      {
        if (a2 != 18952 || ![v7 isATOKEN2Enabled])
        {
          goto LABEL_58;
        }

        v16 = [v8 credentials];
        v11 = [v16 base64EncodedAppleAuthenticationToken2];
        v12 = v8 + 12;

        v13 = 1;
        v14 = @"Apple atoken2";
        if (!v11)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      v19 = [v7 credentials];
      v11 = [v19 clientInfo];
      v12 = v8 + 10;

      v13 = 1;
      v14 = @"Apple Client Info";
      if (v11)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    v9 = 2;
    goto LABEL_56;
  }

  if (a2 == 18946)
  {
    v24 = [v7 credentials];
    v11 = [v24 appleAuthenticationToken];
    v12 = v8 + 7;

    v13 = 1;
    v14 = @"Apple token";
    if (v11)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (a2 == 18948)
  {
    v18 = [v7 credentials];
    v11 = [v18 oauthToken];
    v12 = v8 + 11;

    v13 = 0;
    v14 = @"OAuth 2 bearer access token";
    if (v11)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (a2 != 18949)
  {
    goto LABEL_58;
  }

  v10 = [v7 credentials];
  v11 = [v10 machineID];
  v12 = v8 + 8;

  v13 = 1;
  v14 = @"Apple Machine ID";
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_41:
  v26 = [v11 lengthOfBytesUsingEncoding:4];
  v27 = v26;
  v34 = v26;
  if (HIDWORD(v26))
  {
    NSLog(&cfstr_WasTooLargeFor.isa, v14, v8, v11);
    v27 = 0xFFFFFFFFLL;
  }

  else if (!v26)
  {
LABEL_55:

    v9 = 0xFFFFFFFFLL;
LABEL_56:
    free(*v12);
    *v12 = 0;
    *a3 = "";
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_58;
  }

  v28 = malloc_type_realloc(*v12, v27 + 1, 0x143777B3uLL);
  v29 = v28;
  if (!v28)
  {
    goto LABEL_55;
  }

  *v12 = v28;
  v30 = [v11 getBytes:v28 maxLength:v27 usedLength:&v34 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v11, "length"), 0}];
  v31 = v34;
  v32 = HIDWORD(v34) ? 0 : v30;
  if (v32 != 1)
  {
    goto LABEL_55;
  }

  v29[v34] = 0;
  *a3 = v29;
  if (a4)
  {
    *a4 = v31;
  }

  if (v13)
  {
    [v8 setLastResponseIncludesCredential:1];
  }

  v9 = 0;
LABEL_58:

  return v9;
}

uint64_t getPassword(uint64_t a1, void *a2, int a3, uint64_t **a4)
{
  v6 = a2;
  v7 = v6;
  if (a3 == 16388)
  {
    v8 = [v6 credentials];
    v9 = [v8 password];

    if (!v9)
    {
      v12 = 2;
LABEL_12:
      free(v7[4]);
      v7[4] = 0;
      getPassword_emptyPassword = 0;
      byte_27D9F8CA8 = 0;
      *a4 = &getPassword_emptyPassword;
      goto LABEL_13;
    }

    v10 = [v9 lengthOfBytesUsingEncoding:4];
    v11 = v10;
    v16 = v10;
    if (v10 < 0xFFFFFFFFFFFFFFF0)
    {
      if (!v10)
      {
LABEL_11:
        v12 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }
    }

    else
    {
      NSLog(&cfstr_PasswordWasToo.isa, v10, v7);
      v11 = -17;
      v16 = -17;
    }

    v13 = malloc_type_realloc(v7[4], v11 + 16, 0x10000409B4BCFF8uLL);
    v14 = v13;
    if (v13)
    {
      v7[4] = v13;
      if ([v9 getBytes:v13 + 1 maxLength:v11 usedLength:&v16 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}])
      {
        *v14 = v16;
        *a4 = v14;
        [v7 setLastResponseIncludesCredential:1];
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_14:

  return v12;
}

void sub_22D0C2AB0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0C2FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ECSecureMIMETrustEvaluation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t copyDeserializedTrust(uint64_t a1, void *a2)
{
  v3 = SecTrustDeserialize();
  if (a2)
  {
    *a2 = 0;
  }

  return v3;
}

id serializeTrust(uint64_t a1, void *a2)
{
  v3 = SecTrustSerialize();
  if (a2)
  {
    *a2 = 0;
  }

  return v3;
}

void sub_22D0C3798(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_22D0C40BC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D0C4840(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0C4EA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0C5510(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id localizePrefixIfNeeded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 regex];
  v6 = [v5 firstMatchInString:v3 options:4 range:{0, objc_msgSend(v3, "length")}];

  if (v6)
  {
    v7 = [v6 rangeAtIndex:2];
    v9 = [v3 substringWithRange:{v7, v8}];
    if (([v4 prefixLastStrongDirectionalityIsLeftToRight] & 1) == 0 && objc_msgSend(v9, "ef_firstStrongDirectionalityIsLeftToRight"))
    {
      v10 = [MEMORY[0x277CCACA8] ef_stringByIsolatingDirectionalityForString:v9];

      v9 = v10;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [v4 localizedPrefix];
    v13 = [v6 rangeAtIndex:1];
    v15 = [v3 substringWithRange:{v13, v14}];
    v16 = [v11 stringWithFormat:@"%@%@%@", v12, v15, v9];
  }

  else
  {
    v16 = v3;
  }

  return v16;
}

void sub_22D0C650C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id copyRegexForPrefixStrings(void *a1)
{
  v1 = a1;
  v2 = [v1 allObjects];
  v3 = [v2 ef_map:&__block_literal_global_57_0];

  v4 = objc_opt_new();
  objc_msgSend(v4, "appendString:", CFSTR("^(\\N{RIGHT-TO-LEFT MARK}*("));
  v5 = [v3 componentsJoinedByString:@"|"];
  [v4 appendFormat:@"(%@)", v5];

  [v4 appendString:@"(\\[\\d+\\])?"];
  [v4 appendString:@"\\s?[\\N{COLON}\\N{FULLWIDTH COLON}]\\s*]+"));
  v14 = 0;
  v6 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v4 options:1 error:&v14];
  v7 = v14;
  v8 = v7;
  if (!v6)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [v7 description];
    v12 = [v10 exceptionWithName:*MEMORY[0x277CBE658] reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  return v6;
}

id __copyRegexForPrefixStrings_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCAC68] escapedPatternForString:a2];

  return v2;
}

id _ef_log_ECTagValueList()
{
  if (_ef_log_ECTagValueList_onceToken[0] != -1)
  {
    _ef_log_ECTagValueList_cold_1();
  }

  v1 = _ef_log_ECTagValueList_log;

  return v1;
}

void sub_22D0C71FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ECTagValueList;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D0C82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, _Unwind_Exception *exception_objecta, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47, void *a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);

  _Unwind_Resume(a1);
}

void sub_22D0C97EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_22D0CA518(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_22D0CABC8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_22D0CC340(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0CC900(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22D0CCD90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

char **ECFindHTMLEntity(char *__s1, int a2)
{
  if ((a2 - 2) > 6)
  {
    return 0;
  }

  if (a2 > 4)
  {
    v6 = a2;
    if (a2 == 5)
    {
LABEL_13:
      v5 = v6 + hash_asso_values[__s1[4]];
      goto LABEL_14;
    }

    v7 = a2;
    if (a2 == 6)
    {
LABEL_12:
      v6 = v7 + hash_asso_values[__s1[5]];
      goto LABEL_13;
    }

    v8 = a2;
    if (a2 == 7)
    {
LABEL_11:
      v7 = v8 + hash_asso_values[__s1[6]];
      goto LABEL_12;
    }

LABEL_10:
    v8 = hash_asso_values[__s1[7]] + a2;
    goto LABEL_11;
  }

  v3 = a2;
  if (a2 != 2)
  {
    v4 = a2;
    if (a2 == 3)
    {
LABEL_15:
      v3 = v4 + hash_asso_values[__s1[2]];
      goto LABEL_16;
    }

    v5 = a2;
    if (a2 == 4)
    {
LABEL_14:
      v4 = v5 + hash_asso_values[__s1[3]];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_16:
  v9 = *__s1;
  v10 = v3 + hash_asso_values[v9] + hash_asso_values[__s1[1] + 1];
  if (v10 > 0x443)
  {
    return 0;
  }

  v11 = ECFindHTMLEntity_lookup[v10];
  if (v11 < 0)
  {
    return 0;
  }

  v12 = &(&ECFindHTMLEntity_wordlist)[2 * v11];
  v13 = *v12;
  if (v9 != **v12 || strncmp(__s1 + 1, v13 + 1, (a2 - 1)) || v13[a2])
  {
    return 0;
  }

  return v12;
}

uint64_t parseEntity(const __CFString *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    parseEntity_cold_1();
  }

  Length = CFStringGetLength(a1);
  if (Length > 19)
  {
    goto LABEL_67;
  }

  v5 = Length;
  *__s1 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buffer = v6;
  v35 = v6;
  v41.location = 0;
  v41.length = Length;
  CFStringGetCharacters(a1, v41, buffer);
  if (v5 < 1)
  {
    goto LABEL_67;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = buffer;
  v11 = &buffer[v5];
  while (v8 <= 2)
  {
    v12 = *v10;
    if (v8)
    {
      if (v8 == 1)
      {
        if ((v12 & 0xFFFFFFDF) == 0x58)
        {
          __s1[v9] = v12;
          v9 = (v9 + 1);
          ++v10;
          v8 = 2;
        }

        else if ((v12 - 48) >= 0xA)
        {
          v8 = 5;
        }

        else
        {
          v8 = 3;
        }

        goto LABEL_55;
      }

      v20 = v11 - v10;
      if (v20 >= 10 - v9)
      {
        v20 = 10 - v9;
      }

      if (v20)
      {
        while (1)
        {
          v21 = *v10;
          if ((*v10 - 48) >= 0xAu && (v21 - 65 > 0x25 || ((1 << (v21 - 65)) & 0x3F0000003FLL) == 0))
          {
            break;
          }

          v23 = v21 - 48;
          if (v21 >= 0x41)
          {
            v23 = (v21 + 9) & 0xF;
          }

          v7 = (v23 + 16 * v7);
          v24 = (v9 + 1);
          __s1[v9] = v21;
          ++v10;
          v9 = v24;
          if (!--v20)
          {
            v9 = v24;
            goto LABEL_43;
          }
        }

        v8 = 5;
      }

      else
      {
LABEL_43:
        v8 = 2;
      }

      v25 = v9 == 10;
LABEL_53:
      if (v25)
      {
        v8 = 5;
      }

      goto LABEL_55;
    }

    if (v12 != 35)
    {
      goto LABEL_50;
    }

    __s1[v9] = 35;
    v9 = (v9 + 1);
    ++v10;
    v8 = 1;
LABEL_55:
    if (v10 >= v11)
    {
      goto LABEL_67;
    }
  }

  if (v8 == 3)
  {
    v17 = v11 - v10;
    if (v17 >= 9 - v9)
    {
      v17 = 9 - v9;
    }

    if (v17)
    {
      while (1)
      {
        v18 = *v10;
        if ((v18 - 48) > 9)
        {
          break;
        }

        v7 = (v18 + 10 * v7 - 48);
        v19 = (v9 + 1);
        __s1[v9] = v18;
        ++v10;
        v9 = v19;
        if (!--v17)
        {
          v9 = v19;
          goto LABEL_28;
        }
      }

      v8 = 5;
    }

    else
    {
LABEL_28:
      v8 = 3;
    }

    v25 = v9 == 9;
    goto LABEL_53;
  }

  if (v8 != 4)
  {
    goto LABEL_61;
  }

  v13 = v11 - v10;
  if (v13 >= 9 - v9)
  {
    v13 = 9 - v9;
  }

  if (!v13)
  {
    v16 = v9;
LABEL_49:
    v9 = v16;
    if (v16 == 9)
    {
      goto LABEL_58;
    }

LABEL_50:
    v8 = 4;
    goto LABEL_55;
  }

  while (1)
  {
    v14 = *v10;
    if ((v14 - 58) <= 0xFFFFFFF5 && (v14 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
    {
      break;
    }

    v16 = (v9 + 1);
    __s1[v9] = v14;
    ++v10;
    LODWORD(v9) = v9 + 1;
    if (!--v13)
    {
      goto LABEL_49;
    }
  }

LABEL_58:
  if (v9 >= 2)
  {
    v26 = ECFindHTMLEntity(__s1, v9);
    if (v26)
    {
      v7 = *(v26 + 2);
    }
  }

LABEL_61:
  if ((v7 - 1) > 0x10FFFE)
  {
    if (a2)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCACA8] stringWithCharacters:__s1 length:v9];
      *a2 = [v29 stringWithFormat:@"&%@", v30];
    }

LABEL_67:
    v7 = 0;
    goto LABEL_68;
  }

  if (a2)
  {
    v33 = 0;
    if (v7 < 0x10000)
    {
      v28 = 1;
      LOWORD(v27) = v7;
    }

    else
    {
      v27 = ((v7 + 67043328) >> 10) - 10240;
      HIWORD(v33) = v7 & 0x3FF | 0xDC00;
      v28 = 2;
    }

    LOWORD(v33) = v27;
    *a2 = [MEMORY[0x277CCACA8] stringWithCharacters:&v33 length:v28];
  }

LABEL_68:
  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ECLocalMessageActionID.stringValue.getter()
{
  v1 = *(v0 + OBJC_IVAR___ECLocalMessageActionID_stringValue);
  v2 = *(v0 + OBJC_IVAR___ECLocalMessageActionID_stringValue + 8);

  return v1;
}

id ECLocalMessageActionID.init(databaseID:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ECLocalMessageActionID_databaseID] = a1;
  v2 = EFStringWithInt64();
  v3 = sub_22D0E820C();
  v5 = v4;

  v6 = &v1[OBJC_IVAR___ECLocalMessageActionID_stringValue];
  *v6 = v3;
  v6[1] = v5;
  v8.receiver = v1;
  v8.super_class = ECLocalMessageActionID;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ECLocalMessageActionID.description.getter()
{
  v1 = [v0 stringValue];
  v2 = sub_22D0E820C();

  return v2;
}

BOOL ECLocalMessageActionID.isEqual(_:)(uint64_t a1)
{
  sub_22D0CE32C(a1, v6);
  if (v7)
  {
    type metadata accessor for ECLocalMessageActionID();
    if (swift_dynamicCast())
    {
      v2 = [v5 databaseID];
      v3 = [v1 databaseID];

      return v2 == v3;
    }
  }

  else
  {
    sub_22D0CE3E4(v6);
  }

  return 0;
}

uint64_t sub_22D0CE32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F89D0, &unk_22D0EED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_22D0CE3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F89D0, &unk_22D0EED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ECLocalMessageActionID()
{
  result = qword_27D9F8A70;
  if (!qword_27D9F8A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9F8A70);
  }

  return result;
}

uint64_t ECLocalMessageActionID.hash.getter()
{
  [v0 databaseID];

  return sub_22D0E822C();
}

id ECLocalMessageActionID.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ECLocalMessageActionID();
  *a1 = v3;

  return v3;
}

id ECLocalMessageActionID.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _sSo22ECLocalMessageActionIDC9EmailCoreE08databaseD0ABs5Int64V_tcfC_0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDatabaseID_];
}

id sub_22D0CE6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabaseID_];
  *a2 = result;
  return result;
}

uint64_t anonymous_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &anonymous_server_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "ANONYMOUS version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t anonymous_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &anonymous_client_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "ANONYMOUS version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t anonymous_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    result = 0;
    *a5 = 0;
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 76);
    return 4294967289;
  }

  return result;
}

uint64_t anonymous_server_mech_step(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  if (a2 && a5 && a6 && a7)
  {
    *a5 = 0;
    *a6 = 0;
    if (a3)
    {
      if (a4 >= 0xFF)
      {
        v10 = 255;
      }

      else
      {
        v10 = a4;
      }

      v11 = (*(*(a2 + 80) + 40))((v10 + 1));
      if (v11)
      {
        v12 = v11;
        strncpy(v11, a3, v10)[v10] = 0;
        (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 4, "ANONYMOUS login: %s", v12);
        if (v12 != a3)
        {
          (*(*(a2 + 80) + 64))(v12);
        }

        result = (*(a2 + 144))(*(*(a2 + 80) + 8), "anonymous", 0, 3, a7);
        if (!result)
        {
          *a7 = 1;
          *(a7 + 136) = 0;
          *(a7 + 32) = 0u;
          *(a7 + 48) = 0u;
          *(a7 + 64) = 0;
        }
      }

      else
      {
        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 118);
        return 4294967294;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 101);
    }

    return 4294967289;
  }

  return result;
}

uint64_t anonymous_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 24);
  if (a3)
  {
    v6 = (*(v3 + 40))(16);
    if (v6)
    {
      v7 = v6;
      result = 0;
      *v7 = 0;
      v7[1] = 0;
      *a3 = v7;
    }

    else
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 213);
      return 4294967294;
    }
  }

  else
  {
    (*(v3 + 264))(*(v3 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 206);
    return 4294967289;
  }

  return result;
}

uint64_t anonymous_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5, void *a6, unsigned int *a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  __src = 0;
  if (a2 && a6 && a7 && a8)
  {
    *a6 = 0;
    *a7 = 0;
    if (a4)
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Nonzero serverinlen in ANONYMOUS continue_step");
      simple = 4294967291;
    }

    else
    {
      v16 = *(a2 + 24);
      if (*(a2 + 80) <= *(a2 + 112))
      {
        simple = _plug_get_simple(v16, 16385, 0, &__src, a5);
        if ((simple & 0xFFFFFFFD) == 0)
        {
          if (a5 && *a5)
          {
            (*(*(a2 + 24) + 64))();
            *a5 = 0;
          }

          if (simple == 2)
          {
            prompts = _plug_make_prompts(*(a2 + 24), a5, "Please enter anonymous identification", "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            if (prompts)
            {
              simple = prompts;
            }

            else
            {
              simple = 2;
            }
          }

          else
          {
            v19 = __src;
            if (!__src || !*__src)
            {
              v19 = "anonymous";
              __src = "anonymous";
            }

            v20 = strlen(v19);
            v21 = (*(a2 + 152))(*(*(a2 + 24) + 8), "anonymous", 0, 3, a8);
            if (v21)
            {
              simple = v21;
            }

            else
            {
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              *__s = 0u;
              v26 = 0u;
              gethostname(__s, 0x100uLL);
              HIBYTE(v40) = 0;
              v22 = strlen(__s) + v20 + 1;
              *a7 = v22;
              simple = _plug_buf_alloc(*(a2 + 24), a1, (a1 + 8), v22);
              if (!simple)
              {
                strcpy(*a1, __src);
                *(*a1 + v20) = 64;
                v23 = strlen(__s);
                memcpy((*a1 + v20 + 1), __s, v23);
                *a6 = *a1;
                *a8 = 1;
                *(a8 + 136) = 0;
                *(a8 + 32) = 0u;
                *(a8 + 48) = 0u;
                *(a8 + 64) = 0;
              }
            }
          }
        }
      }

      else
      {
        (*(v16 + 264))(*(v16 + 8), 0, "SSF requested of ANONYMOUS plugin");
        simple = 4294967281;
      }
    }
  }

  else
  {
    if (a2)
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/anonymous.c near line %d", 245);
    }

    simple = 4294967289;
  }

  v13 = *MEMORY[0x277D85DE8];
  return simple;
}

void *anonymous_client_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t apop_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a4 = &apop_server_plugins;
    *a5 = 1;
    *a3 = 4;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "APOP version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t apop_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a4 = &apop_client_plugins;
    *a5 = 1;
    *a3 = 4;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "APOP version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t apop_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = (*(*(a2 + 80) + 40))(56);
  if (v7)
  {
    v8 = v7;
    result = 0;
    *(v8 + 48) = 0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
    *v8 = 1;
    *a5 = v8;
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 103);
    return 4294967294;
  }

  return result;
}

uint64_t apop_server_mech_step(_DWORD *a1, uint64_t a2, const char *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  *(a7 + 32) = 0;
  *(a7 + 48) = 0;
  *(a7 + 64) = 0;
  *(a7 + 136) = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  if (a4 >= 0x401)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "APOP input longer than 1024 bytes");
    return 4294967291;
  }

  if (*a1 == 1)
  {
    if (!a4)
    {
LABEL_8:
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Can only find author (no password)");
      return 4294967291;
    }

    v13 = 0;
    while (a3[v13])
    {
      if (a4 == ++v13)
      {
        goto LABEL_8;
      }
    }

    if (v13 + 1 >= a4)
    {
LABEL_14:
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Can only find author/en (no challenge)");
      return 4294967291;
    }

    v15 = &a3[v13 + 1];
    while (a3[v13 + 1])
    {
      if (a4 - 1 == ++v13)
      {
        goto LABEL_14;
      }
    }

    v16 = v13 + 2;
    if (v13 + 2 >= a4)
    {
LABEL_19:
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Can only find author/en/challenge (no digest)");
      return 4294967291;
    }

    v17 = &a3[v16];
    v18 = v13 + 3;
    v19 = v16;
    while (a3[v19])
    {
      ++v19;
      ++v18;
      if (v19 >= a4)
      {
        goto LABEL_19;
      }
    }

    LODWORD(v21) = v18;
    if (v18 < a4)
    {
      v21 = v18;
      while (a3[v21])
      {
        if (++v21 >= a4)
        {
          goto LABEL_28;
        }
      }
    }

    if (v21 != a4)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Got more data than we were expecting in the APOP plugin\n");
      return 4294967291;
    }

LABEL_28:
    __s = v17;
    v22 = a4 - v18;
    v31 = v15;
    if (*a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = v15;
    }

    v24 = (*(*(a2 + 80) + 40))(v22 + 1);
    __source = v23;
    v35 = v24;
    v32 = v22 + strlen(v23);
    v25 = (*(*(a2 + 80) + 40))(v32 + 2);
    if (v24)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 251);
      return 4294967294;
    }

    else
    {
      v27 = v25;
      strlcpy(v24, &a3[v18], v22 + 1);
      strlcpy(v27, __source, v32 + 2);
      strlcat(v27, " ", v32 + 2);
      strlcat(v27, v24, v32 + 2);
      v28 = strlen(__s);
      v29 = strlen(v27);
      v14 = sasl_checkapop(*(*(a2 + 80) + 8), __s, v28, v27, v29);
      (*(*(a2 + 80) + 64))(v27);
      if (!v14 && ((v30 = (*(a2 + 144))(*(*(a2 + 80) + 8), v31, 0, 1, a7), v30) || (v30 = (*(a2 + 144))(*(*(a2 + 80) + 8), __source, 0, 2, a7), v30)))
      {
        return v30;
      }

      else
      {
        _plug_free_string(*(a2 + 80), &v35);
        *a5 = 0;
        *a6 = 0;
        ++*a1;
        *a7 = 1;
      }
    }
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Unexpected State Reached in APOP plugin");
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t apop_both_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 48) && *(result + 8))
    {
      _plug_free_secret(a2, (result + 8));
    }

    if (*(v3 + 16))
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t apop_both_mech_free(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(a2 + 64))();
  }

  return result;
}

uint64_t apop_client_mech_new(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*(a2 + 24) + 40))(56);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *(v6 + 48) = 0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    *v6 = 1;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 362);
    return 4294967294;
  }

  return result;
}

uint64_t apop_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void ***a5, void *a6, _DWORD *a7, uint64_t a8)
{
  *a6 = 0;
  *a7 = 0;
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 80) > *(a2 + 112))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "The APOP plugin cannot support any SSF");
    return 4294967281;
  }

  if (a3 || a4)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "The APOP plugin received initial data.");
    return 4294967291;
  }

  if (*(a8 + 16))
  {
    v49 = 0;
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    v18 = *a5;
    if (*a5)
    {
      v19 = *v18;
      if (*v18)
      {
        v20 = v18 + 6;
        while (v19 != 16386)
        {
          v21 = *v20;
          v20 += 6;
          v19 = v21;
          if (!v21)
          {
            goto LABEL_19;
          }
        }

        v49 = *(v20 - 2);
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v22 = (*(*(a2 + 24) + 248))(*(*(a2 + 24) + 8), 16386, &v52, &v51);
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v52 == 0;
  }

  if (!v23)
  {
    v50 = 0;
    v22 = v52(v51, 16386, &v50, 0);
    if (!v22)
    {
      v49 = v50;
      if (!v50)
      {
        (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 476);
        return 4294967289;
      }

      goto LABEL_8;
    }
  }

  v15 = v22;
  if ((v22 & 0xFFFFFFFD) != 0)
  {
    return v22;
  }

  v49 = 0;
LABEL_9:
  if (*(a8 + 8))
  {
    v16 = 0;
LABEL_11:
    v17 = 0;
    goto LABEL_41;
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    v24 = *a5;
    if (*a5)
    {
      v25 = *v24;
      if (*v24)
      {
        v26 = v24 + 6;
        while (v25 != 16385)
        {
          v27 = *v26;
          v26 += 6;
          v25 = v27;
          if (!v27)
          {
            goto LABEL_32;
          }
        }

        v16 = *(v26 - 2);
        goto LABEL_11;
      }
    }
  }

LABEL_32:
  v28 = v15;
  v29 = (*(*(a2 + 24) + 248))(*(*(a2 + 24) + 8), 16385, &v52, &v51);
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = v52 == 0;
  }

  if (!v30)
  {
    v50 = 0;
    v29 = v52(v51, 16385, &v50, 0);
    if (!v29)
    {
      v16 = v50;
      v15 = v28;
      if (v50)
      {
        goto LABEL_11;
      }

      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 431);
      v15 = v28;
      v17 = -7;
      goto LABEL_38;
    }
  }

  v17 = v29;
  v15 = v28;
  if ((v29 & 0xFFFFFFFD) != 0)
  {
LABEL_38:
    v16 = v49;
    goto LABEL_41;
  }

  v16 = 0;
LABEL_41:
  v31 = (a1 + 8);
  if (*(a1 + 8))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v38 = v16;
    v39 = v15;
    password = _plug_get_password(*(a2 + 24), (a1 + 8), (a1 + 48), a5);
    v16 = v38;
    v15 = v39;
    v9 = password;
    if ((password & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (a5 && *a5)
  {
    v48 = v17;
    v32 = v15;
    v33 = v16;
    (*(*(a2 + 24) + 64))();
    v16 = v33;
    v15 = v32;
    v17 = v48;
    *a5 = 0;
  }

  if (v15 != 2 && v17 != 2 && v9 != 2)
  {
    v34 = (*(a2 + 152))(*(*(a2 + 24) + 8), v16, 0, 2, a8);
    if (v34)
    {
      return v34;
    }

    v34 = (*(a2 + 152))(*(*(a2 + 24) + 8), v49, 0, 1, a8);
    if (v34)
    {
      return v34;
    }

    v43 = *v31;
    if (!*v31 || !*v43 || *(v43 + 8) != 60)
    {
      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 658);
      return 4294967289;
    }

    v44 = (*(*(a2 + 24) + 40))(*v43 + 1);
    if (v44)
    {
      v45 = v44;
      memcpy(v44, *v31 + 1, **v31);
      v45[**v31] = 0;
      v46 = strstr(v45, "> ");
      if (v46)
      {
        v46[1] = 0;
        v47 = *(a8 + 24) + *(a8 + 28) + **(a1 + 8);
        *a7 = v47 + 2;
        v9 = _plug_buf_alloc(*(a2 + 24), (a1 + 16), (a1 + 24), v47 + 3);
        if (!v9)
        {
          bzero(*(a1 + 16), (*a7 + 1));
          memcpy(*(a1 + 16), *(a8 + 8), *(a8 + 24));
          memcpy((*(a1 + 16) + *(a8 + 24) + 1), *(a8 + 16), *(a8 + 28));
          memcpy((*(a1 + 16) + *(a8 + 24) + *(a8 + 28) + 2), v45, **(a1 + 8) + 1);
          bzero(v45, **(a1 + 8));
          (*(*(a2 + 24) + 64))(v45);
          *a6 = *(a1 + 16);
          *(a8 + 32) = 0;
          *(a8 + 48) = 0;
          *(a8 + 64) = 0;
          *(a8 + 136) = 0;
          *a1 = 2;
        }

        return v9;
      }

      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 678);
      (*(*(a2 + 24) + 64))(v45);
      return 4294967289;
    }

    return 4294967294;
  }

  if (v17 == 2)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  if (v15 == 2)
  {
    ++v35;
  }

  if (v9 == 2)
  {
    ++v35;
  }

  v36 = *(a2 + 24);
  if (v35 == 1)
  {
    (*(v36 + 264))(*(v36 + 8), 0, "make_prompts called with no actual prompts");
    return 0xFFFFFFFFLL;
  }

  v41 = v15;
  v42 = (*(v36 + 40))((48 * v35 + 48), v16);
  if (!v42)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/apop.c near line %d", 510);
    return 4294967294;
  }

  *a5 = v42;
  if (v17 == 2)
  {
    *v42 = 16385;
    v42[1] = "Authorization Name";
    v42[2] = "Please enter your authorization name";
    v42[3] = 0;
    v42 += 6;
  }

  if (v41 == 2)
  {
    *v42 = 16386;
    v42[1] = "Authentication Name";
    v42[2] = "Please enter your authentication name";
    v42[3] = 0;
    v42 += 6;
  }

  if (v9 == 2)
  {
    *v42 = 16388;
    v42[1] = "Password";
    v42[2] = "Please enter your password";
    v42[3] = 0;
    v42 += 6;
  }

  *v42 = 0u;
  *(v42 + 1) = 0u;
  return 2;
}

uint64_t atoken_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a4 = &atoken_client_plugins;
    *a5 = 1;
    *a3 = 4;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "ATOKEN version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t atoken_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(64);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/atoken.c near line %d", 74);
    return 4294967294;
  }

  return result;
}

uint64_t atoken_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, unsigned int *a7, uint64_t a8)
{
  *a6 = 0;
  *a7 = 0;
  if (*(a2 + 80) > *(a2 + 112))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of ATOKEN plugin");
    return 4294967281;
  }

  v15 = (a1 + 24);
  if (*(a1 + 24))
  {
    v16 = 0;
  }

  else
  {
    simple = _plug_get_simple(*(a2 + 24), 18944, 1, v15, a5);
    v16 = simple;
    v9 = simple;
    if ((simple & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (*(a1 + 16))
  {
    v17 = 0;
  }

  else
  {
    v40 = _plug_get_simple(*(a2 + 24), 18945, 1, (a1 + 16), a5);
    v17 = v40;
    v9 = v40;
    if ((v40 & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (*(a1 + 32))
  {
    v18 = 0;
  }

  else
  {
    v41 = _plug_get_simple(*(a2 + 24), 18946, 1, (a1 + 32), a5);
    v18 = v41;
    v9 = v41;
    if ((v41 & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (*(a1 + 40))
  {
    v48 = 0;
  }

  else
  {
    v9 = _plug_get_simple(*(a2 + 24), 18949, 1, (a1 + 40), a5);
    v48 = v9;
    if ((v9 & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (*(a1 + 48))
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = _plug_get_simple(*(a2 + 24), 18950, 1, (a1 + 48), a5);
    v9 = v19;
    if ((v19 & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (*(a1 + 56))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v45 = v19;
    v46 = _plug_get_simple(*(a2 + 24), 18951, 1, (a1 + 56), a5);
    LODWORD(v19) = v45;
    v9 = v46;
    if ((v46 & 0xFFFFFFFD) != 0)
    {
      return v9;
    }
  }

  if (a5 && *a5)
  {
    v47 = v19;
    (*(*(a2 + 24) + 64))();
    LODWORD(v19) = v47;
    *a5 = 0;
  }

  if (v18 == 2 || v17 == 2 || v16 == 2 || v48 == 2 || v19 == 2 || v9 == 2)
  {
    if (v17 == 2)
    {
      v42 = "Please enter your authorization name";
    }

    else
    {
      v42 = 0;
    }

    if (v16 == 2)
    {
      v43 = "Please enter your authentication name";
    }

    else
    {
      v43 = 0;
    }

    if (v18 == 2)
    {
      v44 = "Please enter your authentication token";
    }

    else
    {
      v44 = 0;
    }

    prompts = _plug_make_prompts(*(a2 + 24), a5, v42, 0, v43, 0, v44, 0, 0, 0, 0, 0, 0, 0);
    if (!prompts)
    {
      return 2;
    }

    return prompts;
  }

  v20 = strlen(*(a1 + 24));
  v21 = strlen(*(a1 + 16));
  v22 = strlen(*(a1 + 32));
  v23 = strlen(*(a1 + 40));
  v24 = strlen(*(a1 + 48));
  v25 = v20 + v21 + v22 + v23 + v24 + strlen(*(a1 + 56)) + 5;
  *a7 = v25;
  prompts = _plug_buf_alloc(*(a2 + 24), a1, (a1 + 8), v25);
  if (prompts)
  {
    return prompts;
  }

  bzero(*a1, *a7);
  v27 = *a1;
  v28 = strlen(*(a1 + 24));
  memcpy(*a1, *(a1 + 24), v28);
  v29 = (v27 + strlen(*(a1 + 24)) + 1);
  v30 = strlen(*(a1 + 16));
  memcpy(v29, *(a1 + 16), v30);
  v31 = &v29[strlen(*(a1 + 16)) + 1];
  v32 = strlen(*(a1 + 32));
  memcpy(v31, *(a1 + 32), v32);
  v33 = &v31[strlen(*(a1 + 32)) + 1];
  v34 = strlen(*(a1 + 40));
  memcpy(v33, *(a1 + 40), v34);
  v35 = &v33[strlen(*(a1 + 40)) + 1];
  v36 = strlen(*(a1 + 48));
  memcpy(v35, *(a1 + 48), v36);
  v37 = &v35[strlen(*(a1 + 48))];
  v38 = strlen(*(a1 + 56));
  memcpy(v37 + 1, *(a1 + 56), v38);
  *a6 = *a1;
  prompts = (*(a2 + 152))(*(*(a2 + 24) + 8), *(a1 + 16), 0, 1, a8);
  if (prompts)
  {
    return prompts;
  }

  v9 = (*(a2 + 152))(*(*(a2 + 24) + 8), *v15, 0, 2, a8);
  if (!v9)
  {
    *a8 = 1;
    *(a8 + 136) = 0;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *(a8 + 64) = 0;
  }

  return v9;
}

void *atoken_client_mech_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t atoken2_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a4 = &atoken2_client_plugins;
    *a5 = 1;
    *a3 = 4;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "ATOKEN2 version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t atoken2_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(24);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/saslplugins/atoken2.m near line %d", 31);
    return 4294967294;
  }

  return result;
}

uint64_t atoken2_client_mech_step(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, unsigned int *a7, uint64_t a8)
{
  *a6 = 0;
  *a7 = 0;
  if (*(a2 + 80) <= *(a2 + 112))
  {
    v16 = a1 + 2;
    if (a1[2])
    {
      LODWORD(simple) = 0;
    }

    else
    {
      simple = _plug_get_simple(*(a2 + 24), 18952, 1, v16, a5);
      if ((simple & 0xFFFFFFFD) != 0)
      {
        return simple;
      }
    }

    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (simple == 2)
    {
      simple = _plug_make_prompts(*(a2 + 24), a5, 0, 0, 0, 0, "Please enter your authentication token", 0, 0, 0, 0, 0, 0, 0);
      if (!simple)
      {
        return 2;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*v16 length:strlen(*v16) freeWhenDone:0];
      v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v18 options:0];
      v20 = [v19 length];
      *a7 = v20;
      simple = _plug_buf_alloc(*(a2 + 24), a1, a1 + 2, v20);
      if (simple)
      {

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        [v19 getBytes:*a1 length:*a7];

        objc_autoreleasePoolPop(v17);
        simple = 0;
        v21 = a1[2];
        *(a8 + 8) = v21;
        *(a8 + 16) = v21;
        *a6 = *a1;
        *a8 = 1;
        *(a8 + 136) = 0;
        *(a8 + 32) = 0u;
        *(a8 + 48) = 0u;
        *(a8 + 64) = 0;
      }
    }
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of ATOKEN2 plugin");
    return 4294967281;
  }

  return simple;
}

void *atoken2_client_mech_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

propctx *__cdecl prop_new(unsigned int estimate)
{
  v2 = _sasl_allocation_utils(56);
  if (v2)
  {
    if (estimate)
    {
      v3 = estimate + 96;
    }

    else
    {
      v3 = 1116;
    }

    v4 = alloc_proppool(v3);
    *(v2 + 5) = v4;
    if (v4)
    {
      *(v2 + 6) = v4;
      v5 = v4[1];
      v4[2] = v5 - 96;
      *(v2 + 2) = 0x400000000;
      *(v2 + 3) = v4 + v5 + 24;
      *(v2 + 4) = v4 + 15;
      *v2 = v4 + 3;
      *(v2 + 1) = 0;
    }

    else
    {
      off_280B0E738(v2);
      return 0;
    }
  }

  return v2;
}

void prop_dispose(propctx **ctx)
{
  if (ctx)
  {
    v2 = *ctx;
    if (v2)
    {
      v4 = (v2 + 40);
      v3 = *(v2 + 5);
      if (v3)
      {
        do
        {
          *v4 = *v3;
          off_280B0E738(v3);
          v2 = *ctx;
          v4 = (*ctx + 40);
          v3 = *v4;
        }

        while (*v4);
      }

      off_280B0E738(v2);
      *ctx = 0;
    }
  }
}

int prop_dup(propctx *src_ctx, propctx **dst_ctx)
{
  v2 = -7;
  if (src_ctx && dst_ctx)
  {
    v5 = *(src_ctx + 5);
    if (v5)
    {
      v6 = 0;
      do
      {
        v6 += *(v5 + 2);
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = prop_new(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(src_ctx + 4);
      *(v7 + 4) = v9;
      *(v7 + 5) = v9 + 1;
      v10 = *(v7 + 5);
      *(v10 + 16) = *(v10 + 8) - 24 * (v9 + 1);
      *(v7 + 4) = v10 + 24 * (v9 + 1) + 24;
      if (v9)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = *src_ctx + v11;
          v14 = *v13;
          v15 = *(v13 + 8);
          *(*v8 + v11) = *v13;
          v16 = prop_setvals(v8, v14, v15);
          if (v16)
          {
            break;
          }

          ++v12;
          v11 += 24;
          if (v12 >= *(src_ctx + 4))
          {
            goto LABEL_13;
          }
        }

        v2 = v16;
        for (i = *(v8 + 5); i; i = *(v8 + 5))
        {
          *(v8 + 5) = *i;
          off_280B0E738(i);
        }

        off_280B0E738(v8);
      }

      else
      {
LABEL_13:
        v2 = 0;
        *(v8 + 1) = *(src_ctx + 1);
        *dst_ctx = v8;
      }
    }

    else
    {
      return -2;
    }
  }

  return v2;
}

int prop_setvals(propctx *ctx, const char *name, const char **values)
{
  if (!ctx)
  {
    return -7;
  }

  v3 = values;
  if (!values)
  {
    return 0;
  }

  if (name)
  {
    v3 = values + 1;
    result = prop_set(ctx, name, *values, 0);
  }

  else
  {
    result = 0;
  }

  v6 = *v3;
  if (*v3 && !result)
  {
    v7 = v3 + 1;
    do
    {
      result = prop_set(ctx, 0, v6, 0);
      v8 = *v7++;
      v6 = v8;
      if (v8)
      {
        v9 = result == 0;
      }

      else
      {
        v9 = 0;
      }
    }

    while (v9);
  }

  return result;
}

int prop_request(propctx *ctx, const char **names)
{
  result = -7;
  if (ctx && names)
  {
    v5 = 0;
    do
    {
      v6 = v5;
    }

    while (names[v5++]);
    if (v5 == 1)
    {
      return 0;
    }

    v8 = *(ctx + 4);
    v9 = *(ctx + 5);
    v10 = v8 + v5;
    if (v10 <= v9)
    {
LABEL_16:
      v18 = 0;
      v19 = v6;
      do
      {
        if (v8)
        {
          v20 = 0;
          v21 = *ctx;
          v22 = names[v18];
          v23 = v8;
          while (strcmp(*(v21 + v20), v22))
          {
            v20 += 24;
            if (24 * v8 == v20)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v23 = 0;
          v22 = names[v18];
          v21 = *ctx;
LABEL_23:
          *(ctx + 4) = ++v8;
          *(v21 + 24 * v23) = v22;
        }

        ++v18;
      }

      while (v18 != v19);
      prop_clear(ctx, 0);
      return 0;
    }

    v11 = *(ctx + 5);
    v12 = *(v11 + 8);
    if (v10 > (v12 / 0x18))
    {
      do
      {
        v13 = v10 > 2 * v9;
        v9 *= 2;
      }

      while (v13);
      v14 = 24 * v9;
      v15 = v12 - v14;
      if (v12 >= v14)
      {
        if (v11)
        {
          v17 = v11 + 24;
          *ctx = v11 + 24;
          *(ctx + 5) = v9;
          *(v11 + 16) = v15;
          goto LABEL_15;
        }
      }

      else
      {
        v16 = off_280B0E730();
        if (v16)
        {
          *(ctx + 5) = v16;
          v17 = v16 + 24;
          *ctx = v16 + 24;
          *(ctx + 5) = v9;
          *(v16 + 8) = v14;
          *(v16 + 16) = 0;
          v8 = *(ctx + 4);
LABEL_15:
          bzero((v17 + 24 * v8), 24 * (v9 - v8));
          *(ctx + 4) = *ctx + 24 * v10;
          v8 = *(ctx + 4);
          goto LABEL_16;
        }

        *(ctx + 5) = 0;
      }

      *ctx = 0;
      result = -2;
      *(ctx + 2) = 0;
      return result;
    }

    *(ctx + 5) = v10;
    *(v11 + 16) = v12 - 24 * v10;
    v17 = *ctx;
    v9 = v10;
    goto LABEL_15;
  }

  return result;
}

void prop_clear(propctx *ctx, int requests)
{
  v4 = alloc_proppool(*(*(ctx + 5) + 8) + 24 * (*(ctx + 4) + 1));
  if (!v4)
  {
    _sasl_log(0, 1, "failed to allocate memory\n", v5, v6, v7, v8, v9, v19);
    exit(1);
  }

  v10 = v4;
  if (requests)
  {
    v11 = 0;
    *(ctx + 4) = 0;
  }

  else
  {
    v11 = *(ctx + 4);
    if (v11)
    {
      v12 = v4 + 3;
      v13 = *ctx;
      v14 = *(ctx + 4);
      do
      {
        v15 = *v13;
        v13 += 3;
        *v12 = v15;
        v12 += 3;
        --v14;
      }

      while (v14);
    }
  }

  v16 = *(ctx + 5);
  if (v16)
  {
    do
    {
      *(ctx + 5) = *v16;
      off_280B0E738(v16);
      v16 = *(ctx + 5);
    }

    while (v16);
    v11 = *(ctx + 4);
  }

  v17 = (v11 + 1);
  *(ctx + 5) = v17;
  v18 = v10[1];
  v10[2] = v18 - 24 * v17;
  *ctx = v10 + 3;
  *(ctx + 1) = 0;
  *(ctx + 5) = v10;
  *(ctx + 6) = v10;
  *(ctx + 3) = v10 + v18 + 24;
  *(ctx + 4) = &v10[3 * v17 + 3];
}

const propval *__cdecl prop_get(const propval *ctx)
{
  if (ctx)
  {
    return ctx->name;
  }

  return ctx;
}

int prop_getnames(propctx *ctx, const char **names, propval *vals)
{
  v3 = -7;
  if (ctx)
  {
    v4 = names;
    if (names)
    {
      v5 = vals;
      if (vals)
      {
        v6 = *names;
        if (*names)
        {
          v3 = 0;
          do
          {
            v8 = *ctx;
            v9 = **ctx;
            if (v9)
            {
              while (strcmp(v6, v9))
              {
                v10 = v8[3];
                v8 += 3;
                v9 = v10;
                if (!v10)
                {
                  goto LABEL_9;
                }
              }

              ++v3;
              v11 = *v8;
              *&v5->nvalues = v8[2];
              *&v5->name = v11;
            }

            else
            {
LABEL_9:
              v5->name = 0;
              v5->values = 0;
              *&v5->nvalues = 0;
            }

            ++v5;
            v12 = v4[1];
            ++v4;
            v6 = v12;
          }

          while (v12);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

void *alloc_proppool(uint64_t a1)
{
  v2 = _sasl_allocation_utils(a1 + 31);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1 + 31);
    v3[1] = a1;
    v3[2] = a1;
  }

  return v3;
}

void prop_erase(propctx *ctx, const char *name)
{
  if (ctx)
  {
    if (name)
    {
      v3 = **ctx;
      if (v3)
      {
        v4 = (*ctx + 24);
        while (strcmp(name, v3))
        {
          v5 = *v4;
          v4 += 3;
          v3 = v5;
          if (!v5)
          {
            return;
          }
        }

        v8 = *(v4 - 2);
        v7 = v4 - 2;
        v6 = v8;
        if (v8)
        {
          v9 = *v6;
          if (*v6)
          {
            v10 = 0;
            do
            {
              v11 = strlen(v9);
              bzero(v9, v11);
              *&(*v7)[v10] = 0;
              v9 = *&(*v7)[v10 + 8];
              v10 += 8;
            }

            while (v9);
          }

          *v7 = 0;
          v7[1] = 0;
        }
      }
    }
  }
}

int prop_format(propctx *ctx, const char *sep, int seplen, char *outbuf, unsigned int outmax, unsigned int *outlen)
{
  result = -7;
  if (ctx && outbuf)
  {
    if (sep)
    {
      v12 = seplen;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & 0x80000000) != 0 && (v12 = strlen(sep), (v12 & 0x80000000) != 0))
    {
      return -7;
    }

    else
    {
      v13 = (*(ctx + 4) - 1) * v12;
      v14 = **ctx;
      if (v14)
      {
        v15 = (*ctx + 24);
        do
        {
          v13 += strlen(v14);
          v16 = *v15;
          v15 += 3;
          v14 = v16;
        }

        while (v16);
      }

      if (outmax)
      {
        result = v13 - (outmax - 1);
        if (v13 <= outmax - 1)
        {
          *outbuf = 0;
          if (outlen)
          {
            *outlen = v13;
          }

          if (v13)
          {
            v17 = *ctx;
            v18 = *v17;
            if (*v17)
            {
              v19 = 0;
              do
              {
                if (v12)
                {
                  if (v19)
                  {
                    strncat(outbuf, sep, v12);
                    v18 = *v17;
                  }
                }

                strcat(outbuf, v18);
                v20 = v17[3];
                v17 += 3;
                v18 = v20;
                v19 = 1;
              }

              while (v20);
            }
          }

          return 0;
        }
      }

      else
      {
        return v13 + 1;
      }
    }
  }

  return result;
}

int prop_set(propctx *ctx, const char *name, const char *value, int vallen)
{
  if (!ctx)
  {
    return -7;
  }

  v6 = name;
  if (!name)
  {
    v8 = *(ctx + 1);
    if (v8)
    {
      v12 = value == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    while (1)
    {
      if (v13)
      {
        if (v8)
        {
          return 0;
        }

        else
        {
          return -7;
        }
      }

      v14 = *(ctx + 6);
      v15 = *(v14 + 16);
      if (v15 > 7)
      {
        break;
      }

      v16 = v8[1];
      if (v16 <= v14 + 24 || v16 >= v14 + 24 + *(v14 + 8))
      {
        break;
      }

      v6 = *v8;
      if (*v8)
      {
        goto LABEL_3;
      }
    }

    *(v14 + 16) = v15 - 8;
    v17 = *(ctx + 4);
    *(ctx + 4) = v17 + 1;
    *v17 = 0;
    v18 = *(ctx + 4);
    if (vallen <= 0)
    {
      v19 = strlen(value) + 1;
    }

    else
    {
      v19 = (vallen + 1);
    }

    v33 = *(ctx + 6);
    v34 = v33[2];
    if (v19 <= v34)
    {
      v36 = *(ctx + 3);
      goto LABEL_53;
    }

    v35 = v33[1];
    do
    {
      v35 *= 2;
    }

    while (v35 < v19);
    v33 = alloc_proppool(v35);
    **(ctx + 6) = v33;
    if (v33)
    {
      *(ctx + 6) = v33;
      *(ctx + 4) = v33 + 3;
      v36 = v33 + v35 + 24;
      v34 = v33[2];
LABEL_53:
      v37 = &v36[-v19];
      *(ctx + 3) = v37;
      v33[2] = v34 - v19;
      memcpy(v37, value, v19 - 1);
      *(*(ctx + 3) + v19 - 1) = 0;
      *(v18 - 16) = *(ctx + 3);
      goto LABEL_66;
    }

    return -2;
  }

LABEL_3:
  *(ctx + 1) = 0;
  v8 = *ctx;
  v9 = **ctx;
  if (!v9)
  {
    return -7;
  }

  while (strcmp(v6, v9))
  {
    v10 = v8[3];
    v8 += 3;
    v9 = v10;
    if (!v10)
    {
      return -7;
    }
  }

  *(ctx + 1) = v8;
  v20 = v8[1];
  if (!v20)
  {
    goto LABEL_28;
  }

  if (!value)
  {
    return 0;
  }

  if (*v20)
  {
    v21 = 1;
      ;
    }
  }

  else
  {
LABEL_28:
    LODWORD(v21) = 1;
  }

  if (value)
  {
    v23 = (v21 + 1);
  }

  else
  {
    v23 = v21;
  }

  v24 = 8 * v23;
  v25 = *(ctx + 6);
  v26 = v25[2];
  if (v24 <= v26)
  {
    v28 = *(ctx + 4);
  }

  else
  {
    v27 = v25[1];
    do
    {
      v27 *= 2;
    }

    while (v27 < v24);
    v25 = alloc_proppool(v27);
    **(ctx + 6) = v25;
    if (!v25)
    {
      return -2;
    }

    *(ctx + 6) = v25;
    v28 = v25 + 3;
    *(ctx + 3) = v25 + v27 + 24;
    v26 = v25[2];
  }

  v25[2] = v26 - v24;
  v8[1] = v28;
  v28[(v23 - 1)] = 0;
  v29 = v8[1];
  *(ctx + 4) = &v29[v23];
  if (!value)
  {
    return 0;
  }

  if (v20)
  {
    v30 = *v20;
    if (*v20)
    {
      v31 = v20 + 1;
      do
      {
        *v29++ = v30;
        v32 = *v31++;
        v30 = v32;
      }

      while (v32);
    }
  }

  if (vallen <= 0)
  {
    v19 = strlen(value) + 1;
  }

  else
  {
    v19 = (vallen + 1);
  }

  v38 = *(ctx + 6);
  v39 = v38[2];
  if (v19 > v39)
  {
    v40 = v38[1];
    do
    {
      v40 *= 2;
    }

    while (v40 < v19);
    v38 = alloc_proppool(v40);
    **(ctx + 6) = v38;
    if (v38)
    {
      *(ctx + 6) = v38;
      *(ctx + 4) = v38 + 3;
      v41 = v38 + v40 + 24;
      v39 = v38[2];
      goto LABEL_65;
    }

    return -2;
  }

  v41 = *(ctx + 3);
LABEL_65:
  v42 = &v41[-v19];
  *(ctx + 3) = v42;
  v38[2] = v39 - v19;
  memcpy(v42, value, v19 - 1);
  *(*(ctx + 3) + v19 - 1) = 0;
  *(*&v8[1] + 8 * (v23 - 2)) = *(ctx + 3);
LABEL_66:
  result = 0;
  v43.i32[0] = 1;
  v43.i32[1] = v19 - 1;
  v8[2] = vadd_s32(v43, v8[2]);
  return result;
}

int sasl_auxprop_add_plugin(const char *plugname, sasl_auxprop_init_t *auxpropfunc)
{
  v2 = sasl_auxprop_add_plugin_nolog(plugname, auxpropfunc);
  v3 = v2;
  if (v2)
  {
    v4 = sasl_errstring(v2, 0, 0);
    _sasl_log(0, 1, "auxpropfunc error %s\n", v5, v6, v7, v8, v9, v4);
  }

  return v3;
}

int sasl_auxprop_add_plugin_nolog(const char *plugname, sasl_auxprop_init_t *auxpropfunc)
{
  v15 = -1431655766;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v2 = (auxpropfunc)(sasl_global_utils, 8, &v15, &v14, plugname);
  if (v15 < 4 && v2 == 0)
  {
    v4 = -23;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    v5 = sasl_errstring(v4, 0, 0);
    _sasl_log(0, 1, "auxpropfunc error %s\n", v6, v7, v8, v9, v10, v5);
  }

  else if (*(v14 + 24))
  {
    v12 = _sasl_allocation_utils(24);
    if (v12)
    {
      v4 = 0;
      v13 = v14;
      *v12 = auxprop_head;
      *(v12 + 8) = v13;
      *(v12 + 16) = v15;
      auxprop_head = v12;
    }

    else
    {
      return -2;
    }
  }

  else
  {
    return -5;
  }

  return v4;
}

uint64_t _sasl_auxprop_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0;
  if (_sasl_getcallback(*(*(a1 + 80) + 8), 1, &v42, &v41))
  {
    goto LABEL_4;
  }

  if ((v42)(v41, 0, "auxprop_plugin", &v40, 0))
  {
    v40 = 0;
LABEL_4:
    v13 = auxprop_head;
    if (!auxprop_head)
    {
      v14 = 4294967292;
      goto LABEL_12;
    }

    v14 = 4294967292;
    do
    {
      v15 = *(v13 + 8);
      v16 = *(v15 + 24);
      v17 = *(v15 + 8);
      if (*(v13 + 16) == 4)
      {
        v16(v17, a1, a2, a3, a4);
        v18 = 0;
      }

      else
      {
        v18 = (v16)(v17, a1, a2, a3, a4);
      }

      v14 = _sasl_account_status(v14, v18);
      v13 = *v13;
    }

    while (v13);
    return v14;
  }

  if (!v40)
  {
    goto LABEL_4;
  }

  v39 = 0;
  if (_sasl_strdup(v40, &v39, 0))
  {
    return 4294967294;
  }

  v21 = 0;
  v14 = 4294967292;
  v22 = v39;
  v23 = MEMORY[0x277D85DE0];
  v24 = v39;
  do
  {
    v25 = *v24;
    if (!*v24)
    {
      break;
    }

    while ((v25 & 0x80) == 0)
    {
      if ((*(v23 + 4 * v25 + 60) & 0x4000) == 0)
      {
        goto LABEL_27;
      }

LABEL_25:
      v26 = *++v24;
      v25 = v26;
      if (!v26)
      {
        goto LABEL_47;
      }
    }

    if (__maskrune(v25, 0x4000uLL))
    {
      goto LABEL_25;
    }

LABEL_27:
    v27 = *v24;
    if (!*v24)
    {
      break;
    }

    v38 = v21;
    v28 = v24;
    v37 = v22;
    while (2)
    {
      if ((v27 & 0x80) == 0)
      {
        if ((*(v23 + 4 * v27 + 60) & 0x4000) != 0)
        {
          break;
        }

        goto LABEL_33;
      }

      if (!__maskrune(v27, 0x4000uLL))
      {
LABEL_33:
        v29 = *++v28;
        v27 = v29;
        if (!v29)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    if (*v28)
    {
      v36 = 0;
      *v28 = 0;
      goto LABEL_38;
    }

LABEL_37:
    v36 = 1;
LABEL_38:
    for (i = auxprop_head; i; i = *i)
    {
      v31 = *(i + 8);
      v32 = v31[4];
      if (v32 && !strcasecmp(v32, v24))
      {
        v33 = v31[3];
        v34 = v31[1];
        if (*(i + 16) == 4)
        {
          v33(v34, a1, a2, a3, a4);
          v35 = 0;
        }

        else
        {
          v35 = (v33)(v34, a1, a2, a3, a4);
        }

        v14 = _sasl_account_status(v14, v35);
        v38 = 1;
      }
    }

    v24 = v28 + 1;
    v22 = v37;
    v21 = v38;
  }

  while (!v36);
LABEL_47:
  off_280B0E738(v22);
  if (!v21)
  {
LABEL_12:
    v19 = v40;
    if (!v40)
    {
      v19 = "[all]";
    }

    _sasl_log(*(*(a1 + 80) + 8), 5, "could not find auxprop plugin, was searching for '%s'", v8, v9, v10, v11, v12, v19);
  }

  return v14;
}

uint64_t _sasl_account_status(uint64_t a1, uint64_t a2)
{
  if (a2 <= -20)
  {
    if (a2 != -26)
    {
      if (a2 == -20)
      {
        if (a1 == -4)
        {
          return 4294967276;
        }

        else
        {
          return a1;
        }
      }

      return a2;
    }

LABEL_10:
    if ((a1 & 0xFFFFFFEF) == 0xFFFFFFEC)
    {
      return 0;
    }

    else
    {
      return a1;
    }
  }

  switch(a2)
  {
    case 0xFFFFFFED:
      if (((1 << (a1 + 20)) & 0x110001) != 0)
      {
        v2 = -19;
      }

      else
      {
        v2 = a1;
      }

      if ((a1 + 20) <= 0x14)
      {
        return v2;
      }

      else
      {
        return a1;
      }

    case 0xFFFFFFFC:
      return a1;
    case 0:
      goto LABEL_10;
  }

  return a2;
}

int sasl_auxprop_store(sasl_conn_t *conn, propctx *ctx, const char *user)
{
  v39 = 0;
  if (ctx)
  {
    result = -7;
    if (!conn || !user)
    {
      return result;
    }

    v7 = *(conn + 572);
    v8 = strlen(user);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  if (!_sasl_getcallback(conn, 1, &v41, &v40) && (v41)(v40, 0, "auxprop_plugin", &v39, 0))
  {
    v39 = 0;
    goto LABEL_50;
  }

  if (!v39)
  {
LABEL_50:
    v31 = auxprop_head;
    if (!auxprop_head)
    {
      goto LABEL_65;
    }

    v16 = 0;
    v15 = 0;
    do
    {
      v32 = v31[1];
      v33 = *(v32 + 40);
      if (v33)
      {
        v34 = v33(*(v32 + 8), v7, ctx, user, v8);
        if (v34 == -30)
        {
          v14 = 0;
        }

        else
        {
          v14 = v34;
        }

        if (v34 == -30)
        {
          ++v15;
        }
      }

      else
      {
        v14 = 0;
      }

      ++v16;
      if (v14)
      {
        break;
      }

      v31 = *v31;
    }

    while (v31);
    goto LABEL_62;
  }

  v38 = 0;
  if (_sasl_strdup(v39, &v38, 0))
  {
    return -1;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v38;
  v18 = MEMORY[0x277D85DE0];
  v19 = v38;
  do
  {
    v20 = *v19;
    if (!*v19)
    {
      break;
    }

    while ((v20 & 0x80) == 0)
    {
      if ((*(v18 + 4 * v20 + 60) & 0x4000) == 0)
      {
        goto LABEL_17;
      }

LABEL_15:
      v21 = *++v19;
      v20 = v21;
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    if (__maskrune(v20, 0x4000uLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    v22 = *v19;
    if (!*v19)
    {
      break;
    }

    v23 = v19;
    v37 = v17;
    while (2)
    {
      if ((v22 & 0x80) == 0)
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x4000) != 0)
        {
          break;
        }

        goto LABEL_23;
      }

      if (!__maskrune(v22, 0x4000uLL))
      {
LABEL_23:
        v24 = *++v23;
        v22 = v24;
        if (!v24)
        {
          goto LABEL_27;
        }

        continue;
      }

      break;
    }

    if (*v23)
    {
      v36 = 0;
      *v23 = 0;
      goto LABEL_28;
    }

LABEL_27:
    v36 = 1;
LABEL_28:
    v25 = auxprop_head;
    if (auxprop_head && !v14)
    {
      do
      {
        v26 = v25[1];
        v27 = v26[4];
        if (v27 && !strcasecmp(v27, v19) && (++v16, (v29 = v26[5]) != 0))
        {
          v30 = v29(v26[1], v7, ctx, user, v8);
          if (v30 == -30)
          {
            v14 = 0;
          }

          else
          {
            v14 = v30;
          }

          if (v30 == -30)
          {
            ++v15;
          }
        }

        else
        {
          v14 = 0;
        }

        v25 = *v25;
        if (v25)
        {
          v28 = v14 == 0;
        }

        else
        {
          v28 = 0;
        }
      }

      while (v28);
    }

    v19 = v23 + 1;
    v17 = v37;
    v18 = MEMORY[0x277D85DE0];
  }

  while (!v36);
LABEL_46:
  off_280B0E738(v17);
  if (v16)
  {
LABEL_62:
    if (v16 == v15)
    {
      return -30;
    }

    else
    {
      return v14;
    }
  }

LABEL_65:
  v35 = v39;
  if (!v39)
  {
    v35 = "[all]";
  }

  _sasl_log(0, 1, "could not find auxprop plugin, was searching for %s", v9, v10, v11, v12, v13, v35);
  return -1;
}

uint64_t _sasl_canon_user(sasl_conn_t *conn, char *__s, size_t a3, uint64_t a4, uint64_t a5)
{
  __s1 = 0;
  if (!conn)
  {
    return 4294967289;
  }

  v5 = __s;
  result = 4294967289;
  if (__s && a5)
  {
    v10 = a3;
    if (a4)
    {
      v11 = 28;
      v12 = 3489;
    }

    else
    {
      if ((a4 & 2) == 0)
      {
        return result;
      }

      v11 = 24;
      v12 = 2464;
    }

    if (*conn == 1)
    {
      v14 = 0;
      v13 = conn;
    }

    else
    {
      if (*conn != 2)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = 0;
      v14 = conn;
    }

    v15 = conn + v12;
    v16 = (a5 + v11);
    if (!a3)
    {
      v10 = strlen(__s);
    }

    memset(v27, 170, sizeof(v27));
    if (_sasl_getcallback(conn, 32775, &v27[2], v27) || !v27[2])
    {
      v24 = v14;
    }

    else
    {
      if (v13)
      {
        v17 = *(v13 + 569);
      }

      else
      {
        v17 = 0;
      }

      result = (v27[2])(conn, v27[0], v5, v10, a4, v17, v15, 1024, v16);
      if (result)
      {
        return result;
      }

      v24 = v14;
      v10 = *v16;
      v5 = v15;
    }

    v25 = v16;
    if (_sasl_getcallback(conn, 1, &v27[1], v27) || !v27[1] || ((v27[1])(v27[0], 0, "canon_user_plugin", &__s1, 0), (v18 = __s1) == 0))
    {
      v18 = "INTERNAL";
      __s1 = "INTERNAL";
    }

    v19 = &canonuser_head;
    do
    {
      v19 = *v19;
      if (!v19)
      {
        sasl_seterror(conn, 0, "desired canon_user plugin %s not found", v18);
        return 4294967292;
      }

      v20 = v19[129];
      v21 = *(v20 + 16);
    }

    while ((!v21 || strcmp(v18, v21)) && strcmp(v18, v19 + 8));
    v22 = (v24 + 4552);
    if (v13)
    {
      v22 = (v13 + 4576);
    }

    v23 = 32;
    if (!v13)
    {
      v23 = 40;
    }

    result = (*(v20 + v23))(*(v20 + 8), *v22, v5, v10, a4, v15, 1024, v25);
    if (!result)
    {
      if ((~a4 & 3) != 0)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        memcpy(conn + 2464, conn + 3489, 0x400uLL);
        *(a5 + 24) = *(a5 + 28);
      }

      *(a5 + 16) = conn + 3489;
LABEL_44:
      result = 0;
      if ((a4 & 2) != 0)
      {
        *(a5 + 8) = conn + 2464;
      }
    }
  }

  return result;
}

uint64_t _sasl_canon_user_lookup(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  result = _sasl_canon_user(a1, a2, a3, a4, a5);
  if (result || (result = 4294967289, !a1) || !a5)
  {
LABEL_2:
    if (a1)
    {
      if ((result & 0x80000000) != 0)
      {
        *(a1 + 2400) = result;
      }
    }

    return result;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  if (v6)
  {
    v9 = _sasl_auxprop_lookup(*(a1 + 4576), v6 & 0xFFF0 | (v6 >> 3) & 1, *(a5 + 16), *(a5 + 28));
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 1;
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  v10 = _sasl_auxprop_lookup(*(a1 + 4576), v6 & 0xFFF0 | (v6 >> 3) & 1 | 2, *(a5 + 8), *(a5 + 24));
  if (v10 != -20 && v9 == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v9 == 1)
  {
    v9 = v10;
  }

  else
  {
    v9 = v12;
  }

LABEL_23:
  if ((v9 & 0xFFFFFFEF) == 0xFFFFFFEC)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  if ((v6 & 4) != 0)
  {
    result = v13;
  }

  else
  {
    result = v9;
  }

  if ((result & 0x80000000) != 0)
  {
    *(a1 + 2400) = result;
    goto LABEL_2;
  }

  return result;
}

int sasl_canonuser_add_plugin(const char *plugname, sasl_canonuser_init_t *canonuserfunc)
{
  if (plugname && strlen(plugname) < 0x400)
  {
    v16 = -1431655766;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v5 = (canonuserfunc)(sasl_global_utils, 5, &v16, &v15, plugname);
    if (v5)
    {
      v4 = v5;
      _sasl_log(0, 1, "%s_canonuser_plug_init() failed in sasl_canonuser_add_plugin(): %z\n", v6, v7, v8, v9, v10, plugname);
    }

    else if (*(v15 + 32) || *(v15 + 40))
    {
      v11 = _sasl_allocation_utils(1040);
      if (v11)
      {
        v12 = v11;
        v13 = v11 + 8;
        strncpy((v11 + 8), plugname, 0x3FFuLL);
        v4 = 0;
        *(v13 + strlen(plugname)) = 0;
        v12[129] = v15;
        *v12 = canonuser_head;
        canonuser_head = v12;
      }

      else
      {
        return -2;
      }
    }

    else
    {
      _sasl_log(0, 1, "canonuser plugin '%s' without either client or server side", v6, v7, v8, v9, v10, plugname);
      return -5;
    }
  }

  else
  {
    sasl_seterror(0, 0, "bad plugname passed to sasl_canonuser_add_plugin\n");
    return -7;
  }

  return v4;
}

uint64_t internal_canonuser_init(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  result = 4294967289;
  if (a3 && a4)
  {
    if (a2 >= 5)
    {
      result = 0;
      *a3 = 5;
      *a4 = &canonuser_internal_plugin;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t _canonuser_internal(uint64_t a1, void *a2, unsigned int a3, char *a4, unsigned int a5, unsigned int *a6)
{
  result = 4294967289;
  if (!a1 || !a2)
  {
    return result;
  }

  v12 = a3;
  v13 = _sasl_allocation_utils(a3 + 2);
  if (!v13)
  {
    return 4294967294;
  }

  v14 = v13;
  v37 = a6;
  __dst = a4;
  v15 = v12;
  memcpy(v13, a2, v12);
  v16 = 0;
  v14[v12] = 0;
  v17 = MEMORY[0x277D85DE0];
  do
  {
    v18 = v16;
    v19 = v12;
    v20 = v14[v16];
    if ((v20 & 0x80000000) != 0)
    {
      v21 = __maskrune(v20, 0x4000uLL);
    }

    else
    {
      v21 = *(v17 + 4 * v20 + 60) & 0x4000;
    }

    v16 = v18 + 1;
    --v12;
  }

  while (v18 < v15 && v21);
  v22 = v19;
  v23 = &v14[v16];
  v24 = -2;
  while (v22)
  {
    v25 = v23[v22 - 2];
    if ((v25 & 0x80000000) != 0)
    {
      v26 = __maskrune(v25, 0x4000uLL);
    }

    else
    {
      v26 = *(v17 + 4 * v25 + 60) & 0x4000;
    }

    ++v24;
    --v22;
    if (!v26)
    {
      v27 = v12 - v24;
      goto LABEL_19;
    }
  }

  v27 = 0;
LABEL_19:
  if (v18 == v27)
  {
    off_280B0E738(v14);
    (*(a1 + 264))(*(a1 + 8), 0, "All-whitespace username.");
    return 0xFFFFFFFFLL;
  }

  v28 = v27;
  v29 = *(a1 + 8);
  if (v29)
  {
    if (*v29 == 1)
    {
      v30 = *(v29 + 4552);
      if (v30 && !strchr(a2, 64))
      {
        v31 = strlen(v30) + 1;
      }

      else
      {
        v31 = 0;
      }

      v32 = 1;
      goto LABEL_31;
    }

    v32 = 0;
    v29 = 0;
  }

  else
  {
    v32 = 0;
  }

  v31 = 0;
LABEL_31:
  if (v28 >= a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = v28;
  }

  memcpy(__dst, &v14[v18], v33);
  if (v32 && v31)
  {
    if (v28 >= a5)
    {
      return 4294967293;
    }

    __dst[v28] = 64;
    v34 = ~v28 + a5;
    if (v31 - 1 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = (v31 - 1);
    }

    memcpy(&__dst[(v28 + 1)], *(v29 + 4552), v35);
  }

  v36 = v31 + v28;
  if (v31 + v28 >= a5)
  {
    v36 = a5;
  }

  __dst[v36] = 0;
  if (v31 + v28 > a5)
  {
    return 4294967293;
  }

  if (v37)
  {
    *v37 = v36;
  }

  off_280B0E738(v14);
  return 0;
}

uint64_t _sasl_auxprop_verify_apop(sasl_conn_t *conn, uint64_t a2, const char *a3, const char *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v23, 170, sizeof(v23));
  names[0] = "*userPassword";
  names[1] = 0;
  if (conn && a2 && a3 && a4)
  {
    v22 = -86;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v20 = v7;
    v21 = v7;
    vals[0] = v7;
    vals[1] = v7;
    vals[2] = v7;
    *v17.state = v7;
    *v17.count = v7;
    *&v17.buffer[8] = v7;
    *&v17.buffer[24] = v7;
    *&v17.buffer[40] = v7;
    *&v17.buffer[56] = 0xAAAAAAAAAAAAAAAALL;
    v8 = prop_getnames(*(*(conn + 572) + 152), names, vals);
    if ((v8 & 0x80000000) != 0)
    {
      v14 = v8;
      sasl_seterror(conn, 0, "could not perform password lookup");
      if (v14 != -13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!*&vals[0] || !*(&vals[0] + 1) || !**(&vals[0] + 1))
      {
        sasl_seterror(conn, 0, "could not find password");
        v14 = 4294967276;
        goto LABEL_18;
      }

      _sasl_MD5Init(&v17);
      v9 = strlen(a3);
      _sasl_MD5Update(&v17, a3, v9);
      v10 = strlen(**(&vals[0] + 1));
      _sasl_MD5Update(&v17, **(&vals[0] + 1), v10);
      v11 = v23;
      _sasl_MD5Final(v23, &v17);
      (*(*(*(conn + 572) + 80) + 360))(*(*(conn + 572) + 152), names[0]);
      for (i = 0; i != 32; i += 2)
      {
        v13 = *v11++;
        sprintf(&v20[i], "%02x", v13);
      }

      if (!strncasecmp(v20, a4, 0x20uLL))
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    sasl_seterror(conn, 1u, "login incorrect");
    v14 = 4294967283;
    goto LABEL_18;
  }

  v14 = 4294967289;
  if (conn)
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/checkpw.c near line %d", 351);
    *(conn + 600) = -7;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

int sasl_client_add_plugin(const char *plugname, sasl_client_plug_init_t *cplugfunc)
{
  v2 = -7;
  if (plugname && cplugfunc)
  {
    v21 = -1431655766;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v19 = -1431655766;
    v4 = (cplugfunc)(*cmechlist, 4, &v19, &v20, &v21);
    if (v4)
    {
      v2 = v4;
      _sasl_log(0, 3, "sasl_client_add_plugin(): entry_point(): failed for plugname %s: %z", v5, v6, v7, v8, v9, plugname);
    }

    else if (v19 == 4)
    {
      if (v21 < 1)
      {
        return 0;
      }

      else
      {
        v10 = 0;
        while (1)
        {
          v11 = _sasl_allocation_utils(32);
          if (!v11)
          {
            break;
          }

          v12 = v11;
          *(v11 + 16) = v20;
          if (_sasl_strdup(plugname, (v11 + 8), 0))
          {
            off_280B0E738(v12);
            return -2;
          }

          *v12 = v19;
          v13 = cmechlist;
          v15 = (cmechlist + 16);
          v14 = *(cmechlist + 16);
          v16 = v20;
          if (v14 && (mech_compare(v20, *(v14 + 16)) & 0x80000000) != 0)
          {
            do
            {
              v17 = v14;
              v14 = *(v14 + 24);
            }

            while (v14 && mech_compare(v16, *(v14 + 16)) < 1);
            v15 = (v17 + 24);
          }

          v2 = 0;
          *(v12 + 24) = v14;
          *v15 = v12;
          ++*(v13 + 24);
          ++v10;
          v20 = v16 + 24;
          if (v10 >= v21)
          {
            return v2;
          }
        }

        return -2;
      }
    }

    else
    {
      _sasl_log(0, 3, "version conflict in sasl_client_add_plugin for %s", v5, v6, v7, v8, v9, plugname);
      return -23;
    }
  }

  return v2;
}

uint64_t mech_compare(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = v3 ^ v2;
  v5 = (v3 ^ v2) & v2;
  if ((v5 & 0x10) != 0)
  {
    return 1;
  }

  v6 = v4 & v3;
  if ((v6 & 0x10) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 0x40) != 0)
  {
    return 1;
  }

  if ((v6 & 0x40) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 2) != 0)
  {
    return 1;
  }

  if ((v6 & 2) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 4) != 0)
  {
    return 1;
  }

  if ((v6 & 4) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 8) != 0)
  {
    return 1;
  }

  if ((v6 & 8) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 0x200) != 0)
  {
    return 1;
  }

  if ((v6 & 0x200) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5 & 0x400) != 0)
  {
    return 1;
  }

  if ((v6 & 0x400) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[4];
  v8 = a2[4];
  v9 = (v8 ^ v7) & 0x800;
  if ((v9 & v7) != 0)
  {
    return 1;
  }

  if ((v9 & v8) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = a1[2];
  v12 = a2[2];
  if (v11 > v12)
  {
    return 1;
  }

  if (v11 >= v12)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int sasl_client_init(const sasl_callback_t *callbacks)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v10[0] = "sasl_client_plug_init";
  v10[1] = sasl_client_add_plugin;
  v10[2] = "sasl_canonuser_init";
  v10[5] = 0;
  v10[3] = sasl_canonuser_add_plugin;
  v10[4] = 0;
  ++_sasl_allocation_locked;
  if (_sasl_client_active)
  {
    v1 = 0;
    ++_sasl_client_active;
    goto LABEL_10;
  }

  global_callbacks_client = callbacks;
  *algn_27D9F8DA8 = 0;
  cmechlist = _sasl_allocation_utils(32);
  if (!cmechlist)
  {
LABEL_9:
    v1 = -2;
    goto LABEL_10;
  }

  _sasl_client_active = 1;
  v3 = _sasl_alloc_utils(0, &global_callbacks_client);
  v4 = cmechlist;
  *cmechlist = v3;
  if (!v3)
  {
    client_done();
    goto LABEL_9;
  }

  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sasl_client_add_plugin("EXTERNAL", external_client_plug_init);
  plugins = _sasl_common_init(&global_callbacks_client);
  if (plugins || (getpath_callback = _sasl_find_getpath_callback(callbacks), verifyfile_callback = _sasl_find_verifyfile_callback(callbacks), (plugins = _sasl_load_plugins(v10, getpath_callback, verifyfile_callback)) != 0))
  {
    v1 = plugins;
    client_done();
  }

  else
  {
    _sasl_client_cleanup_hook = client_done;
    _sasl_client_idle_hook = client_idle;
    v1 = _sasl_build_mechlist();
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t client_done()
{
  v0 = _sasl_client_active;
  if (!_sasl_client_active)
  {
    return 4294967284;
  }

  --_sasl_client_active;
  if (v0 != 1)
  {
    return 1;
  }

  v2 = cmechlist;
  v3 = *(cmechlist + 16);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      v5 = v3[3];
      v6 = *(v4 + 64);
      if (v6)
      {
        v6(*(v4 + 32), *cmechlist);
      }

      off_280B0E738(v3[1]);
      off_280B0E738(v3);
      v3 = v5;
    }

    while (v5);
    v2 = cmechlist;
  }

  _sasl_free_utils(v2);
  off_280B0E738(cmechlist);
  result = 0;
  cmechlist = 0;
  return result;
}

uint64_t client_idle(uint64_t a1)
{
  if (!cmechlist)
  {
    return 0;
  }

  v1 = *(cmechlist + 16);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v1 + 16);
    v4 = *(v3 + 72);
    if (v4)
    {
      v5 = a1 ? *(a1 + 4552) : 0;
      if (v4(*(v3 + 32), a1, v5))
      {
        break;
      }
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

int sasl_client_new(const char *service, const char *serverFQDN, const char *iplocalport, const char *ipremoteport, const sasl_callback_t *prompt_supp, unsigned int flags, sasl_conn_t **pconn)
{
  v73 = *MEMORY[0x277D85DE8];
  *v54 = 0;
  v53 = 0;
  if (!_sasl_client_active)
  {
    v8 = -12;
    goto LABEL_13;
  }

  v8 = -7;
  if (service && pconn)
  {
    v15 = _sasl_allocation_utils(4584);
    *pconn = v15;
    if (v15)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v71 = v21;
      v72 = v21;
      v69 = v21;
      v70 = v21;
      v67 = v21;
      v68 = v21;
      v65 = v21;
      v66 = v21;
      v64 = v21;
      v62 = v21;
      v63 = v21;
      v60 = v21;
      v61 = v21;
      v58 = v21;
      v59 = v21;
      v57 = v21;
      bzero(v15, 0x11E8uLL);
      *(*pconn + 1) = client_dispose;
      v22 = *pconn;
      *(*pconn + 568) = 0;
      v23 = _sasl_allocation_utils(192);
      *(v22 + 569) = v23;
      if (v23)
      {
        v23[10] = 0u;
        v23[11] = 0u;
        v23[8] = 0u;
        v23[9] = 0u;
        v23[6] = 0u;
        v23[7] = 0u;
        v23[4] = 0u;
        v23[5] = 0u;
        v23[2] = 0u;
        v23[3] = 0u;
        *v23 = 0u;
        v23[1] = 0u;
        v8 = _sasl_conn_init(*pconn, service, flags, 2, client_idle, serverFQDN, iplocalport, ipremoteport, prompt_supp, &global_callbacks_client);
        v24 = *pconn;
        if (v8)
        {
          if (v8 < 0 && v24)
          {
            *(v24 + 600) = v8;
          }

          goto LABEL_13;
        }

        v29 = _sasl_alloc_utils(v24, &global_callbacks_client);
        if (v29)
        {
          v30 = v29;
          v55 = 0xAAAAAAAAAAAAAAAALL;
          v56 = 0xAAAAAAAAAAAAAAAALL;
          *(v29 + 8) = *pconn;
          *(*(v22 + 569) + 24) = v29;
          if (!_sasl_getcallback(*pconn, 1, &v56, &v55))
          {
            (v56)(v55, 0, "client_mech_list", v54, 0);
          }

          v31 = *v54;
          if (!*v54)
          {
            v44 = cmechlist;
            *(v22 + 571) = *(cmechlist + 16);
            *(v22 + 1144) = *(v44 + 24);
            goto LABEL_52;
          }

          v32 = **v54;
          if (!**v54)
          {
            goto LABEL_52;
          }

          v33 = 0;
          v34 = MEMORY[0x277D85DE0];
          while (1)
          {
            if (v32 < 0)
            {
              if (__maskrune(v32, 0x4000uLL))
              {
                goto LABEL_29;
              }
            }

            else if ((*(v34 + 4 * v32 + 60) & 0x4000) != 0)
            {
              goto LABEL_29;
            }

            v35 = *++v31;
            v32 = v35;
            if (v35)
            {
              continue;
            }

LABEL_29:
            v36 = *(cmechlist + 16);
            if (v36)
            {
              while (!_sasl_is_equal_mech(*v54, **(v36 + 16), &v31[-*v54], &v53))
              {
                v36 = *(v36 + 24);
                if (!v36)
                {
                  goto LABEL_32;
                }
              }

              v38 = _sasl_allocation_utils(32);
              if (!v38)
              {
                v8 = -2;
                goto LABEL_57;
              }

              v37 = v38;
              v39 = *(v36 + 16);
              *v38 = *v36;
              *(v38 + 16) = v39;
              *(v38 + 24) = 0;
              v40 = (v22 + 4568);
              if (*(v22 + 571))
              {
                if (v33)
                {
                  v40 = (v33 + 24);
                  goto LABEL_37;
                }
              }

              else
              {
LABEL_37:
                *v40 = v38;
              }

              ++*(v22 + 1144);
              goto LABEL_39;
            }

LABEL_32:
            v37 = v33;
LABEL_39:
            *v54 = v31;
            v41 = *v31;
            if (!*v31)
            {
              goto LABEL_52;
            }

            v42 = (v31 + 1);
            while ((v41 & 0x80) == 0)
            {
              if ((*(v34 + 4 * v41 + 60) & 0x4000) == 0)
              {
                goto LABEL_47;
              }

LABEL_45:
              *v54 = v42;
              v43 = *v42++;
              v41 = v43;
              if (!v43)
              {
                goto LABEL_52;
              }
            }

            if (__maskrune(v41, 0x4000uLL))
            {
              goto LABEL_45;
            }

LABEL_47:
            v31 = *v54;
            v32 = **v54;
            v33 = v37;
            if (!**v54)
            {
LABEL_52:
              if (*(v22 + 571))
              {
                v45 = *(v22 + 569);
                *(v45 + 24) = v30;
                *(v45 + 152) = _sasl_canon_user_lookup;
                *(v45 + 180) = flags;
                *(v45 + 32) = *(*pconn + 296);
                v57 = 0u;
                v58 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v68 = 0u;
                v59 = 0u;
                if (get_fqhostname(&v57, 256, 0))
                {
                  v8 = -1;
                  goto LABEL_13;
                }

                v8 = _sasl_strdup(&v57, v22 + 570, 0);
                if (!v8)
                {
                  goto LABEL_13;
                }
              }

              else
              {
                sasl_seterror(*pconn, 0, "No worthy mechs found");
                v8 = -4;
              }

LABEL_57:
              _sasl_conn_dispose(*pconn);
              off_280B0E738(*pconn);
              *pconn = 0;
              _sasl_log(0, 1, "Out of memory in sasl_client_new", v46, v47, v48, v49, v50, v52);
              goto LABEL_13;
            }
          }
        }

        v27 = *pconn;
        if (*pconn)
        {
          v28 = 443;
LABEL_16:
          sasl_seterror(v27, 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/client.c near line %d", v28);
          v8 = -2;
          if (*pconn)
          {
            *(*pconn + 600) = -2;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v27 = *pconn;
        if (*pconn)
        {
          v28 = 432;
          goto LABEL_16;
        }
      }
    }

    else
    {
      _sasl_log(0, 1, "Out of memory allocating connection context", v16, v17, v18, v19, v20, v51);
    }

    v8 = -2;
  }

LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}