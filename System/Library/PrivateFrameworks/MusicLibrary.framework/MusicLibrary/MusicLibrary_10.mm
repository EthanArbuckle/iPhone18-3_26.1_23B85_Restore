void sub_22D4FC074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22D4FD2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

__CFString *MLServiceLockReasonDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"No lock";
  }

  else
  {
    return off_278764D30[a1 - 1];
  }
}

void ML3ChapterDatabaseImportDataSource::~ML3ChapterDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

_DWORD *_MSV_XXH_XXH32_update(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

char *_MSV_XXH_XXH64_update(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

unint64_t _MSV_XXH_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void sub_22D4FF544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4FF818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D501850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCMediaLinkedIdentifierClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaLinkedIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaLinkedIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaLinkedIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:458 description:{@"Unable to find class %s", "CCMediaLinkedIdentifier"}];

    __break(1u);
  }
}

void IntelligencePlatformLibraryLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278764E60;
    v5 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:454 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22D502AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCMediaAlbumClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaAlbum");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaAlbumClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaAlbumClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:459 description:{@"Unable to find class %s", "CCMediaAlbum"}];

    __break(1u);
  }
}

void __getCCMediaAlbumArtistClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaAlbumArtist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaAlbumArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaAlbumArtistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:460 description:{@"Unable to find class %s", "CCMediaAlbumArtist"}];

    __break(1u);
  }
}

void __getCCMediaAudiobookClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaAudiobook");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaAudiobookClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaAudiobookClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:461 description:{@"Unable to find class %s", "CCMediaAudiobook"}];

    __break(1u);
  }
}

void __getCCMediaAudiobookArtistClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaAudiobookArtist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaAudiobookArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaAudiobookArtistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:462 description:{@"Unable to find class %s", "CCMediaAudiobookArtist"}];

    __break(1u);
  }
}

void __getCCMediaGenreClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaGenre");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaGenreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaGenreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:463 description:{@"Unable to find class %s", "CCMediaGenre"}];

    __break(1u);
  }
}

void __getCCMediaMovieClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaMovie");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaMovieClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaMovieClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:464 description:{@"Unable to find class %s", "CCMediaMovie"}];

    __break(1u);
  }
}

void __getCCMediaMusicVideoClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaMusicVideo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaMusicVideoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaMusicVideoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:465 description:{@"Unable to find class %s", "CCMediaMusicVideo"}];

    __break(1u);
  }
}

void __getCCMediaPlaylistClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaPlaylist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaPlaylistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaPlaylistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:466 description:{@"Unable to find class %s", "CCMediaPlaylist"}];

    __break(1u);
  }
}

void __getCCMediaSongClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaSong");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaSongClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:467 description:{@"Unable to find class %s", "CCMediaSong"}];

    __break(1u);
  }
}

void __getCCMediaSongArtistClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaSongArtist");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaSongArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaSongArtistClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:468 description:{@"Unable to find class %s", "CCMediaSongArtist"}];

    __break(1u);
  }
}

void __getCCMediaTVEpisodeClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaTVEpisode");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaTVEpisodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaTVEpisodeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:469 description:{@"Unable to find class %s", "CCMediaTVEpisode"}];

    __break(1u);
  }
}

void __getCCMediaContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:456 description:{@"Unable to find class %s", "CCMediaContent"}];

    __break(1u);
  }
}

void __getCCMediaMetaContentClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCMediaMetaContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCMediaMetaContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCMediaMetaContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:457 description:{@"Unable to find class %s", "CCMediaMetaContent"}];

    __break(1u);
  }
}

void __getCCItemInstanceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCItemInstance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCItemInstanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCItemInstanceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:455 description:{@"Unable to find class %s", "CCItemInstance"}];

    __break(1u);
  }
}

void sub_22D50380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CreateCCItemInstance(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v98[6] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v92 = v8;
  if (+[ML3Track revisionTrackingCode]== a4)
  {
    v91 = v9;
    v90 = v7;
    v10 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:a3 inLibrary:v7];
    v98[0] = @"media_type";
    v98[1] = @"item_extra.title";
    v98[2] = @"album_pid";
    v98[3] = @"album_artist_pid";
    v98[4] = @"item_artist_pid";
    v98[5] = @"genre_id";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:6];
    v12 = [(ML3Entity *)v10 getValuesForProperties:v11];

    v88 = [v12 objectForKeyedSubscript:@"item_extra.title"];
    v13 = [v12 objectForKeyedSubscript:@"media_type"];
    v14 = [v13 unsignedIntValue];

    v15 = [v12 objectForKeyedSubscript:@"album_pid"];
    v16 = [v15 longLongValue];

    v17 = [v12 objectForKeyedSubscript:@"album_artist_pid"];
    v18 = [v17 longLongValue];

    v19 = [v12 objectForKeyedSubscript:@"item_artist_pid"];
    v20 = [v19 longLongValue];

    v21 = [v12 objectForKeyedSubscript:@"genre_id"];
    v22 = [v21 longLongValue];

    v89 = v10;
    v23 = [(ML3Entity *)v10 URL];
    v24 = [v23 absoluteString];

    if (v16)
    {
      v25 = [(ML3Entity *)ML3Album URLForEntityWithPersistentID:v16 libraryUID:v8];
      v16 = [v25 absoluteString];
    }

    if (v18)
    {
      v26 = [(ML3Entity *)ML3AlbumArtist URLForEntityWithPersistentID:v18 libraryUID:v8];
      v27 = [v26 absoluteString];

      if (!v20)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v27 = 0;
      if (!v20)
      {
LABEL_7:
        if (v22)
        {
          v29 = [(ML3Entity *)ML3Genre URLForEntityWithPersistentID:v22 libraryUID:v8];
          v30 = [v29 absoluteString];
        }

        else
        {
          v30 = 0;
        }

        v87 = v27;
        if ((v14 & 0x408) != 0)
        {
          v86 = v24;
          v53 = [ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v27 andType:1 toLinkedItemIdentifiers:v9];
          v54 = [ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v20 andType:2 toLinkedItemIdentifiers:v9];
          v55 = [ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v16 andType:3 toLinkedItemIdentifiers:v9];
          v56 = [ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v30 andType:4 toLinkedItemIdentifiers:v91];
          v52 = 0;
          v57 = 0;
          if (!v53 || !v54)
          {
            v9 = v91;
            v58 = v88;
            v24 = v86;
            goto LABEL_66;
          }

          v24 = v86;
          if (!v55)
          {
            v9 = v91;
            v58 = v88;
            goto LABEL_66;
          }

          v9 = v91;
          v58 = v88;
          if (!v56)
          {
LABEL_66:

            if ((v57 & 1) == 0)
            {
              v84 = 0;
              v7 = v90;
              v8 = v92;
              goto LABEL_81;
            }

            v7 = v90;
            goto LABEL_79;
          }

          if ((v14 & 0x400) != 0)
          {
            v59 = 7;
          }

          else
          {
            v59 = 5;
          }

          goto LABEL_41;
        }

        v58 = v88;
        if ((v14 & 0x200) != 0)
        {
          if ([ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v20 andType:8 toLinkedItemIdentifiers:v9])
          {
            v59 = 9;
LABEL_41:
            v66 = v58;
            v67 = v24;
LABEL_42:
            v68 = v9;
LABEL_43:
            v52 = [ML3UpdateSiriIndexOperation _createDonationItemOfType:v59 withName:v66 itemIdentifier:v67 linkedItemIdentifiers:v68];
            goto LABEL_44;
          }
        }

        else
        {
          if ((v14 & 0x800) != 0)
          {
            v59 = 10;
            v66 = v88;
            v67 = v24;
            v68 = 0;
            goto LABEL_43;
          }

          if ((v14 & 2) == 0)
          {
            v52 = 0;
LABEL_44:
            v57 = 1;
            goto LABEL_66;
          }

          if ([ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v20 andType:11 toLinkedItemIdentifiers:v9])
          {
            v59 = 12;
            v66 = v88;
            v67 = v16;
            goto LABEL_42;
          }
        }

        v57 = 0;
        v52 = 0;
        goto LABEL_66;
      }
    }

    v28 = [(ML3Entity *)ML3Artist URLForEntityWithPersistentID:v20 libraryUID:v8];
    v20 = [v28 absoluteString];

    goto LABEL_7;
  }

  if (+[ML3Album revisionTrackingCode]== a4)
  {
    v31 = [(ML3Entity *)[ML3Album alloc] initWithPersistentID:a3 inLibrary:v7];
    v97[0] = @"album";
    v97[1] = @"representative_item_pid";
    v97[2] = @"album_artist_pid";
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:3];
    v33 = [(ML3Entity *)v31 getValuesForProperties:v32];

    v34 = [v33 objectForKeyedSubscript:@"album"];
    v35 = [v33 objectForKeyedSubscript:@"representative_item_pid"];
    v36 = [v35 longLongValue];

    v37 = [v33 objectForKeyedSubscript:@"album_artist_pid"];
    v38 = [v37 longLongValue];

    if ([v34 length])
    {
      v39 = v9;
      v40 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:v36 inLibrary:v7];
      v41 = [(ML3Entity *)v40 valueForProperty:@"media_type"];
      v42 = [v41 unsignedIntValue];

      if ((v42 & 8) != 0)
      {
        v43 = [(ML3Entity *)v31 URL];
        v44 = [v43 absoluteString];

        if (v38)
        {
          v45 = [(ML3Entity *)ML3AlbumArtist URLForEntityWithPersistentID:v38 libraryUID:v92];
          v46 = [v45 absoluteString];
        }

        else
        {
          v46 = 0;
        }

        if (![ML3UpdateSiriIndexOperation _addDonationLinkedItemWithSourceIdentifier:v46 andType:1 toLinkedItemIdentifiers:v39])
        {

          v52 = 0;
          v84 = 0;
          v8 = v92;
          v9 = v39;
          goto LABEL_81;
        }

        v52 = [ML3UpdateSiriIndexOperation _createDonationItemOfType:3 withName:v34 itemIdentifier:v44 linkedItemIdentifiers:v39];

        goto LABEL_75;
      }

LABEL_17:
      v52 = 0;
LABEL_76:

      v9 = v39;
      goto LABEL_77;
    }

LABEL_49:
    v52 = 0;
LABEL_77:

LABEL_78:
LABEL_79:
    v8 = v92;
    goto LABEL_80;
  }

  if (+[ML3AlbumArtist revisionTrackingCode]== a4)
  {
    v31 = [(ML3Entity *)[ML3AlbumArtist alloc] initWithPersistentID:a3 inLibrary:v7];
    v96[0] = @"album_artist";
    v96[1] = @"representative_item_pid";
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v33 = [(ML3Entity *)v31 getValuesForProperties:v47];

    v34 = [v33 objectForKeyedSubscript:@"album_artist"];
    v48 = [v33 objectForKeyedSubscript:@"representative_item_pid"];
    v49 = [v48 longLongValue];

    if (![v34 length])
    {
      goto LABEL_49;
    }

    v39 = v9;
    v40 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:v49 inLibrary:v7];
    v50 = [(ML3Entity *)v40 valueForProperty:@"media_type"];
    v51 = [v50 unsignedIntValue];

    if ((v51 & 8) == 0)
    {
      goto LABEL_17;
    }

    v76 = [(ML3Entity *)v31 URL];
    v44 = [v76 absoluteString];

    v75 = 1;
    goto LABEL_53;
  }

  if (+[ML3Artist revisionTrackingCode]== a4)
  {
    v31 = [(ML3Entity *)[ML3Artist alloc] initWithPersistentID:a3 inLibrary:v7];
    v95[0] = @"item_artist";
    v95[1] = @"representative_item_pid";
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v33 = [(ML3Entity *)v31 getValuesForProperties:v60];

    v34 = [v33 objectForKeyedSubscript:@"item_artist"];
    v61 = [v33 objectForKeyedSubscript:@"representative_item_pid"];
    v62 = [v61 longLongValue];

    if (![v34 length])
    {
      goto LABEL_49;
    }

    v39 = v9;
    v63 = [(ML3Entity *)v31 URL];
    v40 = [v63 absoluteString];

    v44 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:v62 inLibrary:v7];
    v64 = [(ML3Entity *)v44 valueForProperty:@"media_type"];
    v65 = [v64 unsignedIntValue];

    if ((v65 & 8) != 0)
    {
      v75 = 2;
    }

    else if ((v65 & 0x200) != 0)
    {
      v75 = 8;
    }

    else
    {
      if ((v65 & 2) == 0)
      {
        v52 = 0;
LABEL_75:

        goto LABEL_76;
      }

      v75 = 11;
    }

    v77 = v34;
    v78 = v40;
LABEL_74:
    v52 = [ML3UpdateSiriIndexOperation _createDonationItemOfType:v75 withName:v77 itemIdentifier:v78 linkedItemIdentifiers:0];
    goto LABEL_75;
  }

  if (+[ML3Genre revisionTrackingCode]== a4)
  {
    v31 = [(ML3Entity *)[ML3Genre alloc] initWithPersistentID:a3 inLibrary:v7];
    v94[0] = @"genre";
    v94[1] = @"representative_item_pid";
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v33 = [(ML3Entity *)v31 getValuesForProperties:v69];

    v34 = [v33 objectForKeyedSubscript:@"genre"];
    v70 = [v33 objectForKeyedSubscript:@"representative_item_pid"];
    v71 = [v70 longLongValue];

    if (![v34 length])
    {
      goto LABEL_49;
    }

    v39 = v9;
    v40 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:v71 inLibrary:v7];
    v72 = [(ML3Entity *)v40 valueForProperty:@"media_type"];
    v73 = [v72 unsignedIntValue];

    if ((v73 & 8) == 0)
    {
      goto LABEL_17;
    }

    v74 = [(ML3Entity *)v31 URL];
    v44 = [v74 absoluteString];

    v75 = 4;
LABEL_53:
    v77 = v34;
    v78 = v44;
    goto LABEL_74;
  }

  if (+[ML3Container revisionTrackingCode]== a4)
  {
    v31 = [(ML3Entity *)[ML3Container alloc] initWithPersistentID:a3 inLibrary:v7];
    v93[0] = @"name";
    v93[1] = @"is_hidden";
    v93[2] = @"smart_is_folder";
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
    v33 = [(ML3Entity *)v31 getValuesForProperties:v79];

    v80 = [v33 objectForKeyedSubscript:@"is_hidden"];
    LOBYTE(v79) = [v80 BOOLValue];

    v81 = [v33 objectForKeyedSubscript:@"smart_is_folder"];
    v82 = [v81 BOOLValue];

    v52 = 0;
    if (v79 & 1) != 0 || (v82)
    {
      goto LABEL_78;
    }

    v39 = v9;
    v34 = [v33 objectForKeyedSubscript:@"name"];
    v83 = [(ML3Entity *)v31 URL];
    v40 = [v83 absoluteString];

    v52 = [ML3UpdateSiriIndexOperation _createDonationItemOfType:6 withName:v34 itemIdentifier:v40 linkedItemIdentifiers:0];
    goto LABEL_76;
  }

  v52 = 0;
LABEL_80:
  v52 = v52;
  v84 = v52;
LABEL_81:

  return v84;
}

void sub_22D504958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D5050E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAFDeviceSupportsSiriUODSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFDeviceSupportsSiriUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDeviceSupportsSiriUODSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AssistantServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278764E08;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:437 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getAFShouldRunAsrOnServerForUODSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFShouldRunAsrOnServerForUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFShouldRunAsrOnServerForUODSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFOfflineDictationCapableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFOfflineDictationCapable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFOfflineDictationCapableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCCSetDonationClass_block_invoke(uint64_t a1)
{
  CascadeSetsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCSetDonation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCSetDonationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCSetDonationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:447 description:{@"Unable to find class %s", "CCSetDonation"}];

    __break(1u);
  }
}

void sub_22D505E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCIncrementalSetDonationClass_block_invoke(uint64_t a1)
{
  CascadeSetsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCIncrementalSetDonation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCIncrementalSetDonationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCIncrementalSetDonationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:448 description:{@"Unable to find class %s", "CCIncrementalSetDonation"}];

    __break(1u);
  }
}

void __getCCFullSetDonationClass_block_invoke(uint64_t a1)
{
  CascadeSetsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCFullSetDonation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCFullSetDonationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCCFullSetDonationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:449 description:{@"Unable to find class %s", "CCFullSetDonation"}];

    __break(1u);
  }
}

void CascadeSetsLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CascadeSetsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CascadeSetsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278764DF0;
    v5 = 0;
    CascadeSetsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CascadeSetsLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CascadeSetsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:446 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CascadeSetsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CascadeSetsLibraryCore_frameworkLibrary = result;
  return result;
}

