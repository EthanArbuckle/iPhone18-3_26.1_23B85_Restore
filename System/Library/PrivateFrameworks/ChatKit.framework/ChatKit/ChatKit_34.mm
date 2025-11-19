void sub_190B0AA60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v54 = a5;
  v53 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v57 = a1;
  v56 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    v52 = v18;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v26;
    if (v26 >= 1)
    {
      v31 = -v22;
      v32 = a4 + v26;
      v48 = a1;
      v49 = a4;
      v51 = -v22;
      do
      {
        v46 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v50 = v33;
        while (1)
        {
          if (v33 <= a1)
          {
            v57 = v33;
            v55 = v46;
            goto LABEL_62;
          }

          v35 = a3;
          v47 = v30;
          v36 = v51;
          v37 = v32 + v51;
          v38 = v6;
          v39 = v52;
          sub_190B0D284(v32 + v51, v52);
          sub_190B0D284(v34, v12);
          v40 = sub_190B08DD4(v39, v12, v54 & 1);
          v41 = v12;
          if (v38)
          {
            sub_1908D5A5C(v12);
            sub_1908D5A5C(v39);
            v57 = v50;
            v55 = v47;
            goto LABEL_62;
          }

          v42 = v40;
          v43 = v34;
          a3 = v35 + v36;
          v44 = v41;
          sub_1908D5A5C(v41);
          sub_1908D5A5C(v39);
          if (v42)
          {
            break;
          }

          v30 = v37;
          v6 = 0;
          if (v35 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v37;
            v12 = v44;
            a1 = v48;
          }

          else
          {
            v12 = v44;
            a1 = v48;
            if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v37;
            }
          }

          v32 = v30;
          v33 = v50;
          v34 = v43;
          if (v37 <= v49)
          {
            a2 = v50;
            goto LABEL_61;
          }
        }

        v6 = 0;
        if (v35 < v50 || a3 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
          v12 = v44;
          a2 = v43;
          a1 = v48;
        }

        else
        {
          v12 = v44;
          a2 = v43;
          a1 = v48;
          if (v35 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v47;
        v31 = v51;
      }

      while (v32 > v49);
    }

LABEL_61:
    v57 = a2;
    v55 = v30;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v25;
    v55 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_190B0D284(a2, v20);
        sub_190B0D284(a4, v16);
        v28 = sub_190B08DD4(v20, v16, v54 & 1);
        if (v5)
        {
          break;
        }

        v29 = v28;
        sub_1908D5A5C(v16);
        sub_1908D5A5C(v20);
        if (v29)
        {
          if (a1 < a2 || a1 >= a2 + v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v22;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = a4 + v22;
          a4 += v22;
        }

        a1 += v22;
        v57 = a1;
        if (a4 >= v52 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1908D5A5C(v16);
      sub_1908D5A5C(v20);
    }
  }

LABEL_62:
  sub_1909E3868(&v57, &v56, &v55);
}

void sub_190B0AFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D730);
  v9 = sub_190D53020();
  v10 = sub_190D576A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "Starting gallery fetch work on background queue.", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  sub_1902188FC(0, &qword_1EAD5D728);
  v12 = sub_190D57DB0();
  v13 = [objc_allocWithZone(MEMORY[0x1E69A6170]) init];
  [v13 startTimingForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  *(v14 + 32) = sub_19088A008(0);
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_190DD1DA0;
  *(v16 + 32) = sub_19088A008(3u);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_19088A008(2u);
  *(v16 + 56) = v18;
  v19 = objc_allocWithZone(CKBackgroundGalleryFetchRequest);
  v20 = sub_190D57160();

  v21 = sub_190D57160();

  v22 = [v19 initWithPreferredSuggestionCount:16 extensionIdentifiers:v20 fallbackExtensionIdentifiers:v21];

  v23 = sub_190D56ED0();
  v24 = sub_190D56ED0();
  v25 = sub_190D56ED0();
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a7;
  v26[4] = v13;
  v26[5] = v12;
  aBlock[4] = sub_190B0D1F8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19087F0F0;
  aBlock[3] = &block_descriptor_27_2;
  v27 = _Block_copy(aBlock);
  v28 = v22;
  sub_190D50920();
  v29 = v13;
  v30 = v12;

  [a1 fetchPosterGalleryForChatGUID:v23 deviceIndependentID:v24 backgroundGUID:v25 fetchRequest:v28 completion:v27];
  _Block_release(v27);
}

void sub_190B0B328(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EAD46218;
  sub_190D50920();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D730);
  v6 = sub_190D53020();
  v7 = sub_190D57680();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19020E000, v6, v7, "Beginning to fetch PosterKit gallery representation.", v8, 2u);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  v9 = sub_190C0EA1C(*(a1 + 16));
  if (v10)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = [objc_opt_self() sharedTranscriptBackgroundChannelController];
    if (v17)
    {
      v22 = v17;
      sub_190B0AFAC(v17, v13, v14, v15, v16, sub_190B0D1F0, a2);

      return;
    }

    v18 = sub_190D53020();
    v19 = sub_190D576A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "-> Channel controller singleton instance does not exist. Bailing.";
      goto LABEL_14;
    }
  }

  else
  {
    v18 = sub_190D53020();
    v19 = sub_190D576A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "-> Unable to get chatGUID and/or deviceIndependentIdentifier. Bailing.";
LABEL_14:
      _os_log_impl(&dword_19020E000, v18, v19, v21, v20, 2u);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }
  }

  sub_190AA88C0(MEMORY[0x1E69E7CC0], a2);
}

id sub_190B0B5C0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    v3 = [objc_opt_self() standardUserDefaults];
    v15 = MEMORY[0x1E69E7CD0];
    v4 = byte_1F0402C20;
    if (!v2)
    {
      if (!byte_1F0402C20)
      {
        sub_1908AA62C(&v13, 0);
      }

      if (byte_1F0402C21)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v5 = sub_190D56ED0();

    v6 = [v3 valueForKey_];

    if (v6)
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v4)
      {
LABEL_16:
        v7 = byte_1F0402C21;
        v8 = sub_190D56ED0();

        v9 = [v3 valueForKey_];

        if (v9)
        {
          sub_190D58140();
          swift_unknownObjectRelease();
        }

        else
        {
          v11 = 0u;
          v12 = 0u;
        }

        v13 = v11;
        v14 = v12;
        if (*(&v12 + 1))
        {
          if (swift_dynamicCast())
          {
            if ((v10 & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          if (v7)
          {
LABEL_30:

            return v15;
          }
        }

        else
        {
          sub_19022EEA4(&v13, &unk_1EAD551C0);
          if (v7)
          {
            goto LABEL_30;
          }
        }

LABEL_28:
        v7 = 0;
LABEL_29:
        sub_1908AA62C(&v13, v7);
        goto LABEL_30;
      }
    }

    else
    {
      sub_19022EEA4(&v13, &unk_1EAD551C0);
      if (v4)
      {
        goto LABEL_16;
      }
    }

    sub_1908AA62C(&v13, v4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_190B0B894(uint64_t a1)
{
  if (qword_1EAD46218 != -1)
  {
LABEL_23:
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  v28 = a1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Finished fetching PosterKit gallery:", v5, 2u);
    v6 = v5;
    a1 = v28;
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  sub_190D52690();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_14:
    v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v14;
    v15 = v14[1];
    if (!*(a1 + 16) || (sub_190D52690(), sub_19022DCEC(v16, v15), (v17 & 1) != 0))
    {
      sub_190D52690();
    }

    v10 &= v10 - 1;
    sub_190D52690();
    sub_190D52690();
    v18 = sub_190D53020();
    v19 = sub_190D57680();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v20 = 136315394;
      v21 = sub_19021D9F8(v16, v15, &v30);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_190D57420();
      v24 = v23;

      v25 = sub_19021D9F8(v22, v24, &v30);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_19020E000, v18, v19, "%s: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v29, -1, -1);
      v26 = v20;
      a1 = v28;
      MEMORY[0x193AF7A40](v26, -1, -1);
    }

    else
    {
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_14;
    }
  }
}

id sub_190B0BBF8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey_];

      v6 = v5 ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v44 = MEMORY[0x1E69E7CC0];
    sub_19082DBB4(0, 5, 0);
    v7 = v44;
    v8 = sub_19088A008(0);
    v11 = *(v44 + 16);
    v10 = *(v44 + 24);
    if (v11 >= v10 >> 1)
    {
      v34 = v8;
      v35 = v9;
      sub_19082DBB4((v10 > 1), v11 + 1, 1);
      v9 = v35;
      v8 = v34;
      v7 = v44;
    }

    *(v7 + 16) = v11 + 1;
    v12 = v7 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    v13 = sub_19088A008(1u);
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      v36 = v13;
      v37 = v14;
      sub_19082DBB4((v15 > 1), v16 + 1, 1);
      v14 = v37;
      v13 = v36;
      v7 = v44;
    }

    *(v7 + 16) = v16 + 1;
    v17 = v7 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    v18 = sub_19088A008(2u);
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      v38 = v18;
      v39 = v19;
      sub_19082DBB4((v20 > 1), v21 + 1, 1);
      v19 = v39;
      v18 = v38;
    }

    v22 = v44;
    *(v44 + 16) = v21 + 1;
    v23 = v44 + 16 * v21;
    *(v23 + 32) = v18;
    *(v23 + 40) = v19;
    v24 = sub_19088A008(3u);
    v27 = *(v44 + 16);
    v26 = *(v44 + 24);
    if (v27 >= v26 >> 1)
    {
      v40 = v24;
      v41 = v25;
      sub_19082DBB4((v26 > 1), v27 + 1, 1);
      v25 = v41;
      v24 = v40;
      v22 = v44;
    }

    *(v22 + 16) = v27 + 1;
    v28 = v22 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    v29 = sub_19088A008(4u);
    v32 = *(v22 + 16);
    v31 = *(v22 + 24);
    if (v32 >= v31 >> 1)
    {
      v42 = v29;
      v43 = v30;
      sub_19082DBB4((v31 > 1), v32 + 1, 1);
      v30 = v43;
      v29 = v42;
      v22 = v44;
    }

    *(v22 + 16) = v32 + 1;
    v33 = v22 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    sub_190CAAE18(v22);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_190B0BED8(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D738);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-v4];
  v6 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-v11];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    v15 = (v10 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v22 = v10;
    v23 = v6;
    do
    {
      sub_190B0891C(v5);
      if ((*v15)(v5, 1, v6) == 1)
      {
        sub_19022EEA4(v5, &qword_1EAD5D738);
      }

      else
      {
        sub_190A94600(v5, v12);
        sub_190A94600(v12, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1908364C0(0, v16[2] + 1, 1, v16);
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          v16 = sub_1908364C0(v17 > 1, v18 + 1, 1, v16);
        }

        v16[2] = v18 + 1;
        sub_190A94600(v8, v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18);
        v6 = v23;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v24 = v16;
  sub_190D52690();
  sub_190B09734(&v24, v21 & 1);

  return v24;
}

size_t sub_190B0C16C(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D738);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v58 = a2;
  if (a2 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_19088A008(3u);
  if (!*(a1 + 16))
  {

LABEL_8:
    v19 = MEMORY[0x1E69E7CD0];
    v20 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v16 = sub_19022DCEC(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

  v19 = *(*(a1 + 56) + 8 * v16);
  sub_190D52690();
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_5:

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_9:
  v21 = sub_190A92A64(v20, 0);
  v23 = sub_190C8365C(&v60, (v21 + 4), v20, v19);
  result = sub_190219C78();
  if (v23 != v20)
  {
    goto LABEL_44;
  }

LABEL_10:
  v24 = sub_19088A008(2u);
  if (!*(a1 + 16))
  {

LABEL_15:
    v29 = MEMORY[0x1E69E7CD0];
    v30 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_16:
    v31 = sub_190A92A64(v30, 0);
    v32 = sub_190C8365C(&v60, (v31 + 4), v30, v29);
    result = sub_190219C78();
    if (v32 != v30)
    {
      goto LABEL_45;
    }

    goto LABEL_17;
  }

  v26 = sub_19022DCEC(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = *(*(a1 + 56) + 8 * v26);
  sub_190D52690();
  v30 = *(v29 + 16);
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_13:

  v31 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v33 = sub_190B0BED8(v21, 1);

  v34 = sub_190B0BED8(v31, 1);

  v35 = 0;
  v36 = (v54 + 56);
  v37 = (v54 + 48);
  v59 = MEMORY[0x1E69E7CC0];
  while (v35 % 5 >= 0)
  {
    v38 = byte_1F04033A8[v35 % 5 + 32];
    if (v38 == 2)
    {
      if (!v34[2])
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_190A5BC74(v34);
        v34 = result;
      }

      v39 = v34[2];
      v40 = v34;
      if (!v39)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v38 != 3 || !v33[2])
      {
LABEL_33:
        v43 = 1;
        goto LABEL_34;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_190A5BC74(v33);
        v33 = result;
      }

      v39 = v33[2];
      v40 = v33;
      if (!v39)
      {
        goto LABEL_43;
      }
    }

    v41 = v39 - 1;
    v42 = v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41;
    v40[2] = v41;
    sub_190A94600(v42, v13);
    v43 = 0;
LABEL_34:
    v44 = v55;
    (*v36)(v13, v43, 1, v55);
    sub_190B0D214(v13, v10);
    if ((*v37)(v10, 1, v44) == 1)
    {
      sub_19022EEA4(v13, &qword_1EAD5D738);
      result = sub_19022EEA4(v10, &qword_1EAD5D738);
    }

    else
    {
      v45 = v34;
      v46 = v10;
      v47 = v56;
      sub_190A94600(v10, v56);
      sub_190B0D284(v47, v57);
      v48 = v59;
      v49 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1908364C0(0, v48[2] + 1, 1, v48);
      }

      v51 = v48[2];
      v50 = v48[3];
      v59 = v48;
      if (v51 >= v50 >> 1)
      {
        v59 = sub_1908364C0(v50 > 1, v51 + 1, 1, v59);
      }

      sub_1908D5A5C(v56);
      sub_19022EEA4(v13, &qword_1EAD5D738);
      v52 = v59;
      v59[2] = v51 + 1;
      result = sub_190A94600(v57, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51);
      v33 = v49;
      v34 = v45;
      v10 = v46;
    }

    if (v58 == ++v35)
    {

      return v59;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_190B0C760(uint64_t a1)
{
  v3 = sub_190B0BBF8();

  if (v3)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v4 = sub_19088A008(0);
    if (*(a1 + 16))
    {
      v6 = sub_19022DCEC(v4, v5);
      v8 = v7;

      if (v8)
      {
        v9 = *(*(a1 + 56) + 8 * v6);
        sub_190D52690();
        v10 = *(v9 + 16);
        if (!v10)
        {
LABEL_5:

          v11 = MEMORY[0x1E69E7CC0];
          goto LABEL_36;
        }

LABEL_35:
        v11 = sub_190A92A64(v10, 0);
        v33 = sub_190C8365C(&v53, (v11 + 4), v10, v9);
        result = sub_190219C78();
        if (v33 != v10)
        {
          __break(1u);
          return result;
        }

LABEL_36:
        v1 = sub_190B0BED8(v11, 0);

        v35 = sub_190D52690();
        sub_190CAA38C(v35);
        if (qword_1EAD46218 == -1)
        {
          goto LABEL_37;
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    v9 = MEMORY[0x1E69E7CD0];
    v10 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v47 = (v13 + 63) >> 6;
  sub_190D52690();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v48 = a1 + 64;
  v49 = a1;
  while (v15)
  {
    v51 = v17;
LABEL_16:
    v19 = __clz(__rbit64(v15)) | (v16 << 6);
    v1 = *(*(a1 + 48) + 16 * v19 + 8);
    v20 = *(*(a1 + 56) + 8 * v19);
    v21 = *(v20 + 16);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BCB0);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v22[2] = v21;
      v22[3] = 2 * ((v23 - 32) / 40);
      v24 = sub_190C8365C(&v53, (v22 + 4), v21, v20);
      a1 = v53;
      v50 = v24;
      swift_bridgeObjectRetain_n();
      sub_190D52690();
      sub_190219C78();
      if (v50 != v21)
      {
        goto LABEL_48;
      }

      v12 = v48;
      a1 = v49;
    }

    else
    {
      sub_190D52690();
      sub_190D52690();
      v22 = MEMORY[0x1E69E7CC0];
    }

    v25 = sub_190B0BED8(v22, 0);

    v26 = v25[2];
    v17 = v51;
    v27 = v51[2];
    v1 = (v27 + v26);
    if (__OFADD__(v27, v26))
    {
      goto LABEL_46;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v1 > v51[3] >> 1)
    {
      if (v27 <= v1)
      {
        v29 = v27 + v26;
      }

      else
      {
        v29 = v27;
      }

      v17 = sub_1908364C0(isUniquelyReferenced_nonNull_native, v29, 1, v51);
    }

    v15 &= v15 - 1;
    if (v25[2])
    {
      v1 = ((*(v17 + 24) >> 1) - *(v17 + 16));
      _s21BackgroundGalleryItemVMa(0);
      if (v1 < v26)
      {
        goto LABEL_49;
      }

      swift_arrayInitWithCopy();

      if (v26)
      {
        v30 = *(v17 + 16);
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_50;
        }

        *(v17 + 16) = v32;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v47)
    {

      return v17;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v51 = v17;
      v16 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_37:
  v36 = sub_190D53040();
  __swift_project_value_buffer(v36, qword_1EAD9D730);
  sub_190D52690();
  v37 = sub_190D53020();
  v38 = sub_190D57680();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = v1[2];

    _os_log_impl(&dword_19020E000, v37, v38, "Suggestions: Adding %ld available photo suggestions.", v39, 0xCu);
    MEMORY[0x193AF7A40](v39, -1, -1);
  }

  else
  {
  }

  v40 = v1[2];

  v41 = sub_190B0C16C(a1, (16 - v40) & ~((16 - v40) >> 63));
  v42 = sub_190D52690();
  sub_190CAA38C(v42);
  sub_190D52690();
  v43 = sub_190D53020();
  v44 = sub_190D57680();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = *(v41 + 16);

    *(v45 + 4) = v46;

    _os_log_impl(&dword_19020E000, v43, v44, "Suggestions: Adding %ld fallback suggestions.", v45, 0xCu);
    MEMORY[0x193AF7A40](v45, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v52;
}

void sub_190B0CD24(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v30 = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_1EAD46218;
  sub_190D50920();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D730);
  v7 = sub_190D53020();
  v8 = sub_190D57680();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "[Suggestions] Began load for first featured photo suggestion.", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  sub_1902188FC(0, &qword_1EAD5D728);
  v10 = sub_190D57DB0();
  v11 = [objc_allocWithZone(MEMORY[0x1E69A6170]) init];
  [v11 startTimingForKey_];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = objc_opt_self();
  v33 = v11;
  v32 = v10;
  v14 = [v13 makeNewSystemPhotoLibraryInstance];
  v15 = sub_190D524C0();
  v16 = [v14 librarySpecificFetchOptions];
  v17 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v15 options:v16];
  v18 = v17;
  if (v17 && (v19 = [v17 firstObject]) != 0)
  {
    v20 = v19;
    v31 = [objc_opt_self() defaultManager];
    v21 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
    [v21 setOpportunisticDegradedImagesToReturn_];
    v22 = swift_allocObject();
    v22[2] = sub_190B0D1AC;
    v22[3] = v12;
    v22[4] = sub_190B0D1A4;
    v22[5] = v4;
    aBlock[4] = sub_190B0D1B4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190B09630;
    aBlock[3] = &block_descriptor_15_3;
    v23 = _Block_copy(aBlock);
    v24 = v21;
    sub_190D50920();
    sub_190D50920();

    [v31 requestImageForAsset:v20 targetSize:1 contentMode:v24 options:v23 resultHandler:{200.0, 200.0}];
    _Block_release(v23);

    v26 = v32;
    v25 = v33;
  }

  else
  {
    v27 = sub_190D53020();
    v28 = sub_190D576A0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_19020E000, v27, v28, "[Suggestions] No asset object available on the PHFetchResult for the first Featured Photo.", v29, 2u);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    v26 = v32;
    v25 = v33;
    sub_190B09318(v33, v32);
    sub_190B09040(0, v30, a2);
  }
}

uint64_t sub_190B0D214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B0D284(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190B0D340()
{
  result = qword_1EAD5D750;
  if (!qword_1EAD5D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D750);
  }

  return result;
}

id sub_190B0D3B8()
{
  v0 = _sSo9UICommandC7ChatKitE18ck_toggleTimeStamp6actionAB10ObjectiveC8SelectorV_tFZ_0();

  return v0;
}

id _sSo9UICommandC7ChatKitE18ck_toggleTimeStamp6actionAB10ObjectiveC8SelectorV_tFZ_0()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    sub_1902188FC(0, &qword_1EAD44E30);
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    v5 = sub_190D56ED0();
    v6 = [objc_opt_self() systemImageNamed_];

    return sub_190D58040();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B0D55C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190B0D5D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

uint64_t sub_190B0D670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

id sub_190B0D6DC(void *a1)
{
  v26 = a1;
  v28 = sub_190D51840();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D7D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = &v1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_onRequestPresentation];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel__state;
  v31 = 0;
  sub_190D538D0();
  (*(v12 + 32))(&v1[v16], v14, v11);
  v17 = OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel__isPressed;
  v31 = 0;
  sub_190D538D0();
  (*(v8 + 32))(&v1[v17], v10, v7);
  v18 = v26;
  v19 = [v26 selectedDate];
  sub_190D517E0();

  swift_beginAccess();
  v20 = v28;
  (*(v2 + 16))(v27, v6, v28);
  sub_190D538D0();
  (*(v2 + 8))(v6, v20);
  swift_endAccess();
  *&v1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_pluginContext] = v18;
  v21 = v18;
  LOBYTE(v18) = [v21 showingDatePicker];
  swift_beginAccess();
  v30 = v18;
  sub_190D538D0();
  swift_endAccess();
  v22 = type metadata accessor for SendLaterRootViewModel();
  v29.receiver = v1;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, sel_init);
  [v21 addObserver_];

  return v23;
}

void sub_190B0DA8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D56770();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567A0();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D51840();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = &v33 - v17;
  if (*&v2[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_pluginContext] == v15)
  {
    v19 = [v15 selectedDate];
    sub_190D517E0();

    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v7;
    v20 = v8;
    v21 = v4;
    v22 = v5;
    sub_190D53900();

    sub_190B0EB68(&qword_1EAD54D90, MEMORY[0x1E6969530]);
    LOBYTE(v19) = sub_190D56E30();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v23(v18, v10);
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = v34;
    if ((v19 & 1) == 0)
    {
      sub_1908E9B68();
      v28 = sub_190D57870();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      aBlock[4] = sub_190B0EBB0;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_48_1;
      v30 = _Block_copy(aBlock);
      v31 = v2;

      v32 = v35;
      sub_190D56790();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_190B0EB68(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
      sub_190840E08();
      sub_190D58170();
      MEMORY[0x193AF3110](0, v32, v27, v30);
      _Block_release(v30);

      (*(v24 + 8))(v27, v25);
      (*(v36 + 8))(v32, v26);
    }
  }
}

uint64_t sub_190B0DF04(char *a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v13 - v8;
  v10 = [*&a1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_pluginContext] selectedDate];
  sub_190D517E0();

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, v9, v2);
  v11 = a1;
  sub_190D53910();
  return (*(v3 + 8))(v9, v2);
}

void sub_190B0E0E0(void *a1)
{
  v3 = sub_190D56770();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_pluginContext] == a1)
  {
    sub_1908E9B68();
    v17 = sub_190D57870();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = a1;
    aBlock[4] = sub_190B0E950;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_80;
    v12 = _Block_copy(aBlock);
    v13 = v1;
    v14 = a1;

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190B0EB68(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    sub_190D58170();
    v15 = v17;
    MEMORY[0x193AF3110](0, v10, v6, v12);
    _Block_release(v12);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_190B0E3B0(void *a1, id a2)
{
  [a2 showingDatePicker];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_190D53910();
}

id sub_190B0E4CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendLaterRootViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SendLaterRootViewModel()
{
  result = qword_1EAD5D798;
  if (!qword_1EAD5D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190B0E6C8()
{
  sub_190B0E804();
  if (v0 <= 0x3F)
  {
    sub_190B0E85C(319, &unk_1EAD5D7B0);
    if (v1 <= 0x3F)
    {
      sub_190B0E85C(319, &qword_1EAD452B8);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_190B0E804()
{
  if (!qword_1EAD5F680)
  {
    sub_190D51840();
    v0 = sub_190D53920();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5F680);
    }
  }
}

void sub_190B0E85C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_190D53920();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_190B0E8BC()
{
  result = qword_1EAD5D7C0;
  if (!qword_1EAD5D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D7C0);
  }

  return result;
}

uint64_t sub_190B0E910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SendLaterRootViewModel();
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t sub_190B0E958()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190B0E9D4(uint64_t a1, void **a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4, v9);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v7, v11, v4);
  v14 = v13;
  sub_190D53910();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_190B0EB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190B0EBF4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a1 = v3;
  return result;
}

uint64_t sub_190B0EC84(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_190D53910();
}

unint64_t sub_190B0ED0C()
{
  result = qword_1EAD5D7F0;
  if (!qword_1EAD5D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D7F0);
  }

  return result;
}

void sub_190B0ED60(void *a1)
{
  v4 = sub_19091DBFC();
  if (v5)
  {
    v6 = v3;
    if (v2)
    {
      v7 = sub_190D56ED0();
    }

    else
    {
      v7 = 0;
    }

    [a1 setContextToken_];

    [a1 updateViewWithGroupIdentity_];

    swift_unknownObjectRelease();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_190DD55F0;
    *(v8 + 32) = v4;
    sub_1908C9E7C();
    v9 = v4;
    v10 = sub_190D57160();

    [a1 setContacts_];
  }
}

id sub_190B0EED4()
{
  v11 = v0[2];
  *v12 = v0[3];
  *&v12[9] = *(v0 + 57);
  v9 = *v0;
  v10 = v0[1];
  v1 = sub_19091DBFC();
  v4 = v3;
  if (v5)
  {

    v6 = [objc_opt_self() defaultSettings];
  }

  else
  {

    v6 = [objc_opt_self() settingsWithContactStore_];
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) initWithSettings_];

  return v7;
}

uint64_t sub_190B0EFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B0F0A0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190B0F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B0F0A0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190B0F078()
{
  sub_190B0F0A0();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190B0F0A0()
{
  result = qword_1EAD5D7F8;
  if (!qword_1EAD5D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D7F8);
  }

  return result;
}

id CKPosterEditingContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPosterEditingContext.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterEditingContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKPosterEditingContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterEditingContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B0F23C()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B0F2D4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B0F3CC()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B0F464(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B0F55C()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B0F5F4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B0F6EC()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B0F784(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B0F87C()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B0F914(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190B0F9F8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isRichLinkImprovementsEnabled];

  if (v2 && (v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode, swift_beginAccess(), (*(v0 + v3) & 1) == 0) && (v4 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes, swift_beginAccess(), *(v0 + v4) == 1))
  {
    v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
    swift_beginAccess();
    v6 = *(v0 + v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id CKCompositionBuilderContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKCompositionBuilderContext.init()()
{
  v0[OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode] = 0;
  v0[OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter] = 0;
  v0[OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText] = 0;
  v0[OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs] = 0;
  v0[OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCompositionBuilderContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKCompositionBuilderContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCompositionBuilderContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190B0FFAC()
{
  v1 = v0;
  v2 = sub_190D56760();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E7F48])
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v7 = v8(v6, v2);
    v9 = 1000 * *v6;
    if ((*v6 * 1000) >> 64 == v9 >> 63)
    {
      return v9 / 1000.0;
    }

    __break(1u);
  }

  if (v7 == *MEMORY[0x1E69E7F38])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
  }

  else if (v7 == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6 / 1000;
  }

  else if (v7 == *MEMORY[0x1E69E7F28])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6 / 1000000;
  }

  else if (v7 == *MEMORY[0x1E69E7F40])
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = 0;
  }

  return v9 / 1000.0;
}

id CKTextEffectCoordinator.__allocating_init(logIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_190D56760();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = objc_allocWithZone(v3);
  v11 = objc_allocWithZone(type metadata accessor for CKTextEffectCoordinator.Configuration());
  swift_getObjectType();
  *v9 = 5;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7F48], v6);
  v12 = sub_190A4BE60(a1, a2, v9, 1);
  swift_deallocPartialClassInstance();
  v13 = [v10 initWithConfiguration_];

  return v13;
}

id CKTextEffectCoordinator.init(logIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_190D56760();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_allocWithZone(type metadata accessor for CKTextEffectCoordinator.Configuration());
  swift_getObjectType();
  *v8 = 5;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F48], v5);
  v10 = sub_190A4BE60(a1, a2, v8, 1);
  swift_deallocPartialClassInstance();
  v11 = [v2 initWithConfiguration_];

  return v11;
}

char *CKTextEffectCoordinator.init(configuration:)(void *a1)
{
  v3 = sub_190D53040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedIdentifiers] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidOrIdleAnimator] = 0;
  v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidAnimation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLinkToken] = 0;
  sub_190D517F0();
  v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused] = 1;
  sub_190D567B0();
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_configuration] = a1;
  aBlock = 0;
  v30 = 0xE000000000000000;
  v7 = a1;
  sub_190D582B0();

  aBlock = 0xD000000000000016;
  v30 = 0x8000000190E73730;
  v8 = *&v7[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_logIdentifier];
  v9 = *&v7[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_logIdentifier + 8];
  sub_190D52690();
  MEMORY[0x193AF28B0](v8, v9);

  sub_190D53010();
  sub_190D53030();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v6, v3);
  v10 = type metadata accessor for CKTextEffectCoordinator();
  v35.receiver = v1;
  v35.super_class = v10;
  v11 = objc_msgSendSuper2(&v35, sel_init);
  v12 = qword_1EAD46678;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  if (byte_1EAD4668C)
  {
  }

  else
  {
    v14 = dword_1EAD46688;
    v15 = qword_1EAD46680;
    v16 = [objc_allocWithZone(type metadata accessor for CKTextEffectsDisplayLink()) init];
    v17 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink;
    v18 = *&v13[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink];
    *&v13[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink] = v16;

    v19 = *&v13[v17];
    if (v19)
    {
      v20 = HIDWORD(v15);
      v21 = v15;
      v33 = nullsub_10;
      v34 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_19084156C;
      v32 = &block_descriptor_81;
      v22 = _Block_copy(&aBlock);
      v23 = v19;
      LODWORD(v24) = v21;
      LODWORD(v25) = v20;
      LODWORD(v26) = v14;
      v27 = [v23 frameRateRequest:v22 block:{v24, v25, v26}];

      _Block_release(v22);
    }

    else
    {

      v27 = 0;
    }

    *&v13[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLinkToken] = v27;

    swift_unknownObjectRelease();
  }

  return v13;
}

id CKTextEffectCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CKTextEffectCoordinator.init()()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedIdentifiers) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidOrIdleAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLinkToken) = 0;
  sub_190D517F0();
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused) = 1;
  sub_190D567B0();
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

id CKTextEffectCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLinkToken;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLinkToken];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink;
    v4 = *&v0[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink];
    if (v4)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = v4;
      sub_190A7B444(v2, v5);

      swift_unknownObjectRelease();
      v6 = *&v0[v3];
    }

    else
    {
      v6 = 0;
    }

    *&v0[v3] = 0;

    *&v0[v1] = 0;
    swift_unknownObjectRelease();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CKTextEffectCoordinator();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void *sub_190B10E1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_displayLink);
  v2 = v1;
  return v1;
}

uint64_t sub_190B10E94()
{
  v1 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B10F2C(char a1, int a2)
{
  v3 = v2;
  v27 = a2;
  v5 = a1 & 1;
  v26 = sub_190D53040();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D51840();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D567F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  result = swift_beginAccess();
  if (v3[v15] != v5)
  {
    sub_190D567B0();
    v17 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_now;
    swift_beginAccess();
    (*(v12 + 40))(&v3[v17], v14, v11);
    swift_endAccess();
    if ((a1 & 1) == 0)
    {
      sub_190D517F0();
      v18 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_resumeDate;
      swift_beginAccess();
      (*(v25 + 40))(&v3[v18], v10, v8);
      swift_endAccess();
    }

    *&v3[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount] = 0;
    v19 = v26;
    (*(v28 + 16))(v7, &v3[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v26);
    v20 = v3;
    v21 = sub_190D53020();
    v22 = sub_190D576C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218496;
      *(v23 + 4) = *(v20 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

      *(v23 + 12) = 1024;
      *(v23 + 14) = a1 & 1;
      *(v23 + 18) = 1024;
      v24 = v27;
      *(v23 + 20) = v27 & 1;
      _os_log_impl(&dword_19020E000, v21, v22, "tick: %llu – setPaused: %{BOOL}d – includingAnimators: %{BOOL}d", v23, 0x18u);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    else
    {

      v21 = v20;
      v24 = v27;
    }

    result = (*(v28 + 8))(v7, v19);
    v3[v15] = a1 & 1;
    if (v24)
    {
      return sub_190B11334((a1 & 1) == 0);
    }
  }

  return result;
}

uint64_t sub_190B11334(int a1)
{
  LODWORD(v2) = a1;
  v3 = sub_190D53040();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger, v3, v5);
  v8 = v1;
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 134218498;
    *(v11 + 4) = *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];
    *(v11 + 12) = 2048;
    *(v11 + 14) = *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount];

    *(v11 + 22) = 2080;
    LODWORD(v44) = v2;
    if (v2)
    {
      if (v2 == 1)
      {
        v13 = 0x656D75736572;
      }

      else
      {
        v13 = 0x6164696C61766E69;
      }

      if (v2 == 1)
      {
        v2 = 0xE600000000000000;
      }

      else
      {
        v2 = 0xEA00000000006574;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      v13 = 0x6573756170;
    }

    v15 = sub_19021D9F8(v13, v2, aBlock);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_19020E000, v9, v10, "tick: %llu – update #%lu – _makeAnimatorsPerform: %s", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);

    v14 = (*(v4 + 8))(v7, v3);
    LOBYTE(v2) = v44;
  }

  else
  {

    v14 = (*(v4 + 8))(v7, v3);
  }

  v39[1] = v39;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39[-4];
  LOBYTE(v39[-2]) = v2;
  v16 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = [Strong visibleTextViewIdentifiersFor_];
    swift_unknownObjectRelease();
    v19 = sub_190D57180();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v40 = v19;
  v20 = *(v19 + 16);
  if (!v20)
  {
  }

  v42 = v46;
  v21 = (v40 + 40);
  v22 = &selRef_buttonAttributedString;
  v41 = v16;
  while (1)
  {
    v24 = *(v21 - 1);
    v23 = *v21;
    v25 = swift_unknownObjectWeakLoadStrong();
    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = v25;
    sub_190D52690();
    v27 = sub_190D56ED0();
    v28 = [v26 v22[386]];
    swift_unknownObjectRelease();

    if (v28)
    {
      break;
    }

LABEL_18:

LABEL_19:
    v21 += 2;
    if (!--v20)
    {
    }
  }

  if (([v28 allowsTextAnimations] & 1) == 0 || (v29 = objc_msgSend(v28, sel_attributedText)) == 0)
  {

    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v29);
  v39[-6] = v28;
  v39[-5] = sub_190B193E0;
  v39[-4] = v43;
  v39[-3] = v24;
  v39[-2] = v23;
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v39[-2] = sub_190B193E8;
  v39[-1] = v32;
  v34 = v33;
  v44 = [v33 length];
  v35 = swift_allocObject();
  *(v35 + 16) = sub_190B193F8;
  *(v35 + 24) = &v39[-4];
  v46[2] = sub_190B19414;
  v46[3] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v46[0] = sub_1908A2B98;
  v46[1] = &block_descriptor_87;
  v36 = _Block_copy(aBlock);
  sub_190D50920();

  [v34 ck:0 enumerateTextAnimationsIn:v44 options:0 using:v36];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v22 = &selRef_buttonAttributedString;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_190B118E4(int a1, int a2, int a3, id a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      result = [a4 state];
      if (result != 3)
      {
        return result;
      }

      v7 = &selRef_resume;
    }

    else
    {
      v7 = &selRef_invalidate;
    }
  }

  else
  {
    result = [a4 state];
    if (result != 2)
    {
      return result;
    }

    v7 = &selRef_pause;
  }

  v8 = *v7;

  return [a4 v8];
}

id sub_190B11988(uint64_t a1, int a2, int a3, id a4, void (*a5)(uint64_t, uint64_t, id, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = [a4 _animatorForTextAnimation_];
  if (result)
  {
    a5(a7, a8, a4, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190B11A2C()
{
  v1 = sub_190D53040();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger, v1, v3);
  v6 = v0;
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v6 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

    _os_log_impl(&dword_19020E000, v7, v8, "tick: %llu – reset coordinator", v9, 0xCu);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v5, v1);
  *(&v6->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation) = 0;

  v10 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedIdentifiers;
  swift_beginAccess();
  *(&v6->isa + v10) = MEMORY[0x1E69E7CD0];
}

void sub_190B11C4C(void *a1)
{
  v3 = sub_190D53040();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger, v3, v5);
  v8 = v1;
  v9 = a1;
  v10 = sub_190D53020();
  v11 = sub_190D576C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v12 = 134218242;
    *(v12 + 4) = *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v12 + 12) = 2080;
    v13 = [v9 debugDescription];
    v14 = sub_190D56F10();
    v23 = v3;
    v16 = v15;

    v17 = sub_19021D9F8(v14, v16, v25);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_19020E000, v10, v11, "tick: %llu – reset coordinator using continuation state: %s", v12, 0x16u);
    v18 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);

    (*(v4 + 8))(v7, v23);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation] = 0;

  v19 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedIdentifiers;
  swift_beginAccess();
  *&v8[v19] = MEMORY[0x1E69E7CD0];

  v20 = *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState];
  *&v8[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState] = v9;
  v21 = v9;
}

void sub_190B11F4C()
{
  v1 = v0;
  v2 = sub_190D53040();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount;
  if (*&v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount])
  {
    (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v2, v4);
    v8 = v1;
    v9 = sub_190D53020();
    v10 = sub_190D576C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = *(v8 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);
      *(v11 + 12) = 2048;
      *(v11 + 14) = *&v1[v7];

      _os_log_impl(&dword_19020E000, v9, v10, "tick: %llu – reset backoff state from loopCount=%ld to loopCount=0", v11, 0x16u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    else
    {

      v9 = v8;
    }

    (*(v3 + 8))(v6, v2);
    *&v1[v7] = 0;
  }
}