void ML3ComposerDatabaseImportDataSource::~ML3ComposerDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ItemExtraDatabaseImportDataSource::hasValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v6, a3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return hasValueForKey;
}

void sub_22D506A68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemExtraDatabaseImportDataSource::stringValueForKey(uint64_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 == 33554434)
  {
    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 24))(&v10);
    *(a3 + 8) = v10.__r_.__value_.__s.__data_[8];
    std::string::operator=(v4, &v10.__r_.__value_.__r.__words[2]);
    v10.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v10.__r_.__value_.__r.__words[2]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (*(a3 + 8) == 1)
    {
      if (*(a3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *(a3 + 16), *(a3 + 24));
      }

      else
      {
        v10 = *v4;
      }

      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v10.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
        if (size)
        {
          return;
        }
      }

      else if (size)
      {
        return;
      }

      v10.__r_.__value_.__r.__words[0] = &unk_28408AC60;
      v10.__r_.__value_.__s.__data_[8] = 0;
      v11 = 0;
      v12 = 0;
      v10.__r_.__value_.__r.__words[2] = 0;
      *(a3 + 8) = 0;
      std::string::operator=(v4, &v10.__r_.__value_.__r.__words[2]);
      v10.__r_.__value_.__r.__words[0] = &unk_28408AC60;
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v10.__r_.__value_.__r.__words[2]);
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 24))(&v10);
    *(a3 + 8) = v10.__r_.__value_.__s.__data_[8];
    std::string::operator=(v4, &v10.__r_.__value_.__r.__words[2]);
    v10.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v10.__r_.__value_.__r.__words[2]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_22D506CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *v16 = v17;
  if (*(v16 + 39) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemExtraDatabaseImportDataSource::dataValueForKey(uint64_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 48))(&v6);
  v5 = v6;
  v6 = 0uLL;
  *a2 = v5;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_22D506DEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ItemExtraDatabaseImportDataSource::integerValueForKey(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a3 == 33554444)
  {
    v4 = (*(*v3 + 32))(v3, 33554444);
    return ITMediaKindForMLMediaType(v4);
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 32))(v3, a3);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v5;
}

void sub_22D506EBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ML3ItemExtraDatabaseImportDataSource::~ML3ItemExtraDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void ML3RemovePathsFromPurchaseManifests(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    v6 = 0;
    v7 = *v30;
    *&v3 = 136446210;
    v26 = v3;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [ML3MusicLibrary pathForResourceFileOrFolder:21, v26];
        v11 = [v9 hasPrefix:v10];

        if (v11)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] array];
          }

          v12 = v6;
LABEL_14:
          [v12 addObject:v9];
          continue;
        }

        v13 = [ML3MusicLibrary pathForResourceFileOrFolder:20];
        v14 = [v9 hasPrefix:v13];

        if (v14)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x277CBEB18] array];
          }

          v12 = v5;
          goto LABEL_14;
        }

        v15 = [v9 stringByDeletingPathExtension];
        v16 = [v15 stringByAppendingPathExtension:@"plist"];
        v17 = [v16 fileSystemRepresentation];

        LODWORD(v15) = unlink(v17);
        v18 = os_log_create("com.apple.amp.medialibrary", "Default");
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v19)
          {
            v20 = __error();
            v21 = strerror(*v20);
            *buf = 136446466;
            v34 = v17;
            v35 = 2082;
            v36 = v21;
            v22 = v18;
            v23 = "Could not delete %{public}s: %{public}s";
            v24 = 22;
LABEL_20:
            _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
          }
        }

        else if (v19)
        {
          *buf = v26;
          v34 = v17;
          v22 = v18;
          v23 = "Removed file: %{public}s";
          v24 = 12;
          goto LABEL_20;
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (!v4)
      {
        goto LABEL_26;
      }
    }
  }

  v5 = 0;
  v6 = 0;
LABEL_26:
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __ML3RemovePathsFromPurchaseManifests_block_invoke;
  v27[3] = &unk_278764EC8;
  v28 = 0;
  v25 = MEMORY[0x2318CDB10](v27);
  (v25)[2](v25, v6, 0);
  (v25)[2](v25, v5, 1);
}

void __ML3RemovePathsFromPurchaseManifests_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v6 = getSSDownloadFileManifestClass_softClass;
    v13 = getSSDownloadFileManifestClass_softClass;
    if (!getSSDownloadFileManifestClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getSSDownloadFileManifestClass_block_invoke;
      v9[3] = &unk_278764EF0;
      v9[4] = &v10;
      __getSSDownloadFileManifestClass_block_invoke(v9);
      v6 = v11[3];
    }

    v7 = v6;
    _Block_object_dispose(&v10, 8);
    v8 = [[v6 alloc] initWithManifestType:a3];
    [v8 removeItemsWithAssetPaths:v5 completionBlock:*(a1 + 32)];
  }
}

void sub_22D50A700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSDownloadFileManifestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __StoreServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278764F10;
    v8 = 0;
    StoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ML3StorageUtilities.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSDownloadFileManifest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSSDownloadFileManifestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ML3StorageUtilities.m" lineNumber:19 description:{@"Unable to find class %s", "SSDownloadFileManifest"}];

LABEL_10:
    __break(1u);
  }

  getSSDownloadFileManifestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void ML3DeleteAssetsAtPaths(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [v6 fileSystemRepresentation];
        v8 = [v6 pathExtension];
        if (v8)
        {
          v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"movpkg", @"m4bpkg", 0}];
          v10 = [v9 containsObject:v8];
        }

        else
        {
          v10 = 0;
        }

        memset(&v23, 0, sizeof(v23));
        if (!stat(v7, &v23) && ((v23.st_mode & 0x4000) == 0) | v10 & 1)
        {
          if ((v23.st_mode & 0x4000) != 0)
          {
            v18 = [MEMORY[0x277CCAA00] defaultManager];
            v22 = 0;
            v19 = [v18 removeItemAtPath:v6 error:&v22];
            v11 = v22;

            if (!v19)
            {
              v20 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v11 localizedDescription];
                *buf = 136446466;
                v29 = v7;
                v30 = 2114;
                v31 = v21;
                _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, "Could not delete %{public}s: %{public}@", buf, 0x16u);
              }

              goto LABEL_23;
            }
          }

          else if (unlink(v7))
          {
            v11 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = __error();
              v13 = strerror(*v12);
              *buf = 136446466;
              v29 = v7;
              v30 = 2082;
              v31 = v13;
              v14 = v11;
              v15 = OS_LOG_TYPE_ERROR;
              v16 = "Could not delete %{public}s: %{public}s";
              v17 = 22;
              goto LABEL_19;
            }

            goto LABEL_23;
          }

          v11 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v29 = v7;
            v14 = v11;
            v15 = OS_LOG_TYPE_DEFAULT;
            v16 = "Removed file: %{public}s";
            v17 = 12;
LABEL_19:
            _os_log_impl(&dword_22D2FA000, v14, v15, v16, buf, v17);
          }

LABEL_23:
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v3);
  }

  ML3RemovePathsFromPurchaseManifests(v1);
}

uint64_t _ML3VirtualTableRowID(sqlite3_vtab_cursor *a1, const sqlite3_module **a2)
{
  pVtab = a1->pVtab;
  pModule = a1->pVtab[1].pModule;
  v6 = *&pVtab[1].nRef;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (pModule)
  {
    pModule = (*(*&pModule->iVersion + 16))(pModule, LODWORD(a1[1].pVtab));
  }

  *a2 = pModule;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 0;
}

void sub_22D50B9BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ML3VirtualTableColumn(sqlite3_vtab_cursor *a1, sqlite3_vtab *a2, int a3)
{
  pVtab = a1[2].pVtab;
  if (LODWORD(pVtab->pModule) != LODWORD(a1[1].pVtab))
  {
    pModule = a1->pVtab[1].pModule;
    v7 = *&a1->pVtab[1].nRef;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (pModule)
    {
      v9 = *&pVtab->nRef;
      for (i = pVtab->zErrMsg; v9 != i; v9 += 48)
      {
        if (*(v9 + 40) == 1)
        {
          if (*(v9 + 32))
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9 + 8);
            *(v9 + 32) = 0;
          }

          *(v9 + 8) = 0;
        }

        else
        {
          *(v9 + 8) = 0;
          *(v9 + 32) = 0;
          *(v9 + 40) = 1;
        }
      }

      v11 = a1[1].pVtab;
      (*(*&pModule->iVersion + 8))(pModule, pVtab, v11);
      LODWORD(pVtab->pModule) = v11;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v12 = *&pVtab->nRef + 48 * a3;
  if (*(v12 + 40) == 1)
  {
    a1[4].pVtab = a2;
    v13 = *(v12 + 32);
    if (v13 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v15 = a1 + 3;
    (off_284088458[v13])(&v15, v12 + 8);
  }

  else
  {
    sqlite3_result_null(a2);
  }

  return 0;
}

void sub_22D50BB44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3VirtualTableBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v2 + 8))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = *(v2 + 8);
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3VirtualTableBindingVisitor::operator()(ML3CPPDataRef)"];
  [v7 handleFailureInFunction:v8 file:@"ML3VirtualTableRow.mm" lineNumber:82 description:@"Cannot bind ML3CPPDataRef: NULL context"];

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = *(v4 + 16);
  v6 = *(v2 + 8);
  if (v5)
  {
    sqlite3_result_blob(v6, v5, *(v4 + 8), 0);
    goto LABEL_10;
  }

LABEL_9:
  sqlite3_result_null(v6);
LABEL_10:
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_22D50BC58(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3VirtualTableBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3VirtualTableBindingVisitor::operator()(const std::string &)"];
    [v6 handleFailureInFunction:v7 file:@"ML3VirtualTableRow.mm" lineNumber:76 description:@"Cannot bind std::string: NULL context"];

    v4 = *(v3 + 8);
  }

  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  sqlite3_result_text(v4, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3VirtualTableBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3VirtualTableBindingVisitor::operator()(const BOOL &)"];
    [v6 handleFailureInFunction:v7 file:@"ML3VirtualTableRow.mm" lineNumber:70 description:@"Cannot bind BOOL: NULL context"];

    v4 = *(v3 + 8);
  }

  v5 = *a2;

  sqlite3_result_int(v4, v5);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3VirtualTableBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, float *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3VirtualTableBindingVisitor::operator()(const float_t &)"];
    [v6 handleFailureInFunction:v7 file:@"ML3VirtualTableRow.mm" lineNumber:64 description:@"Cannot bind float_t: NULL context"];

    v4 = *(v3 + 8);
  }

  v5 = *a2;

  sqlite3_result_double(v4, v5);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3VirtualTableBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, sqlite3_int64 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3VirtualTableBindingVisitor::operator()(const int64_t &)"];
    [v6 handleFailureInFunction:v7 file:@"ML3VirtualTableRow.mm" lineNumber:58 description:@"Cannot bind int64_t: NULL context"];

    v4 = *(v3 + 8);
  }

  v5 = *a2;

  sqlite3_result_int64(v4, v5);
}

uint64_t _ML3VirtualTableNext(sqlite3_vtab_cursor *a1)
{
  pModule = a1->pVtab[1].pModule;
  v2 = *&a1->pVtab[1].nRef;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (LODWORD(a1[1].pVtab) + 1);
  do
  {
    v5 = v4;
    if (v4 >= HIDWORD(a1[1].pVtab))
    {
      break;
    }

    v6 = (*(*&pModule->iVersion + 24))(pModule, v4);
    v4 = (v5 + 1);
  }

  while ((v6 & 1) == 0);
  LODWORD(a1[1].pVtab) = v5;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return 0;
}

void sub_22D50C064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ML3VirtualTableClose(sqlite3_vtab_cursor *a1)
{
  v2 = a1->pVtab[1].zErrMsg;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 delegate];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 virtualTableDidCloseCursor:v3];
    }
  }

  pVtab = a1[2].pVtab;
  if (pVtab)
  {
    p_nRef = &pVtab->nRef;
    std::vector<ML3VirtualTableColumn>::__destroy_vector::operator()[abi:ne200100](&p_nRef);
    MEMORY[0x2318CD250](pVtab, 0x1020C40E72D6CFBLL);
  }

  MEMORY[0x2318CD250](a1, 0x10A0C40A32EB4A5);

  return 0;
}

void std::vector<ML3VirtualTableColumn>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 8) == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v4 - 40));
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ML3VirtualTableOpen(sqlite3_vtab *a1, sqlite3_vtab_cursor **a2)
{
  v2 = *&a1[1].nRef;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_22D50C4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::vector<ML3VirtualTableColumn>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x2318CD250](v11, 0x1020C40E72D6CFBLL);

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

uint64_t _ML3VirtualTableDestroy(sqlite3_vtab *a1)
{
  if (a1)
  {

    v2 = *&a1[1].nRef;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x2318CD250](a1, 0x10F0C40C957F46CLL);
  }

  return 0;
}

uint64_t _ML3VirtualTableCreate(sqlite3 *a1, void *a2, int a3, const char *const *a4, sqlite3_vtab **a5, char **a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 databaseTable];
  v9 = [v8 columns];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (([*(*(&v23 + 1) + 8 * i) columnConstraints] & 1) == 0)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"col%lu", v11];
          [v7 addObject:v14];

          ++v11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [v7 componentsJoinedByString:{@", "}];
  v16 = MEMORY[0x277CCACA8];
  v17 = [v6 name];
  v18 = [v16 stringWithFormat:@"CREATE TABLE %@ (%@)", v17, v15];

  v19 = v18;
  v20 = sqlite3_declare_vtab(a1, [v18 UTF8String]);
  if (!v20)
  {
    operator new();
  }

  return v20;
}

void sub_22D50C94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ML3VirtualTable;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t ML3IsUIApplication()
{
  if (ML3IsUIApplication___once != -1)
  {
    dispatch_once(&ML3IsUIApplication___once, &__block_literal_global_22217);
  }

  return ML3IsUIApplication___isUIApplication;
}

void __ML3IsUIApplication_block_invoke()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  ML3IsUIApplication___isUIApplication = [v0 isApplication];
}

uint64_t ML3IsFirstPartyMediaApplication()
{
  if (ML3IsFirstPartyMediaApplication___once != -1)
  {
    dispatch_once(&ML3IsFirstPartyMediaApplication___once, &__block_literal_global_3);
  }

  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = [ML3IsFirstPartyMediaApplication___firstPartyBundleIDs containsObject:v1];
  return v2;
}

uint64_t __ML3IsFirstPartyMediaApplication_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.Music", @"com.apple.videos", @"com.apple.MobileStore", @"com.apple.AppStore", @"com.apple.tv", 0}];
  v1 = ML3IsFirstPartyMediaApplication___firstPartyBundleIDs;
  ML3IsFirstPartyMediaApplication___firstPartyBundleIDs = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ML3RepairFilePermissions(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (getuid())
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEBUG, "Can't repair database permissions because we are not running as root.", &buf, 2u);
    }

    v5 = 0;
    goto LABEL_22;
  }

  v6 = [v3 UTF8String];
  memset(&buf, 0, sizeof(buf));
  v7 = stat(v6, &buf);
  if (v7)
  {
    v28 = a2;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get permissions info on file %s.", v6];
  }

  else
  {
    v21 = getpwnam("mobile");
    if (v21)
    {
      pw_uid = v21->pw_uid;
      pw_gid = v21->pw_gid;
      if (buf.st_uid == pw_uid && buf.st_gid == pw_gid)
      {
        v4 = 0;
        v5 = 1;
        goto LABEL_22;
      }

      v25 = chown(v6, pw_uid, pw_gid);
      v28 = a2;
      if (v25)
      {
        v8 = v25;
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to chown file %s. Err %d.", v6, *__error()];
        v5 = 0;
      }

      else
      {
        v27 = _ML3LogCategoryDefault();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *v35 = 136446210;
          v36 = v6;
          _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_DEBUG, "Successfully repaired permissions for file %{public}s.", v35, 0xCu);
        }

        v4 = 0;
        v8 = 0;
        v5 = 1;
      }

      goto LABEL_8;
    }

    v28 = a2;
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get uid for user 'mobile'. Err %d.", *__error()];
  }
  v4 = ;
  v5 = 0;
  v8 = 0;
LABEL_8:
  v9 = MEMORY[0x277D27EF0];
  v10 = *MEMORY[0x277D27EC0];
  v33[0] = v3;
  v32[0] = @"filePath";
  v32[1] = @"chownError";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v33[1] = v11;
  v32[2] = @"statError";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v13 = v12;
  v32[3] = @"errorMsg";
  v14 = &stru_28408B690;
  if (v4)
  {
    v14 = v4;
  }

  v33[2] = v12;
  v33[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
  v34 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v9 snapshotWithDomain:v10 type:@"Bug" subType:@"Database Validation Bug" context:@"wrong permisions" triggerThresholdValues:0 events:v16 completion:0];

  if (v28 && v4)
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = *MEMORY[0x277CCA450];
    v31 = v4;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = [v17 initWithDomain:@"ML3SystemErrorDomain" code:42 userInfo:v18];

    v20 = v19;
    *v28 = v19;
  }