void sub_190B12150(void (*a1)(_BYTE *, _BYTE *, uint64_t), void (*a2)(void, void))
{
  v3 = v2;
  v301 = a2;
  v298 = a1;
  v289 = sub_190D56760();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v273 = &v260[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v275 = &v260[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v276 = &v260[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v285 = &v260[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v287 = &v260[-v12];
  v304 = sub_190D53040();
  v300 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304);
  v280 = &v260[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v274 = &v260[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v279 = &v260[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v278 = &v260[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v281 = &v260[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v286 = &v260[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v290 = &v260[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v291 = &v260[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v303 = &v260[-v29];
  v30 = sub_190D51840();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v260[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v260[-v35];
  v37 = sub_190D567F0();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v277 = &v260[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v282 = &v260[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v292 = &v260[-v43];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v260[-v45];
  v47 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount;
  ++*&v3[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_updateCount];
  if (qword_1EAD46B50 != -1)
  {
    swift_once();
  }

  v48 = *(qword_1EAD46B58 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker__tickCounter) >> 1;
  v299 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter;
  *&v3[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter] = v48;
  sub_190D567B0();
  v49 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_now;
  swift_beginAccess();
  v293 = v38;
  v50 = *(v38 + 40);
  v283 = v49;
  v284 = v46;
  v302 = v37;
  v50(&v3[v49], v46, v37);
  swift_endAccess();
  sub_190D517F0();
  sub_190D517C0();
  v52 = v51;
  v53 = *(v31 + 8);
  v53(v36, v30);
  v54 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_resumeDate;
  swift_beginAccess();
  (*(v31 + 16))(v33, &v3[v54], v30);
  sub_190D517C0();
  v56 = v55;
  v53(v33, v30);
  v57 = *&v3[v47];
  v58 = v300;
  v59 = v300[2];
  v294 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger;
  v60 = v303;
  v61 = v304;
  v296 = (v300 + 2);
  v295 = v59;
  v59(v303, &v3[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v304);
  v62 = v3;
  v63 = v301;
  sub_190D52690();
  v64 = sub_190D53020();
  v65 = sub_190D576C0();

  v66 = os_log_type_enabled(v64, v65);
  v297 = v3;
  if (v66)
  {
    v67 = v57 / fmax(v52 - v56, 1.0);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v308 = v69;
    *v68 = 134218754;
    *(v68 + 4) = *&v3[v299];
    *(v68 + 12) = 2048;
    *(v68 + 14) = *&v3[v47];

    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_19021D9F8(v298, v63, &v308);
    *(v68 + 32) = 2048;
    *(v68 + 34) = v67;
    _os_log_impl(&dword_19020E000, v64, v65, "tick: %llu – update #%lu – reason: %s - speed: %f", v68, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x193AF7A40](v69, -1, -1);
    v70 = v304;
    MEMORY[0x193AF7A40](v68, -1, -1);

    v71 = v58;
    v72 = v58[1];
    v72(v303, v70);
  }

  else
  {

    v71 = v58;
    v72 = v58[1];
    v72(v60, v61);
  }

  v73 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  swift_beginAccess();
  v74 = v302;
  if ((v62[v73] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v76 = [Strong canStartNewTextAnimationsInTextEffectCoordinator_];
      swift_unknownObjectRelease();
      if (v76)
      {
        v77 = sub_190B15128();
        if (v77)
        {
          v78 = v77;
          v62[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidOrIdleAnimator] = 0;
          v62[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidAnimation] = 0;
          v79 = OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator;
          v80 = *(v77 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator);
          *&v62[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation] = v77;
          swift_unknownObjectRetain();
          sub_190D50920();

          v305 = 0;
          v306 = 0xE000000000000000;
          sub_190D582B0();

          v305 = 0xD00000000000001ELL;
          v306 = 0x8000000190E73960;
          v81 = *(v78 + 16);
          v82 = *(v78 + 24);
          sub_190D52690();
          MEMORY[0x193AF28B0](v81, v82);

          sub_190B176B8(v78 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_minimumDelay, v305, v306);

          v83 = *(v78 + 16);
          v84 = *(v78 + 24);
          swift_beginAccess();
          sub_190D52690();
          sub_1908AA174(&v307, v83, v84);
          swift_endAccess();

          swift_beginAccess();
          v85 = swift_unknownObjectWeakLoadStrong();
          if (!v85)
          {
LABEL_38:
            [v80 start];

            swift_unknownObjectRelease();
            return;
          }

          v86 = v85;
          v87 = [*(v78 + v79) animation];
          if ([v87 respondsToSelector_])
          {
            v88 = [v87 name];
            v89 = sub_190D56F10();
            v91 = v90;

            if (v89 == 0x65646F6C707865 && v91 == 0xE700000000000000)
            {

LABEL_36:
              sub_190D52690();
              v180 = sub_190D56ED0();

              v181 = [v86 textEffectCoordinator:v62 explodeConfigurationForTextViewIdentifier:v180];

              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_190B145A0();

              swift_unknownObjectRelease();
              goto LABEL_37;
            }

            v179 = sub_190D58760();

            if (v179)
            {
              goto LABEL_36;
            }
          }

LABEL_37:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_38;
        }

        v92 = v297;
        v295(v291, &v297[v294], v304);
        v272 = v62;
        v93 = v62;
        v94 = sub_190D53020();
        v95 = sub_190D576C0();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 134217984;
          v97 = v299;
          *(v96 + 4) = *&v92[v299];

          _os_log_impl(&dword_19020E000, v94, v95, "tick: %llu – There is no next text animation to animate.", v96, 0xCu);
          MEMORY[0x193AF7A40](v96, -1, -1);
          v98 = v293;
        }

        else
        {

          v94 = v93;
          v98 = v293;
          v97 = v299;
        }

        v99 = v290;

        v100 = v71 + 1;
        v101 = v304;
        v72(v291, v304);
        v102 = *(&v93->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation);
        if (v102)
        {
          v267 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation;
          v103 = *(v98 + 16);
          v300 = (v98 + 16);
          v298 = v103;
          v103(v292, &v102[OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_startTime], v74);
          v295(v99, &v297[v294], v101);
          swift_retain_n();
          v268 = v93;
          v104 = v93;
          v105 = sub_190D53020();
          v106 = sub_190D576C0();

          v107 = os_log_type_enabled(v105, v106);
          v291 = v100;
          v303 = v102;
          if (v107)
          {
            v108 = swift_slowAlloc();
            v301 = swift_slowAlloc();
            v305 = v301;
            *v108 = 134218242;
            *(v108 + 4) = *&v297[v97];

            *(v108 + 12) = 2080;
            v109 = *(v102 + 2);
            v110 = *(v102 + 3);
            sub_190D52690();
            v111 = sub_19021D9F8(v109, v110, &v305);

            *(v108 + 14) = v111;
            v74 = v302;
            _os_log_impl(&dword_19020E000, v105, v106, "tick: %llu – Found existing managed animation with identifier: %s", v108, 0x16u);
            v112 = v301;
            __swift_destroy_boxed_opaque_existential_0(v301);
            MEMORY[0x193AF7A40](v112, -1, -1);
            v113 = v108;
            v98 = v293;
            MEMORY[0x193AF7A40](v113, -1, -1);
          }

          else
          {
          }

          v72(v290, v304);
          v120 = v284;
          v121 = v298;
          v298(v284, &v297[v283], v74);
          v122 = v287;
          sub_190D567D0();
          v123 = *(v98 + 8);
          v293 = v98 + 8;
          v301 = v123;
          v123(v120, v74);
          v124 = (*(&v104->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_configuration) + OBJC_IVAR___CKTextEffectCoordinatorConfiguration_loopDelayProvider);
          v125 = v124[3];
          v126 = v124[4];
          v265 = v124;
          __swift_project_boxed_opaque_existential_1(v124, v125);
          v270 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount;
          v127 = (*(v126 + 8))(*(&v104->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount), v125, v126);
          v128 = sub_190B0FFAC();
          v295(v286, &v297[v294], v304);
          v129 = v282;
          v121(v282, v292, v302);
          v130 = v288;
          v131 = *(v288 + 16);
          v132 = v285;
          v133 = v122;
          v134 = v289;
          v264 = v288 + 16;
          v263 = v131;
          v131(v285, v133, v289);
          v271 = v104;
          v135 = v104;
          sub_190D50920();
          v136 = sub_190D53020();
          v137 = sub_190D576C0();

          v269 = v137;
          v280 = v136;
          if (os_log_type_enabled(v136, v137))
          {
            v261 = v127 < v128;
            v138 = swift_slowAlloc();
            v262 = swift_slowAlloc();
            v305 = v262;
            *v138 = 134219522;
            v139 = v297;
            *(v138 + 4) = *&v297[v299];
            v266 = v135;

            *(v138 + 12) = 2080;
            v140 = *(v303 + 2);
            v141 = *(v303 + 3);
            sub_190D52690();
            v142 = sub_19021D9F8(v140, v141, &v305);

            *(v138 + 14) = v142;
            *(v138 + 22) = 2080;
            v307 = sub_190D567E0();
            sub_190B18E78();
            v143 = sub_190D58130();
            v145 = v144;
            v146 = v301;
            v301(v129, v302);
            v147 = sub_19021D9F8(v143, v145, &v305);

            *(v138 + 24) = v147;
            *(v138 + 32) = 2080;
            v148 = v284;
            v298(v284, &v139[v283], v302);
            v149 = sub_190D567E0();
            v146(v148, v302);
            v307 = v149;
            v150 = sub_190D58130();
            v152 = sub_19021D9F8(v150, v151, &v305);

            *(v138 + 34) = v152;
            v153 = v288;
            *(v138 + 42) = 2048;
            v154 = v285;
            v155 = sub_190B0FFAC();
            v290 = *(v153 + 8);
            (v290)(v154, v289);
            *(v138 + 44) = v155;
            *(v138 + 52) = 2048;
            *(v138 + 54) = v127;
            *(v138 + 62) = 1024;
            *(v138 + 64) = v261;
            v156 = v280;
            _os_log_impl(&dword_19020E000, v280, v269, "tick: %llu – Did enough time pass for identifier: %s? startTime: %s now: %s animatorRunningTime: %fs requiredDelay: %fs enoughTimeHasPassed: %{BOOL}d", v138, 0x44u);
            v157 = v262;
            swift_arrayDestroy();
            MEMORY[0x193AF7A40](v157, -1, -1);
            v158 = v138;
            v159 = v302;
            MEMORY[0x193AF7A40](v158, -1, -1);

            v72(v286, v304);
            v160 = v266;
          }

          else
          {

            v290 = *(v130 + 8);
            (v290)(v132, v134);
            v159 = v302;
            v301(v129, v302);
            v72(v286, v304);
            v160 = v135;
          }

          if (v127 < v128)
          {
            v161 = v303;
            v162 = sub_190D50920();
            v163 = sub_190B1538C(v162);

            if (v163)
            {

              v164 = v297;
              v295(v281, &v297[v294], v304);
              v165 = v160;
              v166 = sub_190D53020();
              v167 = sub_190D576C0();
              if (os_log_type_enabled(v166, v167))
              {
                v168 = swift_slowAlloc();
                *v168 = 134217984;
                *(v168 + 4) = *&v164[v299];

                _os_log_impl(&dword_19020E000, v166, v167, "tick: %llu – next and current animation are not identical.", v168, 0xCu);
                MEMORY[0x193AF7A40](v168, -1, -1);
              }

              else
              {

                v166 = v165;
              }

              v72(v281, v304);
              v305 = 0;
              v306 = 0xE000000000000000;
              sub_190D582B0();
              MEMORY[0x193AF28B0](0xD000000000000048, 0x8000000190E738D0);
              v191 = *(v161 + 2);
              v192 = *(v161 + 3);
              sub_190D52690();
              MEMORY[0x193AF28B0](v191, v192);

              MEMORY[0x193AF28B0](0xD000000000000033, 0x8000000190E73920);
              v193 = v305;
              v194 = v306;
              *(&v268->isa + v267) = 0;

              v195 = *(&v271->isa + v270);
              v196 = __OFADD__(v195, 1);
              v197 = (v195 + 1);
              if (!v196)
              {
                *(&v271->isa + v270) = v197;
                sub_190B12150(v193, v194);

                (v290)(v287, v289);
                v301(v292, v302);
                return;
              }

              __break(1u);
              goto LABEL_87;
            }

            v185 = v287;
            v186 = sub_190B0FFAC();
            [*&v161[OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator] duration];
            if (v187 <= v186)
            {
              v305 = 0;
              v306 = 0xE000000000000000;
              sub_190D582B0();
              MEMORY[0x193AF28B0](0xD000000000000047, 0x8000000190E73880);
              v232 = *(v161 + 2);
              v233 = *(v161 + 3);
              sub_190D52690();
              MEMORY[0x193AF28B0](v232, v233);

              v235 = v305;
              v234 = v306;
              *(&v268->isa + v267) = 0;

              v236 = *(&v271->isa + v270);
              v196 = __OFADD__(v236, 1);
              v237 = (v236 + 1);
              if (!v196)
              {
                *(&v271->isa + v270) = v237;
                sub_190B12150(v235, v234);

                (v290)(v185, v289);
                v301(v292, v302);
                return;
              }

              goto LABEL_91;
            }

            v188 = v276;
            *v276 = 1;
            v189 = v289;
            (*(v288 + 104))(v188, *MEMORY[0x1E69E7F48], v289);
            sub_190B176B8(v188, 0xD00000000000001FLL, 0x8000000190E73860);

            v190 = v290;
            (v290)(v188, v189);
            v190(v185, v189);
            v183 = v292;
            v184 = v302;
            goto LABEL_46;
          }

          if ((sub_190B14688(v303) & 1) == 0)
          {
            v182 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidAnimation;
            if (v160[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidAnimation] != 1)
            {
              v216 = swift_unknownObjectWeakLoadStrong();
              v217 = v160;
              v218 = v287;
              if (v216)
              {
                v219 = v216;
                sub_190D52690();
                v220 = sub_190D56ED0();

                [v219 textEffectCoordinator:v217 didDetectInvalidAnimationForTextViewIdentifier:v220];

                swift_unknownObjectRelease();
              }

              v266 = v217;
              v217[v182] = 1;
              v221 = v265[3];
              v222 = v265[4];
              __swift_project_boxed_opaque_existential_1(v265, v221);
              v223 = (*(v222 + 8))(*(&v271->isa + v270), v221, v222) * 1000.0;
              if ((*&v223 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v224 = v289;
                if (v223 > -9.22337204e18)
                {
                  v225 = v302;
                  if (v223 < 9.22337204e18)
                  {
                    v226 = v290;
                    if (!__OFADD__(v223, 500))
                    {
                      v227 = v276;
                      *v276 = v223 + 500;
                      (*(v288 + 104))(v227, *MEMORY[0x1E69E7F38], v224);
                      v305 = 0;
                      v306 = 0xE000000000000000;
                      sub_190D582B0();
                      MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E737D0);
                      v228 = *(v303 + 2);
                      v229 = *(v303 + 3);
                      sub_190D52690();
                      MEMORY[0x193AF28B0](v228, v229);

                      MEMORY[0x193AF28B0](0x636572209380E220, 0xAC0000006B636568);
                      sub_190B176B8(v227, v305, v306);

                      v226(v227, v224);
                      v226(v218, v224);
                      v301(v292, v225);
                      return;
                    }

                    goto LABEL_90;
                  }

LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  __break(1u);
                  goto LABEL_92;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            (v290)(v287, v289);
            v183 = v292;
            v184 = v159;
LABEL_46:
            v301(v183, v184);
            return;
          }

          v169 = v297;
          v170 = v278;
          v295(v278, &v297[v294], v304);
          v171 = v277;
          v298(v277, v292, v159);
          v172 = v160;
          v173 = sub_190D53020();
          v174 = v159;
          v175 = sub_190D576C0();
          if (os_log_type_enabled(v173, v175))
          {
            v176 = v171;
            v177 = swift_slowAlloc();
            *v177 = 134218240;
            *(v177 + 4) = *&v169[v299];

            *(v177 + 12) = 2048;
            v178 = sub_190D567E0();
            v301(v176, v174);
            *(v177 + 14) = v178;
            _os_log_impl(&dword_19020E000, v173, v175, "tick: %llu – found no next task > but we have a current task – start time: %llu", v177, 0x16u);
            MEMORY[0x193AF7A40](v177, -1, -1);
          }

          else
          {
            v301(v171, v174);

            v173 = v172;
          }

          v198 = v174;
          v199 = v169;
          v200 = v279;

          v201 = v170;
          v202 = v304;
          v72(v201, v304);
          v203 = *&v303[OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator];
          v295(v200, &v199[v294], v202);
          v204 = v172;
          swift_unknownObjectRetain();
          v205 = sub_190D53020();
          LODWORD(v298) = sub_190D576C0();
          v206 = os_log_type_enabled(v205, v298);
          v300 = v203;
          if (!v206)
          {

            v72(v200, v202);
            v230 = v289;
            v213 = v204;
            v231 = v198;
            goto LABEL_74;
          }

          v207 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v305 = v208;
          *v207 = 134218242;
          *(v207 + 4) = *&v199[v299];
          v209 = v204;

          *(v207 + 12) = 2080;
          v210 = [v203 state];
          v211 = v199;
          if (v210 > 1)
          {
            if (v210 != 2)
            {
              v212 = v290;
              v213 = v204;
              if (v210 == 3)
              {
                v214 = 0xE600000000000000;
                v215 = 0x646573756170;
                goto LABEL_73;
              }

LABEL_69:
              v214 = 0xE700000000000000;
              v215 = 0x6E776F6E6B6E75;
              goto LABEL_73;
            }

            v212 = v290;
            v214 = 0xE700000000000000;
            v215 = 0x676E6979616C70;
          }

          else
          {
            if (v210)
            {
              v212 = v290;
              v213 = v204;
              if (v210 == 1)
              {
                v214 = 0xE400000000000000;
                v215 = 1701602409;
LABEL_73:
                v290 = v212;
                v238 = sub_19021D9F8(v215, v214, &v305);

                *(v207 + 14) = v238;
                _os_log_impl(&dword_19020E000, v205, v298, "tick: %llu – found no next task > but we have a current task – and an animator in state: %s", v207, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v208);
                MEMORY[0x193AF7A40](v208, -1, -1);
                MEMORY[0x193AF7A40](v207, -1, -1);

                v72(v279, v304);
                v230 = v289;
                v231 = v302;
                v199 = v211;
LABEL_74:
                v239 = [v300 state];
                v240 = v288;
                if (v239 < 2)
                {
                  if ((*(&v213->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidOrIdleAnimator) & 1) == 0)
                  {
                    *(&v213->isa + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isWaitingForInvalidOrIdleAnimator) = 1;
                    v243 = fmax(v127 - sub_190B0FFAC(), 1.0);
                    if (v243 == INFINITY)
                    {
LABEL_92:
                      __break(1u);
                      goto LABEL_93;
                    }

                    v244 = v273;
                    if (v243 <= -9.22337204e18)
                    {
LABEL_93:
                      __break(1u);
                      goto LABEL_94;
                    }

                    if (v243 >= 9.22337204e18)
                    {
LABEL_94:
                      __break(1u);
                      return;
                    }

                    v245 = v275;
                    *v275 = v243;
                    (*(v240 + 104))(v245, *MEMORY[0x1E69E7F48], v230);
                    v295(v274, &v199[v294], v304);
                    v263(v244, v245, v230);
                    v246 = v213;
                    v247 = v244;
                    v248 = sub_190D53020();
                    v249 = sub_190D576C0();
                    if (os_log_type_enabled(v248, v249))
                    {
                      v250 = v246;
                      v251 = swift_slowAlloc();
                      *v251 = 134218496;
                      *(v251 + 4) = *&v199[v299];

                      *(v251 + 12) = 2048;
                      v252 = v271;
                      v253 = v270;
                      *(v251 + 14) = *(v271 + v270);

                      *(v251 + 22) = 2048;
                      v254 = sub_190B0FFAC();
                      (v290)(v247, v289);
                      *(v251 + 24) = v254;
                      _os_log_impl(&dword_19020E000, v248, v249, "tick: %llu – scheduling next update for loopCount: %ld nextUpdateInterval: %fs", v251, 0x20u);
                      v230 = v289;
                      MEMORY[0x193AF7A40](v251, -1, -1);
                    }

                    else
                    {

                      (v290)(v247, v230);
                      v252 = v271;
                      v253 = v270;
                    }

                    v72(v274, v304);
                    v305 = 0;
                    v306 = 0xE000000000000000;
                    sub_190D582B0();
                    MEMORY[0x193AF28B0](0xD000000000000031, 0x8000000190E73800);
                    v255 = *(v303 + 2);
                    v256 = *(v303 + 3);
                    sub_190D52690();
                    MEMORY[0x193AF28B0](v255, v256);

                    MEMORY[0x193AF28B0](0x1000000000000010, 0x8000000190E73840);
                    v307 = *(&v252->isa + v253);
                    v257 = sub_190D58720();
                    MEMORY[0x193AF28B0](v257);

                    v258 = v275;
                    sub_190B176B8(v275, v305, v306);

                    swift_unknownObjectRelease();

                    v259 = v290;
                    (v290)(v258, v230);
                    v259(v287, v230);
                    v183 = v292;
                    v184 = v302;
                    goto LABEL_46;
                  }
                }

                else if (v239 != 2)
                {
                  v241 = v287;
                  v242 = v301;

                  swift_unknownObjectRelease();
                  (v290)(v241, v230);
                  v242(v292, v231);
                  return;
                }

                swift_unknownObjectRelease();
                (v290)(v287, v230);
                v183 = v292;
                v184 = v231;
                goto LABEL_46;
              }

              goto LABEL_69;
            }

            v212 = v290;
            v214 = 0xE700000000000000;
            v215 = 0x64696C61766E69;
          }

          v213 = v209;
          goto LABEL_73;
        }

        v114 = v297;
        v115 = v280;
        v295(v280, &v297[v294], v101);
        v116 = v93;
        v117 = sub_190D53020();
        v118 = sub_190D576C0();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 134217984;
          *(v119 + 4) = *&v114[v97];

          _os_log_impl(&dword_19020E000, v117, v118, "tick: %llu – Cannot check passed time because there is no current managed text animation.", v119, 0xCu);
          MEMORY[0x193AF7A40](v119, -1, -1);
        }

        else
        {

          v117 = v116;
        }

        v72(v115, v304);
      }
    }
  }
}

void sub_190B145A0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  sub_190B18CDC();
  v1 = sub_190D56D60();

  v2 = sub_190D56ED0();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_190B14688(uint64_t a1)
{
  v3 = sub_190D53040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v75 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v75 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  v17 = *(v4 + 16);
  v80 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger;
  v81 = v17;
  v82 = v4 + 16;
  (v17)(&v75 - v15, &v1[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v3, v14);
  v83 = v1;
  v18 = v1;
  sub_190D50920();
  v19 = sub_190D53020();
  v20 = sub_190D576C0();

  v21 = os_log_type_enabled(v19, v20);
  v78 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v4;
    v24 = v3;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v22 = 134218242;
    *(v22 + 4) = *&v18[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_19021D9F8(*(a1 + 16), *(a1 + 24), aBlock);
    _os_log_impl(&dword_19020E000, v19, v20, "tick: %llu – checking if managed animation is still valid. id: %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    v3 = v24;
    MEMORY[0x193AF7A40](v26, -1, -1);
    MEMORY[0x193AF7A40](v22, -1, -1);

    v27 = v23;
  }

  else
  {

    v27 = v4;
  }

  v84 = *(v27 + 8);
  v84(v16, v3);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = v85;
  if (!Strong || (v32 = Strong, v33 = sub_190D56ED0(), v79 = v28, v34 = v33, v35 = [v32 textEffectCoordinator:v18 textViewForTextViewIdentifier:v33], swift_unknownObjectRelease(), v34, v28 = v79, !v35))
  {
    v81(v31, &v83[v80], v3);
    v55 = v18;
    sub_190D50920();
    v56 = sub_190D53020();
    v57 = sub_190D576C0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v28;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 134218242;
      *(v59 + 4) = *&v55[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_19021D9F8(v58, v29, aBlock);
      _os_log_impl(&dword_19020E000, v56, v57, "tick: %llu – managed animation (id: %s) not valid because there is no text view with that identifier.", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x193AF7A40](v60, -1, -1);
      MEMORY[0x193AF7A40](v59, -1, -1);
    }

    else
    {
    }

    v61 = v31;
    goto LABEL_17;
  }

  if (![v35 allowsTextAnimations])
  {

    return 0;
  }

  v75 = v29;
  v85 = v3;
  v36 = *(a1 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator);
  v37 = [v35 _animatorForTextAnimation_];
  swift_unknownObjectRelease();
  if (!v37)
  {
    v63 = v76;
    v3 = v85;
    v81(v76, &v83[v80], v85);
    v64 = v18;
    sub_190D50920();
    v65 = sub_190D53020();
    v66 = sub_190D576C0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 134218242;
      *(v67 + 4) = *&v64[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_19021D9F8(v79, v75, aBlock);
      _os_log_impl(&dword_19020E000, v65, v66, "tick: %llu – managed animation (id: %s) not valid because it does not have an animator for the animation.", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x193AF7A40](v68, -1, -1);
      MEMORY[0x193AF7A40](v67, -1, -1);
    }

    else
    {
    }

    v61 = v63;
LABEL_17:
    v62 = v3;
LABEL_18:
    v84(v61, v62);
    return 0;
  }

  swift_unknownObjectRelease();
  v38 = [v36 animation];
  v39 = [v35 attributedText];
  if (!v39)
  {
    swift_unknownObjectRelease();
    v47 = v85;
    v48 = v75;
LABEL_25:
    v69 = v78;
    v81(v78, &v83[v80], v47);
    v70 = v18;
    sub_190D50920();
    v71 = sub_190D53020();
    v72 = sub_190D576C0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 134218242;
      *(v73 + 4) = *&v70[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_19021D9F8(v79, v48, aBlock);
      _os_log_impl(&dword_19020E000, v71, v72, "tick: %llu – managed animation (id: %s) not valid because the text view no longer contains the managed animation.", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x193AF7A40](v74, -1, -1);
      MEMORY[0x193AF7A40](v73, -1, -1);
    }

    else
    {
    }

    v61 = v69;
    v62 = v47;
    goto LABEL_18;
  }

  v87 = 0;
  *&v40 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
  *(&v75 - 2) = v38;
  *(&v75 - 1) = &v87;
  v42 = v41;
  v76 = [v41 length];
  v43 = swift_allocObject();
  *(v43 + 16) = sub_190B19390;
  *(v43 + 24) = &v75 - 4;
  aBlock[4] = sub_190B19414;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_80_1;
  v44 = _Block_copy(aBlock);
  sub_190D50920();

  [v42 ck:0 enumerateTextAnimationsIn:v76 options:0 using:v44];

  _Block_release(v44);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v47 = v85;
  v48 = v75;
  v49 = v77;
  if ((v87 & 1) == 0)
  {
    goto LABEL_25;
  }

  v81(v77, &v83[v80], v85);
  v50 = v18;
  sub_190D50920();
  v51 = sub_190D53020();
  v52 = sub_190D576C0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 134218242;
    *(v53 + 4) = *&v50[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_19021D9F8(v79, v48, aBlock);
    _os_log_impl(&dword_19020E000, v51, v52, "tick: %llu – managed animation (id: %s) still valid.", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x193AF7A40](v54, -1, -1);
    MEMORY[0x193AF7A40](v53, -1, -1);
  }

  else
  {
  }

  v84(v49, v47);
  return 1;
}

uint64_t sub_190B15128()
{
  v1 = sub_190D567F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation);
  if (!v11 || (v21[1] = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedTextAnimation, v12 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_now, swift_beginAccess(), v13 = *(v2 + 16), v21[2] = v0, v13(v10, v0 + v12, v1), v13(v4, v11 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_startTime, v1), v14 = OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_minimumDelay, sub_190D50920(), MEMORY[0x193AF20A0](v4, v11 + v14), v15 = *(v2 + 8), v15(v4, v1), sub_190B19398(&qword_1EAD5D8E8, MEMORY[0x1E69E7FF8]), v16 = sub_190D56E00(), , v15(v7, v1), v15(v10, v1), v17 = 0, (v16 & 1) == 0))
  {
    v18 = sub_190D50920();
    sub_190B16490(v18);
    v17 = v19;
  }

  return v17;
}

uint64_t sub_190B1538C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v126 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v124 = v119 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v119 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v119 - v13;
  v129 = v1;
  v125 = a1;
  v130 = v15;
  v131 = v11;
  if (a1)
  {
    v142 = *(a1 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_ignoreEligibilityCheck);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_190DD1D90;
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    swift_bridgeObjectRetain_n();
    sub_190D50920();
    v19 = sub_190B16334(v17, v18);
    v4 = v130;

    aBlock[0] = v16;
    sub_190CA9D08(v19);

    v20 = aBlock[0];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = [Strong visibleTextViewIdentifiersFor_];
      swift_unknownObjectRelease();
      v20 = sub_190D57180();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v148 = v20;
    v23 = *&v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState];
    if (v23)
    {
      v24 = v5;
      v25 = &v23[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier];
      v26 = *(v20 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = *v25;
        v29 = *(v25 + 1);
        v30 = (v20 + 40);
        while (1)
        {
          v31 = *(v30 - 1) == v28 && *v30 == v29;
          if (v31 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          ++v27;
          v30 += 2;
          if (v26 == v27)
          {
            goto LABEL_15;
          }
        }

        v33 = v23;
        sub_190A0DC68(v27);

        v20 = v148;
      }

      else
      {
LABEL_15:
        v32 = v23;
      }

      v142 = v23[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_190DD1D90;
      v35 = *(v25 + 1);
      *(v34 + 32) = *v25;
      *(v34 + 40) = v35;
      aBlock[0] = v34;
      sub_190D52690();
      sub_190CA9D08(v20);

      v20 = aBlock[0];
      v2 = v129;
      v4 = v130;
      v11 = v131;
      v5 = v24;
    }

    else
    {
      v142 = 0;
      v2 = v129;
    }
  }

  v36 = sub_190B18060(v20);

  v37 = *(v5 + 16);
  v137 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger;
  v136 = v5 + 16;
  v135 = v37;
  v37(v14, &v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v4);
  v38 = v2;
  sub_190D50920();
  v39 = sub_190D53020();
  v40 = v4;
  v41 = sub_190D576C0();

  v42 = os_log_type_enabled(v39, v41);
  v141 = v38;
  v122 = v36;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v143 = v5;
    aBlock[0] = v44;
    v140 = v14;
    v45 = v44;
    *v43 = 134218242;
    *(v43 + 4) = *&v38[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v43 + 12) = 2080;
    sub_190C88838();
    v48 = sub_19021D9F8(v46, v47, aBlock);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_19020E000, v39, v41, "tick: %llu – trying to find next animation for identifiers: %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    v36 = v122;
    v5 = v143;
    MEMORY[0x193AF7A40](v45, -1, -1);
    MEMORY[0x193AF7A40](v43, -1, -1);

    v49 = *(v5 + 8);
    v50 = v140;
  }

  else
  {

    v49 = *(v5 + 8);
    v50 = v14;
  }

  v138 = v49;
  v49(v50, v40);
  v51 = v40;
  aBlock[0] = *(v36 + 16);
  sub_190D52690();
  v52 = sub_190D52690();
  sub_190CA9D08(v52);
  v53 = aBlock[0];
  v134 = *(aBlock[0] + 16);
  if (!v134)
  {
LABEL_74:

    return 0;
  }

  v123 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_continuationState;
  v128 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter;
  v54 = v141;
  v139 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_delegate;
  result = swift_beginAccess();
  v56 = 0;
  v133 = v5 + 8;
  v119[1] = v145;
  v57 = (v53 + 40);
  *&v58 = 134218242;
  v127 = v58;
  *&v58 = 136315138;
  v121 = v58;
  LODWORD(v140) = v142;
  v59 = v129;
  v60 = v53;
  v132 = v53;
  while (v56 < *(v60 + 16))
  {
    v61 = *(v57 - 1);
    v62 = *v57;
    v63 = swift_unknownObjectWeakLoadStrong();
    sub_190D52690();
    v143 = v61;
    if (v63)
    {
      v64 = sub_190D56ED0();
      v65 = [v63 textEffectCoordinator:v54 textViewIdentifierIsCandidateForTextEffectPlayback:v64];

      swift_unknownObjectRelease();
      v66 = v65 | v140;
      v31 = v65 == 0;
      v54 = v141;
      v67 = v142;
      if (v31)
      {
        v67 = v140;
      }

      v142 = v67;
      if ((v66 & 1) == 0)
      {
LABEL_46:
        v135(v11, &v59[v137], v51);
        v83 = v54;
        sub_190D52690();
        v84 = sub_190D53020();
        v85 = v54;
        v86 = sub_190D576C0();

        if (os_log_type_enabled(v84, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          aBlock[0] = v88;
          *v87 = v127;
          *(v87 + 4) = *&v85[v128];

          *(v87 + 12) = 2080;
          v89 = sub_19021D9F8(v143, v62, aBlock);

          *(v87 + 14) = v89;
          _os_log_impl(&dword_19020E000, v84, v86, "tick: %llu – do nothing for identifier %s because it is not a candidate for playback.", v87, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v88);
          v90 = v88;
          v11 = v131;
          MEMORY[0x193AF7A40](v90, -1, -1);
          v91 = v87;
          v51 = v130;
          MEMORY[0x193AF7A40](v91, -1, -1);
        }

        else
        {
        }

        result = v138(v11, v51);
        v142 = v140;
        goto LABEL_26;
      }
    }

    else
    {
      if ((v140 & 1) == 0)
      {
        goto LABEL_46;
      }

      v142 = 1;
    }

    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v68;
      v70 = sub_190D56ED0();
      v71 = [v69 textEffectCoordinator:v54 textViewForTextViewIdentifier:v70];
      swift_unknownObjectRelease();

      if (v71)
      {
        v72 = v125;
        if (v125 && (v143 == *(v125 + 16) && v62 == *(v125 + 24) || (sub_190D58760() & 1) != 0))
        {
          v73 = *(v72 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator);
          sub_190D50920();
          v74 = [v73 animation];
          v75 = [v71 attributedText];
          if (v75)
          {
            v76 = v75;
            v119[2] = v119;
            v147 = 0;
            v146 = 0;
            *&v77 = MEMORY[0x1EEE9AC00](v75).n128_u64[0];
            v119[-4] = &v146;
            v119[-3] = &v147;
            v119[-2] = v74;
            v120 = [v78 length];
            v79 = swift_allocObject();
            *(v79 + 16) = sub_190B19370;
            *(v79 + 24) = &v119[-6];
            v145[2] = sub_190B1937C;
            v145[3] = v79;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v145[0] = sub_1908A2B98;
            v145[1] = &block_descriptor_66_1;
            v80 = _Block_copy(aBlock);
            sub_190D50920();

            [v76 ck:0 enumerateTextAnimationsIn:v120 options:0 using:v80];

            _Block_release(v80);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
            swift_unknownObjectRelease();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_77;
            }

            v82 = v147;
            v59 = v129;
            goto LABEL_68;
          }

          v109 = v71;

          swift_unknownObjectRelease();
          v51 = v130;
        }

        else
        {
          v101 = *&v141[v123];
          v102 = v143;
          if (v101 && (*&v101[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier] == v143 ? (v103 = *&v101[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier + 8] == v62) : (v103 = 0), v103 || (sub_190D58760() & 1) != 0))
          {
            v104 = v101;
            v105 = [v71 attributedText];
            if (v105)
            {
              v106 = v105;
              v107 = OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText;
              v108 = *&v104[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText];
              if (v108 >= [v105 length])
              {

                v82 = 0;
              }

              else
              {
                v82 = [v106 ck:*&v104[v107] textAnimationAt:?];
              }

              v59 = v129;
            }

            else
            {

              v82 = 0;
            }

            v110 = *&v141[v123];
            *&v141[v123] = 0;

LABEL_68:
            v51 = v130;
            if (v82)
            {
LABEL_75:

              _s25ManagedAnimationCandidateCMa();
              result = swift_allocObject();
              *(result + 16) = v143;
              *(result + 24) = v62;
              *(result + 32) = v71;
              *(result + 40) = v82;
              *(result + 48) = v142 & 1;
              return result;
            }
          }

          else
          {
            v82 = [v71 ck_firstTextAnimation];
            v142 = 0;
            LODWORD(v140) = 0;
            if (v82)
            {
              goto LABEL_75;
            }
          }

          v109 = v71;
        }

        v111 = v124;
        v135(v124, &v59[v137], v51);
        sub_190D52690();
        v112 = sub_190D53020();
        v113 = sub_190D576C0();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          aBlock[0] = v115;
          *v114 = v121;
          v116 = sub_19021D9F8(v143, v62, aBlock);

          *(v114 + 4) = v116;
          v60 = v132;
          _os_log_impl(&dword_19020E000, v112, v113, "do nothing for identifier %s because there was no next animation in the text view.", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v115);
          v117 = v115;
          v51 = v130;
          MEMORY[0x193AF7A40](v117, -1, -1);
          v118 = v114;
          v59 = v129;
          MEMORY[0x193AF7A40](v118, -1, -1);
        }

        else
        {
        }

        result = v138(v111, v51);
        v11 = v131;
        goto LABEL_27;
      }
    }

    v92 = v126;
    v135(v126, &v59[v137], v51);
    v93 = v54;
    sub_190D52690();
    v94 = sub_190D53020();
    v95 = sub_190D576C0();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock[0] = v97;
      *v96 = v127;
      *(v96 + 4) = *&v54[v128];

      *(v96 + 12) = 2080;
      v98 = sub_19021D9F8(v143, v62, aBlock);

      *(v96 + 14) = v98;
      _os_log_impl(&dword_19020E000, v94, v95, "tick: %llu – do nothing for identifier %s because there is no associated text view.", v96, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v99 = v97;
      v51 = v130;
      MEMORY[0x193AF7A40](v99, -1, -1);
      v100 = v96;
      v59 = v129;
      MEMORY[0x193AF7A40](v100, -1, -1);
    }

    else
    {
    }

    result = v138(v92, v51);
    v11 = v131;
LABEL_26:
    v60 = v132;
LABEL_27:
    ++v56;
    v57 += 2;
    v54 = v141;
    if (v134 == v56)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_190B16334(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_15:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v6 = [Strong visibleTextViewIdentifiersFor_];
  swift_unknownObjectRelease();
  v7 = sub_190D57180();

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_3:
  v9 = (v7 + 40);
  v10 = 1;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = *(v9 - 1);
    if (result == a1 && *v9 == a2)
    {
      break;
    }

    result = sub_190D58760();
    if (result)
    {
      break;
    }

    ++v10;
    v9 += 2;
    if (v10 - v8 == 1)
    {
      goto LABEL_16;
    }
  }

  if (v8 < v10)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    sub_190C22C30(v7, v7 + 32, v10, (2 * v8) | 1);
    v11 = v14;
LABEL_16:

    return v11;
  }

  __break(1u);
  return result;
}

void sub_190B16490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D567F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D53040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v71 - v13;
  v14 = sub_190D56760();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = (&v71 - v18);
  v19 = sub_190B1538C(a1);
  if (!v19)
  {
    return;
  }

  v82 = v16;
  v78 = v7;
  v79 = v5;
  v80 = v4;
  v20 = *(v19 + 24);
  v84 = *(v19 + 16);
  v77 = *(v19 + 48);
  v21 = *(v19 + 40);
  v22 = *(v19 + 32);
  sub_190D52690();
  swift_unknownObjectRetain();
  v23 = sub_190B16E00(v22, v21);
  v83 = v22;
  if (!v23)
  {
    (*(v9 + 16))(v11, &v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v8);
    sub_190D52690();
    v27 = v2;
    v28 = v20;
    v29 = sub_190D53020();
    v30 = sub_190D576C0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v76 = v9;
      v32 = v31;
      v33 = swift_slowAlloc();
      v89[0] = v33;
      *v32 = 134218242;
      *(v32 + 4) = *&v27[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

      *(v32 + 12) = 2080;
      v34 = sub_19021D9F8(v84, v28, v89);

      *(v32 + 14) = v34;
      _os_log_impl(&dword_19020E000, v29, v30, "tick: %llu – do nothing for identifier %s because there was no next animation in the text view.", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x193AF7A40](v33, -1, -1);
      MEMORY[0x193AF7A40](v32, -1, -1);
      swift_unknownObjectRelease();

      (*(v76 + 8))(v11, v8);
    }

    else
    {

      swift_unknownObjectRelease();

      (*(v9 + 8))(v11, v8);
    }

    return;
  }

  v24 = v23;
  v81 = v20;
  v25 = [v22 ck:v21 isLastTextAnimation:?];
  if ([v24 respondsToSelector_])
  {
    [v24 nextAnimationTriggerDelay];
  }

  else
  {
    [v24 duration];
    v26 = v35 * 0.85;
  }

  v36 = 0.1;
  if (!v25)
  {
    v36 = 0.0;
  }

  v37 = (v36 + v26) * 1000.0;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v74 = v24;
  v75 = v8;
  v38 = v87;
  *v86 = v37;
  v39 = *MEMORY[0x1E69E7F38];
  v40 = *(v38 + 104);
  v40();
  v76 = v9;
  if (v25)
  {
    v41 = (*&v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_configuration] + OBJC_IVAR___CKTextEffectCoordinatorConfiguration_loopDelayProvider);
    v42 = v41[3];
    v43 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v44 = (*(v43 + 8))(*&v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_loopCount], v42, v43) * 1000.0;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v44 > -9.22337204e18)
      {
        v9 = v76;
        v22 = v83;
        if (v44 < 9.22337204e18)
        {
          v45 = v82;
          *v82 = v44;
          v46 = v39;
          v47 = v88;
          (v40)(v45, v46, v88);
          sub_190B176B8(v45, 0xD000000000000026, 0x8000000190E73C10);
          (*(v87 + 8))(v45, v47);
          goto LABEL_18;
        }

LABEL_32:
        __break(1u);
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_18:
  v48 = v85;
  v49 = v75;
  (*(v9 + 16))(v85, &v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v75);
  v50 = v81;
  sub_190D52690();
  swift_unknownObjectRetain();
  v51 = v2;
  v52 = sub_190D53020();
  v53 = sub_190D576C0();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v52, v53))
  {
    v73 = v53;
    v54 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v54 = 134218498;
    *(v54 + 4) = *&v51[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_19021D9F8(v84, v50, v89);
    *(v54 + 22) = 2080;
    if ([v21 respondsToSelector_])
    {
      v55 = [v21 name];
      v56 = sub_190D56F10();
      v58 = v57;

      v49 = v75;
    }

    else
    {
      v58 = 0xE300000000000000;
      v56 = 7104878;
    }

    v59 = sub_19021D9F8(v56, v58, v89);

    *(v54 + 24) = v59;
    _os_log_impl(&dword_19020E000, v52, v73, "tick: %llu – Creating new ManagedAnimation (id: %s – animation: %s", v54, 0x20u);
    v60 = v72;
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v60, -1, -1);
    MEMORY[0x193AF7A40](v54, -1, -1);
    swift_unknownObjectRelease();

    (*(v76 + 8))(v85, v49);
    v22 = v83;
  }

  else
  {

    swift_unknownObjectRelease();

    (*(v9 + 8))(v48, v49);
  }

  v61 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_now;
  swift_beginAccess();
  v63 = v78;
  v62 = v79;
  v64 = &v51[v61];
  v65 = v80;
  (*(v79 + 16))(v78, v64, v80);
  v66 = *(v87 + 32);
  v67 = v82;
  v68 = v88;
  v66(v82, v86, v88);
  _s16ManagedAnimationCMa();
  v69 = swift_allocObject();
  v70 = v81;
  *(v69 + 16) = v84;
  *(v69 + 24) = v70;
  (*(v62 + 32))(v69 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_startTime, v63, v65);
  *(v69 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_textView) = v22;
  v66((v69 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_minimumDelay), v67, v68);
  *(v69 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_animator) = v74;
  *(v69 + OBJC_IVAR____TtCC7ChatKit23CKTextEffectCoordinator16ManagedAnimation_ignoreEligibilityCheck) = v77;
}

id sub_190B16E00(void *a1, uint64_t a2)
{
  v80 = a1;
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  v18 = *(v5 + 16);
  v77 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger;
  v78 = v18;
  (v18)(&v74 - v16, &v2[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger], v4, v15);
  v79 = v2;
  v19 = v2;
  v20 = sub_190D53020();
  v21 = sub_190D576C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a2;
    v23 = v13;
    v24 = v5;
    v25 = v4;
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(v19 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

    _os_log_impl(&dword_19020E000, v20, v21, "tick: %llu – Coordinator asked to return animator", v26, 0xCu);
    v27 = v26;
    v4 = v25;
    v5 = v24;
    v13 = v23;
    a2 = v22;
    MEMORY[0x193AF7A40](v27, -1, -1);
  }

  else
  {

    v20 = v19;
  }

  v28 = *(v5 + 8);
  v28(v17, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = v80;
  if (Strong)
  {
    v31 = Strong;
    v32 = type metadata accessor for CKTextEffectCoordinator.AnimatorRequest();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR___CKTextEffectCoordinatorAnimatorRequest_textView] = v30;
    *&v33[OBJC_IVAR___CKTextEffectCoordinatorAnimatorRequest_animation] = a2;
    v81.receiver = v33;
    v81.super_class = v32;
    v34 = v30;
    swift_unknownObjectRetain();
    v35 = objc_msgSendSuper2(&v81, sel_init);
    [v31 textEffectCoordinator:v19 willRequestAnimatorUsing:v35];
    swift_unknownObjectRelease();
  }

  if (![v30 allowsTextAnimations])
  {
    v49 = v76;
    v78(v76, &v79[v77], v4);
    v50 = v19;
    v51 = sub_190D53020();
    v52 = sub_190D576C0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v4;
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = *(v50 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

      _os_log_impl(&dword_19020E000, v51, v52, "tick: %llu – Coordinator asked to return animator – but the textView does not allow text animations…", v54, 0xCu);
      v55 = v54;
      v4 = v53;
LABEL_16:
      MEMORY[0x193AF7A40](v55, -1, -1);
LABEL_24:

      v28(v49, v4);
      return 0;
    }

LABEL_23:

    v51 = v50;
    goto LABEL_24;
  }

  [v30 _setCustomRenderDisplayLink_];
  v36 = v30;
  v37 = a2;
  v38 = [v36 _animatorForTextAnimation_];
  if (v38)
  {
    v39 = v38;
    if ([v38 state])
    {
      v78(v13, &v79[v77], v4);
      v40 = v19;
      swift_unknownObjectRetain();
      v41 = sub_190D53020();
      v42 = sub_190D576C0();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v41, v42))
      {

        v70 = v13;
        v71 = v4;
LABEL_35:
        v28(v70, v71);
        return v39;
      }

      v43 = v13;
      v76 = v4;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 134218242;
      *(v44 + 4) = *(v40 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

      *(v44 + 12) = 2080;
      v46 = [v39 state];
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          v47 = 0xE700000000000000;
          v48 = 0x676E6979616C70;
          goto LABEL_34;
        }

        if (v46 == 3)
        {
          v47 = 0xE600000000000000;
          v48 = 0x646573756170;
          goto LABEL_34;
        }
      }

      else
      {
        if (!v46)
        {
          v47 = 0xE700000000000000;
          v48 = 0x64696C61766E69;
          goto LABEL_34;
        }

        if (v46 == 1)
        {
          v47 = 0xE400000000000000;
          v48 = 1701602409;
LABEL_34:
          v72 = sub_19021D9F8(v48, v47, aBlock);

          *(v44 + 14) = v72;
          _os_log_impl(&dword_19020E000, v41, v42, "tick: %llu – Coordinator asked to return animator – found existing animator with valid state (%s)", v44, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x193AF7A40](v45, -1, -1);
          MEMORY[0x193AF7A40](v44, -1, -1);

          v70 = v43;
          v71 = v76;
          goto LABEL_35;
        }
      }

      v47 = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E75;
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
  }

  v76 = v4;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v58 = v80;
  *(v57 + 16) = v56;
  *(v57 + 24) = v58;
  aBlock[4] = sub_190B19368;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190AEDA9C;
  aBlock[3] = &block_descriptor_60_0;
  v59 = _Block_copy(aBlock);
  v60 = v58;

  v39 = [v60 _animatorForTextAnimation_notify_];
  _Block_release(v59);
  if (!v39)
  {
    v4 = v76;
    v49 = v74;
    v78(v74, &v79[v77], v76);
    v50 = v19;
    v51 = sub_190D53020();
    v68 = sub_190D576C0();
    if (os_log_type_enabled(v51, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = *(v50 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

      _os_log_impl(&dword_19020E000, v51, v68, "tick: %llu – Coordinator asked to return animator – tried to use text view to create a new animator - but we got only nil.", v69, 0xCu);
      v55 = v69;
      v4 = v76;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v61 = v76;
  v62 = v75;
  v78(v75, &v79[v77], v76);
  v63 = v19;
  v64 = sub_190D53020();
  v65 = sub_190D576C0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = *(v63 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter);

    _os_log_impl(&dword_19020E000, v64, v65, "tick: %llu – Coordinator asked to return animator – text view was used to create a new animator", v66, 0xCu);
    v67 = v66;
    v61 = v76;
    MEMORY[0x193AF7A40](v67, -1, -1);
  }

  else
  {

    v64 = v63;
  }

  v28(v62, v61);
  return v39;
}

uint64_t sub_190B176B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_190D56770();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D567A0();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D567F0();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v46 - v16;
  v17 = sub_190D53040();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v21 = sub_190B17D00();
  (*(v18 + 16))(v20, v4 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger, v17);
  v22 = v4;
  sub_190D52690();
  v23 = sub_190D53020();
  v24 = sub_190D576C0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = a2;
    v26 = a3;
    v47 = v14;
    v27 = v25;
    v46 = v21 / 1000;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 134218498;
    *(v28 + 4) = *&v22[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

    *(v28 + 12) = 2048;
    *(v28 + 14) = v46;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_19021D9F8(v27, v26, aBlock);
    v30 = v24;
    v31 = v26;
    _os_log_impl(&dword_19020E000, v23, v30, "tick: %llu – scheduleUpdate in %lldms – reason: %s", v28, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x193AF7A40](v29, -1, -1);
    MEMORY[0x193AF7A40](v28, -1, -1);

    (*(v18 + 8))(v20, v17);
    v32 = v27;
    v14 = v47;
  }

  else
  {

    (*(v18 + 8))(v20, v17);
    v31 = a3;
    v32 = a2;
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v47 = sub_190D57870();
  v33 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_now;
  swift_beginAccess();
  v34 = v50;
  v35 = v51;
  (*(v50 + 16))(v14, &v22[v33], v51);
  v36 = v49;
  MEMORY[0x193AF20A0](v14, v48);
  v37 = *(v34 + 8);
  v37(v14, v35);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v32;
  v39[4] = v31;
  aBlock[4] = sub_190B19384;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_73_0;
  v40 = _Block_copy(aBlock);
  sub_190D52690();

  v41 = v52;
  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190B19398(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v42 = v55;
  v43 = v57;
  sub_190D58170();
  v44 = v47;
  MEMORY[0x193AF30E0](v36, v41, v42, v40);
  _Block_release(v40);

  (*(v56 + 8))(v42, v43);
  (*(v53 + 8))(v41, v54);
  return (v37)(v36, v35);
}

uint64_t sub_190B17D00()
{
  v1 = v0;
  v2 = sub_190D56760();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E69E7F48])
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v8(v6, v2);
    result = 1000000 * *v6;
    if ((*v6 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F38])
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v9(v6, v2);
    result = 1000 * *v6;
    if ((*v6 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else if (result == *MEMORY[0x1E69E7F28])
  {
    (*(v3 + 96))(v6, v2);
    return *v6 / 1000;
  }

  else
  {
    if (result != *MEMORY[0x1E69E7F40])
    {
      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }
}

void sub_190B17F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_190B12150(a2, a3);
  }
}

void (*sub_190B17FC8(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

uint64_t sub_190B18060(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = a1;
  if (Strong)
  {
    v4 = [Strong visibleTextViewIdentifiersFor_];
    swift_unknownObjectRelease();
    v5 = sub_190D57180();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_startedIdentifiers;
  swift_beginAccess();
  v31 = v1;
  v7 = *(v1 + v6);
  v8 = *(v5 + 16);
  result = sub_190D52690();
  if (v8)
  {
    v10 = 0;
    v34 = v5 + 32;
    v11 = v7 + 56;
    v12 = MEMORY[0x1E69E7CC0];
    v33 = v5;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (v34 + 16 * v10);
      v15 = *v13;
      v14 = v13[1];
      ++v10;
      if (!*(v7 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v16 = sub_190D588C0();
      v17 = -1 << *(v7 + 32);
      v18 = v16 & ~v17;
      if ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (*(v7 + 48) + 16 * v18);
          v21 = *v20 == v15 && v20[1] == v14;
          if (v21 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v10 == v8)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_17:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_19082DBB4(0, *(v12 + 16) + 1, 1);
        }

        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_19082DBB4((v22 > 1), v23 + 1, 1);
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + 16 * v23;
        *(v24 + 32) = v15;
        *(v24 + 40) = v14;
        v5 = v33;
        if (v10 == v8)
        {
          goto LABEL_24;
        }
      }
    }

    sub_190D52690();
    goto LABEL_17;
  }

LABEL_24:

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = sub_190D57160();

    v28 = [v26 textEffectCoordinator:v31 highPriorityTextViewIdentifiersForUnplayedVisibleTextViewIdentifiers:v27];

    v29 = sub_190D57180();
    swift_unknownObjectRelease();
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for PrioritizedTextEffectIdentifiers();
  swift_allocObject();
  sub_190D52690();
  v30 = sub_190C88A50(v29, v32);

  return v30;
}

uint64_t sub_190B1843C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190B18498(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_configurationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B18530;
}

void *sub_190B18534(void *a1, uint64_t a2)
{
  v5 = sub_190D53040();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_logger, v5, v7);
  v10 = v2;
  swift_unknownObjectRetain();
  v11 = sub_190D53020();
  v12 = sub_190D576C0();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v6 + 8))(v9, v5);
    goto LABEL_14;
  }

  v26 = a2;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v27[0] = v14;
  *v13 = 134218242;
  *(v13 + 4) = *&v10[OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_tickCounter];

  *(v13 + 12) = 2080;
  v15 = [a1 state];
  v25 = v14;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = 0xE700000000000000;
      v17 = 0x676E6979616C70;
      goto LABEL_13;
    }

    if (v15 == 3)
    {
      v16 = 0xE600000000000000;
      v17 = 0x646573756170;
      goto LABEL_13;
    }

LABEL_10:
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E75;
    goto LABEL_13;
  }

  if (!v15)
  {
    v16 = 0xE700000000000000;
    v17 = 0x64696C61766E69;
    goto LABEL_13;
  }

  if (v15 != 1)
  {
    goto LABEL_10;
  }

  v16 = 0xE400000000000000;
  v17 = 1701602409;
LABEL_13:
  v18 = sub_19021D9F8(v17, v16, v27);

  *(v13 + 14) = v18;
  _os_log_impl(&dword_19020E000, v11, v12, "tick: %llu – did change state (%s) of animator", v13, 0x16u);
  v19 = v25;
  __swift_destroy_boxed_opaque_existential_0(v25);
  MEMORY[0x193AF7A40](v19, -1, -1);
  MEMORY[0x193AF7A40](v13, -1, -1);

  (*(v6 + 8))(v9, v5);
  a2 = v26;
LABEL_14:
  v20 = 0xD000000000000021;
  v21 = [a1 state];
  if (v21 == 1)
  {
    v22 = "id change to invalid";
  }

  else
  {
    if (v21)
    {
      goto LABEL_19;
    }

    v22 = "' – did change state: ";
    v20 = 0xD000000000000024;
  }

  sub_190B12150(v20, v22 | 0x8000000000000000);
LABEL_19:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result textEffectCoordinator:v10 didChangeStateOfAnimator:a1 textView:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190B1889C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_190B18534(a1, a3);
    sub_190D582B0();

    if ([a1 respondsToSelector_])
    {
      v7 = [a1 debugDescription];
      sub_190D56F10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
    v8 = sub_190D56F50();
    MEMORY[0x193AF28B0](v8);

    MEMORY[0x193AF28B0](0x1000000000000018, 0x8000000190E73C60);
    v9 = [a1 state];
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = 0xE700000000000000;
        v11 = 0x676E6979616C70;
        goto LABEL_14;
      }

      if (v9 == 3)
      {
        v10 = 0xE600000000000000;
        v11 = 0x646573756170;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = 0xE700000000000000;
        v11 = 0x64696C61766E69;
        goto LABEL_14;
      }

      if (v9 == 1)
      {
        v10 = 0xE400000000000000;
        v11 = 1701602409;
LABEL_14:
        MEMORY[0x193AF28B0](v11, v10);

        sub_190B12150(0x726F74616D696E61, 0xEA00000000002720);
      }
    }

    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    goto LABEL_14;
  }

  return result;
}

id sub_190B18AB8()
{
  result = sub_190B18AE8();
  qword_1EAD46680 = result;
  dword_1EAD46688 = v1;
  byte_1EAD4668C = v2 & 1;
  return result;
}

id sub_190B18AE8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_190D56ED0();
      v5 = [v3 BOOLForKey:v4 withDefault:0];

      if (v5)
      {
        v6 = sub_190D56ED0();
        [v3 floatForKey_];

        v7 = sub_190D56ED0();
        [v3 floatForKey_];

        v8 = sub_190D56ED0();
        [v3 floatForKey_];

        sub_190D57780();
        v10 = v9;
        v12 = v11;

        return (v10 | (v12 << 32));
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B18CDC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_sourceColor);
  v3 = MEMORY[0x1E69E7CC8];
  if (v2)
  {
    v12 = sub_1902188FC(0, &qword_1EAD46520);
    *&v11 = v2;
    sub_190824530(&v11, v10);
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1BE80(v10, 0x6F43656372756F73, 0xEB00000000726F6CLL, isUniquelyReferenced_nonNull_native);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7ChatKit32CKTextEffectExplodeConfiguration_targetColor);
  if (v6)
  {
    v12 = sub_1902188FC(0, &qword_1EAD46520);
    *&v11 = v6;
    sub_190824530(&v11, v10);
    v7 = v6;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1BE80(v10, 0x6F43746567726174, 0xEB00000000726F6CLL, v8);
  }

  return v3;
}

uint64_t type metadata accessor for CKTextEffectCoordinator()
{
  result = qword_1EAD468C0;
  if (!qword_1EAD468C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190B18E78()
{
  result = qword_1EAD5D8E0;
  if (!qword_1EAD5D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D8E0);
  }

  return result;
}

uint64_t sub_190B18ED4()
{
  result = sub_190D53040();
  if (v1 <= 0x3F)
  {
    result = sub_190D51840();
    if (v2 <= 0x3F)
    {
      result = sub_190D567F0();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_190B19398(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190B19440()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v2 initWithEffect_];
}

uint64_t sub_190B19498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B195E0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190B194FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B195E0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190B19560()
{
  sub_190B195E0();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190B1958C()
{
  result = qword_1EAD5D8F0;
  if (!qword_1EAD5D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D8F0);
  }

  return result;
}

unint64_t sub_190B195E0()
{
  result = qword_1EAD5D8F8;
  if (!qword_1EAD5D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D8F8);
  }

  return result;
}

Swift::Void __swiftcall CKTranscriptCollectionView.configureAppEntity(forConversationId:)(Swift::String_optional forConversationId)
{
  object = forConversationId.value._object;
  countAndFlagsBits = forConversationId.value._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D900);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = sub_190D50910();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    type metadata accessor for ConversationEntity();
    v10[0] = countAndFlagsBits;
    v10[1] = object;
    sub_190B197DC();
    sub_190D52690();
    sub_190D50900();
    (*(v7 + 16))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_190D57CA0();
    (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_190B197DC()
{
  result = qword_1EAD45D90;
  if (!qword_1EAD45D90)
  {
    type metadata accessor for ConversationEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45D90);
  }

  return result;
}

void sub_190B199F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator])
    {
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD1D90;
      sub_19083B854(v1 + OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_queryResultItem, inited + 32);
      sub_190B82EB4(inited);
      MEMORY[0x193AF7B30](v3);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0(inited + 32);
    }

    else
    {
    }
  }
}

void sub_190B19AC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator))
    {
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_190DD1D90;
      sub_19083B854(v1 + OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_queryResultItem, v2 + 32);
      sub_190B822A8(v2);
      MEMORY[0x193AF7B30](&v3);
    }
  }
}

id sub_190B19C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LPLinkViewRepresentableCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190B19CEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = a4;
  v18[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = type metadata accessor for LPLinkViewRepresentableCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator;
  *&v10[OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator] = 0;
  v12 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_sizeCache;
  *&v10[v12] = sub_1908227B8(MEMORY[0x1E69E7CC0]);
  sub_19083B854(v18, &v10[OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_queryResultItem]);
  v13 = *&v10[v11];
  *&v10[v11] = a2;
  v14 = a2;

  v17.receiver = v10;
  v17.super_class = v9;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v15;
}

id sub_190B19DE4()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    sub_1908D84D0();
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    v5 = sub_190D56ED0();
    v6 = objc_opt_self();
    v7 = [v6 systemImageNamed_];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v8;
    v9 = sub_190D57DC0();
    result = CKFrameworkBundle();
    if (result)
    {
      v10 = result;
      v11 = sub_190D56ED0();
      v12 = sub_190D56ED0();
      v13 = [v10 localizedStringForKey:v11 value:0 table:{v12, 0, 0, 0, sub_190B1A0EC, v17}];

      sub_190D56F10();
      v14 = sub_190D56ED0();
      v15 = [v6 systemImageNamed_];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = sub_190D57DC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      result = swift_allocObject();
      *(result + 1) = xmmword_190DD5CE0;
      *(result + 4) = v9;
      *(result + 5) = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190B1A0FC(char *a1)
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, a1, v3);
  v7(&v1[OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material], v6, v3);
  v8 = type metadata accessor for CKBalloonMaterialLayer(0);
  v14.receiver = v1;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  [v9 setNeedsDisplayOnBoundsChange_];
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = v9;
  v12 = sub_190D56ED0();
  [v11 setName_];

  v10(a1, v3);
  return v11;
}