LABEL_22:

  return v5;
}

BOOL ML3IsProcessRunning(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D46FA0] predicateMatchingServiceName:v1];
  v9 = 0;
  v3 = [MEMORY[0x277D46F48] handleForPredicate:v2 error:&v9];
  v4 = v9;
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D47088]])
  {
    v6 = [v4 code];

    if (v6 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v11 = v1;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Failed to query for running process '%{public}@'. err=%{public}@", buf, 0x16u);
  }

LABEL_8:
  return v3 != 0;
}

id ML3LocalizedSortingDetailsDictionary()
{
  v0 = +[ML3LanguageResourceManager sharedResourceManager];
  v1 = [v0 resources];
  v2 = [v1 sortingDetails];

  return v2;
}

uint64_t ML3GetDiskUsageForPath(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    if (dirstat_np() == -1)
    {
      v3 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        *buf = 138543618;
        v8 = v2;
        v9 = 2080;
        v10 = v5;
        _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "ML3GetUsageForPath encountered error. path=%{public}@ err=%s", buf, 0x16u);
      }
    }
  }

  return 0;
}

void ML3ImportSession::~ML3ImportSession(ML3ImportSession *this)
{
  ML3ImportSession::~ML3ImportSession(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840884D0;
  v2 = *(this + 8);
  if (v2 && v2 != *(this + 2))
  {
    [*(this + 1) checkInDatabaseConnection:?];
    v3 = *(this + 8);
    *(this + 8) = 0;
  }

  v4 = *(this + 348);
  if (v4)
  {
    *(this + 349) = v4;
    operator delete(v4);
  }

  v18 = (this + 2760);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);

  v18 = (this + 2728);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);

  v18 = (this + 2696);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);

  v18 = (this + 2656);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);

  v18 = (this + 2624);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 2600);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 2576);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(this + 2536);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2496);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2456);
  v18 = (this + 2432);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 2408);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v5 = *(this + 298);
  if (v5)
  {
    *(this + 299) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 2344);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 2304);

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 2256);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2216);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2176);
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(this + 2136);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2096);

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 2048);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2008);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1968);
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(this + 1928);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1888);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 1848);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1808);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1768);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1728);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1688);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1648);
  v18 = (this + 1624);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 1600);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);

  v18 = (this + 1560);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 1536);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (*(this + 1519) < 0)
  {
    operator delete(*(this + 187));
  }

  if (*(this + 1495) < 0)
  {
    operator delete(*(this + 184));
  }

  if (*(this + 1471) < 0)
  {
    operator delete(*(this + 181));
  }

  if (*(this + 1447) < 0)
  {
    operator delete(*(this + 178));
  }

  if (*(this + 1423) < 0)
  {
    operator delete(*(this + 175));
  }

  if (*(this + 1399) < 0)
  {
    operator delete(*(this + 172));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1336);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1296);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1256);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1216);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1176);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1136);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(this + 1096);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 1056);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 1016);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 976);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 936);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(this + 896);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 856);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 816);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 776);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 736);

  v6 = *(this + 88);
  if (v6)
  {
    *(this + 89) = v6;
    operator delete(v6);
  }

  v7 = *(this + 85);
  if (v7)
  {
    operator delete(v7);
  }

  v18 = (this + 656);
  std::vector<std::unordered_map<unsigned long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 632);
  std::vector<std::unordered_map<unsigned long long,long long>>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 592);
  v8 = *(this + 71);
  if (v8)
  {
    *(this + 72) = v8;
    operator delete(v8);
  }

  v9 = *(this + 68);
  if (v9)
  {
    *(this + 69) = v9;
    operator delete(v9);
  }

  v10 = *(this + 65);
  if (v10)
  {
    *(this + 66) = v10;
    operator delete(v10);
  }

  v11 = *(this + 62);
  if (v11)
  {
    *(this + 63) = v11;
    operator delete(v11);
  }

  v12 = *(this + 59);
  if (v12)
  {
    *(this + 60) = v12;
    operator delete(v12);
  }

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 432);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 392);
  std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::~__hash_table(this + 352);
  v13 = *(this + 43);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 41);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 39);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 37);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(this + 35);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::unordered_map<unsigned long long,long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[12];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      v4 = v1[10];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = v1[8];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v1[6];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = v1[4];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ML3ArtistData>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ML3ArtistData>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<ML3GenreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3GenreDatabaseImportDataSource>,std::allocator<ML3GenreDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_32ML3GenreDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3GenreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3GenreDatabaseImportDataSource>,std::allocator<ML3GenreDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3GenreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3GenreDatabaseImportDataSource>,std::allocator<ML3GenreDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ComposerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ComposerDatabaseImportDataSource>,std::allocator<ML3ComposerDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_35ML3ComposerDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ComposerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ComposerDatabaseImportDataSource>,std::allocator<ML3ComposerDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ComposerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ComposerDatabaseImportDataSource>,std::allocator<ML3ComposerDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ArtistDatabaseImportDataSource>,std::allocator<ML3ArtistDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_33ML3ArtistDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ArtistDatabaseImportDataSource>,std::allocator<ML3ArtistDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ArtistDatabaseImportDataSource>,std::allocator<ML3ArtistDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3AlbumArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumArtistDatabaseImportDataSource>,std::allocator<ML3AlbumArtistDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_38ML3AlbumArtistDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3AlbumArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumArtistDatabaseImportDataSource>,std::allocator<ML3AlbumArtistDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3AlbumArtistDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumArtistDatabaseImportDataSource>,std::allocator<ML3AlbumArtistDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3AlbumDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumDatabaseImportDataSource>,std::allocator<ML3AlbumDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_32ML3AlbumDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3AlbumDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumDatabaseImportDataSource>,std::allocator<ML3AlbumDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3AlbumDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3AlbumDatabaseImportDataSource>,std::allocator<ML3AlbumDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ML3ImportSession::ML3ImportSession(ML3ImportSession *this, ML3MusicLibrary *a2, ML3DatabaseConnection *a3, int a4, char a5)
{
  v9 = a2;
  v10 = a3;
  *this = &unk_2840884D0;
  *(this + 1) = v9;
  v11 = v10;
  *(this + 2) = v11;
  *(this + 3) = 0;
  *(this + 8) = a4;
  *(this + 36) = a5;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 96) = 1065353216;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 106) = 1065353216;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 116) = 1065353216;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0;
  *(this + 156) = 1065353216;
  *(this + 95) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 192) = 1065353216;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 202) = 1065353216;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 212) = 1065353216;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 222) = 1065353216;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 232) = 1065353216;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 242) = 1065353216;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 252) = 1065353216;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 262) = 1065353216;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 272) = 1065353216;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 282) = 1065353216;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 292) = 1065353216;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 302) = 1065353216;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 312) = 1065353216;
  *(this + 1256) = 0u;
  *(this + 1272) = 0u;
  *(this + 322) = 1065353216;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 332) = 1065353216;
  *(this + 1336) = 0u;
  *(this + 1352) = 0u;
  *(this + 342) = 1065353216;
  *(this + 1521) = 0;
  *(this + 1531) = 0;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 92) = 0u;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 89) = 0u;
  *(this + 88) = 0u;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 102) = 0u;
  *(this + 101) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  *(this + 98) = 0u;
  *(this + 97) = 0u;
  *(this + 96) = 0u;
  *(this + 420) = 1065353216;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 430) = 1065353216;
  *(this + 109) = 0u;
  *(this + 108) = 0u;
  *(this + 440) = 1065353216;
  *(this + 1768) = 0u;
  *(this + 1784) = 0u;
  *(this + 450) = 1065353216;
  *(this + 114) = 0u;
  *(this + 113) = 0u;
  *(this + 460) = 1065353216;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 470) = 1065353216;
  *(this + 119) = 0u;
  *(this + 118) = 0u;
  *(this + 480) = 1065353216;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 490) = 1065353216;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 500) = 1065353216;
  *(this + 2008) = 0u;
  *(this + 2024) = 0u;
  *(this + 510) = 1065353216;
  *(this + 129) = 0u;
  *(this + 128) = 0u;
  *(this + 520) = 1065353216;
  *(this + 265) = 0;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 532) = 1065353216;
  *(this + 2136) = 0u;
  *(this + 2152) = 0u;
  *(this + 542) = 1065353216;
  *(this + 137) = 0u;
  *(this + 136) = 0u;
  *(this + 552) = 1065353216;
  *(this + 2216) = 0u;
  *(this + 2232) = 0u;
  *(this + 562) = 1065353216;
  *(this + 142) = 0u;
  *(this + 141) = 0u;
  *(this + 572) = 1065353216;
  *(this + 291) = 0;
  *(this + 2296) = 0u;
  *(this + 2312) = 0u;
  *(this + 584) = 1065353216;
  *(this + 2344) = 0u;
  *(this + 2360) = 0u;
  *(this + 594) = 1065353216;
  *(this + 310) = 0;
  *(this + 154) = 0u;
  *(this + 153) = 0u;
  *(this + 152) = 0u;
  *(this + 151) = 0u;
  *(this + 150) = 0u;
  *(this + 149) = 0u;
  *(this + 622) = 1065353216;
  *(this + 157) = 0u;
  *(this + 156) = 0u;
  *(this + 632) = 1065353216;
  *(this + 2536) = 0u;
  *(this + 2552) = 0u;
  *(this + 642) = 1065353216;
  *(this + 350) = 0;
  *(this + 174) = 0u;
  *(this + 173) = 0u;
  *(this + 172) = 0u;
  *(this + 171) = 0u;
  *(this + 170) = 0u;
  *(this + 169) = 0u;
  *(this + 168) = 0u;
  *(this + 167) = 0u;
  *(this + 166) = 0u;
  *(this + 165) = 0u;
  *(this + 164) = 0u;
  *(this + 163) = 0u;
  *(this + 162) = 0u;
  *(this + 161) = 0u;
  v12 = [[ML3ImportPersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"item"];
  v13 = *(this + 9);
  *(this + 9) = v12;

  v14 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"container_item"];
  v15 = *(this + 10);
  *(this + 10) = v14;

  v16 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"person"];
  v17 = *(this + 11);
  *(this + 11) = v16;

  v18 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"container_item_person"];
  v19 = *(this + 12);
  *(this + 12) = v18;

  v20 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"booklet"];
  v21 = *(this + 13);
  *(this + 13) = v20;

  v22 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"item_artist"];
  v23 = *(this + 14);
  *(this + 14) = v22;

  v24 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"album_artist"];
  v25 = *(this + 15);
  *(this + 15) = v24;

  v26 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"album"];
  v27 = *(this + 16);
  *(this + 16) = v26;

  v28 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"container_author"];
  v29 = *(this + 17);
  *(this + 17) = v28;

  v30 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"container_item_reaction"];
  v31 = *(this + 18);
  *(this + 18) = v30;

  v32 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v11 tableName:@"library_pins"];
  v33 = *(this + 19);
  *(this + 19) = v32;

  std::vector<std::shared_ptr<ML3ImportItem>>::__vdeallocate(this + 192);
  *(this + 192) = 0;
  *(this + 193) = 0;
  *(this + 194) = 0;
  v87 = v88;
  memset(v88, 0, 24);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v87);
  memset(v88, 0, 24);
  std::vector<std::shared_ptr<ML3ImportItem>>::__vdeallocate(this + 195);
  *(this + 1560) = v88[0];
  *(this + 197) = *&v88[1];
  v87 = v88;
  memset(v88, 0, 24);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v87);
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:1000];
  v35 = *(this + 198);
  *(this + 198) = v34;

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:1000];
  v37 = *(this + 287);
  *(this + 287) = v36;

  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:1000];
  v39 = *(this + 261);
  *(this + 261) = v38;

  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:1000];
  v41 = *(this + 199);
  *(this + 199) = v40;

  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v43 = *(this + 331);
  *(this + 331) = v42;

  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v45 = *(this + 336);
  *(this + 336) = v44;

  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v47 = *(this + 340);
  *(this + 340) = v46;

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v49 = *(this + 344);
  *(this + 344) = v48;

  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:100];
  v51 = *(this + 335);
  *(this + 335) = v50;

  v52 = *(this + 80);
  v53 = *(this + 79);
  v54 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v53) >> 3);
  if (v54 > 6)
  {
    if (v52 - v53 != 280)
    {
      v59 = v53 + 280;
      while (v52 != v59)
      {
        v52 -= 40;
        std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v52);
      }

      *(this + 80) = v59;
    }
  }

  else
  {
    v55 = 7 - v54;
    v56 = *(this + 81);
    if (0xCCCCCCCCCCCCCCCDLL * ((v56 - v52) >> 3) < v55)
    {
      v57 = 0x999999999999999ALL * ((v56 - v53) >> 3);
      if (v57 <= 7)
      {
        v57 = 7;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v56 - v53) >> 3) >= 0x333333333333333)
      {
        v58 = 0x666666666666666;
      }

      else
      {
        v58 = v57;
      }

      if (v58 <= 0x666666666666666)
      {
        operator new();
      }

      goto LABEL_66;
    }

    v60 = v52 + 40 * v55;
    do
    {
      *v52 = 0uLL;
      *(v52 + 16) = 0uLL;
      *(v52 + 32) = 1065353216;
      v52 += 40;
    }

    while (v52 != v60);
    *(this + 80) = v60;
  }

  v61 = (this + 664);
  v62 = *(this + 83);
  v63 = *(this + 82);
  v64 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v63) >> 3);
  if (v64 > 6)
  {
    if (v62 - v63 != 280)
    {
      v69 = v63 + 280;
      while (v62 != v69)
      {
        v62 -= 40;
        std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v62);
      }

      *v61 = v69;
    }
  }

  else
  {
    v65 = 7 - v64;
    v66 = *(this + 84);
    if (0xCCCCCCCCCCCCCCCDLL * ((v66 - v62) >> 3) < v65)
    {
      v67 = 0x999999999999999ALL * ((v66 - v63) >> 3);
      if (v67 <= 7)
      {
        v67 = 7;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v66 - v63) >> 3) >= 0x333333333333333)
      {
        v68 = 0x666666666666666;
      }

      else
      {
        v68 = v67;
      }

      if (v68 <= 0x666666666666666)
      {
        operator new();
      }

LABEL_66:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v70 = v62 + 40 * v65;
    do
    {
      *v62 = 0uLL;
      *(v62 + 16) = 0uLL;
      *(v62 + 32) = 1065353216;
      v62 += 40;
    }

    while (v62 != v70);
    *v61 = v70;
  }

  v71 = *(this + 86);
  if (v71 > 6)
  {
    *(this + 86) = 7;
  }

  else
  {
    v72 = *(this + 87);
    v73 = v72 << 6;
    v74 = 7 - v71;
    if (v72 << 6 < 7 - v71 || v71 > (v72 << 6) - (7 - v71))
    {
      memset(v88, 0, 24);
      v76 = v72 << 7;
      if (v76 <= 0x40)
      {
        v76 = 64;
      }

      if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v77 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v76;
      }

      std::vector<BOOL>::reserve(v88, v77);
      v78 = *(this + 86);
      *(&v88[0] + 1) = v78 + v74;
      v79 = *(this + 85);
      v80 = *&v88[0];
      if (v78 < 1)
      {
        LODWORD(v71) = 0;
        v82 = *&v88[0];
      }

      else
      {
        v81 = v78 >> 6;
        if (v78 >= 0x40)
        {
          memmove(*&v88[0], v79, 8 * v81);
        }

        v82 = (v80 + 8 * v81);
        v71 = v78 & 0x3F;
        if (v71)
        {
          *v82 = *v82 & ~(0xFFFFFFFFFFFFFFFFLL >> -v71) | *(v79 + v81) & (0xFFFFFFFFFFFFFFFFLL >> -v71);
        }

        v79 = *(this + 85);
      }

      *(this + 85) = v80;
      *&v88[0] = v79;
      *(this + 43) = *(v88 + 8);
      if (v79)
      {
        operator delete(v79);
      }
    }

    else
    {
      v82 = *(this + 85);
      *(this + 86) = 7;
    }

    if (v71)
    {
      if ((64 - v71) >= v74)
      {
        v83 = v74;
      }

      else
      {
        v83 = (64 - v71);
      }

      *v82++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v71 - v83)) & (-1 << v71));
      v74 -= v83;
      v84 = v74 >> 6;
      if (v74 >= 0x40)
      {
        bzero(v82, 8 * v84);
      }
    }

    else
    {
      v84 = 0;
    }

    if ((v74 & 0x3F) != 0)
    {
      v82[v84] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v74 & 0x3F));
    }
  }

  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = *(this + 91);
  *(this + 91) = v85;

  operator new();
}

void sub_22D510008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32)
{
  *(v36 - 144) = a1;
  v37 = *(v36 - 112);
  if (v37)
  {
    operator delete(v37);
  }

  *(v36 - 176) = v32 + 1600;
  v38 = *(v32 + 2784);
  if (v38)
  {
    *(v32 + 2792) = v38;
    operator delete(v38);
  }

  *(v36 - 112) = v32 + 2760;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  *(v36 - 112) = v32 + 2728;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  *(v36 - 112) = v32 + 2696;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  *(v36 - 112) = v32 + 2656;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  *(v36 - 112) = v32 + 2624;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = v32 + 2600;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = v32 + 2576;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(a14);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 2496);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 2456);
  *(v36 - 112) = v32 + 2432;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = v32 + 2408;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  v39 = *(v32 + 2384);
  if (v39)
  {
    *(v32 + 2392) = v39;
    operator delete(v39);
  }

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(a15);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 2304);

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 2256);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a16);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 2176);
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(a17);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 2096);

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 2048);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a18);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 1968);
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::~__hash_table(a19);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 1888);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(a20);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 1808);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a21);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 1728);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a22);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 1648);
  *(v36 - 112) = v32 + 1624;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = *(v36 - 176);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  *(v36 - 112) = *(v36 - 136);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = *(v36 - 128);
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  if (*(v32 + 1519) < 0)
  {
    operator delete(*(v32 + 1496));
  }

  if (*(v32 + 1495) < 0)
  {
    operator delete(*(v32 + 1472));
  }

  if (*(v32 + 1471) < 0)
  {
    operator delete(*(v32 + 1448));
  }

  if (*(v32 + 1447) < 0)
  {
    operator delete(*(v32 + 1424));
  }

  if (*(v32 + 1423) < 0)
  {
    operator delete(*(v32 + 1400));
  }

  if (*(v32 + 1399) < 0)
  {
    operator delete(*(v32 + 1376));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(a23);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(v32 + 1296);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(a24);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(v32 + 1216);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(a25);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(v32 + 1136);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::~__hash_table(a26);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 1056);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(a27);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 976);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(a28);
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::~__hash_table(v32 + 896);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a29);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 816);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a30);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 736);

  v40 = *(v32 + 704);
  if (v40)
  {
    *(v32 + 712) = v40;
    operator delete(v40);
  }

  v41 = *(v32 + 680);
  if (v41)
  {
    operator delete(v41);
  }

  *(v36 - 112) = *(v36 - 152);
  std::vector<std::unordered_map<unsigned long long,long long>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  *(v36 - 112) = a31;
  std::vector<std::unordered_map<unsigned long long,long long>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 592);
  v42 = *(v32 + 568);
  if (v42)
  {
    *(v32 + 576) = v42;
    operator delete(v42);
  }

  v43 = *(v32 + 544);
  if (v43)
  {
    *(v32 + 552) = v43;
    operator delete(v43);
  }

  v44 = *(v32 + 520);
  if (v44)
  {
    *(v32 + 528) = v44;
    operator delete(v44);
  }

  v45 = *(v32 + 496);
  if (v45)
  {
    *(v32 + 504) = v45;
    operator delete(v45);
  }

  v46 = *a32;
  if (*a32)
  {
    *(v32 + 480) = v46;
    operator delete(v46);
  }

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v32 + 432);
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v33);
  std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::~__hash_table(v32 + 352);
  v47 = *(v32 + 344);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(v32 + 328);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v32 + 312);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(v32 + 296);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v51 = *(v32 + 280);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(*(v36 - 144));
}

void ML3ImportSession::_populateExistingTrackIdentifiersForSource(ML3ImportSession *this, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = ML3TrackRulesIdentityPropertyForSource(a2);
  if (v5)
  {
    v6 = *(this + 1);
    v7 = [ML3ComparisonPredicate predicateWithProperty:v5 value:&unk_2840CA1F0 comparison:2];
    v8 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:v6 predicate:v7 orderingTerms:0];

    v19[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN16ML3ImportSession42_populateExistingTrackIdentifiersForSourceEi_block_invoke;
    v13[3] = &__block_descriptor_44_e20_v40__0q8r__16Q24_B32l;
    v13[4] = this;
    v14 = a2;
    [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:v13];

    v10 = a2;
    *(*(this + 85) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
    v11 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(this + 79) + 40 * v10 + 24);
      *buf = 134218242;
      v16 = v12;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "saved %lu id mappings for existing tracks with %{public}@ != 0", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void *___ZN16ML3ImportSession42_populateExistingTrackIdentifiersForSourceEi_block_invoke(uint64_t a1, unint64_t a2, id *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = [*a3 longLongValue];
  v7 = (*(v5 + 632) + 40 * *(a1 + 40));
  v10 = v6;
  v12 = &v10;
  std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v6)[3] = a2;
  v8 = (*(v5 + 656) + 40 * *(a1 + 40));
  v12 = &v11;
  result = std::__hash_table<std::__hash_value_type<long long,unsigned long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v8, a2);
  result[3] = v6;
  if (*(v5 + 1520) == 1 && *(a1 + 40) == *(v5 + 32))
  {
    return std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((v5 + 736), v11);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<long long,unsigned long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,unsigned long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,unsigned long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,unsigned long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void ML3ImportSession::_populateExistingContainerIdentifiersForSource(ML3ImportSession *this, int a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if ((a2 - 1) <= 2)
  {
    v5 = ML3ContainerRulesIdentityPropertyForSource(*(this + 8));
    v6 = *(this + 1);
    v7 = [ML3ComparisonPredicate predicateWithProperty:v5 value:&unk_2840CA1F0 comparison:2];
    v8 = [(ML3Entity *)ML3Container unrestrictedAllItemsQueryWithlibrary:v6 predicate:v7 orderingTerms:0];

    v18[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN16ML3ImportSession46_populateExistingContainerIdentifiersForSourceEi_block_invoke;
    v12[3] = &__block_descriptor_44_e20_v40__0q8r__16Q24_B32l;
    v12[4] = this;
    v13 = a2;
    [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:v12];

    *(this + 1531) = 1;
    v10 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 310);
      *buf = 134218242;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "saved %lu id mappings for existing containers with %{public}@ != 0", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void *___ZN16ML3ImportSession46_populateExistingContainerIdentifiersForSourceEi_block_invoke(uint64_t a1, unint64_t a2, id *a3)
{
  v7[1] = a2;
  v5 = *(a1 + 32);
  v7[0] = [*a3 longLongValue];
  v7[2] = v7;
  result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v5 + 2456), v7[0]);
  result[3] = a2;
  if (*(v5 + 1520) == 1 && *(a1 + 40) == *(v5 + 32))
  {
    return std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((v5 + 776), a2);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void ML3ImportSession::_populateExistingArtistIdentifiersForSource(id *this, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (a2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [this[8] executeQuery:off_278765318[a2]];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN16ML3ImportSession43_populateExistingArtistIdentifiersForSourceEi_block_invoke;
  v10[3] = &__block_descriptor_44_e40_v32__0__ML3DatabaseRow_8__NSError_16_B24l;
  v10[4] = this;
  v11 = a2;
  [v5 enumerateRowsWithBlock:v10];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this[209];
    v8 = this[214];
    v9 = this[224];
    *buf = 134218496;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "saved %lu store/sync id, %lu order mappings, %lu series mappings for item artist", buf, 0x20u);
  }

  *(this + 1525) = 1;
  objc_autoreleasePoolPop(v4);
}

void ___ZN16ML3ImportSession43_populateExistingArtistIdentifiersForSourceEi_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 int64ForColumnIndex:0];
  v22 = v7;
  v8 = [v5 int64ForColumnIndex:1];
  v21 = v8;
  v9 = [v5 int64ForColumnIndex:2];
  v20 = v9;
  v10 = [v5 int64ForColumnIndex:3];
  v11 = [v5 intForColumnIndex:4];
  v12 = [v5 int64ForColumnIndex:5];
  v13 = [v5 intForColumnIndex:6];
  v14 = *(a1 + 40);
  if (v14 <= 6)
  {
    v15 = 1 << v14;
    if ((v15 & 0x74) != 0)
    {
      v23 = &v21;
      v16 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 206, v8);
    }

    else if ((v15 & 0xA) != 0)
    {
      v23 = &v20;
      v16 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 206, v9);
    }

    else
    {
      v23 = &v22;
      v16 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 206, v7);
    }

    v16[3] = v7;
    v7 = v22;
  }

  v23 = &v22;
  v17 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 211, v7);
  v17[3] = v10;
  v17[4] = v11;
  v23 = &v22;
  v18 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 221, v22);
  v18[3] = v12;
  v18[4] = v13;
}

void *std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void ML3ImportSession::_populateExistingAlbumArtistIdentifiersForSource(id *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (a2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [this[8] executeQuery:off_278765350[a2]];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___ZN16ML3ImportSession48_populateExistingAlbumArtistIdentifiersForSourceEi_block_invoke;
  v11[3] = &__block_descriptor_44_e40_v32__0__ML3DatabaseRow_8__NSError_16_B24l;
  v11[4] = this;
  v12 = a2;
  [v5 enumerateRowsWithBlock:v11];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this[244];
    v8 = this[239];
    v9 = this[249];
    v10 = this[105];
    *buf = 134218752;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "saved %lu cloud, %lu store/sync id, %lu order mappings, %lu pidsToRemoveAfterReset for album artist", buf, 0x2Au);
  }

  *(this + 1526) = 1;
  objc_autoreleasePoolPop(v4);
}

void ___ZN16ML3ImportSession48_populateExistingAlbumArtistIdentifiersForSourceEi_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 int64ForColumnIndex:0];
  v23[0] = v8;
  v9 = [v5 int64ForColumnIndex:1];
  v22 = v9;
  v10 = [v5 int64ForColumnIndex:2];
  v21 = v10;
  v11 = [v5 stringForColumnIndex:3];
  v12 = [v5 int64ForColumnIndex:4];
  v13 = [v5 intForColumnIndex:5];
  v14 = *(a1 + 40);
  if (v14 <= 2)
  {
    switch(v14)
    {
      case 0:
        __p[0] = v23;
        v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 1888), v8);
        goto LABEL_13;
      case 1:
        goto LABEL_11;
      case 2:
        if ([v11 length])
        {
          v16 = v23[0];
          std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
          v23[1] = __p;
          std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v7 + 1928), __p)[5] = v16;
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
    }
  }

  else
  {
    if ((v14 - 4) < 3)
    {
      __p[0] = &v22;
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 1888), v9);
LABEL_13:
      v15[3] = v8;
      goto LABEL_14;
    }

    if (v14 == 3)
    {
LABEL_11:
      __p[0] = &v21;
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 1888), v10);
      goto LABEL_13;
    }
  }

LABEL_14:
  __p[0] = v23;
  v17 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 1968), v23[0]);
  v17[3] = v12;
  v17[4] = v13;
  if (*(v7 + 1520) == 1)
  {
    v18 = *(v7 + 32);
    if (*(a1 + 40) == v18 && (v18 - 1) <= 2)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((v7 + 816), v23[0]);
    }
  }
}

void sub_22D511C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void ML3ImportSession::_populateExistingAlbumIdentifiersForSource(id *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (a2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [this[8] executeQuery:off_278765388[a2]];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___ZN16ML3ImportSession42_populateExistingAlbumIdentifiersForSourceEi_block_invoke;
  v11[3] = &__block_descriptor_44_e40_v32__0__ML3DatabaseRow_8__NSError_16_B24l;
  v11[4] = this;
  v12 = a2;
  [v5 enumerateRowsWithBlock:v11];
  v6 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this[270];
    v8 = this[265];
    v9 = this[275];
    v10 = this[110];
    *buf = 134218752;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "saved %lu cloud, %lu store/sync id, %lu order mappings, %lu pidsToRemoveAfterReset for album", buf, 0x2Au);
  }

  *(this + 1527) = 1;
  objc_autoreleasePoolPop(v4);
}

void ___ZN16ML3ImportSession42_populateExistingAlbumIdentifiersForSourceEi_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 int64ForColumnIndex:0];
  v23[0] = v8;
  v9 = [v5 int64ForColumnIndex:1];
  v22 = v9;
  v10 = [v5 int64ForColumnIndex:2];
  v21 = v10;
  v11 = [v5 stringForColumnIndex:3];
  v12 = [v5 int64ForColumnIndex:4];
  v13 = [v5 intForColumnIndex:5];
  v14 = *(a1 + 40);
  if (v14 <= 2)
  {
    switch(v14)
    {
      case 0:
        __p[0] = v23;
        v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 2096), v8);
        goto LABEL_13;
      case 1:
        goto LABEL_11;
      case 2:
        if ([v11 length])
        {
          v16 = v23[0];
          std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
          v23[1] = __p;
          std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v7 + 2136), __p)[5] = v16;
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        break;
    }
  }

  else
  {
    if ((v14 - 4) < 3)
    {
      __p[0] = &v22;
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 2096), v9);
LABEL_13:
      v15[3] = v8;
      goto LABEL_14;
    }

    if (v14 == 3)
    {
LABEL_11:
      __p[0] = &v21;
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 2096), v10);
      goto LABEL_13;
    }
  }

LABEL_14:
  __p[0] = v23;
  v17 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v7 + 2176), v23[0]);
  v17[3] = v12;
  v17[4] = v13;
  if (*(v7 + 1520) == 1)
  {
    v18 = *(v7 + 32);
    if (*(a1 + 40) == v18 && (v18 - 1) <= 2)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>((v7 + 856), v23[0]);
    }
  }
}

void sub_22D5122BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN16ML3ImportSession38_populateExistingLibraryPinnedEntitiesEv_block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 int64ForColumnIndex:0];
  v24 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];
  [v3 intForColumnIndex:3];
  [v3 int64ForColumnIndex:4];
  v6 = [v3 stringForColumnIndex:5];
  memset(v25, 0, sizeof(v25));
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v19 = *(v4 + 64);
      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
      v29[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      v10 = [v19 executeQuery:@"SELECT cloud_library_id FROM album WHERE album_pid=?" withParameters:v21];

      v14 = [v10 stringValueForFirstRowAndColumn];
      if ([v14 length])
      {
        v22 = v14;
        MEMORY[0x2318CCFB0](v25, [v14 UTF8String]);
      }
    }

    else
    {
      if (v5 != 7)
      {
        goto LABEL_14;
      }

      v11 = *(v4 + 64);
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
      v28 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v10 = [v11 executeQuery:@"SELECT cloud_universal_library_id FROM album_artist WHERE album_artist_pid=?" withParameters:v13];

      v14 = [v10 stringValueForFirstRowAndColumn];
      if ([v14 length])
      {
        v15 = v14;
        MEMORY[0x2318CCFB0](v25, [v14 UTF8String]);
      }
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 64);
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
    v27 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v10 = [v7 executeQuery:@"SELECT store_cloud_id FROM container WHERE container_pid=?" withParameters:v9];

    [v10 int64ValueForFirstRowAndColumn];
  }

  else
  {
    v16 = *(v4 + 64);
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
    v26 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v10 = [v16 executeQuery:@"SELECT store_saga_id FROM item_store WHERE item_pid=?" withParameters:v18];

    [v10 int64ValueForFirstRowAndColumn];
  }

LABEL_14:
  if (v6)
  {
    v23 = v6;
    [v6 UTF8String];
  }

  operator new();
}

void sub_22D51273C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>>>::__emplace_unique_key_args<long long,std::pair<long long,std::shared_ptr<ML3LibraryPinsData>>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<ML3LibraryPinsData>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *ML3LibraryPinsData::ML3LibraryPinsData(std::string *a1, std::string::size_type a2, std::string::size_type a3, std::string::size_type a4, std::string::size_type a5, std::string::size_type a6, std::string::size_type a7, __int128 *a8, __int128 *a9)
{
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = a4;
  a1[1].__r_.__value_.__r.__words[0] = a5;
  a1[1].__r_.__value_.__l.__size_ = a6;
  a1[1].__r_.__value_.__r.__words[2] = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a8, *(a8 + 1));
  }

  else
  {
    v10 = *a8;
    a1[2].__r_.__value_.__r.__words[2] = *(a8 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *a9, *(a9 + 1));
  }

  else
  {
    v11 = *a9;
    a1[3].__r_.__value_.__r.__words[2] = *(a9 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v11;
  }

  return a1;
}