uint64_t sub_190B1A2F0(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_190D56B90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v8, &v2[v11], v4);
  sub_1909A34CC();
  LOBYTE(v11) = sub_190D56E30();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

id sub_190B1A4D4(char *a1)
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, a1, v3);
  v7(&v1[OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material], v6, v3);
  v8 = type metadata accessor for CKBalloonMaterialLayer(0);
  v14.receiver = v1;
  v14.super_class = v8;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  [v9 setNeedsDisplayOnBoundsChange_];
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = v9;
  v12 = sub_190D56ED0();
  [v11 setName_];

  v10(a1, v3);
  return v11;
}

id sub_190B1A688(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  sub_19021834C(v13, v12);
  v6 = a4(0);
  swift_dynamicCast();
  v7 = v11;
  v10.receiver = a1;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v11);

  __swift_destroy_boxed_opaque_existential_0(v13);
  return v8;
}

id sub_190B1A760(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_190B1A800(uint64_t a1)
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19021834C(a1, v15);
  v7 = type metadata accessor for CKBalloonMaterialLayer(0);
  swift_dynamicCast();
  v8 = v14;
  v9 = OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v8[v9], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material, v6, v3);
  v13.receiver = v1;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_initWithLayer_, v8);
  [v8 frame];
  [v10 setFrame_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void sub_190B1A9FC()
{
  v1 = v0;
  v2 = sub_190D56B90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CKBalloonMaterialLayer(0);
  v15.receiver = v1;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, sel_layoutSublayers);
  v7 = OBJC_IVAR____TtC7ChatKit22CKBalloonMaterialLayer_material;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, &v1[v7], v2);
  sub_190D56B40();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  [v1 setScale_];
  v8(v5, &v1[v7], v2);
  v12 = sub_190D56B80();
  v11(v5, v2);
  sub_1908A1E3C(v12);

  v13 = sub_190D57160();

  [v1 setFilters_];
}