void sub_22D512DA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ML3LibraryPinsData>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<ML3LibraryPinsData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840891B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ImportSession::_getTrackPersistentID(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v54 = 0;
  (*(**a2 + 104))(&__p);
  v3 = __p;
  v4 = v52;
  v5 = (v52 - __p) >> 3;
  if (v5 <= 6)
  {
    v6 = 7 - v5;
    if (7 - v5 > (v53 - v52) >> 3)
    {
      v7 = (v53 - __p) >> 2;
      if (v7 <= 7)
      {
        v7 = 7;
      }

      if ((v53 - __p) >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v8);
    }

    bzero(v52, 8 * v6);
    v9 = &v4[8 * v6];
    goto LABEL_12;
  }

  if (v52 - __p != 56)
  {
    v9 = __p + 56;
LABEL_12:
    v52 = v9;
  }

  if (*(a1 + 264) <= 0x3E7u)
  {
    v10 = *(a1 + 1520);
  }

  else
  {
    v10 = 1;
  }

  v11 = v3[*(a1 + 32)];
  if (*(a1 + 36) != 1)
  {
    goto LABEL_36;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(__p + v13);
    if (v14)
    {
      if ((v10 & 1) != 0 && ((**(a1 + 680) >> v13) & 1) == 0)
      {
        ML3ImportSession::_populateExistingTrackIdentifiersForSource(a1, v13);
        v14 = *(__p + v13);
      }

      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((*(a1 + 632) + v12), v14);
      if (v15)
      {
        v16 = v15;
        if (v13 == *(a1 + 32))
        {
          v22 = v15[3];
          v23 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          *buf = 134218240;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          v24 = "matched track to cached item pid %lld in source map %d";
          v25 = v23;
          v26 = 18;
          goto LABEL_34;
        }

        v17 = [(ML3Entity *)[ML3Track alloc] initWithPersistentID:v15[3] inLibrary:*(a1 + 8)];
        v18 = ML3TrackRulesIdentityPropertyForSource(*(a1 + 32));
        v19 = [(ML3Entity *)v17 valueForProperty:v18];
        v20 = [v19 longLongValue];

        if (!v20 || v20 == v11)
        {
          break;
        }
      }
    }

    ++v13;
    v12 += 40;
    if (v13 == 7)
    {
      goto LABEL_36;
    }
  }

  v22 = v16[3];
  v23 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_35;
  }

  v27 = *(a1 + 32);
  *buf = 134218496;
  *&buf[4] = v22;
  *&buf[12] = 1024;
  *&buf[14] = v13;
  *&buf[18] = 1024;
  *&buf[20] = v27;
  v24 = "matched track to cached item pid %lld in source map %d for import source %d";
  v25 = v23;
  v26 = 24;
LABEL_34:
  _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_35:

  if (!v22)
  {
LABEL_36:
    if (v54 & v10)
    {
      v22 = 0;
      goto LABEL_59;
    }

    v28 = (*(**a2 + 112))();
    v42 = v28;
    v45 = (*(**a2 + 120))();
    if (v28)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v28;
      v22 = 0;
      v29 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (!v29)
      {
        goto LABEL_56;
      }

      v30 = *v48;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v47 + 1) + 8 * i);
          if ((*(a1 + 36) & 1) == 0)
          {
            v33 = (*(**a2 + 32))(*a2, 100663312);
            v61[0] = v32;
            v34 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.account_id" equalToInt64:v33];
            v61[1] = v34;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
            v36 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v35];

            v32 = v36;
          }

          v37 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:v32 orderingTerms:v45];
          v38 = v37;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v60 = 0;
          if (v11)
          {
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = ___ZN16ML3ImportSession21_getTrackPersistentIDENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke;
            v46[3] = &unk_2787650B8;
            v46[5] = a1;
            v46[6] = v11;
            v46[4] = buf;
            [v37 enumeratePersistentIDsUsingBlock:v46];
            v39 = *(*&buf[8] + 24);
            if (!v39)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v39 = [v37 anyEntityPersistentID];
            *(*&buf[8] + 24) = v39;
            if (!v39)
            {
              goto LABEL_53;
            }
          }

          v40 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v55 = 134218242;
            v56 = v39;
            v57 = 2114;
            v58 = v38;
            _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_DEFAULT, "matched track to item pid %lld using query %{public}@", v55, 0x16u);
          }

          v22 = v39;
LABEL_53:
          _Block_object_dispose(buf, 8);

          if (v39)
          {
            goto LABEL_56;
          }
        }

        v29 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (!v29)
        {
LABEL_56:

          goto LABEL_58;
        }
      }
    }

    v22 = 0;
LABEL_58:
  }

LABEL_59:
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  return v22;
}

void sub_22D51354C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN16ML3ImportSession21_getTrackPersistentIDENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(void *a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  v7 = *(v6 + 32);
  v8 = (*(v6 + 656) + 40 * v7);
  v9 = v8[1];
  if (!*&v9)
  {
    goto LABEL_17;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a2;
    if (*&v9 <= a2)
    {
      v11 = a2 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & a2;
  }

  v12 = *(*v8 + 8 * v11);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = *v12;
  if (!v13)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == a2)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_16;
  }

  if (v7 == 6 || (v15 = v13[3]) == 0 || v15 == a1[6])
  {
LABEL_17:
    *(*(a1[4] + 8) + 24) = a2;
    *a4 = 1;
    return;
  }

  v16 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a1[6];
    v18 = 134218496;
    v19 = a2;
    v20 = 2048;
    v21 = v15;
    v22 = 2048;
    v23 = v17;
    _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "skipping existing item pid %lld with source id %lld that does not match import item source id %lld", &v18, 0x20u);
  }
}

uint64_t ML3ImportSession::_newTrackPersistentID(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = [a1 nextPersistentIDForImportItem:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "created new item pid %lld", buf, 0xCu);
  }

  return v3;
}

uint64_t ML3ImportSession::_getContainerPersistentID(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 264) <= 0x3E7u)
  {
    v4 = *(a1 + 1520);
  }

  else
  {
    v4 = 1;
  }

  v5 = ML3ContainerRulesIdentityImportPropertyForSource(*(a1 + 32));
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = (*(**a2 + 32))(*a2, v5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  if ((v4 & 1) != 0 && (*(a1 + 1531) & 1) == 0)
  {
    ML3ImportSession::_populateExistingContainerIdentifiersForSource(a1, *(a1 + 32));
  }

  v8 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 2456), v7);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8[3];
  v10 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v9;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "matched to cached container pid %lld", buf, 0xCu);
  }

  if (!v9)
  {
LABEL_13:
    v11 = (*(**a2 + 112))();
    v12 = (*(**a2 + 120))();
    if (v11)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [(ML3Entity *)ML3Container unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:*(*(&v20 + 1) + 8 * i) orderingTerms:v12, v20];
            v9 = [v17 anyEntityPersistentID];
            if (v9)
            {
              v18 = os_log_create("com.apple.amp.medialibrary", "Import");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v25 = v9;
                v26 = 2114;
                v27 = v17;
                _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "matched to container pid %lld using query %{public}@", buf, 0x16u);
              }

              goto LABEL_26;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
LABEL_26:
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t ML3ImportSession::_getContainerPersistentID(ML3ImportSession *this, unint64_t a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(this + 307, a2);
  if (v4)
  {
    v5 = v4[3];
    v17 = v5;
  }

  else
  {
    v6 = ML3ContainerRulesIdentityPropertyForSource(*(this + 8));
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID, %@ FROM container WHERE %@=?", v6, v6];
    v8 = *(this + 2);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v18[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v11 = [v8 executeQuery:v7 withParameters:v10];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN16ML3ImportSession25_getContainerPersistentIDEx_block_invoke;
    v13[3] = &unk_2787653C8;
    v13[4] = &v14;
    [v11 enumerateRowsWithBlock:v13];

    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v5;
}

void sub_22D513DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v14 = v12;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN16ML3ImportSession25_getContainerPersistentIDEx_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 numberForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

uint64_t ML3ImportSession::_getPersonPersistentID(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  (*(**a2 + 24))(buf);
  if ((v23[25] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v19, *&v23[2], *&v23[10]);
    *buf = &unk_28408AC60;
    if ((v23[25] & 0x80000000) != 0)
    {
      operator delete(*&v23[2]);
    }
  }

  else
  {
    v19 = *&v23[2];
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 2536), &v19);
  if (v4)
  {
    v5 = v4[5];
    v6 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "matched to cached person pid %lld", buf, 0xCu);
    }
  }

  else
  {
    v6 = (*(**a2 + 112))();
    v7 = (*(**a2 + 120))();
    if ([v6 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [(ML3Entity *)ML3Person unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:*(*(&v15 + 1) + 8 * i) orderingTerms:v7, v15];
            v5 = [v12 anyEntityPersistentID];
            if (v5)
            {
              v13 = os_log_create("com.apple.amp.medialibrary", "Import");
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v5;
                v22 = 2114;
                *v23 = v12;
                _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "matched to person pid %lld using query %{public}@", buf, 0x16u);
              }

              *buf = &v19;
              std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2536), &v19)[5] = v5;

              goto LABEL_21;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
LABEL_21:
    }

    else
    {
      v5 = 0;
    }
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_22D5141D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t ML3ImportSession::_getAlbumArtistPersistentID(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (*(a1 + 264) <= 0x3E7u)
  {
    v7 = *(a1 + 1520);
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 32);
  if ([v5 length])
  {
    ML3CPPStringFromData(__p, v6);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
  }

  v9 = ML3AlbumArtistRulesIdentityImportPropertyForSource(*(a1 + 32));
  v10 = v8 - 1;
  if (v9 && v10 <= 1)
  {
    if (*(a1 + 32) == 2)
    {
      (*(**a2 + 24))(buf);
      if ((v42[25] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v36, *&v42[2], *&v42[10]);
        *buf = &unk_28408AC60;
        if ((v42[25] & 0x80000000) != 0)
        {
          operator delete(*&v42[2]);
        }
      }

      else
      {
        v36 = *&v42[2];
      }

      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_44;
      }

      if ((v7 & 1) != 0 && (*(a1 + 1526) & 1) == 0)
      {
        ML3ImportSession::_populateExistingAlbumArtistIdentifiersForSource(a1, *(a1 + 32));
      }

      v20 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1928), &v36);
      if (v20)
      {
        v14 = v20[5];
        v21 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = &v36;
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v36.__r_.__value_.__r.__words[0];
          }

          *buf = 134218242;
          *&buf[4] = v14;
          v41 = 2082;
          *v42 = v22;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "matched to cached albumArtistPID=%lld on cloudID=%{public}s", buf, 0x16u);
        }
      }

      else
      {
LABEL_44:
        v14 = 0;
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
        if (v14)
        {
          goto LABEL_63;
        }

        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v16 = (*(**a2 + 32))();
    if (v16)
    {
      if ((v7 & 1) != 0 && (*(a1 + 1526) & 1) == 0)
      {
        ML3ImportSession::_populateExistingAlbumArtistIdentifiersForSource(a1, *(a1 + 32));
      }

      v17 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 1888), v16);
      if (v17)
      {
        v14 = v17[3];
        v18 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v14;
          v41 = 2048;
          *v42 = v16;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "matched to cached albumArtistPID=%lld on sourceID=%lld", buf, 0x16u);
        }

        goto LABEL_46;
      }
    }
  }

  else if (v6)
  {
    if (v10 >= 2)
    {
      v11 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1136), __p);
      if (v11)
      {
        v12 = v11[5];
        v13 = v11[6];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = *v12;
        v15 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v14;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "matched to cached album artist import item=%lld based on grouping key", buf, 0xCu);
        }

        if (!v13)
        {
LABEL_46:
          if (v14)
          {
            goto LABEL_63;
          }

          goto LABEL_47;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (v14)
        {
          goto LABEL_63;
        }
      }
    }
  }

LABEL_47:
  v23 = (*(**a2 + 112))();
  v24 = v23;
  if (v23)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v26)
    {
      v27 = *v33;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = [(ML3Entity *)ML3AlbumArtist unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:*(*(&v32 + 1) + 8 * i) orderingTerms:0, v32];
          v14 = [v29 anyEntityPersistentID];
          if (v14)
          {
            v30 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = v14;
              v41 = 2114;
              *v42 = v29;
              _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "matched to album artist pid %lld using query %{public}@", buf, 0x16u);
            }

            goto LABEL_60;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_60:
  }

  else
  {
    v14 = 0;
  }

LABEL_63:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_22D514B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::begin(ML3ImportSession *this, int a2, int a3, int a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = *(this + 8);
  if (ML3TrackSourceStringDescription(int)::onceToken != -1)
  {
    dispatch_once(&ML3TrackSourceStringDescription(int)::onceToken, &__block_literal_global_847);
  }

  v9 = ML3TrackSourceStringDescription(int)::__trackSourceDescription;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    v12 = [v11 UTF8String];
  }

  else
  {
    v12 = "unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v13 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = __p;
    if (v72 < 0)
    {
      v14 = __p[0];
    }

    *buf = 134219010;
    v74 = this;
    v75 = 2080;
    v76 = v14;
    v77 = 1024;
    v78 = a2;
    v79 = 1024;
    v80 = a3;
    v81 = 1024;
    v82 = a4;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "starting import session %p. source=%s, itemCount=%d, isReset=%d, clientInitiatedReset=%d", buf, 0x28u);
  }

  bzero(this + 160, 0x68uLL);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(this + 32) = v15;
  *(this + 66) = a2;
  *(this + 1520) = a3;
  if ([*(this + 2) journalingMode] == 1)
  {
    v16 = [*(this + 1) connectionPool];
    v17 = [v16 _connectionForWriting:0 useThreadConnection:0 storeThreadLocalConnection:1];
    v18 = *(this + 8);
    *(this + 8) = v17;
  }

  else
  {
    v19 = *(this + 2);
    v16 = *(this + 8);
    *(this + 8) = v19;
  }

  v20 = [*(this + 2) executeQuery:@"SELECT COUNT() FROM sort_map"];
  v21 = [v20 int64ValueForFirstRowAndColumn];

  LODWORD(v20) = *(this + 66);
  v22 = [ML3SortMap alloc];
  v24 = v20 > 0x14 && v21 < 100000;
  v25 = [(ML3SortMap *)v22 initWithConnection:*(this + 2) library:*(this + 1) preloadNames:v24];
  v26 = *(this + 7);
  *(this + 7) = v25;

  v27 = *(this + 66);
  if (v27 > 0x3E7 || a3)
  {
    v28 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "dropping indexes for large import", buf, 2u);
    }

    *(this + 1521) = 1;
    if (![ML3MusicLibrary dropIndexesUsingConnection:*(this + 2) tableNames:"'item', 'item_extra', 'item_stats'"])
    {
      v29 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "failed to drop indexes. this is non-fatal for now", buf, 2u);
      }
    }

    v27 = *(this + 66);
  }

  if (v27 >= 0x15)
  {
    v30 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(this + 66);
      *buf = 67109120;
      LODWORD(v74) = v31;
      _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "disabling triggers for _approximateItemCount=%d", buf, 8u);
    }

    ML3ImportSession::_disableTriggers(this);
  }

  v32 = [*(this + 1) valueForDatabaseProperty:@"MLResetCollectionsOnNextImport"];
  *(this + 1522) = [v32 BOOLValue];

  if (*(this + 1522) == 1)
  {
    v33 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEFAULT, "resetting collection data", buf, 2u);
    }

    [*(this + 2) executeUpdate:@"UPDATE album SET representative_item_pid=0"];
    [*(this + 2) executeUpdate:@"UPDATE album_artist SET representative_item_pid=0"];
    [*(this + 2) executeUpdate:@"UPDATE item_artist SET representative_item_pid=0"];
  }

  if (!a3)
  {
    goto LABEL_43;
  }

  v34 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "preparing for a reset", buf, 2u);
  }

  v35 = *(this + 8);
  if (!v35)
  {
LABEL_43:
    v37 = 1;
    goto LABEL_78;
  }

  if (v35 == 2 && (a4 & 1) != 0)
  {
    v36 = 2;
  }

  else
  {
    ML3ImportSession::_populateExistingTrackIdentifiersForSource(this, v35);
    v36 = *(this + 8);
  }

  ML3ImportSession::_populateExistingContainerIdentifiersForSource(this, v36);
  ML3ImportSession::_populateExistingArtistIdentifiersForSource(this, *(this + 8));
  ML3ImportSession::_populateExistingAlbumArtistIdentifiersForSource(this, *(this + 8));
  ML3ImportSession::_populateExistingAlbumIdentifiersForSource(this, *(this + 8));
  v38 = ML3TrackRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
  v39 = ML3NonQualifiedColumnNameFromProperty(v38);

  v40 = *(this + 2);
  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item_store SET %@=0", v39];
  v37 = [v40 executeUpdate:v41];

  if ((v37 & 1) == 0)
  {
    v42 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_ERROR, "failed to remove source for tracks - aborting", buf, 2u);
    }
  }

  v43 = ML3ContainerRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
  v44 = ML3NonQualifiedColumnNameFromProperty(v43);

  if (v44)
  {
    v45 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v74 = v44;
      _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_DEFAULT, "Clearing containerSourceIdentityProperty=%{public}@", buf, 0xCu);
    }

    v46 = *(this + 2);
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE container SET %@=0", v44];
    LOBYTE(v46) = [v46 executeUpdate:v47];

    if (v46)
    {
      v37 = 1;
    }

    else
    {
      v48 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "failed to remove source for containers - aborting", buf, 2u);
      }

      v37 = 0;
    }
  }

  v49 = ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
  v50 = ML3NonQualifiedColumnNameFromProperty(v49);

  if (v50)
  {
    v51 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v74 = v50;
      _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_DEFAULT, "Clearing albumArtistSourceIdentityProperty=%{public}@", buf, 0xCu);
    }

    v52 = *(this + 2);
    if (*(this + 8) == 2)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album_artist SET %@=''", v50];
      v54 = [v52 executeUpdate:v53];

      if (v54)
      {
LABEL_62:
        v37 = 1;
        goto LABEL_67;
      }
    }

    else
    {
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album_artist SET %@=0", v50];
      v56 = [v52 executeUpdate:v55];

      if (v56)
      {
        goto LABEL_62;
      }
    }

    v57 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v74 = v50;
      _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_ERROR, "failed to remove source property=%{public}@ for album artists - aborting", buf, 0xCu);
    }

    v37 = 0;
  }