uint64_t sub_190B1AE4C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190B1AEAC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKBusinessDetailsController_detailsControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id sub_190B1AF90()
{
  v1 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_190B1B044(uint64_t a1)
{
  v3 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190B1B09C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_190B1B1A4()
{
  v1 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190B1B23C(char a1)
{
  v3 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id BusinessDetailsController.__allocating_init(conversation:detailsControllerDelegate:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover] = 0;
  *&v3[OBJC_IVAR___CKBusinessDetailsController_conversation] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  return v5;
}

id BusinessDetailsController.init(conversation:detailsControllerDelegate:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover] = 0;
  *&v1[OBJC_IVAR___CKBusinessDetailsController_conversation] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BusinessDetailsController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  return v4;
}

void sub_190B1B5D0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BusinessDetailsController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 _setManualScrollEdgeAppearanceProgress_];

  v2 = [v0 navigationItem];
  [v2 _setManualScrollEdgeAppearanceEnabled_];

  v3 = sub_190B1C2A0();
  v4 = [v0 navigationItem];
  if (v3)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_dismissDetailsController];
    [v4 setLeftBarButtonItem_];
  }

  else
  {
    v6 = sub_190D56ED0();
    v7 = [objc_opt_self() systemImageNamed_];

    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v7 style:0 target:v0 action:sel_dismissDetailsController];
    [v4 setLeftBarButtonItem_];

    sub_190B1BE20();
  }

  sub_190B1B83C();
}

void sub_190B1B83C()
{
  v1 = v0;
  v2 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = _s11ContentViewVMa_9(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = objc_allocWithZone(type metadata accessor for BusinessDetailsViewModel(0));
  v13 = sub_190C98564(v11);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v14 = v13;
  sub_190D52D10();
  *&v9[v4[7]] = v1;
  swift_unknownObjectWeakInit();
  v15 = v1;
  swift_unknownObjectRelease();
  v16 = &v9[v4[9]];
  v56 = v14;
  sub_190D55FC0();
  v17 = v59;
  *v16 = v58;
  *(v16 + 1) = v17;
  v18 = &v9[v4[10]];
  v56 = 0;
  v57 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D9B0);
  sub_190D55FC0();
  v19 = v59;
  v20 = v60;
  *v18 = v58;
  v18[8] = v19;
  *(v18 + 2) = v20;
  sub_190B1CA5C(v9, v6);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D9B8));
  v22 = sub_190D54B60();
  v23 = [v22 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  [v15 addChildViewController_];
  v26 = [v15 view];
  if (!v26)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = [v22 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  [v27 addSubview_];

  [v22 didMoveToParentViewController_];
  sub_190D55170();
  sub_190D54B30();
  v30 = [v22 view];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_190DDA780;
  v33 = [v22 view];
  if (!v33)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = v33;
  v35 = [v33 heightAnchor];

  v36 = [v15 view];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v36;
  v38 = [v36 heightAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v32 + 32) = v39;
  v40 = [v22 view];
  if (!v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v15 view];
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v32 + 40) = v46;
  v47 = [v22 view];

  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = [v47 trailingAnchor];

  v49 = [v15 view];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 trailingAnchor];

    v52 = [v48 constraintEqualToAnchor_];
    *(v32 + 48) = v52;
    v53 = objc_opt_self();
    sub_1902188FC(0, &qword_1EAD45040);
    v54 = sub_190D57160();

    [v53 activateConstraints_];

    sub_190B1CAC0(v9);
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_190B1BE20()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  [v1 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD5CE0;
  v3 = [objc_opt_self() effectWithBlurRadius_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 32) = v3;
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = objc_opt_self();
  v6 = [v5 effectCompositingColor:v4 withMode:0 alpha:0.6];

  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 40) = v6;
  sub_1902188FC(0, &unk_1EAD466A0);
  v7 = sub_190D57160();

  v8 = [v5 effectCombiningEffects_];

  [v1 setEffect_];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 addSubview_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD86A0;
  v12 = [v1 topAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = [v1 bottomAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 bottomAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  v22 = [v1 leadingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  v27 = [v1 trailingAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v11 + 56) = v31;
  v32 = objc_opt_self();
  sub_1902188FC(0, &qword_1EAD45040);
  v33 = sub_190D57160();

  [v32 activateConstraints_];
}

BOOL sub_190B1C2A0()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernSplitViewControllerEnabled];

  result = 0;
  if (v2)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 && v4 != 6)
    {
      v7 = [v0 splitViewController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 isCollapsed];

        if (!v9)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_190B1C388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD55F0;
  v2 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v3 = *&v0[v2];
  *(v1 + 32) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = type metadata accessor for ReportSpamReasonContoller();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson];
  *v7 = 0;
  v7[8] = 1;
  *&v6[OBJC_IVAR___CKReportSpamReasonContoller_conversations] = v1;
  *v7 = 0;
  v7[8] = 1;
  v8 = &v6[OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock];
  *v8 = sub_190B1CA54;
  v8[1] = v4;
  v14.receiver = v6;
  v14.super_class = v5;
  v9 = v3;
  v10 = v0;
  v11 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  v12 = [v10 navigationController];
  if (v12)
  {
    v13 = v12;
    [v12 pushViewController:v11 animated:1];
  }
}

void *sub_190B1C500(uint64_t a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD55F0;
  v8 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v9 = *(a1 + v8);
  *(v7 + 32) = v9;
  sub_1902188FC(0, &qword_1EAD466B0);
  v10 = v9;
  v11 = sub_190D57160();

  sub_190D517F0();
  v12 = sub_190D51780();
  (*(v3 + 8))(v5, v2);
  [v6 recoverableDeleteForConversations:v11 deleteDate:v12 synchronousQuery:0 completionHandler:0];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissDetailsViewAndShowConversationList];
    return swift_unknownObjectRelease();
  }

  return result;
}

id BusinessDetailsController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BusinessDetailsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BusinessDetailsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B1CA5C(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_9(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B1CAC0(uint64_t a1)
{
  v2 = _s11ContentViewVMa_9(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString_optional __swiftcall CKAutomaticTranslationIndicatorChatItem.loadTranscriptText()()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBehaviors];
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v6 = [v1 imAutomaticTranslationIndicatorChatItem];
  v7 = [v6 senderHandle];

  if (!v7)
  {
    v13 = [v1 translationEnabledTranscriptText];
    if (!v13)
    {

      v2 = 0;
      goto LABEL_15;
    }

    v14 = v13;
    v9 = sub_190D56F10();
    v11 = v15;

    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = HIBYTE(v11) & 0xF;
    goto LABEL_8;
  }

  v8 = [v1 incomingTranslationTranscriptTextFor_];
  v9 = sub_190D56F10();
  v11 = v10;

  if ((v11 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = v9 & 0xFFFFFFFFFFFFLL;
LABEL_8:
  if (v12)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    v17 = [(objc_class *)v4 translationIndicatorButtonIcon];
    [v16 setImage_];

    v18 = [objc_opt_self() attributedStringWithAttachment_];
    [v5 appendAttributedString_];

    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = sub_190D56ED0();
    v21 = [v19 initWithString_];

    [v5 appendAttributedString_];
  }

  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_190D56ED0();

  v24 = [v22 initWithString_];

  [v5 appendAttributedString_];
  v25 = [(objc_class *)v4 transcriptTranslationIndicatorFontAttributes];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for Key(0);
    sub_19082B370();
    sub_190D56D90();

    v27 = sub_190D56D60();

    [v5 addAttributes:v27 range:{0, objc_msgSend(v5, sel_length)}];
  }

  v28 = [v5 copy];

  v2 = v28;
LABEL_15:
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id sub_190B1D1F8()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    v3 = [v0 imAutomaticTranslationIndicatorChatItem];
    v4 = [v3 senderHandle];

    if (v4)
    {

      v5 = [v0 incomingTranslationButtonText];
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];
    }

    else
    {
      v6 = [v0 translationEnabledButtonText];
    }

    v7 = [v2 transcriptTranslationButtonFontAttributes];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for Key(0);
      sub_19082B370();
      sub_190D56D90();

      if (v6)
      {
        v9 = v6;
        v10 = sub_190D56D60();

        [v9 addAttributes:v10 range:{0, objc_msgSend(v9, sel_length)}];

LABEL_9:
        v11 = [v6 copy];

        return v11;
      }
    }

    else
    {
      if (v6)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

id sub_190B1D4B0()
{
  if (([v0 languageNeedsDownload] & 1) != 0 || objc_msgSend(v0, sel_userLanguageNeedsDownload))
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v2 = result;
LABEL_5:
      v3 = sub_190D56ED0();
      v4 = sub_190D56ED0();
      v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

      v6 = sub_190D56F10();
      return v6;
    }

    __break(1u);
  }

  else
  {
    if (![v0 languagesAreDownloading])
    {
      return 0;
    }

    result = CKFrameworkBundle();
    if (result)
    {
      v2 = result;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_190B1D764(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 imAutomaticTranslationIndicatorChatItem];
  v6 = [v5 *a3];

  return v6 < 2;
}

id sub_190B1D86C()
{
  v1 = sub_190D51920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v16 = result;
    v81 = v2;
    v82 = v6;
    v83 = v11;
    v84 = v14;
    v17 = [v0 imAutomaticTranslationIndicatorChatItem];
    v18 = [v17 translationLanguageCode];

    if (v18)
    {
      v79 = v5;
      v80 = v16;
      sub_190D56F10();

      v19 = [v0 imAutomaticTranslationIndicatorChatItem];
      v20 = [v19 userTranslationLanguageCode];

      if (v20)
      {
        sub_190D56F10();

        sub_190D518B0();
        v21 = v83;
        sub_190D518B0();
        v22 = [v0 languageNeedsDownload];
        v23 = [v0 userLanguageNeedsDownload];
        v24 = v23;
        if (v22)
        {
          v25 = v81;
          (*(v81 + 104))(v4, *MEMORY[0x1E69A6648], v1);
          sub_1908EA100(0xD00000000000001ELL, 0x8000000190E74310);
          (*(v25 + 8))(v4, v1);
          v26 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v27 = sub_190D56ED0();

          v28 = [v26 initWithString_];
          if (v24)
          {

            goto LABEL_17;
          }
        }

        else
        {
          if (!v23)
          {
            if (![v0 languagesAreDownloading])
            {
              v38 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
              v39 = objc_allocWithZone(MEMORY[0x1E69DB7F0]);
              v28 = v38;
              v40 = v38;
              v41 = [v39 init];
              v42 = [v80 translationIndicatorIcon];
              [v41 setImage_];

              v43 = &selRef_activePinningInputViewReasons;
              if (v40)
              {
                v44 = [objc_opt_self() attributedStringWithAttachment_];
                [v40 appendAttributedString_];

                v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
                v46 = sub_190D56ED0();
                v47 = [v45 initWithString_];

                [v40 appendAttributedString_];
              }

              v78 = v41;
              v48 = [v0 localizedTranslationLanguage];
              if (v48)
              {
                v49 = v48;
                sub_190D51970();

                v50 = v81;
                (*(v81 + 104))(v4, *MEMORY[0x1E69A6648], v1);
                sub_1908EA100(0xD00000000000002CLL, 0x8000000190E742E0);
                (*(v50 + 8))(v4, v1);
                if (v40)
                {
                  v51 = 0x1E696A000uLL;
                  v52 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
                  v53 = v40;
                  v54 = sub_190D56ED0();

                  v55 = [v52 initWithString_];

                  v43 = &selRef_activePinningInputViewReasons;
                  [v53 appendAttributedString_];

                  v36 = v79;
                  (*(v82 + 8))(v8, v79);
                  v56 = v80;
                }

                else
                {
                  v36 = v79;
                  (*(v82 + 8))(v8, v79);

                  v56 = v80;
                  v43 = &selRef_activePinningInputViewReasons;
                  v51 = 0x1E696A000;
                }

                v67 = v40;
                v61 = v78;
                v62 = &selRef_initWithRequestID_transferGUID_resultHandler_;
              }

              else
              {
                result = CKFrameworkBundle();
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v57 = result;
                v58 = sub_190D56ED0();
                v59 = sub_190D56ED0();
                v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

                v51 = 0x1E696A000uLL;
                v61 = v78;
                v62 = &selRef_initWithRequestID_transferGUID_resultHandler_;
                if (!v60)
                {
                  sub_190D56F10();
                  v60 = sub_190D56ED0();
                }

                v56 = v80;
                if (v40)
                {
                  v63 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
                  v64 = v40;
                  v65 = [v63 initWithString_];

                  [v64 appendAttributedString_];
                  v66 = v64;
                }

                else
                {
                }

                v36 = v79;
              }

              v68 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
              v69 = [v56 translationButtonMenuIcon];
              [v68 setImage_];

              if (v40)
              {
                v70 = objc_allocWithZone(*(v51 + 2736));
                v71 = v40;
                v72 = v56;
                v73 = v71;
                v74 = sub_190D56ED0();
                v75 = [v70 v62[64]];

                v36 = v79;
                [v73 v43[492]];

                v76 = [objc_opt_self() attributedStringWithAttachment_];
                [v73 v43[492]];
              }

              else
              {

                v28 = 0;
              }

              v21 = v83;
              goto LABEL_18;
            }

            v28 = 0;
LABEL_17:
            v36 = v79;
LABEL_18:
            v37 = *(v82 + 8);
            v37(v21, v36);
            v37(v84, v36);
            return v28;
          }

          v33 = v81;
          (*(v81 + 104))(v4, *MEMORY[0x1E69A6648], v1);
          sub_1908EA100(0xD00000000000001ELL, 0x8000000190E74310);
          (*(v33 + 8))(v4, v1);
          v34 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v35 = sub_190D56ED0();

          v28 = [v34 initWithString_];
        }

        goto LABEL_17;
      }

      v16 = v80;
    }

    if (qword_1EAD46280 != -1)
    {
      swift_once();
    }

    v29 = sub_190D53040();
    __swift_project_value_buffer(v29, qword_1EAD9D7C0);
    v30 = sub_190D53020();
    v31 = sub_190D576A0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_19020E000, v30, v31, "No languageCode found for automatic translation", v32, 2u);
      MEMORY[0x193AF7A40](v32, -1, -1);
    }

    return 0;
  }

  return result;
}

double CKAutomaticTranslationIndicatorChatItem.loadSizeThatFits(_:textAlignmentInsets:)(_OWORD *a1, double a2, double a3)
{
  v7 = [objc_opt_self() sharedBehaviors];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      *a1 = *MEMORY[0x1E69DDCE0];
      a1[1] = v9;
    }

    v10 = [objc_allocWithZone(CKAutomaticTranslationIndicatorCell) init];
    v11 = [v3 titleAttributedText];
    [v10 setTitleAttributedString_];

    v12 = [v3 buttonAttributedText];
    [v10 setButtonAttributedString_];

    [v3 languageDownloadProgress];
    [v10 setLanguageDownloadProgress_];
    [v10 updateContentConstraints];
    v13 = [v3 imAutomaticTranslationIndicatorChatItem];
    v14 = [v13 translationLanguageStatus];

    [v10 setButtonPresentsMenu_];
    [v10 heightThatFits_];
  }

  return 0.0;
}

void __swiftcall CKAutomaticTranslationIndicatorChatItem.init()(CKAutomaticTranslationIndicatorChatItem *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CKAutomaticTranslationIndicatorChatItem.init()()
{
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorChatItem_languageDownloadProgress) = 0;
  v2.super_class = CKAutomaticTranslationIndicatorChatItem;
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190B1E5A4(void *a1, SEL *a2, double a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v4;
}

id sub_190B1E610(void *a1, SEL *a2)
{
  *(v2 + OBJC_IVAR___CKAutomaticTranslationIndicatorChatItem_languageDownloadProgress) = 0;
  v6.super_class = CKAutomaticTranslationIndicatorChatItem;
  v4 = objc_msgSendSuper2(&v6, *a2, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_190B1E690(char *a1, double a2, uint64_t a3, void *a4, const char **a5)
{
  *&a1[OBJC_IVAR___CKAutomaticTranslationIndicatorChatItem_languageDownloadProgress] = 0;
  v10.receiver = a1;
  v10.super_class = CKAutomaticTranslationIndicatorChatItem;
  v6 = *a5;
  v7 = a4;
  v8 = objc_msgSendSuper2(&v10, v6, v7, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_190B1E714(uint64_t a1, uint64_t a2)
{
  v4 = a1 < 1;
  result = (a1 - 1);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AF3B90](result);
    }

    else
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        __break(1u);
        goto LABEL_18;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = objc_opt_self();
  result = [v7 sharedBehaviors];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  [result smallTranscriptSpace];
  v10 = v9;
  [v8 mediumTranscriptSpace];
  [v8 mediumLargeTranscriptSpace];
  if (v6)
  {
    v12 = v11;
    v13 = [v6 layoutType];
    if (v13 <= 0x16 && ((1 << v13) & 0x40FF6E) != 0)
    {
      v10 = v12;
    }

    goto LABEL_15;
  }

  result = [v7 sharedBehaviors];
  if (result)
  {
    v14 = result;
    [result topTranscriptSpace];
    v10 = v15;

    v6 = 0;
LABEL_15:
    v16 = [objc_opt_self() transcriptVerticalEdgeSpacingForChatItem:v2 previousChatItem:v6 topSpacing:v10 bottomSpacing:0.0];

    return v16;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for CKAutomaticTranslationIndicatorChatItem()
{
  result = qword_1EAD5D9D8;
  if (!qword_1EAD5D9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5D9D8);
  }

  return result;
}

id sub_190B1E920(void *a1)
{
  v2 = [a1 firstName];
  if (!v2)
  {
    v2 = [a1 displayID];
  }

  v3 = v2;
  v4 = sub_190D56F10();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD1D90;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_19081EA10();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  result = CKFrameworkBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_190D56ED0();
    v11 = sub_190D56ED0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    sub_190D56F10();
    v13 = sub_190D56EE0();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190B1EAA8()
{
  v1[18] = v0;
  sub_190D572A0();
  v1[19] = sub_190D57290();
  v3 = sub_190D57240();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190B1EB40, v3, v2);
}

uint64_t sub_190B1EB40()
{
  v1 = [*(v0 + 144) chat];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_190B1ECB8;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_190892610;
    *(v0 + 104) = &block_descriptor_82;
    *(v0 + 112) = v3;
    [v2 fetchIsCurrentlyDownloadingPurgedAttachments_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_190B1ECB8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_190B1EDC0, v2, v1);
}

uint64_t sub_190B1EDC0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t EnvironmentValues.isTranscriptBackgroundActive.getter()
{
  sub_190B1EE6C();
  sub_190D54810();
  return v1;
}

unint64_t sub_190B1EE6C()
{
  result = qword_1EAD5D9F0;
  if (!qword_1EAD5D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D9F0);
  }

  return result;
}

uint64_t sub_190B1EEC0@<X0>(_BYTE *a1@<X8>)
{
  sub_190B1EE6C();
  result = sub_190D54810();
  *a1 = v3;
  return result;
}

uint64_t sub_190B1F018(void *a1)
{
  sub_190919AB4();
  v2 = a1;
  v3 = sub_190D578E0();

  return v3 & 1;
}

uint64_t UITraitCollection.isTranscriptBackgroundActive.getter()
{
  sub_190919AB4();

  return sub_190D578E0();
}

uint64_t UIMutableTraits.isTranscriptBackgroundActive.getter()
{
  sub_190919AB4();

  return sub_190D530D0();
}

uint64_t UIMutableTraits.isTranscriptBackgroundActive.setter()
{
  sub_190919AB4();

  return sub_190D530E0();
}

uint64_t (*UIMutableTraits.isTranscriptBackgroundActive.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_190919AB4();
  *(a1 + 24) = sub_190D530D0() & 1;
  return sub_190B1F1D8;
}

uint64_t (*EnvironmentValues.isTranscriptBackgroundActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_190B1EE6C();
  sub_190D54810();
  *(a1 + 16) = *(a1 + 17);
  return sub_190B1F2A8;
}

uint64_t static CKTranscriptBackgroundActiveEnvironmentKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_190919AB4();
  return sub_190D530E0();
}

unint64_t sub_190B1F360()
{
  result = qword_1EAD5D9F8;
  if (!qword_1EAD5D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D9F8);
  }

  return result;
}

id sub_190B1F3B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isTranscriptBackgroundActive];
  *a2 = result;
  return result;
}

uint64_t sub_190B1F454()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1F588()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1F670()
{
  sub_190D56FC0();
}

uint64_t sub_190B1F820()
{
  sub_190D56FC0();
}

uint64_t sub_190B1F94C()
{
  sub_190D56FC0();
}

uint64_t sub_190B1FAA4()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1FC10()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1FD40()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1FE80()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B1FF64()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

ChatKit::UserDefaultDomain_optional __swiftcall UserDefaultDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_190D585F0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UserDefaultDomain.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_190B201B8()
{
  sub_190D56FC0();
}

void sub_190B2029C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "ers";
  v5 = "com.apple.Messages";
  v6 = "com.apple.MobileSMS";
  v7 = 0xD000000000000010;
  if (v3 != 4)
  {
    v7 = 0xD000000000000019;
    v6 = "com.apple.madrid";
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  v9 = "com.apple.messages";
  if (v3 == 1)
  {
    v10 = 0xD000000000000013;
  }

  else
  {
    v10 = 0xD000000000000012;
  }

  if (v3 != 1)
  {
    v9 = "com.apple.mobileSMS";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v8;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t sub_190B20340()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key);
  sub_190D52690();
  return v1;
}

__n128 sub_190B2037C@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle);
  swift_beginAccess();
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  v6 = v3[1].n128_u8[9];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  a1[1].n128_u8[9] = v6;
  return result;
}

__n128 sub_190B203E4(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle);
  swift_beginAccess();
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t sub_190B204C0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19089582C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19029063C(v4);
}

uint64_t sub_190B20560(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_190B23E90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_19029063C(v3);
  return sub_19022123C(v8);
}

uint64_t sub_190B20650()
{
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_19029063C(*v1);
  return v2;
}

uint64_t sub_190B206AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_19022123C(v6);
}

uint64_t sub_190B2076C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

double sub_190B207E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

uint64_t sub_190B20858(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  *v5 = a1;
  v3 = v1;
  result = sub_190D53910();
  if (v3[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v5[3] = MEMORY[0x1E69E63B0];
    sub_190B2210C(v5);
    return sub_19021E7D8(v5);
  }

  return result;
}

uint64_t sub_190B20960(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = a1;
  v3 = v1;
  result = sub_190D53910();
  if (v3[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v6 = MEMORY[0x1E69E6370];
    sub_190B2210C(v5);
    return sub_19021E7D8(v5);
  }

  return result;
}

uint64_t sub_190B20A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

uint64_t UserDefaultItem.__allocating_init(defaults:string:getter:inputStyle:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)@<D0>(_OWORD *a1@<X8>), void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v60 = a7;
  v62 = a5;
  v58 = a4;
  v65 = a3;
  v59 = a2;
  v70 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v52 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v52 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v13 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - v18;
  v20 = a6[1];
  v56 = *a6;
  v55 = v20;
  v54 = a6[2];
  v53 = *(a6 + 24);
  v52 = *(a6 + 25);
  v57 = type metadata accessor for UserDefaultItem(0);
  v21 = objc_allocWithZone(v57);
  v22 = &v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *v22 = 0;
  *(v22 + 12) = 256;
  v23 = &v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  memset(v73, 0, 32);
  sub_19023C414(v73, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  sub_190D538D0();
  sub_19021E7D8(v73);
  (*(v17 + 32))(&v21[v24], v19, v16);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v73[0] = 0;
  sub_190D538D0();
  (*(v13 + 32))(&v21[v25], v15, v63);
  v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v73[0]) = 0;
  sub_190D538D0();
  v27 = *(v64 + 32);
  v28 = v66;
  v27(&v21[v26], v12, v66);
  v29 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v73[0] = 0;
  *(&v73[0] + 1) = 0xE000000000000000;
  v30 = v67;
  sub_190D538D0();
  (*(v68 + 32))(&v21[v29], v30, v69);
  v31 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v73[0]) = 0;
  sub_190D538D0();
  v27(&v21[v31], v12, v28);
  v32 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v73[0]) = 0;
  v33 = v70;
  sub_190D538D0();
  result = (v27)(&v21[v32], v12, v28);
  *&v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v33;
  if (v65)
  {
    v35 = v65;
    v36 = &v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    v37 = v59;
    *v36 = v59;
    v36[1] = v35;
    v38 = v58;
    if (v58)
    {
      v39 = v58;
      v40 = v62;
    }

    else
    {
      v40 = swift_allocObject();
      v40[2] = v33;
      v40[3] = v37;
      v40[4] = v35;
      v41 = v33;
      sub_190D52690();
      v39 = sub_190B21988;
    }

    v42 = &v21[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v42 = v39;
    v42[1] = v40;
    swift_beginAccess();
    v43 = v55;
    *v22 = v56;
    *(v22 + 1) = v43;
    *(v22 + 2) = v54;
    v22[24] = v53;
    v22[25] = v52;
    swift_beginAccess();
    v44 = *v23;
    v45 = v60;
    v46 = v61;
    *v23 = v60;
    v23[1] = v46;
    v47 = v33;
    sub_19029063C(v38);
    sub_19029063C(v45);
    sub_19022123C(v44);
    v71.receiver = v21;
    v71.super_class = v57;
    v48 = objc_msgSendSuper2(&v71, sel_init);
    v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v50 = v48;
    sub_190B224E8();
    v48[v49] = 1;
    sub_190D52690();
    v51 = sub_190D56ED0();

    [v47 addObserver:v50 forKeyPath:v51 options:1 context:0];

    sub_19022123C(v45);
    sub_19022123C(v38);

    return v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UserDefaultItem.__allocating_init(domain:string:getter:inputStyle:changeHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t (*a5)(), uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v69 = a7;
  v70 = a8;
  v71 = a4;
  v72 = a5;
  v67 = a2;
  v68 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v17 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v54 - v18;
  v62 = *a6;
  v61 = a6[1];
  v60 = a6[2];
  v59 = *(a6 + 24);
  v58 = *(a6 + 25);
  v20 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v21 = sub_190D56ED0();

  v22 = [v20 initWithSuiteName_];

  v56 = v22;
  if (v22)
  {
    v54 = type metadata accessor for UserDefaultItem(0);
    v23 = objc_allocWithZone(v54);
    v24 = &v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    *v24 = 0;
    *(v24 + 12) = 256;
    v25 = &v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v25 = 0;
    v25[1] = 0;
    v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    memset(v75, 0, 32);
    sub_19023C414(v75, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
    sub_190D538D0();
    sub_19021E7D8(v75);
    (*(v17 + 32))(&v23[v26], v19, v55);
    v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v75[0] = 0;
    sub_190D538D0();
    (*(v14 + 32))(&v23[v27], v16, v13);
    v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v75[0]) = 0;
    sub_190D538D0();
    v29 = *(v57 + 32);
    v30 = v66;
    v29(&v23[v28], v12, v66);
    v31 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v75[0] = 0;
    *(&v75[0] + 1) = 0xE000000000000000;
    v32 = v63;
    sub_190D538D0();
    (*(v64 + 32))(&v23[v31], v32, v65);
    v33 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v75[0]) = 0;
    sub_190D538D0();
    v29(&v23[v33], v12, v30);
    v34 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v75[0]) = 0;
    sub_190D538D0();
    v29(&v23[v34], v12, v30);
    v35 = v56;
    *&v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v56;
    v36 = &v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    v38 = v67;
    v37 = v68;
    *v36 = v67;
    v36[1] = v37;
    v39 = v71;
    if (v71)
    {
      v40 = v71;
      v41 = v72;
    }

    else
    {
      v41 = swift_allocObject();
      *(v41 + 2) = v35;
      *(v41 + 3) = v38;
      *(v41 + 4) = v37;
      v42 = v35;
      sub_190D52690();
      v40 = sub_190B2426C;
    }

    v43 = v35;
    v44 = &v23[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v44 = v40;
    v44[1] = v41;
    swift_beginAccess();
    v45 = v61;
    *v24 = v62;
    *(v24 + 1) = v45;
    *(v24 + 2) = v60;
    v24[24] = v59;
    v24[25] = v58;
    swift_beginAccess();
    v46 = *v25;
    v48 = v69;
    v47 = v70;
    *v25 = v69;
    v25[1] = v47;
    v49 = v43;
    sub_19029063C(v39);
    sub_19029063C(v48);
    sub_19022123C(v46);
    v73.receiver = v23;
    v73.super_class = v54;
    v50 = objc_msgSendSuper2(&v73, sel_init);
    v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    v50[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v52 = v50;
    sub_190B224E8();
    v50[v51] = 1;
    sub_190D52690();
    v53 = sub_190D56ED0();

    [v49 addObserver:v52 forKeyPath:v53 options:1 context:0];

    sub_19022123C(v48);
    sub_19022123C(v39);
  }

  else
  {
    __break(1u);
  }
}

double sub_190B218EC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_190D56ED0();
  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_190D58140();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id UserDefaultItem.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults];
  v2 = v0;
  sub_190D52690();
  v3 = sub_190D56ED0();

  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for UserDefaultItem(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_190B21D8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  v2 = sub_190D56ED0();
  v3 = [v1 arrayForKey_];

  if (v3 && (v4 = sub_190D57180(), v3, v5 = sub_19088097C(v4), , v5))
  {
    sub_190D52690();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key);
  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key + 8);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v5 + 40);
    while (1)
    {
      v11 = *(v10 - 1) == v6 && *v10 == v7;
      if (v11 || (sub_190D58760() & 1) != 0)
      {
        break;
      }

      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    sub_190A0DC68(v9);
  }

  else
  {
LABEL_13:

    sub_190D52690();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 16) + 1, 1, v5);
    }

    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_1908354D4((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v6;
    *(v14 + 40) = v7;
  }

  v15 = sub_190D57160();

  v16 = sub_190D56ED0();
  [v1 setValue:v15 forKey:v16];

  return sub_190B224E8();
}

uint64_t sub_190B21FD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  v2 = sub_190D56ED0();
  v3 = [v1 arrayForKey_];

  if (!v3 || (v4 = sub_190D57180(), v3, v5 = sub_19088097C(v4), v6 = , !v5))
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key + 8);
  v11[0] = *(v0 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key);
  v11[1] = v7;
  MEMORY[0x1EEE9AC00](v6);
  v10[2] = v11;
  v8 = sub_190CA8558(sub_1909F5BC8, v10, v5);

  return v8 & 1;
}

uint64_t sub_190B2210C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  sub_19023C414(a1, v14);
  v3 = v15;
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_190D58740();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_190D56ED0();
  [v2 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = (v1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler);
  result = swift_beginAccess();
  v12 = *v10;
  if (*v10)
  {
    v13 = sub_190D50920();
    v12(v13);
    return sub_19022123C(v12);
  }

  return result;
}

uint64_t sub_190B222C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  if (!v6)
  {
    goto LABEL_8;
  }

  sub_19023C414(v5, v3);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v0 = v2;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v0 = v4 != 0;
    sub_19021E7D8(v3);
    goto LABEL_9;
  }

  v0 = v2 != 0;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v3);
LABEL_9:
  sub_19021E7D8(v5);
  return v0;
}

double sub_190B22418()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v0 = 0.0;
  if (v5)
  {
    sub_19023C414(v4, v3);
    if (swift_dynamicCast())
    {
      v0 = v2;
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  sub_19021E7D8(v4);
  return v0;
}

uint64_t sub_190B224E8()
{
  (*&v0[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter])(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19023C414(v17, &v16);
  v1 = v0;
  sub_190D53910();
  sub_19021E7D8(v17);
  v2 = sub_190B222C0();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17[0]) = v2 & 1;
  v3 = v1;
  sub_190D53910();
  v4 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  if (v3[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v18 = MEMORY[0x1E69E6370];
    sub_190B2210C(v17);
    sub_19021E7D8(v17);
  }

  v5 = sub_190B22418();
  swift_getKeyPath();
  swift_getKeyPath();
  *v17 = v5;
  v6 = v3;
  sub_190D53910();
  if (v3[v4] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v18 = MEMORY[0x1E69E63B0];
    sub_190B2210C(v17);
    sub_19021E7D8(v17);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v7 = sub_190B23EB8(v17);
  v9 = v8;
  sub_19021E7D8(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v17[0] = v7;
  v17[1] = v9;
  v10 = v6;
  sub_190D53910();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v11 = sub_190D56FD0();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17[0]) = v11 < 50;
  v12 = v10;
  sub_190D53910();
  v13 = sub_190B21FD4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17[0]) = v13 & 1;
  v14 = v12;
  return sub_190D53910();
}

id UserDefaultItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_190B22920()
{
  result = qword_1EAD5DA78;
  if (!qword_1EAD5DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DA78);
  }

  return result;
}

uint64_t sub_190B229A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

uint64_t sub_190B22A18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserDefaultItem(0);
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t sub_190B22A58@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  return sub_190D52690();
}