LABEL_67:
  v58 = ML3AlbumRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
  v59 = ML3NonQualifiedColumnNameFromProperty(v58);

  if (v59)
  {
    v60 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v74 = v59;
      _os_log_impl(&dword_22D2FA000, v60, OS_LOG_TYPE_DEFAULT, "Clearing albumSourceIdentityProperty=%{public}@", buf, 0xCu);
    }

    v61 = *(this + 2);
    if (*(this + 8) == 2)
    {
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album SET %@=''", v59];
      v63 = [v61 executeUpdate:v62];

      if (v63)
      {
LABEL_72:
        v37 = 1;
        goto LABEL_77;
      }
    }

    else
    {
      v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE album SET %@=0", v59];
      v65 = [v61 executeUpdate:v64];

      if (v65)
      {
        goto LABEL_72;
      }
    }

    v66 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v74 = v59;
      _os_log_impl(&dword_22D2FA000, v66, OS_LOG_TYPE_ERROR, "failed to remove source property=%{public}@ for album - aborting", buf, 0xCu);
    }

    v37 = 0;
  }

LABEL_77:

LABEL_78:
  v67 = [*(this + 8) executeQuery:@"SELECT 1 FROM sort_map WHERE name_order IS NULL"];
  v68 = [v67 hasAtLeastOneRow];

  if (v68)
  {
    v69 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v69, OS_LOG_TYPE_DEFAULT, "sort_map contains at least one NULL name_order, updating now...", buf, 2u);
    }

    [*(this + 1) updateSortMapOnConnection:*(this + 2) forceUpdateOriginals:0];
  }

  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  return v37;
}

void sub_22D515628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_disableTriggers(ML3ImportSession *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [&unk_2840C8660 countByEnumeratingWithState:&v11 objects:v17 count:16];
  v3 = result;
  if (result)
  {
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_2840C8660);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        v7 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v16 = v6;
          _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "dropping trigger: %{public}@", buf, 0xCu);
        }

        v8 = *(this + 2);
        v9 = [@"DROP TRIGGER IF EXISTS " stringByAppendingString:v6];
        LOBYTE(v8) = [v8 executeUpdate:v9];

        if ((v8 & 1) == 0)
        {
          v10 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to drop trigger", buf, 2u);
          }
        }

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_2840C8660 countByEnumeratingWithState:&v11 objects:v17 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void ___ZL31ML3TrackSourceStringDescriptioni_block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840CA2F8;
  v2[1] = &unk_2840CA310;
  v3[0] = @"System";
  v3[1] = @"PairedDevice";
  v2[2] = &unk_2840CA328;
  v2[3] = &unk_2840CA340;
  v3[2] = @"Match";
  v3[3] = @"Sync";
  v2[4] = &unk_2840CA358;
  v2[5] = &unk_2840CA370;
  v3[4] = @"PurchaseHistory";
  v3[5] = @"StorePurchase";
  v2[6] = &unk_2840CA388;
  v3[6] = @"Subscription";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = ML3TrackSourceStringDescription(int)::__trackSourceDescription;
  ML3TrackSourceStringDescription(int)::__trackSourceDescription = v0;
}

void ML3ImportSession::_addTrackDataToSourceMaps(uint64_t a1, void *a2)
{
  v4 = ML3TrackRulesIdentityImportPropertyForSource(*(a1 + 32));
  v5 = (*(**a2 + 32))(*a2, v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(*a2 + 8);
    v8 = (*(a1 + 632) + 40 * *(a1 + 32));
    v10 = v6;
    *buf = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v8, v6)[3] = v7;
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "no identity property for track import item", buf, 2u);
    }
  }
}

uint64_t ML3ImportSession::_addItemArtistDataToSourceMaps(uint64_t a1, void *a2)
{
  result = ML3ItemArtistRulesIdentityImportPropertyForSource(*(a1 + 32));
  if (result)
  {
    v5 = (*(**a2 + 32))(*a2, result);
    v6 = *(*a2 + 8);
    v7[0] = v5;
    v7[1] = v7;
    result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 1648), v5);
    *(result + 24) = v6;
  }

  return result;
}

void ML3ImportSession::_addAlbumArtistDataToSourceMaps(uint64_t a1, void *a2)
{
  v4 = ML3AlbumArtistRulesIdentityImportPropertyForSource(*(a1 + 32));
  if (v4)
  {
    if (*(a1 + 32) == 2)
    {
      (*(**a2 + 24))(&v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v7 = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v9 = __p;
      }

      v6 = *(*a2 + 8);
      v7 = &v9;
      std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1928), &v9)[5] = v6;
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9.__r_.__value_.__r.__words[0] = (*(**a2 + 32))(*a2, v4);
      v5 = *(*a2 + 8);
      v7 = &v9;
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 1888), v9.__r_.__value_.__r.__words[0])[3] = v5;
    }
  }
}

void sub_22D515D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportSession::_addAlbumDataToSourceMaps(uint64_t a1, void *a2)
{
  v4 = ML3AlbumRulesIdentityImportPropertyForSource(*(a1 + 32));
  if (*(a1 + 32) == 2)
  {
    (*(**a2 + 24))(&v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v7 = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9 = __p;
    }

    v6 = *(*a2 + 8);
    v7 = &v9;
    std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2136), &v9)[5] = v6;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9.__r_.__value_.__r.__words[0] = (*(**a2 + 32))(*a2, v4);
    v5 = *(*a2 + 8);
    v7 = &v9;
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 2096), v9.__r_.__value_.__r.__words[0])[3] = v5;
  }
}

void sub_22D515ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::_prepareTrackForImport(uint64_t a1, uint64_t *a2, int a3, char a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 8))
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return 0;
  }

  v8 = a2[1];
  v21[0] = *a2;
  v21[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, v21);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!TrackPersistentID && (a4 & 1) != 0)
  {
    return 2;
  }

  if (!TrackPersistentID || (a4 & 1) != 0)
  {
LABEL_27:
    v14 = TrackPersistentID != 0;
    if (!TrackPersistentID)
    {
      v15 = *a2;
      v16 = a2[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TrackPersistentID = ML3ImportSession::_newTrackPersistentID(*(a1 + 72), v15, v16);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    goto LABEL_33;
  }

  if (std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 592), TrackPersistentID))
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      (*(**a2 + 88))(__p);
      v12 = v20 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v23 = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "PID collision detected for track=%{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (!ML3ImportSession::flush(a1, 1))
    {
      return 1;
    }

    v13 = a2[1];
    v18[0] = *a2;
    v18[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TrackPersistentID = ML3ImportSession::_getTrackPersistentID(a1, v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_27;
  }

  v14 = TrackPersistentID != 0;
LABEL_33:
  result = 0;
  v17 = *a2;
  *(v17 + 16) = v14;
  *(v17 + 8) = TrackPersistentID;
  return result;
}

void sub_22D51615C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::flush(ML3ImportSession *this, int a2)
{
  v194 = *MEMORY[0x277D85DE8];
  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = 1;
  if (!MSVDeviceIsWatch() || ((v4 = *(this + 145) + *(this + 140) + *(this + 150) + *(this + 155) + *(this + 160), v5 = *(this + 120) + *(this + 115) + *(this + 125) + *(this + 130) + *(this + 135), v6 = *(this + 170) + *(this + 165), v4 <= 20000) ? (v7 = v5 <= 20000) : (v7 = 0), v7 ? (v8 = v6 < 20001) : (v8 = 0), v8))
  {
    v164 = 0;
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 140);
      v11 = *(this + 160);
      v12 = *(this + 145);
      v13 = *(this + 150);
      v14 = *(this + 155);
      *buf = 134219264;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      v187 = v11;
      v188 = 2048;
      v189 = v12;
      v190 = 2048;
      v191 = v13;
      v192 = 2048;
      v193 = v14;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Clearing cached collection data groupingKeyCacheCount=%lld, artist=%zu, album=%zu, albumArtist=%zu, composer=%zu, genre=%zu", buf, 0x3Eu);
    }

    v15 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(this + 125);
      v17 = *(this + 130);
      v18 = *(this + 135);
      v19 = *(this + 120);
      v20 = *(this + 115);
      *buf = 134219264;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 2048;
      v187 = v17;
      v188 = 2048;
      v189 = v18;
      v190 = 2048;
      v191 = v19;
      v192 = 2048;
      v193 = v20;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Clearing cached collection data sourceIDCacheCount=%lld, artist=%zu, album=%zu, albumArtist=%zu, composer=%zu, genre=%zu", buf, 0x3Eu);
    }

    v21 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(this + 170);
      v23 = *(this + 135);
      *buf = 134218496;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      v187 = v23;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Clearing cached collection data cloudIDCacheCount=%lld, album=%zu, albumArtist=%zu", buf, 0x20u);
    }

    v164 = 1;
  }

  v24 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v164;
    _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "starting to flush (all=%{BOOL}u, cachedCollectionsOverThreshold=%{BOOL}u)", buf, 0xEu);
  }

  v25 = *(this + 259);
  if (a2)
  {
    if (!v25)
    {
LABEL_23:
      if (((*(this + 254) == 0) & ~v164) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else if (v25 <= 0x3E7)
  {
    goto LABEL_23;
  }

  v26 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(this + 259);
    v28 = *(this + 254);
    *buf = 67109376;
    *&buf[4] = v27;
    *&buf[8] = 1024;
    *&buf[10] = v28;
    _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "flushing %u album artist insertions (_updatedAlbumArtistNameOrder size=%u)", buf, 0xEu);
  }

  memset(buf, 0, sizeof(buf));
  std::vector<std::shared_ptr<ML3ImportItem>>::reserve(buf, *(this + 259));
  for (i = *(this + 258); i; i = *i)
  {
    v30 = i[3];
    *v176 = i[2];
    *&v177 = v30;
    v31 = i[4];
    *(&v177 + 1) = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100](buf, &v177);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  if (v179[3])
  {
    v32 = *(this + 37);
    v175[0] = *(this + 36);
    v175[1] = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_flushCollectionImportItems(this, buf, v175);
  }

  updated = ML3ImportSession::_updateEntityRevisionTable(this, buf, +[ML3AlbumArtist revisionTrackingCode]);
  *(v179 + 24) = updated;
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 2048);
  *v176 = buf;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](v176);
LABEL_37:
  v34 = [*(this + 261) count];
  v35 = v34;
  if (v34)
  {
    v36 = a2;
  }

  else
  {
    v36 = 0;
  }

  if (v34 > 0x3E7)
  {
    v36 = 1;
  }

  if ((v164 | v36) == 1)
  {
    v37 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v35;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "flushing %u album artist deletions", buf, 8u);
    }

    v38 = ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
    if ([v38 length])
    {
      v39 = *(this + 261);
      v174[0] = MEMORY[0x277D85DD0];
      v174[1] = 3221225472;
      v174[2] = ___ZN16ML3ImportSession5flushEb_block_invoke;
      v174[3] = &unk_2787650E0;
      v174[4] = &v178;
      v174[5] = this;
      [v39 enumerateObjectsUsingBlock:v174];
    }

    [*(this + 261) removeAllObjects];
  }

  v40 = *(this + 285);
  if (a2)
  {
    if (!v40)
    {
LABEL_52:
      if (((*(this + 280) == 0) & ~v164) != 0)
      {
        goto LABEL_66;
      }
    }
  }

  else if (v40 <= 0x3E7)
  {
    goto LABEL_52;
  }

  v41 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(this + 285);
    v43 = *(this + 280);
    *buf = 67109376;
    *&buf[4] = v42;
    *&buf[8] = 1024;
    *&buf[10] = v43;
    _os_log_impl(&dword_22D2FA000, v41, OS_LOG_TYPE_DEFAULT, "flushing %u album insertions (_updatedAlbumNameOrder size=%u)", buf, 0xEu);
  }

  memset(buf, 0, sizeof(buf));
  std::vector<std::shared_ptr<ML3ImportItem>>::reserve(buf, *(this + 285));
  for (j = *(this + 284); j; j = *j)
  {
    v45 = j[3];
    *v176 = j[2];
    *&v177 = v45;
    v46 = j[4];
    *(&v177 + 1) = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100](buf, &v177);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }
  }

  if (v179[3])
  {
    v47 = *(this + 35);
    v173[0] = *(this + 34);
    v173[1] = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_flushCollectionImportItems(this, buf, v173);
  }

  v48 = ML3ImportSession::_updateEntityRevisionTable(this, buf, +[ML3Album revisionTrackingCode]);
  *(v179 + 24) = v48;
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 2256);
  *v176 = buf;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](v176);
LABEL_66:
  v49 = [*(this + 287) count];
  v51 = v49;
  if (v49)
  {
    v52 = a2;
  }

  else
  {
    v52 = 0;
  }

  if (v49 > 0x3E7)
  {
    v52 = 1;
  }

  if ((v164 | v52) == 1)
  {
    v53 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v51;
      _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_DEFAULT, "flushing %u album deletions", buf, 8u);
    }

    v54 = ML3AlbumRulesRemovalSourceIdentityPropertyForSource(*(this + 8));
    if ([v54 length])
    {
      v55 = *(this + 287);
      v172[0] = MEMORY[0x277D85DD0];
      v172[1] = 3221225472;
      v172[2] = ___ZN16ML3ImportSession5flushEb_block_invoke_176;
      v172[3] = &unk_2787650E0;
      v172[4] = &v178;
      v172[5] = this;
      [v55 enumerateObjectsUsingBlock:v172];
    }

    [*(this + 287) removeAllObjects];
  }

  v56 = *(this + 234);
  if (a2)
  {
    if (!v56)
    {
LABEL_81:
      if (((*(this + 219) == 0) & ~v164) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else if (v56 <= 0x3E7)
  {
    goto LABEL_81;
  }

  v57 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = *(this + 234);
    v59 = *(this + 219);
    *buf = 67109376;
    *&buf[4] = v58;
    *&buf[8] = 1024;
    *&buf[10] = v59;
    _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "flushing %u artist insertions (_updatedArtistNameOrder size=%u)", buf, 0xEu);
  }

  memset(buf, 0, sizeof(buf));
  std::vector<std::shared_ptr<ML3ImportItem>>::reserve(buf, *(this + 234));
  for (k = *(this + 233); k; k = *k)
  {
    v61 = k[3];
    *v176 = k[2];
    *&v177 = v61;
    v62 = k[4];
    *(&v177 + 1) = v62;
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100](buf, &v177);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }

  if (v179[3])
  {
    v63 = *(this + 39);
    v171[0] = *(this + 38);
    v171[1] = v63;
    if (v63)
    {
      atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_flushCollectionImportItems(this, buf, v171);
  }

  v64 = ML3ImportSession::_updateEntityRevisionTable(this, buf, +[ML3Artist revisionTrackingCode]);
  *(v179 + 24) = v64;
  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 1848);
  *v176 = buf;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](v176);
LABEL_95:
  if ((a2 & 1) == 0)
  {
    v66 = *(this + 201);
    v65 = *(this + 200);
LABEL_99:
    if ((((v66 - v65) < 0x3E71) & ~v164) != 0)
    {
      goto LABEL_107;
    }

    goto LABEL_100;
  }

  v65 = *(this + 201);
  if (v65 == *(this + 200))
  {
    v66 = *(this + 201);
    goto LABEL_99;
  }