void sub_190B22A8C()
{
  sub_190B23AC0(319, &qword_1EAD5DA90, &unk_1EAD551C0);
  if (v0 <= 0x3F)
  {
    sub_190B0E85C(319, &qword_1EAD5DA98);
    if (v1 <= 0x3F)
    {
      sub_190B0E85C(319, &qword_1EAD452B8);
      if (v2 <= 0x3F)
      {
        sub_190B0E85C(319, &qword_1EAD5DAA0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for UserDefaultItem.InputStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_190D50920();
  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for UserDefaultItem.InputStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserDefaultItem.InputStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_190B22E64(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190B22E80(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_190B22EB4()
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18);
  v0 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v67 - v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  v2 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v67 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20);
  v4 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v67 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28);
  v6 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v67 - v7;
  v8 = MEMORY[0x1E69E7CC0];
  v100 = MEMORY[0x1E69E7CC0];
  v74 = objc_opt_self();
  v9 = 0;
  v67[2] = "nnedUserDefault";
  v79 = (v6 + 32);
  v78 = (v4 + 32);
  v77 = (v2 + 32);
  v76 = (v0 + 32);
  v73 = "ers";
  v72 = "com.apple.Messages";
  v71 = "com.apple.MobileSMS";
  v70 = "com.apple.madrid";
  v69 = "com.apple.messages";
  v68 = "com.apple.mobileSMS";
  v10 = v85;
  while (1)
  {
    v75 = v9 + 1;
    v12 = *(&unk_1F04024D8 + v9 + 32);
    v13 = 0xD000000000000012;
    v14 = 0xD000000000000010;
    if (v12 != 4)
    {
      v14 = 0xD000000000000019;
    }

    v15 = v71;
    if (v12 != 4)
    {
      v15 = v70;
    }

    if (v12 == 3)
    {
      v14 = 0xD000000000000013;
      v15 = v72;
    }

    if (v12 == 1)
    {
      v16 = 0xD000000000000013;
    }

    else
    {
      v16 = 0xD000000000000012;
    }

    v17 = v69;
    if (v12 != 1)
    {
      v17 = v68;
    }

    if (v12)
    {
      v13 = v16;
    }

    v18 = v73;
    if (v12)
    {
      v18 = v17;
    }

    v19 = v12 <= 2 ? v13 : v14;
    v20 = v12 <= 2 ? v18 : v15;
    v21 = v20 | 0x8000000000000000;
    v22 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v23 = sub_190D56ED0();
    v24 = [v22 initWithSuiteName_];

    v25 = [v74 mainBundle];
    v26 = [v25 bundleIdentifier];

    if (!v26)
    {
      break;
    }

    v27 = sub_190D56F10();
    v29 = v28;

    if (v19 == v27 && v21 == v29)
    {

LABEL_34:
      v32 = [objc_opt_self() standardUserDefaults];

      v24 = v32;
      goto LABEL_35;
    }

    v31 = sub_190D58760();

    if (v31)
    {
      goto LABEL_34;
    }

LABEL_35:
    v9 = v75;
    if (v24)
    {
      v33 = v24;
      v34 = sub_190D56ED0();
      v90 = v33;
      v35 = [v33 arrayForKey_];

      if (v35)
      {
        v36 = sub_190D57180();

        v37 = sub_19088097C(v36);

        if (v37)
        {
          v89 = *(v37 + 16);
          if (v89)
          {
            v38 = 0;
            v39 = (v37 + 40);
            v88 = v37;
            while (v38 < *(v37 + 16))
            {
              v96 = v38;
              v92 = *v39;
              v93 = *(v39 - 1);
              v95 = v39;
              v94 = type metadata accessor for UserDefaultItem(0);
              v40 = objc_allocWithZone(v94);
              v41 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
              *(v41 + 1) = 0;
              *(v41 + 2) = 0;
              *v41 = 0;
              *(v41 + 12) = 256;
              v42 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
              *v42 = 0;
              v42[1] = 0;
              v43 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
              memset(v99, 0, sizeof(v99));
              sub_19023C414(v99, v98);
              v91 = v90;
              sub_190D52690();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
              v44 = v80;
              sub_190D538D0();
              sub_19021E7D8(v99);
              (*v79)(&v40[v43], v44, v81);
              v45 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
              *&v99[0] = 0;
              v46 = v82;
              sub_190D538D0();
              (*v78)(&v40[v45], v46, v83);
              v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
              v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
              LOBYTE(v99[0]) = 0;
              v48 = v84;
              sub_190D538D0();
              v49 = *v77;
              (*v77)(&v40[v47], v48, v10);
              v50 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
              *&v99[0] = 0;
              *(&v99[0] + 1) = 0xE000000000000000;
              v51 = v86;
              sub_190D538D0();
              (*v76)(&v40[v50], v51, v87);
              v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
              LOBYTE(v99[0]) = 0;
              sub_190D538D0();
              v49(&v40[v52], v48, v10);
              v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
              LOBYTE(v99[0]) = 0;
              sub_190D538D0();
              v49(&v40[v53], v48, v10);
              v54 = v91;
              *&v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v91;
              v55 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
              v56 = v93;
              v57 = v92;
              *v55 = v93;
              v55[1] = v57;
              v58 = swift_allocObject();
              v58[2] = v54;
              v58[3] = v56;
              v58[4] = v57;
              v59 = &v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
              *v59 = sub_190B2426C;
              v59[1] = v58;
              swift_beginAccess();
              *v41 = 0;
              *(v41 + 1) = 0;
              *(v41 + 2) = 0;
              *(v41 + 12) = 256;
              swift_beginAccess();
              v60 = *v42;
              *v42 = 0;
              v42[1] = 0;
              v61 = v54;
              sub_190D52690();
              sub_19022123C(v60);
              v97.receiver = v40;
              v97.super_class = v94;
              v62 = objc_msgSendSuper2(&v97, sel_init);
              v63 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
              v62[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
              v64 = v62;
              sub_190B224E8();
              v62[v63] = 1;
              sub_190D52690();
              v65 = sub_190D56ED0();

              [v61 addObserver:v64 forKeyPath:v65 options:1 context:0];

              v66 = v64;
              MEMORY[0x193AF29E0]();
              if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_190D571A0();
              }

              v38 = v96 + 1;
              sub_190D571E0();

              v39 = v95 + 2;
              v37 = v88;
              if (v89 == v38)
              {
                v8 = v100;
                goto LABEL_2;
              }
            }

            __break(1u);
            break;
          }

LABEL_2:
        }
      }

      v11 = v90;

      v9 = v75;
    }

    if (v9 == 5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v99[0] = v8;
      sub_190D50920();
      sub_190D53910();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_190B23948()
{
  v1 = OBJC_IVAR____TtC7ChatKit17PinnedUserDefault__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_190B23A18()
{
  sub_190B23AC0(319, &qword_1EAD5DAC0, &qword_1EAD582F0);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190B23AC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_190D53920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190B23B14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PinnedUserDefault(0);
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t sub_190B23B54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190B23BD0(uint64_t a1, void **a2)
{
  sub_19023C414(a1, v7);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19023C414(v7, &v6);
  v4 = v3;
  sub_190D53910();
  return sub_19021E7D8(v7);
}

double sub_190B23C58@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_190B23D00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_190B23D80(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D52690();
  v3 = v2;
  return sub_190D53910();
}

uint64_t objectdestroyTm_31()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190B23EB8(uint64_t a1)
{
  v2 = 0x74657320746F6ELL;
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  sub_19023C414(a1, v22);
  if (v23)
  {
    sub_19023C414(v22, v21);
    v10 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {
      v18[1] = v19;
      v11 = sub_190D58720();
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          if (v19)
          {
            v2 = 1702195828;
          }

          else
          {
            v2 = 0x65736C6166;
          }
        }

        else if (swift_dynamicCast())
        {
          v2 = v19;
        }

        else if (swift_dynamicCast())
        {
          (*(v4 + 32))(v7, v9, v3);
          v2 = sub_190D51730();
          (*(v4 + 8))(v7, v3);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1E8);
          if (swift_dynamicCast())
          {
            v12 = sub_190D56DA0();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
            if (swift_dynamicCast())
            {
              v13 = v19;
              v14 = MEMORY[0x1E69E6158];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DAC8);
              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  v15 = v19;
                  v16 = v20;
                  v2 = sub_190D51620();
                  sub_19083B6D4(v15, v16);
                }

                goto LABEL_25;
              }

              v13 = v19;
              v14 = v10 + 8;
            }

            v12 = MEMORY[0x193AF2A20](v13, v14);
          }

          v2 = v12;
        }

LABEL_25:
        __swift_destroy_boxed_opaque_existential_0(v21);
        goto LABEL_26;
      }

      v11 = sub_190D573C0();
    }

    v2 = v11;
    goto LABEL_25;
  }

LABEL_26:
  sub_19021E7D8(v22);
  return v2;
}

id sub_190B24270()
{
  [v0 invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectsDisplayLinkToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MessageDestination()
{
  result = qword_1EAD5DB18;
  if (!qword_1EAD5DB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B24488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB00);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - v2;
  v4 = type metadata accessor for MessageDestination();
  v5 = sub_190B24AF4();
  MEMORY[0x193AEC5F0](v5, v4, &type metadata for MessageDestination.IntentPersonArrayResolver, v5);
  v6 = sub_190B24B48();
  MEMORY[0x193AEC5F0](v6, v4, &type metadata for MessageDestination.ConversationEntityResolver, v6);
  sub_190B24AAC(&qword_1EAD5DAE0, type metadata accessor for MessageDestination);
  sub_190D50D80();
  v8[0] = v5;
  v8[1] = &type metadata for MessageDestination.IntentPersonArrayResolver;
  sub_190D50D70();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190B24634(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_190B24658, 0, 0);
}

uint64_t sub_190B24658()
{
  v1 = v0[2];
  *v1 = v0[3];
  v2 = type metadata accessor for MessageDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v4 = v0[1];
  sub_190D52690();

  return v4();
}

uint64_t sub_190B24728(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190B24748, 0, 0);
}

uint64_t sub_190B24748()
{
  v1 = v0[2];
  sub_190B24E98(v0[3], v1, type metadata accessor for ConversationEntity);
  v2 = type metadata accessor for MessageDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_190B24818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55398);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD1DA0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DAE8);
  v2 = sub_190B249F8();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ConversationEntity();
  v4 = sub_190B24AAC(&qword_1EAD45D88, type metadata accessor for ConversationEntity);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_190B248CC@<X0>(uint64_t *a1@<X8>)
{
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190B24E98(v5, v4, type metadata accessor for MessageDestination);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a1[3] = type metadata accessor for ConversationEntity();
    a1[4] = sub_190B24AAC(&qword_1EAD45D88, type metadata accessor for ConversationEntity);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_19082FC20(v4, boxed_opaque_existential_1);
  }

  else
  {
    v8 = *v4;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DAE8);
    result = sub_190B249F8();
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

unint64_t sub_190B249F8()
{
  result = qword_1EAD5DAF0;
  if (!qword_1EAD5DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DAE8);
    sub_190B24AAC(&qword_1EAD5DAF8, MEMORY[0x1E695A048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DAF0);
  }

  return result;
}

uint64_t sub_190B24AAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190B24AF4()
{
  result = qword_1EAD5DB08;
  if (!qword_1EAD5DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB08);
  }

  return result;
}

unint64_t sub_190B24B48()
{
  result = qword_1EAD5DB10;
  if (!qword_1EAD5DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB10);
  }

  return result;
}

void sub_190B24BBC()
{
  sub_190B24C30();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConversationEntity();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_190B24C30()
{
  if (!qword_1EAD5DB28)
  {
    sub_190D50680();
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5DB28);
    }
  }
}

unint64_t sub_190B24C88()
{
  result = qword_1EAD5DB30;
  if (!qword_1EAD5DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB30);
  }

  return result;
}

unint64_t sub_190B24CF0()
{
  result = qword_1EAD5DB40;
  if (!qword_1EAD5DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB40);
  }

  return result;
}

unint64_t sub_190B24D48()
{
  result = qword_1EAD5DB48;
  if (!qword_1EAD5DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB48);
  }

  return result;
}

unint64_t sub_190B24DA0()
{
  result = qword_1EAD5DB50;
  if (!qword_1EAD5DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB50);
  }

  return result;
}

unint64_t sub_190B24E40()
{
  result = qword_1EAD5DB58;
  if (!qword_1EAD5DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB58);
  }

  return result;
}

uint64_t sub_190B24E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_190B24F08()
{
  result = qword_1EAD5DB60;
  if (!qword_1EAD5DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB60);
  }

  return result;
}

unint64_t sub_190B24F60()
{
  result = qword_1EAD5DB68;
  if (!qword_1EAD5DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB68);
  }

  return result;
}

uint64_t sub_190B25004()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E280);
  __swift_project_value_buffer(v6, qword_1EAD9E280);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190B251EC()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E298);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E298);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190B25274(uint64_t a1, uint64_t a2)
{
  v2[85] = a2;
  v2[84] = a1;
  sub_190D572A0();
  v2[86] = sub_190D57290();
  v4 = sub_190D57240();
  v2[87] = v4;
  v2[88] = v3;

  return MEMORY[0x1EEE6DFA0](sub_190B25314, v4, v3);
}

uint64_t sub_190B25314()
{
  sub_190D50810();
  v1 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v1;
  v2 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v5;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 712) = v6;
  sub_190D52690();
  sub_190889CE4(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 720) = v8;
  *v8 = v0;
  v8[1] = sub_190B2540C;

  return (sub_190888E50)(v7, v6);
}

uint64_t sub_190B2540C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[91] = a2;
  v4[92] = v2;

  if (v2)
  {
    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_190B25B28;
  }

  else
  {

    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_190B2554C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_190B2554C()
{
  v1 = *(v0 + 728);

  v2 = [v1 chatItems];
  sub_1902188FC(0, &unk_1EAD450C0);
  v3 = sub_190D57180();

  *(v0 + 656) = v3;
  sub_190D50920();
  v4 = sub_190B25F14(v3);
  v6 = v5;

  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 656;
  v8 = sub_190CD9E90(sub_190920978, v7, v4, v6 & 1);

  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_10:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v30 = sub_190D53040();
    __swift_project_value_buffer(v30, qword_1EAD9E840);
    v31 = sub_190D53020();
    v32 = sub_190D576A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_19020E000, v31, v32, "Failed to find an IMMessagePartChatItem to tapback", v33, 2u);
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

    v34 = *(v0 + 728);

    sub_190B26730();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = [v11 chatItemWithIMChatItem:v10 balloonMaxWidth:0.0];
  if (!v13)
  {
LABEL_21:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v41 = sub_190D53040();
    __swift_project_value_buffer(v41, qword_1EAD9E840);
    v42 = sub_190D53020();
    v43 = sub_190D576A0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_19020E000, v42, v43, "Failed to cast CKChatItem to CKMessagePartChatItem", v44, 2u);
      MEMORY[0x193AF7A40](v44, -1, -1);
    }

    v34 = *(v0 + 728);

    sub_190B26730();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 tapbacksChatItem];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 sentTapbackChatItem];

    if (v19)
    {
      v20 = [v19 tapback];

      if (v20)
      {
        v21 = *(v0 + 728);
        v22 = [v20 removedTapbackCounterpart];
        [v21 sendTapback:v22 forChatItem:v16];
        v23 = sub_190D1FE8C();
        sub_190D50810();
        v24 = *(v0 + 448);
        *(v0 + 592) = *(v0 + 432);
        *(v0 + 608) = v24;
        v25 = *(v0 + 480);
        *(v0 + 624) = *(v0 + 464);
        *(v0 + 640) = v25;
        v26 = *(v0 + 384);
        *(v0 + 528) = *(v0 + 368);
        *(v0 + 544) = v26;
        v27 = *(v0 + 416);
        *(v0 + 560) = *(v0 + 400);
        *(v0 + 576) = v27;
        v28 = *(v0 + 352);
        *(v0 + 496) = *(v0 + 336);
        *(v0 + 512) = v28;
        sub_190D50820();
        *(v0 + 664) = v23;
        sub_1909A6A08();
        sub_190D50690();

        v29 = *(v0 + 8);
        goto LABEL_27;
      }
    }
  }

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v36 = sub_190D53040();
  __swift_project_value_buffer(v36, qword_1EAD9E840);
  v37 = sub_190D53020();
  v38 = sub_190D576A0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_19020E000, v37, v38, "Failed to grab sent tapback type", v39, 2u);
    MEMORY[0x193AF7A40](v39, -1, -1);
  }

  v34 = *(v0 + 728);

  sub_190B26730();
  swift_allocError();
  *v40 = 1;
  swift_willThrow();

LABEL_26:
  v29 = *(v0 + 8);
LABEL_27:

  return v29();
}

uint64_t sub_190B25B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190B25C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB98);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DBA0);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190B25DAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190B25274(a1, v4);
}

uint64_t sub_190B25E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B26134();
  *a1 = result;
  return result;
}

uint64_t sub_190B25E74(uint64_t a1)
{
  v2 = sub_190B25EC0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190B25EC0()
{
  result = qword_1EAD5DB80;
  if (!qword_1EAD5DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB80);
  }

  return result;
}

unint64_t sub_190B25F14(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v30 = a1 & 0xC000000000000001;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = a1;
    v3 = a1 + 32;
    while (!__OFSUB__(v1--, 1))
    {
      if (v30)
      {
        v5 = MEMORY[0x193AF3B90](v1, v18);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v1 >= *(v2 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(v3 + 8 * v1);
      }

      v6 = v5;
      v7 = [v5 itemGUID];
      if (v7)
      {
        v8 = v7;
        v9 = sub_190D56F10();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      sub_190D50810();
      v29[6] = v25;
      v29[7] = v26;
      v29[8] = v27;
      v29[9] = v28;
      v29[2] = v21;
      v29[3] = v22;
      v29[4] = v23;
      v29[5] = v24;
      v29[0] = v19;
      v29[1] = v20;
      sub_190D52690();
      sub_190889CE4(v29);
      if (v11)
      {
        if (__PAIR128__(v11, v9) == v19)
        {
        }

        else
        {
          v12 = sub_190D58760();

          if ((v12 & 1) == 0)
          {

            goto LABEL_5;
          }
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();

        if (v13)
        {
          return v1;
        }
      }

      else
      {
      }

LABEL_5:
      if (!v1)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v14 = a1;
    v15 = sub_190D581C0();
    v16 = v14;
    v1 = v15;
    a1 = v16;
  }

  return v1;
}

uint64_t sub_190B26134()
{
  v0 = sub_190D50C80();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v28 = &v25 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v35;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  sub_19092095C(v46);
  v42 = v46[6];
  v43 = v46[7];
  v44 = v46[8];
  v45 = v46[9];
  v38 = v46[2];
  v39 = v46[3];
  v40 = v46[4];
  v41 = v46[5];
  v36 = v46[0];
  v37 = v46[1];
  sub_190D56E50();
  *v11 = sub_1902188FC(0, &qword_1EAD466B0);
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v30;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v31, 1, 1, v22);
  (*(v33 + 104))(v32, *MEMORY[0x1E695A500], v34);
  sub_190888A1C();
  return sub_190D50890();
}