LABEL_100:
  v67 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = (*(this + 201) - *(this + 200)) >> 4;
    *buf = 67109120;
    *&buf[4] = v68;
    _os_log_impl(&dword_22D2FA000, v67, OS_LOG_TYPE_DEFAULT, "flushing %u composer insertions", buf, 8u);
  }

  if (*(v179 + 24) == 1)
  {
    v69 = *(this + 41);
    v170[0] = *(this + 40);
    v170[1] = v69;
    if (v69)
    {
      atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::_flushCollectionImportItems(this, this + 200, v170);
  }

  v70 = ML3ImportSession::_updateEntityRevisionTable(this, this + 200, +[ML3Composer revisionTrackingCode]);
  *(v179 + 24) = v70;
  std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](this + 200);
LABEL_107:
  if (a2)
  {
    v71 = *(this + 204);
    if (v71 != *(this + 203))
    {
LABEL_112:
      v73 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = (*(this + 204) - *(this + 203)) >> 4;
        *buf = 67109120;
        *&buf[4] = v74;
        _os_log_impl(&dword_22D2FA000, v73, OS_LOG_TYPE_DEFAULT, "flushing %u genre insertions", buf, 8u);
      }

      if (*(v179 + 24) == 1)
      {
        v75 = *(this + 43);
        v169[0] = *(this + 42);
        v169[1] = v75;
        if (v75)
        {
          atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
        }

        ML3ImportSession::_flushCollectionImportItems(this, this + 203, v169);
      }

      v76 = ML3ImportSession::_updateEntityRevisionTable(this, this + 203, +[ML3Genre revisionTrackingCode]);
      *(v179 + 24) = v76;
      std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](this + 203);
      goto LABEL_119;
    }

    v72 = *(this + 204);
  }

  else
  {
    v72 = *(this + 204);
    v71 = *(this + 203);
  }

  if ((((v72 - v71) < 0x3E71) & ~v164) == 0)
  {
    goto LABEL_112;
  }

LABEL_119:
  if (*(this + 193) != *(this + 192))
  {
    v77 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = (*(this + 193) - *(this + 192)) >> 4;
      *buf = 67109120;
      *&buf[4] = v78;
      _os_log_impl(&dword_22D2FA000, v77, OS_LOG_TYPE_DEFAULT, "flushing %u track insertions", buf, 8u);
    }

    if (*(v179 + 24) == 1)
    {
      ML3ImportSession::_flushTrackImportItems(this, this + 192);
    }

    v79 = ML3ImportSession::_updateEntityRevisionTable(this, this + 192, +[ML3Track revisionTrackingCode]);
    *(v179 + 24) = v79;
    std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](this + 192);
  }

  if (*(v179 + 24) == 1)
  {
    if (*(this + 196) != *(this + 195))
    {
      v80 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = (*(this + 196) - *(this + 195)) >> 4;
        *buf = 67109120;
        *&buf[4] = v81;
        _os_log_impl(&dword_22D2FA000, v80, OS_LOG_TYPE_DEFAULT, "flushing %u track updates", buf, 8u);
      }

      ML3ImportSession::_flushTrackImportItems(this, this + 195);
    }

    if ([*(this + 198) count])
    {
      v82 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = [*(this + 198) count];
        *buf = 134217984;
        *&buf[4] = v83;
        _os_log_impl(&dword_22D2FA000, v82, OS_LOG_TYPE_DEFAULT, "flushing %lu track deletes", buf, 0xCu);
      }

      v84 = ML3ImportSession::_removeTracksFromLibrary(this, *(this + 198));
      *(v179 + 24) = v84;
      if (!v84)
      {
        v85 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v85, OS_LOG_TYPE_ERROR, "failed to process deletes", buf, 2u);
        }
      }

      [*(this + 198) removeAllObjects];
    }
  }

  if (*(v179 + 24) == 1)
  {
    if (!*(this + 254))
    {
      goto LABEL_237;
    }

    v86 = *(this + 253);
    if (v86)
    {
      *&v50 = 134218496;
      v163 = v50;
      while (1)
      {
        v87 = v86[2];
        v88 = v86[3];
        v89 = v86[4];
        v90 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v163;
          *&buf[4] = v87;
          *&buf[12] = 2048;
          *&buf[14] = v89;
          *&buf[22] = 2048;
          v187 = v88;
          _os_log_impl(&dword_22D2FA000, v90, OS_LOG_TYPE_DEFAULT, "updating album artist name order of trackPID=%lld to order.section=%ld, order.sortOrder=%lld", buf, 0x20u);
        }

        v91 = *(this + 2);
        v92 = [MEMORY[0x277CCABB0] numberWithLongLong:v88];
        v185[0] = v92;
        v93 = [MEMORY[0x277CCABB0] numberWithInteger:v89];
        v185[1] = v93;
        v94 = [MEMORY[0x277CCABB0] numberWithLongLong:v87];
        v185[2] = v94;
        v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:3];
        v168 = 0;
        v96 = [v91 executeUpdate:@"UPDATE item SET album_artist_order=? withParameters:album_artist_order_section=? WHERE album_artist_pid=?" error:{v95, &v168}];
        v97 = v168;

        if ((v96 & 1) == 0)
        {
          break;
        }

        v86 = *v86;
        if (!v86)
        {
          goto LABEL_150;
        }
      }

      v98 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v87;
        *&buf[12] = 2114;
        *&buf[14] = v97;
        _os_log_impl(&dword_22D2FA000, v98, OS_LOG_TYPE_ERROR, "Failed to update name order of tracks with album_artist_pid=%lld, error=%{public}@", buf, 0x16u);
      }

      *(v179 + 24) = 0;
    }

LABEL_150:
    std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::clear(this + 251);
    if (v179[3])
    {
LABEL_237:
      if (!*(this + 219))
      {
        goto LABEL_238;
      }

      v99 = *(this + 218);
      if (v99)
      {
        *&v50 = 134218496;
        v163 = v50;
        while (1)
        {
          v100 = v99[2];
          v101 = v99[3];
          v102 = v99[4];
          v103 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v163;
            *&buf[4] = v100;
            *&buf[12] = 2048;
            *&buf[14] = v102;
            *&buf[22] = 2048;
            v187 = v101;
            _os_log_impl(&dword_22D2FA000, v103, OS_LOG_TYPE_DEFAULT, "updating item artist name order of trackPID=%lld to order.section=%ld, order.sortOrder=%lld", buf, 0x20u);
          }

          v104 = *(this + 2);
          v105 = [MEMORY[0x277CCABB0] numberWithLongLong:v101];
          v184[0] = v105;
          v106 = [MEMORY[0x277CCABB0] numberWithInteger:v102];
          v184[1] = v106;
          v107 = [MEMORY[0x277CCABB0] numberWithLongLong:v100];
          v184[2] = v107;
          v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:3];
          v167 = 0;
          v109 = [v104 executeUpdate:@"UPDATE item SET item_artist_order=? withParameters:item_artist_order_section=? WHERE item_artist_pid=?" error:{v108, &v167}];
          v110 = v167;

          if ((v109 & 1) == 0)
          {
            break;
          }

          v99 = *v99;
          if (!v99)
          {
            goto LABEL_162;
          }
        }

        v111 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v100;
          *&buf[12] = 2114;
          *&buf[14] = v110;
          _os_log_impl(&dword_22D2FA000, v111, OS_LOG_TYPE_ERROR, "Failed to update name order of tracks with item_artist_pid=%lld, error=%{public}@", buf, 0x16u);
        }

        *(v179 + 24) = 0;
      }

LABEL_162:
      std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::clear(this + 216);
      if (v179[3])
      {
LABEL_238:
        if (!*(this + 229))
        {
          goto LABEL_239;
        }

        v112 = *(this + 228);
        if (v112)
        {
          *&v50 = 134218496;
          v163 = v50;
          while (1)
          {
            v113 = v112[2];
            v114 = v112[3];
            v115 = v112[4];
            v116 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v163;
              *&buf[4] = v113;
              *&buf[12] = 2048;
              *&buf[14] = v115;
              *&buf[22] = 2048;
              v187 = v114;
              _os_log_impl(&dword_22D2FA000, v116, OS_LOG_TYPE_DEFAULT, "updating item artist series order of trackPID=%lld to order.section=%ld, order.sortOrder=%lld", buf, 0x20u);
            }

            v117 = *(this + 2);
            v118 = [MEMORY[0x277CCABB0] numberWithLongLong:v114];
            v183[0] = v118;
            v119 = [MEMORY[0x277CCABB0] numberWithInteger:v115];
            v183[1] = v119;
            v120 = [MEMORY[0x277CCABB0] numberWithLongLong:v113];
            v183[2] = v120;
            v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:3];
            v166 = 0;
            v122 = [v117 executeUpdate:@"UPDATE item SET series_name_order=? withParameters:series_name_order_section=? WHERE item_artist_pid=?" error:{v121, &v166}];
            v123 = v166;

            if ((v122 & 1) == 0)
            {
              break;
            }

            v112 = *v112;
            if (!v112)
            {
              goto LABEL_174;
            }
          }

          v124 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            *&buf[4] = v113;
            *&buf[12] = 2114;
            *&buf[14] = v123;
            _os_log_impl(&dword_22D2FA000, v124, OS_LOG_TYPE_ERROR, "Failed to update name order of tracks with item_artist_pid=%lld, error=%{public}@", buf, 0x16u);
          }

          *(v179 + 24) = 0;
        }

LABEL_174:
        std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::clear(this + 226);
        if (v179[3])
        {
LABEL_239:
          if (!*(this + 280))
          {
            goto LABEL_240;
          }

          v125 = *(this + 279);
          if (v125)
          {
            *&v50 = 134218496;
            v163 = v50;
            while (1)
            {
              v126 = v125[2];
              v127 = v125[3];
              v128 = v125[4];
              v129 = os_log_create("com.apple.amp.medialibrary", "Import");
              if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v163;
                *&buf[4] = v126;
                *&buf[12] = 2048;
                *&buf[14] = v128;
                *&buf[22] = 2048;
                v187 = v127;
                _os_log_impl(&dword_22D2FA000, v129, OS_LOG_TYPE_DEFAULT, "updating album name order of trackPID=%lld to order.section=%ld, order.sortOrder=%lld", buf, 0x20u);
              }

              v130 = *(this + 2);
              v131 = [MEMORY[0x277CCABB0] numberWithLongLong:v127];
              v182[0] = v131;
              v132 = [MEMORY[0x277CCABB0] numberWithInteger:v128];
              v182[1] = v132;
              v133 = [MEMORY[0x277CCABB0] numberWithLongLong:v126];
              v182[2] = v133;
              v134 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
              v165 = 0;
              v135 = [v130 executeUpdate:@"UPDATE item SET album_order=? withParameters:album_order_section=? WHERE album_pid=?" error:{v134, &v165}];
              v136 = v165;

              if ((v135 & 1) == 0)
              {
                break;
              }

              v125 = *v125;
              if (!v125)
              {
                goto LABEL_186;
              }
            }

            v137 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v126;
              *&buf[12] = 2114;
              *&buf[14] = v136;
              _os_log_impl(&dword_22D2FA000, v137, OS_LOG_TYPE_ERROR, "Failed to update name order of tracks with album_pid=%lld, error=%{public}@", buf, 0x16u);
            }

            *(v179 + 24) = 0;
          }

LABEL_186:
          std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::clear(this + 277);
          if (v179[3])
          {
LABEL_240:
            if (*(this + 302) == *(this + 301))
            {
              goto LABEL_193;
            }

            v138 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              v139 = (*(this + 302) - *(this + 301)) >> 4;
              *buf = 67109120;
              *&buf[4] = v139;
              _os_log_impl(&dword_22D2FA000, v138, OS_LOG_TYPE_DEFAULT, "flushing %u playlist insertions", buf, 8u);
            }

            if (*(v179 + 24) == 1)
            {
              ML3ImportSession::_flushPlaylistImportItems();
            }

            v140 = ML3ImportSession::_updateEntityRevisionTable(this, this + 301, +[ML3Container revisionTrackingCode]);
            *(v179 + 24) = v140;
            std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](this + 301);
            if (v179[3])
            {
LABEL_193:
              if (*(this + 305) != *(this + 304))
              {
                v141 = os_log_create("com.apple.amp.medialibrary", "Import");
                if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                {
                  v142 = (*(this + 305) - *(this + 304)) >> 4;
                  *buf = 67109120;
                  *&buf[4] = v142;
                  _os_log_impl(&dword_22D2FA000, v141, OS_LOG_TYPE_DEFAULT, "flushing %u playlist updates", buf, 8u);
                }

                ML3ImportSession::_flushPlaylistImportItems();
              }

              if (*(this + 323) != *(this + 322))
              {
                v143 = os_log_create("com.apple.amp.medialibrary", "Import");
                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                {
                  v144 = (*(this + 323) - *(this + 322)) >> 4;
                  *buf = 67109120;
                  *&buf[4] = v144;
                  _os_log_impl(&dword_22D2FA000, v143, OS_LOG_TYPE_DEFAULT, "flushing %u person insertions", buf, 8u);
                }

                ML3ImportSession::_flushPersonImportItems();
              }

              if (*(this + 326) != *(this + 325))
              {
                v145 = os_log_create("com.apple.amp.medialibrary", "Import");
                if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                {
                  v146 = (*(this + 326) - *(this + 325)) >> 4;
                  *buf = 67109120;
                  *&buf[4] = v146;
                  _os_log_impl(&dword_22D2FA000, v145, OS_LOG_TYPE_DEFAULT, "flushing %u person updates", buf, 8u);
                }

                ML3ImportSession::_flushPersonImportItems();
              }

              if (*(this + 346) != *(this + 345))
              {
                v147 = _ML3LogCategoryImport();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                {
                  v148 = (*(this + 346) - *(this + 345)) >> 4;
                  *buf = 67109120;
                  *&buf[4] = v148;
                  _os_log_impl(&dword_22D2FA000, v147, OS_LOG_TYPE_DEFAULT, "flushing %u booklet updates", buf, 8u);
                }

                ML3ImportSession::_flushBookletImportItems();
              }

              if (*(this + 349) != *(this + 348))
              {
                v149 = _ML3LogCategoryImport();
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  v150 = (*(this + 349) - *(this + 348)) >> 3;
                  *buf = 67109120;
                  *&buf[4] = v150;
                  _os_log_impl(&dword_22D2FA000, v149, OS_LOG_TYPE_DEFAULT, "flushing %u booklet deletes", buf, 8u);
                }

                v151 = ML3ImportSession::_removeBookletsFromLibrary(this, this + 348);
                *(v179 + 24) = v151;
                if ((v151 & 1) == 0)
                {
                  v152 = _ML3LogCategoryImport();
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22D2FA000, v152, OS_LOG_TYPE_ERROR, "failed to remove deleted booklets", buf, 2u);
                  }
                }

                *(this + 349) = *(this + 348);
              }
            }
          }
        }
      }
    }
  }

  if (*(this + 47))
  {
    std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__deallocate_node(*(this + 46));
    *(this + 46) = 0;
    v153 = *(this + 45);
    if (v153)
    {
      for (m = 0; m != v153; ++m)
      {
        *(*(this + 44) + 8 * m) = 0;
      }
    }

    *(this + 47) = 0;
  }

  if (*(this + 77))
  {
    v155 = *(this + 76);
    if (v155)
    {
      do
      {
        v156 = *v155;
        operator delete(v155);
        v155 = v156;
      }

      while (v156);
    }

    *(this + 76) = 0;
    v157 = *(this + 75);
    if (v157)
    {
      for (n = 0; n != v157; ++n)
      {
        *(*(this + 74) + 8 * n) = 0;
      }
    }

    *(this + 77) = 0;
  }

  v159 = *(this + 89);
  v160 = *(this + 88);
  if (v159 != v160)
  {
    do
    {
      [*(this + 1) updateBestArtworkTokenForEntityPersistentID:*v160 entityType:v160[1] == 5 artworkType:0.0 retrievalTime:? usingConnection:?];
      v160 += 2;
    }

    while (v160 != v159);
    *(this + 89) = *(this + 88);
  }

  if (v164)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1096);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1136);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1176);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1216);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1256);
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 896);
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 936);
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 976);
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 1016);
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(this + 1056);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1296);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(this + 1336);
  }

  v161 = *(v179 + 24);
  _Block_object_dispose(&v178, 8);
  return v161;
}

void *std::vector<std::shared_ptr<ML3ImportItem>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(a2);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

size_t *std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<ML3ImportItem>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

void ML3ImportSession::_flushCollectionImportItems(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v5[3] = a1;
  ML3DatabaseImportDataSource::setImportItems(v5, a2);
  v6 = *(a3 + 8);
  *buf = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::shared_ptr<ML3DatabaseImportDataSource>>::__init_with_size[abi:ne200100]<std::shared_ptr<ML3DatabaseImportDataSource> const*,std::shared_ptr<ML3DatabaseImportDataSource> const*>(v7, buf, v10, 1uLL);
}

uint64_t ML3ImportSession::_updateEntityRevisionTable(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "REPLACE INTO entity_revision (entity_pid, deleted, class) VALUES (?, ?, ?)");
  if (*a2 != a2[1])
  {
    *buf = *(**a2 + 8);
    v14 = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = a3;
    v20 = 0;
    v21 = 1;
    memset(&v10[5], 0, 24);
    std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__init_with_size[abi:ne200100]<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>> const*>();
  }

  v6 = [*(a1 + 16) databasePath];
  v7 = [v6 hash];

  v8 = *(a1 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN16ML3ImportSession26_updateEntityRevisionTableERNSt3__16vectorINS0_10shared_ptrI13ML3ImportItemEENS0_9allocatorIS4_EEEEx_block_invoke;
  v10[3] = &__block_descriptor_40_e8_v12__0B8l;
  v10[4] = v7;
  [v8 enqueueBlockForTransactionCommit:v10];
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_22D51882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3GenreData>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void ___ZN16ML3ImportSession5flushEb_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v7 = *(*(a1 + 40) + 16);
    v19[0] = &stru_28408B690;
    v19[1] = &unk_2840CA268;
    v8 = [MEMORY[0x277CBEAA8] date];
    v19[2] = v8;
    v19[3] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    v14 = 0;
    v10 = [v7 executeUpdate:@"UPDATE album_artist set cloud_universal_library_id=? withParameters:liked_state=? error:{liked_state_changed_date=? WHERE album_artist_pid=?", v9, &v14}];
    v11 = v14;
    *(*(*(a1 + 32) + 8) + 24) = v10;

    if ((v10 & 1) == 0)
    {
      v12 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v6 longLongValue];
        *buf = 134218242;
        v16 = v13;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Could not remove cloud_library_id from album artist with persistentID:%lld, error=%{public}@", buf, 0x16u);
      }

      *a4 = 1;
    }
  }

  else
  {
    v11 = 0;
  }
}

void ___ZN16ML3ImportSession5flushEb_block_invoke_176(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v7 = *(*(a1 + 40) + 16);
    v19[0] = &stru_28408B690;
    v19[1] = &unk_2840CA268;
    v8 = [MEMORY[0x277CBEAA8] date];
    v19[2] = v8;
    v19[3] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    v14 = 0;
    v10 = [v7 executeUpdate:@"UPDATE album set cloud_library_id=? withParameters:liked_state=? error:{liked_state_changed_date=? WHERE album_pid=?", v9, &v14}];
    v11 = v14;
    *(*(*(a1 + 32) + 8) + 24) = v10;

    if ((v10 & 1) == 0)
    {
      v12 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v6 longLongValue];
        *buf = 134218242;
        v16 = v13;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Could not remove cloud_library_id from album with persistentID:%lld, error=%{public}@", buf, 0x16u);
      }

      *a4 = 1;
    }
  }

  else
  {
    v11 = 0;
  }
}

void ML3ImportSession::_flushTrackImportItems(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = 1;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (*(*v5 + 136))(v5);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v4 &= v7;
      v2 += 2;
    }

    while (v2 != v3);
    if ((v4 & 1) == 0)
    {
      operator new();
    }
  }

  operator new();
}

void sub_22D519C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  a13 = &a10;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

BOOL ML3ImportSession::_removeTracksFromLibrary(ML3ImportSession *this, NSArray *a2)
{
  v3 = a2;
  if (ML3ImportSession::_enableTriggers(this))
  {
    v4 = *(this + 8);
    if (v4 == 2)
    {
      v5 = [ML3Track unlinkRedownloadableAssetsFromLibrary:*(this + 1) persistentIDs:v3 deletionType:2 deletedFileSize:0];
      v4 = *(this + 8);
    }

    else
    {
      v5 = 1;
    }

    [*(this + 1) removeSource:v4 fromPersistentIDS:v3 forImportOperation:0 canonocalizeCollections:0 usingConnection:*(this + 2) postNotifications:0];
    ML3ImportSession::_disableTriggers(this);
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "failed to re-enable triggers", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

void *std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_22D51CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v41 - 240) = &a40;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100]((v41 - 240));
  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_removeBookletsFromLibrary(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2 + 1;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:(a2[1] - *a2) >> 3];
  v6 = *a2;
  if (*a2 != *v4)
  {
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*v6];
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 != a2[1]);
  }

  v8 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v9 = [v8 statementWithPrefix:@"DELETE FROM booklet WHERE ROWID" inParameterCount:{objc_msgSend(v5, "count")}];
  v10 = *(a1 + 16);
  v15 = 0;
  v11 = [v10 executeUpdate:v9 withParameters:v5 error:&v15];
  v12 = v15;
  if ((v11 & 1) == 0)
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Failed to delete booklet items. err=%{public}@", buf, 0xCu);
    }
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t ML3ImportSession::_flushImportItems(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  if (*(a2 + 8) == *a2)
  {
    return 1;
  }

  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v8 = *v5;
      v9 = v5[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8[3] = a1;
      ML3DatabaseImportDataSource::setImportItems(v8, a2);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  v10 = ML3ImportSession::_performDatabaseImport(a1, a3);
  v11 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    do
    {
      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v13[3] = 0;
        std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](v13 + 6);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      else
      {
        v13[3] = 0;
        std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](v13 + 6);
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  return v10;
}

void sub_22D51DFF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::_performDatabaseImport(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN16ML3ImportSession22_performDatabaseImportERNSt3__16vectorINS0_10shared_ptrI27ML3DatabaseImportDataSourceEENS0_9allocatorIS4_EEEE_block_invoke;
  v5[3] = &unk_278765130;
  v5[5] = a1;
  v5[6] = a2;
  v5[4] = &v6;
  [v2 performTransactionWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN16ML3ImportSession22_performDatabaseImportERNSt3__16vectorINS0_10shared_ptrI27ML3DatabaseImportDataSourceEENS0_9allocatorIS4_EEEE_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v3 + 40);
  if (v6)
  {
    v6(*(v3 + 48), 0.0);
    v7 = *(a1 + 48);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {
    v8 = v4;
    v9 = v5;
  }

  v32 = a1;
  if (v9 == v8)
  {
    v20 = 1;
  }

  else
  {
    v33 = v8;
    v36 = v3;
    v10 = 0;
    v11 = ((v4 - v5) >> 4);
    do
    {
      v13 = *v9;
      v12 = *(v9 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = v12;
      v14 = objc_autoreleasePoolPush();
      v34 = [MEMORY[0x277CBEAA8] date];
      v15 = ML3DatabaseImportDataSource::getTableSchema(v13);
      v16 = [[ML3VirtualTable alloc] initWithDatabaseTable:v15];
      v17 = v16;
      v38 = v13;
      v39 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(ML3VirtualTable *)v16 setDataSource:&v38];
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if ([(ML3VirtualTable *)v17 registerWithConnection:*(v36 + 16)])
      {
        v18 = (*(*v13 + 48))(v13, v17, *(v36 + 32));
        v19 = *(v36 + 16);
        v37 = 0;
        v20 = [v19 executeUpdate:v18 withParameters:0 error:&v37];
        v21 = v37;
        if ((v20 & 1) == 0)
        {
          v22 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v21;
            _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Error executing import virtual table insert statement. %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v18 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v23 = *(v36 + 16);
          *buf = 138543618;
          v41 = v17;
          v42 = 2048;
          v43 = v23;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Could not register virtual table %{public}@ on connection %p.", buf, 0x16u);
        }

        v20 = 0;
      }

      [(ML3VirtualTable *)v17 unregister];
      v24 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = ML3DatabaseImportDataSource::getTableSchema(v13);
        v26 = [v25 name];
        v27 = [MEMORY[0x277CBEAA8] date];
        [v27 timeIntervalSinceDate:v34];
        *buf = 138543618;
        v41 = v26;
        v42 = 2048;
        v43 = v28;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "Data source %{public}@ took %.2fs to import", buf, 0x16u);
      }

      v29 = *(v36 + 40);
      if (v29)
      {
        v29(*(v36 + 48), v10 / v11);
      }

      objc_autoreleasePoolPop(v14);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v9 += 16;
      if (v9 == v33)
      {
        v30 = 0;
      }

      else
      {
        v30 = v20;
      }

      ++v10;
    }

    while ((v30 & 1) != 0);
  }

  *(*(*(v32 + 32) + 8) + 24) = v20;
  return v20;
}

void sub_22D51E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<ML3DatabaseImportDataSource>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__shared_ptr_pointer<ML3BookletDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3BookletDatabaseImportDataSource>,std::allocator<ML3BookletDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_34ML3BookletDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3BookletDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3BookletDatabaseImportDataSource>,std::allocator<ML3BookletDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3BookletDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3BookletDatabaseImportDataSource>,std::allocator<ML3BookletDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3PersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3PersonDatabaseImportDataSource>,std::allocator<ML3PersonDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_33ML3PersonDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3PersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3PersonDatabaseImportDataSource>,std::allocator<ML3PersonDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3PersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3PersonDatabaseImportDataSource>,std::allocator<ML3PersonDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemReactionsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemReactionsDatabaseImportDataSource>,std::allocator<ML3ContainerItemReactionsDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_49ML3ContainerItemReactionsDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemReactionsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemReactionsDatabaseImportDataSource>,std::allocator<ML3ContainerItemReactionsDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerItemReactionsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemReactionsDatabaseImportDataSource>,std::allocator<ML3ContainerItemReactionsDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void *__Block_byref_object_copy__743(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZN16ML3ImportSession40_prepareContainerItemReactionImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 int64ForColumnIndex:0];
  v9 = [v4 int64ForColumnIndex:1];
  [v4 int64ForColumnIndex:2];
  v6 = [v4 cStringForColumnIndex:3];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v7);
  [v4 int64ForColumnIndex:4];
  operator new();
}

void sub_22D51EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x2318CD250](v22, 0x1012C40ACBB1BAALL);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__714(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZN16ML3ImportSession40_prepareContainerItemReactionImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 int64ForColumnIndex:0];
  v8 = [v5 int64ForColumnIndex:1];
  v9 = *(*(a1 + 32) + 8);
  v10[0] = v8;
  v10[1] = v10;
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v9 + 48), v8)[3] = v7;
}

uint64_t __Block_byref_object_copy__727(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void ___ZN16ML3ImportSession40_prepareContainerItemReactionImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 int64ForColumnIndex:0];
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 cStringForColumnIndex:1]);
  v8 = *(*(a1 + 32) + 8);
  v11 = __p;
  std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 48), __p)[5] = v7;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22D51EDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    v6 = 0;
    v7 = a1 + 1;
    while (1)
    {
      v8 = v3;
      if (v7 == v3)
      {
        goto LABEL_26;
      }

      v9 = v6;
      v10 = v3;
      if (v6)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = *(v5 + 55);
      if (v12 >= 0)
      {
        v13 = v5 + 4;
      }

      else
      {
        v13 = v5[4];
      }

      if (v12 >= 0)
      {
        v14 = *(v5 + 55);
      }

      else
      {
        v14 = v5[5];
      }

      v15 = *(v8 + 55);
      if (v15 >= 0)
      {
        v16 = *(v8 + 55);
      }

      else
      {
        v16 = v8[5];
      }

      if (v15 >= 0)
      {
        v17 = v8 + 4;
      }

      else
      {
        v17 = v8[4];
      }

      if (v14 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v19 = memcmp(v17, v13, v18);
      v20 = v16 < v14;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (v20)
      {
LABEL_26:
        if (v6)
        {
          v25 = v8;
          v21 = v8 + 1;
        }

        else
        {
          v25 = v3;
          v21 = v3;
        }
      }

      else
      {
        v21 = std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__find_equal<std::string>(a1, &v25, v5 + 4);
      }

      if (!*v21)
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>> const&>();
      }

      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v11 = *v23 == v5;
          v5 = v23;
        }

        while (!v11);
      }

      if (v23 == v4)
      {
        break;
      }

      v7 = *a1;
      v6 = a1[1];
      v5 = v23;
    }
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? a2 : *a2;
  v6 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v6 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v12 = memcmp(v10, v5, v11);
    v13 = v9 < v6;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v18 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v19 = v18 >= v6 ? v6 : v18;
  v20 = memcmp(v5, v17, v19);
  v21 = v6 < v18;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void sub_22D51F22C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::shared_ptr<ML3ImportItem>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<ML3ImportItem>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

uint64_t std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>::operator[](uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 56;
}

uint64_t std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>::operator=[abi:ne200100](uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*(a1 + 16))
    {
      v5 = *a1;
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      *a1 = a1 + 8;
      *(v6 + 16) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      if (v5[1])
      {
        v5 = v5[1];
      }

      v32[0] = a1;
      v32[1] = v5;
      std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::__advance[abi:ne200100](v32);
      v8 = v33;
      if (!v33 || v4 == v3)
      {
        v29 = v4;
      }

      else
      {
        do
        {
          std::string::operator=((v8 + 32), (v4 + 4));
          v10 = v4[7];
          v9 = v4[8];
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = *(v8 + 64);
          *(v8 + 56) = v10;
          *(v8 + 64) = v9;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v12 = v33;
          v13 = *v7;
          v14 = (a1 + 8);
          v15 = (a1 + 8);
          if (*v7)
          {
            v16 = *(v33 + 55);
            if (v16 >= 0)
            {
              v17 = *(v33 + 55);
            }

            else
            {
              v17 = *(v33 + 40);
            }

            if (v16 >= 0)
            {
              v18 = (v33 + 32);
            }

            else
            {
              v18 = *(v33 + 32);
            }

            do
            {
              while (1)
              {
                v14 = v13;
                v21 = v13[4];
                v19 = v13 + 4;
                v20 = v21;
                v22 = *(v19 + 23);
                if (v22 >= 0)
                {
                  v23 = v19;
                }

                else
                {
                  v23 = v20;
                }

                if (v22 >= 0)
                {
                  v24 = *(v19 + 23);
                }

                else
                {
                  v24 = v19[1];
                }

                if (v24 >= v17)
                {
                  v25 = v17;
                }

                else
                {
                  v25 = v24;
                }

                v26 = memcmp(v18, v23, v25);
                v27 = v17 < v24;
                if (v26)
                {
                  v27 = v26 < 0;
                }

                if (!v27)
                {
                  break;
                }

                v13 = *v14;
                v15 = v14;
                if (!*v14)
                {
                  goto LABEL_34;
                }
              }

              v13 = v14[1];
            }

            while (v13);
            v15 = v14 + 1;
          }

LABEL_34:
          std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__insert_node_at(a1, v14, v15, v12);
          std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::__advance[abi:ne200100](v32);
          v28 = v4[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v4[2];
              v30 = *v29 == v4;
              v4 = v29;
            }

            while (!v30);
          }

          v8 = v33;
          if (v33)
          {
            v30 = v29 == v3;
          }

          else
          {
            v30 = 1;
          }

          v4 = v29;
        }

        while (!v30);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](v32);
      v4 = v29;
    }

    if (v4 != v3)
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>> const&>();
    }
  }

  return a1;
}

void sub_22D51F72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ML3ArtistData>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::__map_value_compare<long long,std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::__map_value_compare<long long,std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::__map_value_compare<long long,std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::map<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::__advance[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  *(result + 16) = v1;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *v2;
      if (*v2 == v1)
      {
        *v2 = 0;
        while (1)
        {
          v4 = v2[1];
          if (!v4)
          {
            break;
          }

          do
          {
            v2 = v4;
            v4 = *v4;
          }

          while (v4);
        }
      }

      else
      {
        for (v2[1] = 0; v3; v3 = v2[1])
        {
          do
          {
            v2 = v3;
            v3 = *v3;
          }

          while (v3);
        }
      }
    }

    *(result + 8) = v2;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<ML3ArtistData>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        if (v13 >= 0)
        {
          v15 = *(v10 + 23);
        }

        else
        {
          v15 = v10[1];
        }

        if (v15 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v15;
        }

        v17 = memcmp(v8, v14, v16);
        v18 = v7 < v15;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v14, v8, v16);
      v20 = v15 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemReactionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemReactionImportItem>,std::allocator<ML3ContainerItemReactionImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_34ML3ContainerItemReactionImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemReactionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemReactionImportItem>,std::allocator<ML3ContainerItemReactionImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}