uint64_t ML3ProtoSyncArtistImportItem::hasValue(ML3ProtoSyncArtistImportItem *this, int a2)
{
  v4 = 0;
  if (a2 <= 301989902)
  {
    if (a2 > 301989889)
    {
      if (a2 == 301989890)
      {
        v13 = *(this + 17);
        if (!v13)
        {
          return 0;
        }

LABEL_48:

        return [v13 hasSortName];
      }

      if (a2 == 301989893)
      {
        v12 = *(this + 17);
        if (!v12)
        {
          return 0;
        }

LABEL_56:

        return [v12 hasStoreId];
      }

      if (a2 != 301989899)
      {
        return v4;
      }

      v11 = *(this + 10);
      if (v11 && ([v11 hasCloudUniversalLibraryId] & 1) != 0)
      {
        return 1;
      }

      v26 = *(this + 17);
      if (!v26)
      {
        return 0;
      }

      return [v26 hasCloudUniversalLibraryId];
    }

    else
    {
      switch(a2)
      {
        case 167772176:
          v20 = *(this + 16);
          if (!v20)
          {
            return 0;
          }

          break;
        case 167772177:
          v20 = *(this + 17);
          if (!v20)
          {
            return 0;
          }

          break;
        case 301989889:
          v8 = *(this + 14);
          if (v8)
          {
            if ([v8 hasArtist])
            {
              v9 = [*(this + 14) artist];
              v4 = [v9 hasName];

              return v4;
            }

            return 0;
          }

          v10 = *(this + 17);
          if (!v10)
          {
            return 0;
          }

          goto LABEL_78;
        default:
          return v4;
      }

      return [v20 hasPersistentId];
    }
  }

  else
  {
    if (a2 > 318767105)
    {
      if (a2 <= 318767107)
      {
        if (a2 != 318767106)
        {
          v5 = *(this + 14);
          if (v5 && [v5 hasSeries])
          {
            v2 = [*(this + 14) series];
            v6 = 1;
            v7 = 1;
            if ([v2 hasName])
            {
              goto LABEL_76;
            }
          }

          else
          {
            v6 = 0;
          }

          v24 = *(this + 13);
          if (v24 && [v24 hasSeries])
          {
            v25 = [*(this + 13) series];
            v7 = [v25 hasName];

            v4 = v7;
            if (!v6)
            {
              return v4;
            }

            goto LABEL_76;
          }

          v7 = 0;
          v4 = 0;
          if (v6)
          {
LABEL_76:

            return v7;
          }

          return v4;
        }

        v13 = *(this + 16);
        if (!v13)
        {
          return 0;
        }

        goto LABEL_48;
      }

      if (a2 != 318767108)
      {
        if (a2 != 318767111)
        {
          return v4;
        }

        v12 = *(this + 16);
        if (!v12)
        {
          return 0;
        }

        goto LABEL_56;
      }

      v14 = *(this + 14);
      if (v14 && [v14 hasSeries])
      {
        v2 = [*(this + 14) series];
        v15 = 1;
        v16 = 1;
        if ([v2 hasSortName])
        {
          goto LABEL_74;
        }
      }

      else
      {
        v15 = 0;
      }

      v21 = *(this + 13);
      if (v21 && [v21 hasSeries])
      {
        v22 = [*(this + 13) series];
        v23 = [v22 sortName];
        v16 = v23 != 0;

        v4 = v16;
        if (!v15)
        {
          return v4;
        }
      }

      else
      {
        v16 = 0;
        v4 = 0;
        if ((v15 & 1) == 0)
        {
          return v4;
        }
      }

LABEL_74:

      return v16;
    }

    switch(a2)
    {
      case 301989903:
        v17 = *(this + 17);
        if (!v17)
        {
          return 0;
        }

        return [v17 hasLikedState];
      case 301989904:
        v19 = *(this + 17);
        if (!v19)
        {
          return 0;
        }

        return [v19 hasLikedStateChangedDate];
      case 318767105:
        v10 = *(this + 16);
        if (!v10)
        {
          return 0;
        }

LABEL_78:

        return [v10 hasName];
      default:
        return v4;
    }
  }
}

void sub_22D42E1B4(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncArtistImportItem::getIntegerValue(ML3ProtoSyncArtistImportItem *this, int a2)
{
  v3 = 0;
  if (a2 > 301989892)
  {
    if (a2 > 301989903)
    {
      if (a2 == 301989904)
      {
        v13 = *(this + 14);
        if (v13)
        {
          v14 = [v13 artist];
          v3 = [v14 likedStateChangedDate];
        }

        else
        {
          v3 = 0;
        }

        v15 = *(this + 17);
        if (!v15)
        {
          return v3;
        }

        return [v15 likedStateChangedDate];
      }

      if (a2 != 318767111)
      {
        return v3;
      }

      v8 = *(this + 16);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != 301989893)
      {
        if (a2 != 301989903)
        {
          return v3;
        }

        v5 = *(this + 14);
        if (!v5)
        {
          v16 = *(this + 17);
          if (v16)
          {
            return [v16 likedState];
          }

          return 0;
        }

        v6 = [v5 artist];
        v3 = [v6 likedState];
LABEL_25:

        return v3;
      }

      v11 = *(this + 14);
      if (v11)
      {
        v6 = [v11 artist];
        v3 = [v6 storeId];
        goto LABEL_25;
      }

      v8 = *(this + 17);
      if (!v8)
      {
        return 0;
      }
    }

    return [v8 storeId];
  }

  if (a2 <= 167772175)
  {
    if (a2 == 16777217)
    {
      v9 = *(this + 11);
      if (v9)
      {
        v10 = [v9 mediaType] - 1;
        if (v10 <= 0xC)
        {
          return dword_22D5C9BB4[v10];
        }
      }
    }

    else
    {
      if (a2 != 16777246)
      {
        return v3;
      }

      v4 = *(this + 15);
      if (v4)
      {
        return [v4 compilation];
      }
    }

    return 0;
  }

  if (a2 == 167772176)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (a2 != 167772177)
    {
      return v3;
    }

    v7 = *(this + 17);
    if (!v7)
    {
      return 0;
    }
  }

  return [v7 persistentId];
}

void ML3ProtoSyncArtistImportItem::getStringValue(ML3ProtoSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 318767104)
  {
    switch(a2)
    {
      case 301989889:
        v11 = *(this + 14);
        if (v11)
        {
          v12 = [v11 artist];
          v13 = [v12 name];
          goto LABEL_33;
        }

        v14 = *(this + 17);
        if (v14)
        {
          goto LABEL_26;
        }

        break;
      case 301989890:
        v5 = *(this + 17);
        if (v5)
        {
LABEL_24:
          v9 = [v5 sortName];
          goto LABEL_27;
        }

        break;
      case 301989899:
        v6 = *(this + 10);
        if (v6)
        {
          v7 = [v6 cloudUniversalLibraryId];
          if (v7)
          {
            goto LABEL_34;
          }
        }

        v8 = *(this + 17);
        if (v8)
        {
          v9 = [v8 cloudUniversalLibraryId];
          goto LABEL_27;
        }

        break;
    }

LABEL_36:
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    return;
  }

  if (a2 > 318767106)
  {
    if (a2 == 318767107)
    {
      v15 = *(this + 14);
      if (!v15)
      {
        v15 = *(this + 13);
        if (!v15)
        {
          goto LABEL_36;
        }
      }

      v12 = [v15 series];
      v13 = [v12 name];
    }

    else
    {
      if (a2 != 318767108)
      {
        goto LABEL_36;
      }

      v10 = *(this + 14);
      if (!v10)
      {
        v10 = *(this + 13);
        if (!v10)
        {
          goto LABEL_36;
        }
      }

      v12 = [v10 series];
      v13 = [v12 sortName];
    }

LABEL_33:
    v7 = v13;

    if (v7)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (a2 != 318767105)
  {
    v5 = *(this + 16);
    if (!v5)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v14 = *(this + 16);
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_26:
  v9 = [v14 name];
LABEL_27:
  v7 = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_34:
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), __p[0], __p[1]);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a3 + 16) = *__p;
    *(a3 + 32) = v17;
  }
}

void ML3ProtoSyncArtistImportItem::~ML3ProtoSyncArtistImportItem(id *this)
{
  ML3ProtoSyncArtistImportItem::~ML3ProtoSyncArtistImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);
}

id ML3ProtoSyncAlbumArtistDeleteImportItem::getDeduplicationPredicates(id *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((this[8] & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [this[10] libraryIdentifiers];
    v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v2)
    {
      goto LABEL_16;
    }

    v3 = *v21;
    while (1)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v6 = [v5 libraryName];
        v7 = [v5 libraryId];
        if (v6)
        {
          v8 = [this[9] libraryUID];
          v9 = [v6 isEqualToString:v8];

          if (v9)
          {
            v10 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist_pid" equalToInt64:v7];
            [v19 addObject:v10];
          }

          else
          {
            v15 = [this[9] syncLibraryID];
            v16 = [v6 isEqualToString:v15];

            if (!v16)
            {
              goto LABEL_14;
            }

            v10 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v7];
            [v19 addObject:v10];
          }
        }

        else
        {
          v11 = MEMORY[0x277CBEA60];
          v10 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v7];
          v12 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v7];
          v13 = [v11 arrayWithObjects:{v10, v12, 0}];
          v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
          [v19 addObject:v14];
        }

LABEL_14:
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v2)
      {
LABEL_16:

        break;
      }
    }
  }

  return v19;
}

uint64_t ML3ProtoSyncAlbumArtistDeleteImportItem::getDescription(ML3ProtoSyncAlbumArtistDeleteImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "<ML3ProtoSyncAlbumArtistDeleteImportItem ", 41);
  *(&v4 + *(v4 - 24) + 8) = *(&v4 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v4, this);
  v9 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v9, 1);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v8);
}

void ML3ProtoSyncAlbumArtistDeleteImportItem::~ML3ProtoSyncAlbumArtistDeleteImportItem(id *this)
{
  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ProtoSyncLibraryPinImportItem::getDescription(ML3ProtoSyncLibraryPinImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  (*(*this + 24))(&v27[24], this, 419430401);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v27[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v29 = __p;
  }

  (*(*this + 24))(&v27[24], this, 419430405);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *&v27[24] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v27 = __p;
  }

  v2 = (*(*this + 32))(this, 419430403);
  v3 = (*(*this + 32))(this, 419430402);
  v4 = (*(*this + 32))(this, 419430404);
  if ((v2 - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_22D5C80F0[v2 - 1];
  }

  if (ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken != -1)
  {
    dispatch_once(&ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::onceToken, &__block_literal_global_5058);
  }

  v6 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{v5, *v27, *&v27[16]}];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_28408B690;
  }

  v10 = v9;

  if (ML3LibraryPinDefaultActionDescription(long long)::onceToken != -1)
  {
    dispatch_once(&ML3LibraryPinDefaultActionDescription(long long)::onceToken, &__block_literal_global_276);
  }

  v11 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_28408B690;
  }

  v15 = v14;

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "<ML3ProtoSyncLibraryPinImportItem ", 34);
  *(&v30 + *(v30 - 24) + 8) = *(&v30 + *(v30 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = MEMORY[0x2318CD100](&v30, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " cloudLibraryID=", 16);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v29;
  }

  else
  {
    v17 = v29.__r_.__value_.__r.__words[0];
  }

  v18 = strlen(v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " sagaID=", 8);
  v19 = MEMORY[0x2318CD140](v16, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " entityType=", 12);
  v20 = [(__CFString *)v10 UTF8String];
  v21 = strlen(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " defaultAction=", 15);
  v22 = [(__CFString *)v15 UTF8String];
  v23 = strlen(v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " pinnedPositionUUID=", 20);
  if (v27[23] >= 0)
  {
    v24 = v27;
  }

  else
  {
    v24 = *v27;
  }

  v25 = strlen(v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v24, v25);
  v27[24] = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v27[24], 1);
  std::stringbuf::str();

  if ((v27[23] & 0x80000000) != 0)
  {
    operator delete(*v27);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v34);
}

void sub_22D42F2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ostringstream::~ostringstream(&a29);
  _Unwind_Resume(a1);
}

void ___ZL37ML3LibraryPinDefaultActionDescriptionx_block_invoke_5068()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840C8C78;
  v2[1] = &unk_2840C8C90;
  v3[0] = @"Play";
  v3[1] = @"Drillin";
  v2[2] = &unk_2840C8CA8;
  v3[2] = @"Shuffle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
  ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription = v0;
}

void ___ZL37ML3LibraryPinnedEntityTypeDescription13ML3EntityType_block_invoke_5075()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840C8C30;
  v2[1] = &unk_2840C8C48;
  v3[0] = @"Track";
  v3[1] = @"Album";
  v2[2] = &unk_2840C8C60;
  v2[3] = &unk_2840C8C78;
  v3[2] = @"Artist";
  v3[3] = @"Playlist";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
  ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription = v0;
}

uint64_t ML3ProtoSyncLibraryPinImportItem::getIntegerValue(id *this, int a2)
{
  if (a2 > 419430403)
  {
    if (a2 == 419430404)
    {
      if (![this[11] hasDefaultAction])
      {
        return 0;
      }

      v7 = this[11];

      return [v7 defaultAction];
    }

    else
    {
      if (a2 != 419430406 || ![this[11] hasPosition])
      {
        return 0;
      }

      v5 = this[11];

      return [v5 position];
    }
  }

  else
  {
    if (a2 != 419430402)
    {
      if (a2 == 419430403 && [this[11] hasEntityType])
      {
        v3 = this[11];

        return [v3 entityType];
      }

      return 0;
    }

    if (![this[11] hasCloudItemID])
    {
      return 0;
    }

    v6 = this[11];

    return [v6 cloudItemID];
  }
}

void ML3ProtoSyncLibraryPinImportItem::getStringValue(id *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 419430405)
  {
    if ([this[11] hasPositionUUID])
    {
      v5 = [this[11] positionUUID];
      std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
      *a3 = &unk_28408AC60;
      *(a3 + 8) = 1;
      if (SHIBYTE(v7) < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    return;
  }

  if (a2 != 419430401 || ![this[11] hasCloudLibraryID])
  {
    goto LABEL_9;
  }

  v5 = [this[11] cloudLibraryID];
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (SHIBYTE(v7) < 0)
  {
LABEL_10:
    std::string::__init_copy_ctor_external((a3 + 16), __p[0], __p[1]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_12;
  }

LABEL_8:
  *(a3 + 16) = *__p;
  *(a3 + 32) = v7;
LABEL_12:
}

void sub_22D42F7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ML3ProtoSyncLibraryPinImportItem::isValid(ML3ProtoSyncLibraryPinImportItem *this)
{
  v2 = (*(*this + 32))(this, 419430403);
  v3 = 0;
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      (*(*this + 24))(v6, this, 419430401);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_11:
        std::string::__init_copy_ctor_external(&v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v6[0] = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v2 != 7)
      {
        return v3;
      }

      (*(*this + 24))(v6, this, 419430401);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_11;
      }
    }

    v8 = __p;
LABEL_13:
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v8.__r_.__value_.__l.__size_ != 0;
      operator delete(v8.__r_.__value_.__l.__data_);
      return v3;
    }

    v4 = SHIBYTE(v8.__r_.__value_.__r.__words[2]) == 0;
    return !v4;
  }

  if (v2 == 1 || v2 == 2)
  {
    v4 = (*(*this + 32))(this, 419430402) == 0;
    return !v4;
  }

  return v3;
}

void sub_22D42F9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3ProtoSyncLibraryPinImportItem::~ML3ProtoSyncLibraryPinImportItem(id *this)
{
  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);
}

void ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(ML3ProtoSyncImportItem *this, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  *(this + 8) = 256;
  *(this + 18) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *this = &unk_284084FC0;
  *(this + 1) = 0;
  *(this + 64) = a4;
  *(this + 9) = v7;
  *(this + 10) = v8;
}

void ML3ProtoSyncTrackImportItem::ML3ProtoSyncTrackImportItem(ML3ProtoSyncTrackImportItem *this, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, MIPMediaItem *a4, char a5)
{
  v9 = a4;
  ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(this, a2, a3, a5);
  *this = &unk_2840850A8;
  v10 = v9;
  *(this + 11) = v10;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v11 = [(MIPMediaItem *)v10 song];
  v12 = *(this + 12);
  *(this + 12) = v11;

  v13 = [*(this + 11) movie];
  v14 = *(this + 13);
  *(this + 13) = v13;

  v15 = [*(this + 11) tvShow];
  v16 = *(this + 14);
  *(this + 14) = v15;

  v17 = [*(this + 11) podcast];
  v18 = *(this + 15);
  *(this + 15) = v17;

  v19 = [*(this + 11) audiobook];
  v20 = *(this + 16);
  *(this + 16) = v19;

  v21 = *(this + 12);
  if (v21 || (v21 = *(this + 16)) != 0)
  {
    v21 = [v21 album];
  }

  v22 = *(this + 17);
  *(this + 17) = v21;

  v23 = *(this + 12);
  if (v23 || (v23 = *(this + 13)) != 0 || (v23 = *(this + 14)) != 0 || (v23 = *(this + 15)) != 0 || (v23 = *(this + 16)) != 0)
  {
    v23 = [v23 artist];
  }

  v24 = *(this + 18);
  *(this + 18) = v23;

  v25 = *(this + 12);
  if (v25 || (v25 = *(this + 16)) != 0)
  {
    v25 = [v25 composer];
  }

  v26 = *(this + 19);
  *(this + 19) = v25;

  v27 = *(this + 12);
  if (v27 || (v27 = *(this + 16)) != 0)
  {
    v27 = [v27 playbackInfo];
  }

  v28 = *(this + 21);
  *(this + 21) = v27;

  v29 = *(this + 20);
  *(this + 20) = 0;

  v30 = *(this + 12);
  if (v30 || (v30 = *(this + 16)) != 0 || (v30 = *(this + 13)) != 0 || (v30 = *(this + 14)) != 0)
  {
    v31 = [v30 genre];
    v32 = *(this + 20);
    *(this + 20) = v31;
  }
}

void sub_22D42FD4C(_Unwind_Exception *a1)
{
  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(v1);

  _Unwind_Resume(a1);
}

void ML3ProtoSyncContainerImportItem::ML3ProtoSyncContainerImportItem(ML3ProtoSyncContainerImportItem *this, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, MIPPlaylist *a4, char a5)
{
  v9 = a4;
  ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(this, a2, a3, a5);
  *this = &unk_284085278;
  v10 = v9;
  *(this + 11) = v10;
  *(this + 12) = 0;
  *(this + 1) = [*(this + 9) syncIdFromMultiverseId:*(this + 10)];
  v11 = [*(this + 11) smartPlaylistInfo];
  v12 = *(this + 12);
  *(this + 12) = v11;
}

void sub_22D42FE84(_Unwind_Exception *a1)
{
  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(v1);

  _Unwind_Resume(a1);
}

void ML3ProtoSyncAlbumImportItem::ML3ProtoSyncAlbumImportItem(ML3ProtoSyncAlbumImportItem *this, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, MIPMediaItem *a4, char a5)
{
  v9 = a4;
  ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(this, a2, a3, a5);
  *this = &unk_284085448;
  v10 = v9;
  *(this + 6) = 0u;
  v11 = (this + 96);
  *(this + 11) = v10;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  v12 = [(MIPMediaItem *)v10 song];
  v13 = *(this + 12);
  *(this + 12) = v12;

  v14 = [*(this + 11) tvShow];
  v15 = *(this + 13);
  *(this + 13) = v14;

  v16 = [*(this + 11) podcast];
  v17 = *(this + 14);
  *(this + 14) = v16;

  v18 = *(this + 12);
  if (v18)
  {
    v19 = [v18 album];
    v20 = *(this + 15);
    *(this + 15) = v19;
  }

  else
  {
    v20 = [*(this + 11) audiobook];
    if (v20)
    {
      v21 = [*(this + 11) audiobook];
      v22 = [v21 album];
      v23 = *(this + 15);
      *(this + 15) = v22;
    }

    else
    {
      v21 = *(this + 15);
      *(this + 15) = 0;
    }
  }

  if (*v11)
  {
    v24 = [*v11 artist];
    v25 = *(this + 16);
    *(this + 16) = v24;
  }

  else
  {
    v25 = [*(this + 11) movie];
    if (v25)
    {
      v26 = [*(this + 11) movie];
      v27 = [v26 artist];
      v28 = *(this + 16);
      *(this + 16) = v27;
    }

    else
    {
      v29 = *(this + 13);
      if (v29 || (v29 = *(this + 14)) != 0)
      {
        v30 = [v29 artist];
        v26 = *(this + 16);
        *(this + 16) = v30;
      }

      else
      {
        v26 = [*(this + 11) audiobook];
        if (v26)
        {
          v31 = [*(this + 11) audiobook];
          v32 = [v31 artist];
          v33 = *(this + 16);
          *(this + 16) = v32;
        }

        else
        {
          v31 = *(this + 16);
          *(this + 16) = 0;
        }
      }
    }
  }
}

void sub_22D4300CC(_Unwind_Exception *a1)
{
  v6 = v4;

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(v1);
  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncArtistImportItem::ML3ProtoSyncArtistImportItem(uint64_t a1, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, void *a4, uint64_t a5, char a6)
{
  v11 = a4;
  ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(a1, a2, a3, a6);
  *a1 = &unk_284085530;
  v12 = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = a5;
  v13 = [v12 song];
  v14 = *(a1 + 96);
  *(a1 + 96) = v13;

  v15 = [*(a1 + 88) tvShow];
  v16 = *(a1 + 104);
  *(a1 + 104) = v15;

  v17 = [*(a1 + 88) podcast];
  v18 = *(a1 + 112);
  *(a1 + 112) = v17;

  v19 = *(a1 + 96);
  if (v19)
  {
    v20 = [v19 album];
    v21 = *(a1 + 120);
    *(a1 + 120) = v20;
  }

  else
  {
    v21 = [*(a1 + 88) audiobook];
    if (v21)
    {
      v22 = [*(a1 + 88) audiobook];
      v23 = [v22 album];
      v24 = *(a1 + 120);
      *(a1 + 120) = v23;
    }

    else
    {
      v22 = *(a1 + 120);
      *(a1 + 120) = 0;
    }
  }

  v25 = [*(a1 + 120) artist];
  v26 = *(a1 + 136);
  *(a1 + 136) = v25;

  v27 = *(a1 + 96);
  if (v27)
  {
    v28 = [v27 artist];
    v29 = *(a1 + 128);
    *(a1 + 128) = v28;
  }

  else
  {
    v29 = [*(a1 + 88) movie];
    if (v29)
    {
      v30 = [*(a1 + 88) movie];
      v31 = [v30 artist];
      v32 = *(a1 + 128);
      *(a1 + 128) = v31;
    }

    else
    {
      v33 = *(a1 + 104);
      if (v33 || (v33 = *(a1 + 112)) != 0)
      {
        v34 = [v33 artist];
        v30 = *(a1 + 128);
        *(a1 + 128) = v34;
      }

      else
      {
        v30 = [*(a1 + 88) audiobook];
        if (v30)
        {
          v36 = [*(a1 + 88) audiobook];
          v37 = [v36 artist];
          v38 = *(a1 + 128);
          *(a1 + 128) = v37;
        }

        else
        {
          v36 = *(a1 + 128);
          *(a1 + 128) = 0;
        }
      }
    }
  }

  return a1;
}

void sub_22D430394(_Unwind_Exception *a1)
{
  v6 = v4;

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(v1);
  _Unwind_Resume(a1);
}

void ML3ProtoSyncArtistImportItem::ML3ProtoSyncArtistImportItem(ML3ProtoSyncArtistImportItem *this, ML3MusicLibrary *a2, MIPMultiverseIdentifier *a3, MIPArtist *a4, char a5)
{
  v9 = a4;
  ML3ProtoSyncImportItem::ML3ProtoSyncImportItem(this, a2, a3, a5);
  *this = &unk_284085530;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = v9;
  *(this + 18) = 7;
}

void sub_22D432408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D432AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v20 - 192);

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v20 - 144);
  _Unwind_Resume(a1);
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_104c75_ZTSNSt3__113unordered_setIiNS_4hashIiEENS_8equal_toIiEENS_9allocatorIiEEEE152c75_ZTSNSt3__113unordered_setIiNS_4hashIiEENS_8equal_toIiEENS_9allocatorIiEEEE(uint64_t a1)
{
  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 152);

  return std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 104);
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_22D433E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22D434158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22D434724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D436D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5398(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ML3ImportItem::logPropertiesToStream(uint64_t a1, int a2, void *a3)
{
  Count = ML3TrackRulesGetCount(a2);
  if (Count)
  {
    v7 = Count;
    v8 = 0;
    v9 = a3 + 1;
    do
    {
      v10 = *(ML3TrackRulesGetRule(a2, v8) + 48);
      if ((*(*a1 + 56))(a1, v10))
      {
        v11 = ML3TrackRulesGetPropertyName(a2, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "    ", 4);
        v12 = [v11 UTF8String];
        v13 = strlen(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v12, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, " : ", 3);
        v14 = *(ML3TrackRulesGetRule(a2, v8) + 40);
        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "<null>", 6);
          }

          else if (v14 == 2)
          {
            *(v9 + *(*a3 - 24)) = *(v9 + *(*a3 - 24)) & 0xFFFFFFB5 | 2;
            v17 = (*(*a1 + 32))(a1, v10);
            MEMORY[0x2318CD140](a3, v17);
          }
        }

        else
        {
          switch(v14)
          {
            case 3:
              *(v9 + *(*a3 - 24)) = *(v9 + *(*a3 - 24)) & 0xFFFFFFB5 | 2;
              (*(*a1 + 40))(a1, v10);
              std::ostream::operator<<();
              break;
            case 4:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "'", 1);
              (*(*a1 + 24))(&v20, a1, v10);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              }

              else
              {
                v23 = __p;
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = &v23;
              }

              else
              {
                v18 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v18, size);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "'", 1);
              if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v23.__r_.__value_.__l.__data_);
              }

              v20 = &unk_28408AC60;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              break;
            case 5:
              (*(*a1 + 48))(&v20, a1, v10);
              if (v20)
              {
                v15 = v20[1];
                *(v9 + *(*a3 - 24)) = *(v9 + *(*a3 - 24)) & 0xFFFFFFB5 | 2;
                v16 = MEMORY[0x2318CD130](a3, v15);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " bytes : ", 9);
              }

              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }

              break;
          }
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "\n", 1);
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_22D437564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportItem::propertyKeyForSortPropertyKey(ML3ImportItem *this, int a2)
{
  if (a2 == 167772171)
  {
    v2 = 167772165;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 167772170)
  {
    v2 = 167772164;
  }

  if (a2 == 167772169)
  {
    v3 = 167772163;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 167772168)
  {
    v4 = 167772162;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 167772167)
  {
    v5 = 167772161;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == 33554434)
  {
    v6 = 33554433;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 167772168)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t ML3ImportItem::sortPropertyKeyForPropertyKey(ML3ImportItem *this, int a2)
{
  if (a2 == 167772165)
  {
    v2 = 167772171;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 167772164)
  {
    v2 = 167772170;
  }

  if (a2 == 167772163)
  {
    v3 = 167772169;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 167772162)
  {
    v4 = 167772168;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 167772161)
  {
    v5 = 167772167;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == 33554433)
  {
    v6 = 33554434;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 167772162)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

void ML3ImportItem::getEffectiveSortAlbum(ML3ImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 167772170);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D437990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportItem::getEffectiveSortSeriesName(ML3ImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 167772168);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D437CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportItem::getEffectiveSortArtist(ML3ImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 167772167);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D438018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportItem::getEffectiveSortAlbumArtist(ML3ImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  ML3ImportItem::getSanitizedStringValue(&v20, this, 167772163);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 167772161);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v21;
  }

  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v20, this, 167772169);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 167772167);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v21;
  }

  v7 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v18;
  }

  v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v16.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    if (v6)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  ML3CPPSortableString(&v20, &v22);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
  *&v16.__r_.__value_.__l.__data_ = v20;
  v9 = v21.__r_.__value_.__s.__data_[7];
  size = *(&v20 + 1);
  if (!v6)
  {
LABEL_28:
    if (v9 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
      v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v22.__r_.__value_.__l.__size_;
      }

      if (!v12)
      {
        (*(*this + 168))(&v20, this, 0);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = v21;
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        *&v20 = &unk_28408AC60;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        size = v16.__r_.__value_.__l.__size_;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v16.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v19.__r_.__value_.__l.__size_;
          }

          if (!v14)
          {
            (*(*this + 176))(&v20, this, 0);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
            }

            else
            {
              v15 = v21;
            }

            if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v16 = v15;
            *&v20 = &unk_28408AC60;
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
            size = v16.__r_.__value_.__l.__size_;
          }
        }
      }
    }
  }

LABEL_56:
  if (v9 >= 0)
  {
    size = v9;
  }

  if (size && a2)
  {
    ML3CPPSanitizeString(&v20, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
    *&v16.__r_.__value_.__l.__data_ = v20;
    v9 = v21.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v9 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
LABEL_69:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_22D438628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v40 - 136) = &unk_28408AC60;
  if (*(v40 - 97) < 0)
  {
    operator delete(*(v40 - 120));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v39 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  _Unwind_Resume(exception_object);
}

std::string *ML3ImportItem::getSanitizedStringValue(ML3ImportItem *this, void *a2, uint64_t a3)
{
  v3 = a3;
  *this = &unk_28408AC60;
  *(this + 8) = 0;
  *(this + 2) = 0;
  v6 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  v7 = a3;
  v8 = a2[4];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a3;
    if (v8 <= a3)
    {
      v10 = a3 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & a3;
  }

  v11 = *(a2[3] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    (*(*a2 + 24))(&__str, a2, a3);
    *(this + 8) = __str.__r_.__value_.__s.__data_[8];
    std::string::operator=(v6, &__str.__r_.__value_.__r.__words[2]);
    __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (v25 < 0)
    {
      operator delete(__str.__r_.__value_.__r.__words[2]);
    }

    if (*(this + 8) == 1)
    {
      if (*(this + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 2), *(this + 3));
      }

      else
      {
        __p = *v6;
      }

      ML3CPPSanitizeString(&__str, &__p);
      std::string::operator=(v6, &__str);
      *(this + 8) = 1;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = a2[4];
    if (!*&v14)
    {
      goto LABEL_44;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v7;
      if (*&v14 <= v7)
      {
        v16 = v3 % v14.i32[0];
      }
    }

    else
    {
      v16 = (v14.i32[0] - 1) & v7;
    }

    v17 = *(a2[3] + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_44:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v7)
      {
        if (*(v18 + 4) == v3)
        {
          *(v18 + 32) = *(this + 8);
          v22 = (v18 + 5);
          v21 = v6;
          return std::string::operator=(v22, v21);
        }
      }

      else
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_44;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == a3)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (*(v12 + 4) != a3)
  {
    goto LABEL_16;
  }

  *(this + 8) = *(v12 + 32);
  v21 = (v12 + 5);
  v22 = (this + 16);
  return std::string::operator=(v22, v21);
}

void sub_22D438DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  *v25 = v26;
  if (*(v25 + 39) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    *(__p + 3) = &unk_28408AC60;
    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ML3ImportItem::getEffectiveAlbumArtist(ML3ImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  ML3ImportItem::getSanitizedStringValue(&v17, this, 167772163);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 167772161);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 167772162);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v18;
  }

  v6 = (*(*this + 32))(this, 16777246);
  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = *&v19.__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[0] = v19.__r_.__value_.__r.__words[2];
  }

  if (!v6)
  {
    v8 = v18.__r_.__value_.__s.__data_[7];
    v9 = v18.__r_.__value_.__s.__data_[7];
    v10 = *(&v17 + 1);
    if (v18.__r_.__value_.__s.__data_[7] >= 0)
    {
      v11 = v18.__r_.__value_.__s.__data_[7];
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    if (!v11)
    {
      std::string::operator=(&v17, &__str);
      v8 = v18.__r_.__value_.__s.__data_[7];
      v10 = *(&v17 + 1);
      v9 = v18.__r_.__value_.__s.__data_[7];
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      std::string::operator=(&v17, &v15);
    }
  }

  v12 = v18.__r_.__value_.__s.__data_[7];
  v13 = v18.__r_.__value_.__s.__data_[7];
  if (v18.__r_.__value_.__s.__data_[7] < 0)
  {
    v12 = *(&v17 + 1);
  }

  if (v12 && a2)
  {
    ML3CPPSanitizeString(&v14, &v17);
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }

    v18.__r_.__value_.__r.__words[0] = v14.__r_.__value_.__r.__words[2];
    v17 = *&v14.__r_.__value_.__l.__data_;
    v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v13 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v17, *(&v17 + 1));
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    *(a3 + 16) = v17;
    *(a3 + 32) = v18.__r_.__value_.__r.__words[0];
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_43:
    operator delete(v19.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (v7 < 0)
  {
    goto LABEL_43;
  }
}

void sub_22D439218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v34 - 57) < 0)
  {
    operator delete(*(v34 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportItem::getSortStringValue(ML3ImportItem *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = &unk_28408AC60;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = (a4 + 16);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v9 = (*(*this + 192))(this);
  if (v9)
  {
    if (a3)
    {
      ML3ImportItem::getSanitizedStringValue(&__str, this, v9);
    }

    else
    {
      (*(*this + 24))(&__str, this, v9);
    }

    *(a4 + 8) = __str.__r_.__value_.__s.__data_[8];
    std::string::operator=(v8, &__str.__r_.__value_.__r.__words[2]);
    __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (v14 < 0)
    {
      operator delete(__str.__r_.__value_.__r.__words[2]);
    }
  }

  if (*(a4 + 8) == 1)
  {
    if (*(a4 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(a4 + 16), *(a4 + 24));
    }

    else
    {
      __str = *v8;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (size)
      {
        return;
      }
    }

    else if (size)
    {
      return;
    }
  }

  ML3ImportItem::getSanitizedStringValue(&__str, this, a2);
  *(a4 + 8) = __str.__r_.__value_.__s.__data_[8];
  std::string::operator=(v8, &__str.__r_.__value_.__r.__words[2]);
  __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
  if (v14 < 0)
  {
    operator delete(__str.__r_.__value_.__r.__words[2]);
  }

  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    __str = *v8;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = __str.__r_.__value_.__l.__size_;
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v11)
    {
      return;
    }
  }

  else if (!*(&__str.__r_.__value_.__s + 23))
  {
    return;
  }

  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    __p = *v8;
  }

  ML3CPPStripInsignificantCharacters(&__str, &__p);
  std::string::operator=(v8, &__str);
  *(a4 + 8) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22D4395C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *v23 = v24;
  if (*(v23 + 39) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(exception_object);
}

void ML3ImportItem::getSourceIdentifiers(ML3ImportItem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t ML3ImportItem::getDetailedDescription(ML3ImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 88))(__p, this);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ":\n", 2);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = 1;
  do
  {
    (*(*this + 208))(this, v4, &v8);
    v4 = (v4 + 1);
  }

  while (v4 != 27);
  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v12);
}

uint64_t ML3ImportItem::getDescription(ML3ImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "<ML3ImportItem ", 15);
  *(&v4 + *(v4 - 24) + 8) = *(&v4 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v4, this);
  v9 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v9, 1);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v8);
}

void ML3ImportItem::getImportItemArrayValue(ML3ImportItem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void ML3ImportItem::getPlaylistTrackPersonIdentifiers(ML3ImportItem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void ML3ImportItem::getStringValue(ML3ImportItem *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28408AC60;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
}

void ML3ImportItem::~ML3ImportItem(ML3ImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 3) = &unk_28408AC60;
      if (v2[63] < 0)
      {
        operator delete(*(v2 + 5));
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

uint64_t MIPPlaybackInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v118 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v118 & 0x7F) << v5;
        if ((v118 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 132) |= 0x200u;
          while (1)
          {
            v118 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v118 & 0x7F) << v13;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_207:
              v115 = 76;
              goto LABEL_216;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_207;
        case 2u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 132) |= 0x800u;
          while (1)
          {
            v118 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v118 & 0x7F) << v77;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_211;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v79;
          }

LABEL_211:
          v115 = 84;
          goto LABEL_216;
        case 3u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 132) |= 0x400u;
          while (1)
          {
            v118 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v118 & 0x7F) << v53;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_191;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v55;
          }

LABEL_191:
          v115 = 80;
          goto LABEL_216;
        case 4u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 132) |= 0x1000u;
          while (1)
          {
            v118 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v118 & 0x7F) << v65;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v67;
          }

LABEL_199:
          v115 = 88;
          goto LABEL_216;
        case 5u:
          v39 = PBReaderReadString();
          v40 = 96;
          goto LABEL_138;
        case 6u:
          v39 = PBReaderReadString();
          v40 = 104;
          goto LABEL_138;
        case 7u:
          v39 = PBReaderReadString();
          v40 = 112;
LABEL_138:
          v95 = *(a1 + v40);
          *(a1 + v40) = v39;

          goto LABEL_234;
        case 8u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 132) |= 8u;
          while (1)
          {
            v118 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v118 & 0x7F) << v71;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v73;
          }

LABEL_203:
          v116 = 32;
          goto LABEL_233;
        case 9u:
          v108 = 0;
          v109 = 0;
          v110 = 0;
          *(a1 + 132) |= 0x10u;
          while (1)
          {
            v118 = 0;
            v111 = [a2 position] + 1;
            if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
            {
              v113 = [a2 data];
              [v113 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v110 |= (v118 & 0x7F) << v108;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v108 += 7;
            v11 = v109++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_232;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v110;
          }

LABEL_232:
          v116 = 40;
          goto LABEL_233;
        case 0xAu:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 132) |= 2u;
          while (1)
          {
            v118 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v118 & 0x7F) << v47;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v49;
          }

LABEL_187:
          v116 = 16;
          goto LABEL_233;
        case 0xBu:
          v102 = 0;
          v103 = 0;
          v104 = 0;
          *(a1 + 132) |= 4u;
          while (1)
          {
            v118 = 0;
            v105 = [a2 position] + 1;
            if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
            {
              v107 = [a2 data];
              [v107 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v104 |= (v118 & 0x7F) << v102;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v102 += 7;
            v11 = v103++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_228;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v104;
          }

LABEL_228:
          v116 = 24;
          goto LABEL_233;
        case 0xCu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 132) |= 0x4000u;
          while (1)
          {
            v118 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v118 & 0x7F) << v33;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v35;
          }

LABEL_179:
          v115 = 124;
          goto LABEL_216;
        case 0xDu:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 132) |= 0x8000u;
          while (1)
          {
            v118 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v118 & 0x7F) << v41;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_183;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v43;
          }

LABEL_183:
          v115 = 128;
          goto LABEL_216;
        case 0xEu:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 132) |= 0x20u;
          while (1)
          {
            v118 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v118 & 0x7F) << v89;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_220;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v91;
          }

LABEL_220:
          v116 = 48;
          goto LABEL_233;
        case 0xFu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 132) |= 0x40u;
          while (1)
          {
            v118 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v118 & 0x7F) << v26;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_175:
          v116 = 56;
          goto LABEL_233;
        case 0x10u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 132) |= 0x80u;
          while (1)
          {
            v118 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v118 & 0x7F) << v59;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v61;
          }

LABEL_195:
          v116 = 64;
          goto LABEL_233;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 132) |= 0x100u;
          while (1)
          {
            v118 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v118 & 0x7F) << v20;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_171:
          v115 = 72;
          goto LABEL_216;
        case 0x12u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 132) |= 0x2000u;
          while (1)
          {
            v118 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v118 & 0x7F) << v83;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_215;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v85;
          }

LABEL_215:
          v115 = 120;
LABEL_216:
          *(a1 + v115) = v19;
          goto LABEL_234;
        case 0x13u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          *(a1 + 132) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_234;
      }

      while (1)
      {
        v118 = 0;
        v99 = [a2 position] + 1;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v98 |= (v118 & 0x7F) << v96;
        if ((v118 & 0x80) == 0)
        {
          break;
        }

        v96 += 7;
        v11 = v97++ >= 9;
        if (v11)
        {
          v32 = 0;
          goto LABEL_224;
        }
      }

      v32 = [a2 hasError] ? 0 : v98;
LABEL_224:
      v116 = 8;
LABEL_233:
      *(a1 + v116) = v32;
LABEL_234:
      v117 = [a2 position];
    }

    while (v117 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

atomic_uint *iPhoneSortKeyBuilderRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void iPhoneSortKeyBuilderRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    if (a1[1])
    {
      ucol_close();
    }

    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      if (a1[4] >= 1)
      {
        v4 = 0;
        v5 = 1;
        do
        {
          v6 = (a1[3] + 48 * v4);
          CFRelease(*v6);
          CFRelease(v6[1]);
          CFRelease(v6[3]);
          CFRelease(v6[2]);
          v4 = v5;
        }

        while (a1[4] > v5++);
        v3 = a1[3];
      }

      free(v3);
    }

    free(a1);
  }
}

CFIndex iPhoneSortKeyBuilderGetSectionFromiPhoneSortKey(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = *(a1 + 24) + 48 * *(a1 + 32);
  v7 = *(v6 - 8);
  result = CFArrayGetCount(*(v6 - 24)) + v7;
  if (a3 <= 0)
  {
    return (result + 1);
  }

  v9 = *a2;
  v10 = v9 >= 0x30;
  v11 = v9 - 48;
  if (v10 && v11 < *(a1 + 32))
  {
    v12 = *(a1 + 24) + 48 * v11;
    Bound = ucol_getBound();
    cf = CFDataCreateWithBytesNoCopy(0, a2 + 1, Bound, *MEMORY[0x277CBED00]);
    v36 = v12;
    v14 = *(v12 + 24);
    Count = CFArrayGetCount(v14);
    v16 = Count - 1;
    if (Count >= 1)
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        v19 = (v16 + v18) >> 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v19);
        Length = CFDataGetLength(ValueAtIndex);
        v22 = Length;
        if (Length >= Bound)
        {
          v23 = Bound;
        }

        else
        {
          v23 = Length;
        }

        BytePtr = CFDataGetBytePtr(ValueAtIndex);
        v25 = memcmp(BytePtr, a2 + 1, v23);
        v26 = v22 - Bound;
        if (v25)
        {
          v26 = v25;
        }

        if (v26 >= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 >> 31;
        }

        if (v27 == 1)
        {
          v16 = v19 - 1;
        }

        else
        {
          if (!v27)
          {
            goto LABEL_30;
          }

          v18 = v19 + 1;
          if (v19 + 1 < v17)
          {
            v28 = CFArrayGetValueAtIndex(v14, v19 + 1);
            v29 = CFDataGetLength(v28);
            v30 = v29;
            v31 = v29 >= Bound ? Bound : v29;
            v32 = CFDataGetBytePtr(v28);
            v33 = memcmp(v32, a2 + 1, v31);
            v34 = v30 - Bound;
            if (v33)
            {
              v34 = v33;
            }

            if (v34 > 0)
            {
              goto LABEL_30;
            }
          }
        }

        if (v18 > v16)
        {
          goto LABEL_30;
        }
      }
    }

    v19 = 195935983;
LABEL_30:
    CFRelease(cf);
    return *(v36 + 40) + v19;
  }

  return result;
}

uint64_t iPhoneSortKeyBuilderGetMaxSectionSortKeyLength(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 24) + 32);
  do
  {
    v6 = *v4;
    v4 += 6;
    v5 = v6;
    if (v6 > result)
    {
      result = v5;
    }

    --v1;
  }

  while (v1);
  return result;
}

CFIndex iPhoneSortKeyBuilderGetUnknownSectionIndex(uint64_t a1)
{
  v1 = *(a1 + 24) + 48 * *(a1 + 32);
  v2 = *(v1 - 8);
  return v2 + CFArrayGetCount(*(v1 - 24)) + 1;
}

__CFData *iPhoneSortKeyBuilderCopySectionSortKey(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 24) + 48 * a2 + 24), a3 - *(*(a1 + 24) + 48 * a2 + 40));
  v5 = *MEMORY[0x277CBECE8];
  Length = CFDataGetLength(ValueAtIndex);
  Mutable = CFDataCreateMutable(v5, Length + 1);
  bytes = v3 + 48;
  CFDataAppendBytes(Mutable, &bytes, 1);
  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  v9 = CFDataGetLength(ValueAtIndex);
  CFDataAppendBytes(Mutable, BytePtr, v9);
  return Mutable;
}

char *iPhoneSortKeyBuilderCreateFromUTF16String(uint64_t a1, const UniChar *a2, int a3, _DWORD *a4)
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = a3;
  v7 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x277CBECE8], a2, a3, *MEMORY[0x277CBED00]);
  v8 = v7;
  if (*(a1 + 16) || *(a1 + 40))
  {
    MutableCopy = CFStringCreateMutableCopy(v5, v6, v7);
    CFRelease(v8);
    if (*(a1 + 16))
    {
      v10 = 0;
      while (v10 < CFStringGetLength(MutableCopy))
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(MutableCopy, v10++);
        if (((CharacterAtIndex + 24656) >> 4) >= 0xAE5u)
        {
          Copy = CFStringCreateCopy(v5, MutableCopy);
          CFStringReplaceAll(MutableCopy, &stru_28408B690);
          v13 = *(a1 + 16);
          v59.length = CFStringGetLength(Copy);
          v59.location = 0;
          CFStringTokenizerSetString(v13, Copy, v59);
          v14 = *MEMORY[0x277CBF0E0];
          while (1)
          {
            Token = CFStringTokenizerAdvanceToNextToken(*(a1 + 16));
            if (!Token)
            {
              break;
            }

            v16 = Token;
            v17 = CFStringTokenizerCopyCurrentTokenAttribute(*(a1 + 16), 0x10000uLL);
            if (v17)
            {
              v18 = v17;
              CFStringAppend(MutableCopy, v17);
              if ((v16 & 0x20) != 0)
              {
                range.location = 0;
                range.length = 0;
                Length = CFStringGetLength(MutableCopy);
                v20 = Length - CFStringGetLength(v18);
                v21 = CFStringGetLength(v18);
                range.location = v20;
                range.length = v21;
                CFStringTransform(MutableCopy, &range, v14, 0);
              }

              CFRelease(v18);
            }
          }

          CFRelease(Copy);
          break;
        }
      }
    }

    if (*(a1 + 40))
    {
      v22 = CFStringGetLength(MutableCopy);
      range.location = 0;
      range.length = v22;
      CFStringTransform(MutableCopy, &range, *(a1 + 40), 0);
    }
  }

  else
  {
    MutableCopy = v7;
  }

  CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
  v24 = CFStringGetLength(MutableCopy);
  v25 = v24;
  v26 = CharactersPtr;
  if (!CharactersPtr)
  {
    v26 = malloc_type_malloc(2 * v24, 0x1000040BDFB0063uLL);
    v58.location = 0;
    v58.length = v25;
    CFStringGetCharacters(MutableCopy, v58, v26);
  }

  cf = MutableCopy;
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = v26[v27];
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v28);
      if (v28 != 32 && IsCharacterMember != 0)
      {
        break;
      }

      ++v27;
    }

    while ((v25 & 0x7FFFFFFF) != v27);
  }

  SortKey = ucol_getSortKey();
  v33 = SortKey + 1;
  v34 = MEMORY[0x2318CC510](v5, SortKey + 1, 1691115087, 0);
  ucol_getSortKey();
  if (*(a1 + 32) < 1)
  {
    v52 = 48;
  }

  else
  {
    v54 = CharactersPtr;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *(a1 + 24);
      v38 = *(v37 + v35);
      v39 = CFDataGetLength(v38);
      v40 = v39;
      if (v39 >= SortKey)
      {
        v41 = SortKey;
      }

      else
      {
        v41 = v39;
      }

      BytePtr = CFDataGetBytePtr(v38);
      v43 = memcmp(BytePtr, v34 + 1, v41);
      v44 = v40 - SortKey;
      if (v43)
      {
        v44 = v43;
      }

      if (v44 <= 0)
      {
        v45 = *(v37 + v35 + 8);
        v46 = CFDataGetLength(v45);
        v47 = v46;
        if (v46 >= SortKey)
        {
          v48 = SortKey;
        }

        else
        {
          v48 = v46;
        }

        v49 = CFDataGetBytePtr(v45);
        v50 = memcmp(v49, v34 + 1, v48);
        v51 = v47 - SortKey;
        if (v50)
        {
          v51 = v50;
        }

        if ((v51 & 0x80000000) == 0)
        {
          break;
        }
      }

      ++v36;
      v35 += 48;
    }

    while (v36 < *(a1 + 32));
    v52 = v36 + 48;
    CharactersPtr = v54;
    v33 = SortKey + 1;
  }

  *v34 = v52;
  *a4 = v33;
  if (!CharactersPtr)
  {
    free(v26);
  }

  CFRelease(cf);
  return v34;
}

void iPhoneSortKeyBuilderGroupingKey_xFunc(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_bytes16(*a3);
  v7 = sqlite3_value_text16(*a3);
  *v11 = 0;
  GroupingKeyFromCharacters = CreateGroupingKeyFromCharacters(v5[1], v7, v6 >> 1, v11);
  if (GroupingKeyFromCharacters)
  {
    v9 = v11[0];
    v10 = MEMORY[0x277D86138];

    sqlite3_result_blob(a1, GroupingKeyFromCharacters, v9, v10);
  }

  else
  {

    sqlite3_result_error(a1, "could not build grouping key", 1);
  }
}

void *CreateGroupingKeyFromCharacters(uint64_t a1, const UChar *a2, uint64_t a3, int64_t *a4)
{
  v5 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v7 = malloc_type_malloc(6 * a3 + 5, 0xA4E39D52uLL);
  v13 = 0;
  memset(&iter, 0, sizeof(iter));
  uiter_setString(&iter, a2, v5);
  SortKeyPart = ucol_nextSortKeyPart();
  v9 = memchr(v7, 1, SortKeyPart);
  v10 = v9 - v7;
  if (!v9)
  {
    v10 = 0;
  }

  *a4 = v10;
  return v7;
}

void iPhoneSortKeyBuilderSection_xFunc(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_blob(*a3);
  v7 = sqlite3_value_bytes(*a3);
  SectionFromiPhoneSortKey = iPhoneSortKeyBuilderGetSectionFromiPhoneSortKey(v5, v6, v7);

  sqlite3_result_int(a1, SectionFromiPhoneSortKey);
}

void iPhoneSortKeyBuilderMake_xFunc(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_text16(*a3);
  v7 = sqlite3_value_bytes16(*a3);
  v10 = 0;
  v8 = iPhoneSortKeyBuilderCreateFromUTF16String(v5, v6, v7 >> 1, &v10);
  if (v8)
  {
    v9 = v10;

    sqlite3_result_blob(a1, v8, v9, DeallocateSortKey);
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

uint64_t iPhoneSortKeyBuilderUninstallSqlite3(int a1, sqlite3 *db)
{
  sqlite3_create_function(db, "iPhoneSortKey", 1, 2052, 0, 0, 0, 0);
  sqlite3_create_function(db, "iPhoneSortSection", 1, 2053, 0, 0, 0, 0);
  sqlite3_create_function(db, "iPhoneGroupingKey", 1, 2052, 0, 0, 0, 0);
  return 0;
}

CFDataRef iPhoneSortKeyBuilderCopyVersionData(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *bytes = 0;
    ucol_getVersion();
    return CFDataCreate(*MEMORY[0x277CBECE8], bytes, 4);
  }

  return result;
}

__CFString *iPhoneSortKeyBuilderGetHeaderForSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 < 1)
  {
LABEL_7:
    v9 = *(a1 + 24) + 48 * v4;
    v10 = *(v9 - 8);
    if (v10 + CFArrayGetCount(*(v9 - 24)) + 1 == a2)
    {
      return @"UNKNOWN_SECTION_HEADER";
    }

    else
    {
      return @"NUMERIC_SECTION_HEADER";
    }
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 24) + v5;
    v8 = a2 - *(v7 + 40);
    if (v8 >= 0)
    {
      break;
    }

LABEL_6:
    ++v6;
    v5 += 48;
    if (v6 >= v4)
    {
      goto LABEL_7;
    }
  }

  if (v8 >= CFArrayGetCount(*(v7 + 16)))
  {
    v4 = *(a1 + 32);
    goto LABEL_6;
  }

  v12 = *(v7 + 16);

  return CFArrayGetValueAtIndex(v12, v8);
}

CFDataRef iPhoneSortKeyBuilderCopyGroupingKeyForString(uint64_t a1, CFStringRef theString)
{
  v4 = CFStringGetLength(theString);
  v5 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  v12.location = 0;
  v12.length = v4;
  CFStringGetCharacters(theString, v12, v5);
  length = 0;
  v6 = CreateGroupingKeyFromCharacters(*(a1 + 8), v5, v4, &length);
  free(v5);
  if (!v6)
  {
    return 0;
  }

  v7 = length;
  v8 = *MEMORY[0x277CBECF0];

  return CFDataCreateWithBytesNoCopy(0, v6, v7, v8);
}

void sub_22D43F99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ML3ValidationBuildDatabaseTables(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = +[ML3MusicLibrary allPragmaSQL];
  _ML3ValidationExecuteSQLArray(v1, v2);

  [v1 executeUpdate:@"VACUUM"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ML3ValidationBuildDatabaseTables_block_invoke;
  v6[3] = &unk_278760500;
  v8 = &v9;
  v3 = v1;
  v7 = v3;
  [v3 performTransactionWithBlock:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_22D440EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ML3ValidationExecuteSQLArray(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![v3 executeUpdate:{*(*(&v9 + 1) + 8 * v7), v9}])
        {
          v5 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v5 = 1;
  }

LABEL_11:

  return v5;
}

uint64_t ML3ValidationRunInitialInsertStatements(void *a1)
{
  v1 = a1;
  if ([v1 executeUpdate:{@"INSERT INTO base_location (base_location_id, path) VALUES (0, '')"}])
  {
    v2 = ML3LocalizationLanguageCanonicalIdentifier();
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key, value) VALUES ('OrderingLanguage', '%@')", v2];
    v4 = [v1 executeUpdate:v3];
    if ((v4 & 1) == 0)
    {
      v5 = os_log_create("com.apple.amp.medialibrary", "Validation");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "Failed to set ordering language with canonical identifier.", buf, 2u);
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_ERROR, "Failed to insert empty base location into table.", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t ML3ContainerAuthorImportItem::getIntegerValue(ML3ContainerAuthorImportItem *this, int a2)
{
  result = 0;
  if (a2 <= 251658242)
  {
    if (a2 == 251658241)
    {
      return *(this + 9);
    }

    else if (a2 == 251658242)
    {
      return *(this + 10);
    }
  }

  else
  {
    switch(a2)
    {
      case 251658243:
        return *(this + 11);
      case 251658245:
        return *(this + 96);
      case 251658246:
        return *(this + 13);
    }
  }

  return result;
}

void ML3ContainerAuthorImportItem::~ML3ContainerAuthorImportItem(ML3ContainerAuthorImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

id ML3TrackRulesIdentityPropertyForSource(uint64_t a1)
{
  if (ML3TrackRulesIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesIdentityPropertyForSource_onceToken, &__block_literal_global_6151);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3TrackRulesIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:27 description:{@"ML3TrackRulesIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3TrackRulesIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3TrackRulesIdentityPropertyForSource_block_invoke()
{
  v0 = ML3TrackRulesIdentityPropertyForSource_values[0];
  ML3TrackRulesIdentityPropertyForSource_values[0] = @"item_store.item_pid";

  objc_storeStrong(qword_27D9FD3E0, @"item_store.sync_id");
  objc_storeStrong(&qword_27D9FD3E0[1], @"item_store.store_saga_id");
  objc_storeStrong(&qword_27D9FD3E0[2], @"item_store.sync_id");
  objc_storeStrong(&qword_27D9FD3E0[3], @"item_store.purchase_history_id");
  objc_storeStrong(&qword_27D9FD3E0[4], @"item_store.store_item_id");

  objc_storeStrong(&qword_27D9FD3E0[5], @"item_store.subscription_store_item_id");
}

uint64_t ML3TrackRulesIdentityImportPropertyForSource(uint64_t a1)
{
  if (ML3TrackRulesIdentityImportPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesIdentityImportPropertyForSource_onceToken, &__block_literal_global_10);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLImportPropertyKey ML3TrackRulesIdentityImportPropertyForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:44 description:{@"ML3TrackRulesIdentityImportPropertyForSource called with invalid source=%d", a1}];
  }

  return *(&ML3TrackRulesIdentityImportPropertyForSource_values + a1);
}

double __ML3TrackRulesIdentityImportPropertyForSource_block_invoke()
{
  ML3TrackRulesIdentityImportPropertyForSource_values = xmmword_22D5C6A60;
  *&result = 100663302;
  qword_27D9FD430 = 100663302;
  dword_27D9FD438 = 100663337;
  return result;
}

uint64_t ML3TrackRulesMediaTypesForSource(uint64_t a1)
{
  if (ML3TrackRulesMediaTypesForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesMediaTypesForSource_onceToken, &__block_literal_global_15);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLMediaType ML3TrackRulesMediaTypesForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:61 description:{@"ML3TrackRulesMediaTypesForSource called with invalid source=%d", a1}];
  }

  return *(&ML3TrackRulesMediaTypesForSource_values + a1);
}

double __ML3TrackRulesMediaTypesForSource_block_invoke()
{
  ML3TrackRulesMediaTypesForSource_values = xmmword_22D5C6A70;
  result = 7.29111854e-304;
  qword_27D9FD770 = 0xFFFFFF00000E08;
  dword_27D9FD778 = 1032;
  return result;
}

id ML3ContainerRulesIdentityPropertyForSource(uint64_t a1)
{
  if (ML3ContainerRulesIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3ContainerRulesIdentityPropertyForSource_onceToken, &__block_literal_global_20);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3ContainerRulesIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:78 description:{@"ML3ContainerRulesIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3ContainerRulesIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3ContainerRulesIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3ContainerRulesIdentityPropertyForSource_values, @"container_pid");
  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[2], @"store_cloud_id");
  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[3], @"sync_id");
  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[4], @"container_pid");
  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[5], @"container_pid");

  objc_storeStrong(&ML3ContainerRulesIdentityPropertyForSource_values[6], @"cloud_global_id");
}

uint64_t ML3ContainerRulesIdentityImportPropertyForSource(uint64_t a1)
{
  if (ML3ContainerRulesIdentityImportPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3ContainerRulesIdentityImportPropertyForSource_onceToken, &__block_literal_global_25);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLImportPropertyKey ML3ContainerRulesIdentityImportPropertyForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:95 description:{@"ML3ContainerRulesIdentityImportPropertyForSource called with invalid source=%d", a1}];
  }

  return *(&ML3ContainerRulesIdentityImportPropertyForSource_values + a1);
}

double __ML3ContainerRulesIdentityImportPropertyForSource_block_invoke()
{
  result = 1.06560075e-255;
  ML3ContainerRulesIdentityImportPropertyForSource_values = xmmword_22D5C6A80;
  qword_27D9FD7E0 = 0;
  dword_27D9FD7E8 = 184549417;
  return result;
}

id ML3ArtistRulesIdentityPropertyForSource(uint64_t a1)
{
  if (ML3ArtistRulesIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3ArtistRulesIdentityPropertyForSource_onceToken, &__block_literal_global_30);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3ArtistRulesIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:112 description:{@"ML3ArtistRulesIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3ArtistRulesIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3ArtistRulesIdentityPropertyForSource_block_invoke()
{
  v0 = ML3ArtistRulesIdentityPropertyForSource_values;
  ML3ArtistRulesIdentityPropertyForSource_values = @"item_artist.item_artist_pid";

  objc_storeStrong(qword_27D9FD5B0, @"sync_id");
  objc_storeStrong(&qword_27D9FD5B0[1], @"store_id");
  objc_storeStrong(&qword_27D9FD5B0[2], @"sync_id");
  objc_storeStrong(&qword_27D9FD5B0[3], @"store_id");
  objc_storeStrong(&qword_27D9FD5B0[4], @"store_id");

  objc_storeStrong(&qword_27D9FD5B0[5], @"store_id");
}

uint64_t ML3ItemArtistRulesIdentityImportPropertyForSource(uint64_t a1)
{
  if (ML3ItemArtistRulesIdentityImportPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3ItemArtistRulesIdentityImportPropertyForSource_onceToken, &__block_literal_global_38);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLImportPropertyKey ML3ItemArtistRulesIdentityImportPropertyForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:133 description:{@"ML3ItemArtistRulesIdentityImportPropertyForSource called with invalid source=%d", a1}];
  }

  return *(&ML3ItemArtistRulesIdentityImportPropertyForSource_values + a1);
}

double __ML3ItemArtistRulesIdentityImportPropertyForSource_block_invoke()
{
  result = 3.62608615e-217;
  ML3ItemArtistRulesIdentityImportPropertyForSource_values = xmmword_22D5C6A90;
  qword_27D9FD460 = 0;
  dword_27D9FD468 = 0;
  return result;
}

id ML3AlbumArtistRulesIdentityPropertyForSource(uint64_t a1)
{
  if (ML3AlbumArtistRulesIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumArtistRulesIdentityPropertyForSource_onceToken, &__block_literal_global_43);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3AlbumArtistRulesIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:151 description:{@"ML3AlbumArtistRulesIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3AlbumArtistRulesIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3AlbumArtistRulesIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3AlbumArtistRulesIdentityPropertyForSource_values, @"album_artist_pid");
  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[2], @"cloud_universal_library_id");
  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[3], @"sync_id");
  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[4], @"store_id");
  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[5], @"store_id");

  objc_storeStrong(&ML3AlbumArtistRulesIdentityPropertyForSource_values[6], @"store_id");
}

uint64_t ML3AlbumArtistRulesIdentityImportPropertyForSource(uint64_t a1)
{
  if (ML3AlbumArtistRulesIdentityImportPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumArtistRulesIdentityImportPropertyForSource_onceToken, &__block_literal_global_48);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLImportPropertyKey ML3AlbumArtistRulesIdentityImportPropertyForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:169 description:{@"ML3AlbumArtistRulesIdentityImportPropertyForSource called with invalid source=%d", a1}];
  }

  return *(&ML3AlbumArtistRulesIdentityImportPropertyForSource_values + a1);
}

double __ML3AlbumArtistRulesIdentityImportPropertyForSource_block_invoke()
{
  result = 5.5329578e-222;
  ML3AlbumArtistRulesIdentityImportPropertyForSource_values = xmmword_22D5C6AA0;
  qword_27D9FD550 = 0;
  dword_27D9FD558 = 0;
  return result;
}

id ML3AlbumRulesIdentityPropertyForSource(uint64_t a1)
{
  if (ML3AlbumRulesIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumRulesIdentityPropertyForSource_onceToken, &__block_literal_global_53);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3AlbumRulesIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:187 description:{@"ML3AlbumRulesIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3AlbumRulesIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3AlbumRulesIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3AlbumRulesIdentityPropertyForSource_values, @"album_pid");
  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[2], @"cloud_library_id");
  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[3], @"sync_id");
  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[4], @"store_id");
  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[5], @"store_id");

  objc_storeStrong(&ML3AlbumRulesIdentityPropertyForSource_values[6], @"store_id");
}

uint64_t ML3AlbumRulesIdentityImportPropertyForSource(uint64_t a1)
{
  if (ML3AlbumRulesIdentityImportPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumRulesIdentityImportPropertyForSource_onceToken, &__block_literal_global_58);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MLImportPropertyKey ML3AlbumRulesIdentityImportPropertyForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:204 description:{@"ML3AlbumRulesIdentityImportPropertyForSource called with invalid source=%d", a1}];
  }

  return *(&ML3AlbumRulesIdentityImportPropertyForSource_values + a1);
}

int32x2_t __ML3AlbumRulesIdentityImportPropertyForSource_block_invoke()
{
  ML3AlbumRulesIdentityImportPropertyForSource_values = xmmword_22D5C6AB0;
  result = vdup_n_s32(0x11000018u);
  qword_27D9FD4E0 = result;
  dword_27D9FD4E8 = 285212696;
  return result;
}

id ML3TrackRulesRemovalSourceIdentityPropertyForSource(uint64_t a1)
{
  if (ML3TrackRulesRemovalSourceIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesRemovalSourceIdentityPropertyForSource_onceToken, &__block_literal_global_63);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3TrackRulesRemovalSourceIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:225 description:{@"ML3TrackRulesRemovalSourceIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3TrackRulesRemovalSourceIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3TrackRulesRemovalSourceIdentityPropertyForSource_block_invoke()
{
  v0 = ML3TrackRulesRemovalSourceIdentityPropertyForSource_values[0];
  ML3TrackRulesRemovalSourceIdentityPropertyForSource_values[0] = @"item_store.item_pid";

  objc_storeStrong(algn_27D9FD350, @"item_store.sync_id");
  objc_storeStrong(&algn_27D9FD350[8], @"item_store.store_saga_id");
  objc_storeStrong(&algn_27D9FD350[16], @"item_store.sync_id");
  objc_storeStrong(&algn_27D9FD350[24], @"item_store.purchase_history_id");
  objc_storeStrong(&algn_27D9FD350[32], @"item_store.is_ota_purchased");

  objc_storeStrong(&algn_27D9FD350[40], @"item_store.is_subscription");
}

id ML3ContainerRulesRemovalSourceIdentityPropertyForSource(uint64_t a1)
{
  if (ML3ContainerRulesRemovalSourceIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3ContainerRulesRemovalSourceIdentityPropertyForSource_onceToken, &__block_literal_global_68);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3ContainerRulesRemovalSourceIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:242 description:{@"ML3ContainerRulesRemovalSourceIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3ContainerRulesRemovalSourceIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3ContainerRulesRemovalSourceIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3ContainerRulesRemovalSourceIdentityPropertyForSource_values, @"container_pid");
  objc_storeStrong(&ML3ContainerRulesRemovalSourceIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3ContainerRulesRemovalSourceIdentityPropertyForSource_values[2], @"store_cloud_id");
  objc_storeStrong(&ML3ContainerRulesRemovalSourceIdentityPropertyForSource_values[3], @"sync_id");
  v0 = qword_27D9FD4A8;
  qword_27D9FD4A8 = 0;

  v1 = qword_27D9FD4B0;
  qword_27D9FD4B0 = 0;

  objc_storeStrong(algn_27D9FD4B8, @"cloud_global_id");
}

id ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource(uint64_t a1)
{
  if (ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_onceToken, &__block_literal_global_73);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:260 description:{@"ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_values, @"album_artist_pid");
  objc_storeStrong(&ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_values[2], @"cloud_universal_library_id");
  objc_storeStrong(&ML3AlbumArtistRulesRemovalSourceIdentityPropertyForSource_values[3], @"sync_id");
  v0 = qword_27D9FD818;
  qword_27D9FD818 = 0;

  v1 = qword_27D9FD820;
  qword_27D9FD820 = 0;

  v2 = qword_27D9FD828;
  qword_27D9FD828 = 0;
}

id ML3AlbumRulesRemovalSourceIdentityPropertyForSource(uint64_t a1)
{
  if (ML3AlbumRulesRemovalSourceIdentityPropertyForSource_onceToken != -1)
  {
    dispatch_once(&ML3AlbumRulesRemovalSourceIdentityPropertyForSource_onceToken, &__block_literal_global_78);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3AlbumRulesRemovalSourceIdentityPropertyForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:278 description:{@"ML3AlbumRulesRemovalSourceIdentityPropertyForSource called with invalid source=%d", a1}];
  }

  v2 = ML3AlbumRulesRemovalSourceIdentityPropertyForSource_values[a1];

  return v2;
}

void __ML3AlbumRulesRemovalSourceIdentityPropertyForSource_block_invoke()
{
  objc_storeStrong(ML3AlbumRulesRemovalSourceIdentityPropertyForSource_values, @"album_pid");
  objc_storeStrong(&ML3AlbumRulesRemovalSourceIdentityPropertyForSource_values[1], @"sync_id");
  objc_storeStrong(&ML3AlbumRulesRemovalSourceIdentityPropertyForSource_values[2], @"cloud_library_id");
  objc_storeStrong(&ML3AlbumRulesRemovalSourceIdentityPropertyForSource_values[3], @"sync_id");
  v0 = qword_27D9FD858;
  qword_27D9FD858 = 0;

  v1 = qword_27D9FD860;
  qword_27D9FD860 = 0;

  v2 = qword_27D9FD868;
  qword_27D9FD868 = 0;
}

id ML3TrackRulesRemovalPropertiesForSource(uint64_t a1)
{
  if (ML3TrackRulesRemovalPropertiesForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesRemovalPropertiesForSource_onceToken, &__block_literal_global_83_6211);
  }

  if (a1 >= 7)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary *ML3TrackRulesRemovalPropertiesForSource(ML3TrackSource)"];
    [v4 handleFailureInFunction:v5 file:@"ML3TrackRules.m" lineNumber:320 description:{@"ML3TrackRulesRemovalPropertiesForSource called with invalid source=%d", a1}];
  }

  v2 = ML3TrackRulesRemovalPropertiesForSource_dictionaries[a1];

  return v2;
}

void __ML3TrackRulesRemovalPropertiesForSource_block_invoke()
{
  v24[4] = *MEMORY[0x277D85DE8];
  v0 = ML3TrackRulesRemovalPropertiesForSource_dictionaries[0];
  ML3TrackRulesRemovalPropertiesForSource_dictionaries[0] = MEMORY[0x277CBEC10];

  v23[0] = @"item_store.sync_id";
  v23[1] = @"item_store.sync_redownload_params";
  v24[0] = &unk_2840C8D20;
  v24[1] = &stru_28408B690;
  v23[2] = @"item_store.playback_endpoint_type";
  v23[3] = @"item_store.sync_in_my_library";
  v24[2] = &unk_2840C8D38;
  v24[3] = &unk_2840C8D20;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v2 = qword_27D9FD3A0;
  qword_27D9FD3A0 = v1;

  v21[0] = @"item_store.store_saga_id";
  v21[1] = @"item_store.match_redownload_params";
  v22[0] = &unk_2840C8D20;
  v22[1] = &stru_28408B690;
  v21[2] = @"needs_reporting";
  v21[3] = @"item_store.playback_endpoint_type";
  v22[2] = &unk_2840C8D20;
  v22[3] = &unk_2840C8D38;
  v21[4] = @"item_store.cloud_playback_endpoint_type";
  v21[5] = @"item_store.cloud_in_my_library";
  v22[4] = &unk_2840C8D20;
  v22[5] = &unk_2840C8D20;
  v21[6] = @"item_store.cloud_album_id";
  v21[7] = @"item_store.cloud_universal_library_id";
  v22[6] = &stru_28408B690;
  v22[7] = &stru_28408B690;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:8];
  v4 = qword_27D9FD3A8;
  qword_27D9FD3A8 = v3;

  v19[0] = @"item_store.sync_id";
  v19[1] = @"item_stats.chosen_by_auto_fill";
  v20[0] = &unk_2840C8D20;
  v20[1] = &unk_2840C8D20;
  v19[2] = @"item_store.sync_redownload_params";
  v19[3] = @"item_store.playback_endpoint_type";
  v20[2] = &stru_28408B690;
  v20[3] = &unk_2840C8D38;
  v19[4] = @"item_store.sync_in_my_library";
  v20[4] = &unk_2840C8D20;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v6 = qword_27D9FD3B0;
  qword_27D9FD3B0 = v5;

  v17[0] = @"item_store.purchase_history_id";
  v17[1] = @"item_store.purchase_history_token";
  v18[0] = &unk_2840C8D20;
  v18[1] = &unk_2840C8D20;
  v17[2] = @"item_store.purchase_history_redownload_params";
  v17[3] = @"item_store.playback_endpoint_type";
  v18[2] = &stru_28408B690;
  v18[3] = &unk_2840C8D38;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v8 = qword_27D9FD3B8;
  qword_27D9FD3B8 = v7;

  v15 = @"item_store.is_ota_purchased";
  v16 = &unk_2840C8D20;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = qword_27D9FD3C0;
  qword_27D9FD3C0 = v9;

  v13 = @"item_store.is_subscription";
  v14 = &unk_2840C8D20;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = qword_27D9FD3C8;
  qword_27D9FD3C8 = v11;
}

uint64_t ML3TrackRulesRemoveLocalAssetForSource(uint64_t a1)
{
  if (ML3TrackRulesRemoveLocalAssetForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesRemoveLocalAssetForSource_onceToken, &__block_literal_global_95);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL ML3TrackRulesRemoveLocalAssetForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:339 description:{@"ML3TrackRulesRemoveLocalAssetForSource called with invalid source=%d", a1}];
  }

  return *(&ML3TrackRulesRemoveLocalAssetForSource_values + a1);
}

double __ML3TrackRulesRemoveLocalAssetForSource_block_invoke()
{
  *&result = 16777473;
  ML3TrackRulesRemoveLocalAssetForSource_values = 16777473;
  word_27D9FD87C = 256;
  byte_27D9FD87E = 1;
  return result;
}

uint64_t ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource(uint64_t a1)
{
  if (ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource_onceToken != -1)
  {
    dispatch_once(&ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource_onceToken, &__block_literal_global_100);
  }

  if (a1 >= 7)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource(ML3TrackSource)"];
    [v3 handleFailureInFunction:v4 file:@"ML3TrackRules.m" lineNumber:359 description:{@"ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource called with invalid source=%d", a1}];
  }

  return *(&ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource_values + a1);
}

double __ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource_block_invoke()
{
  *&result = 16777217;
  ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource_values = 16777217;
  word_27D9FD33C = 256;
  byte_27D9FD33E = 0;
  return result;
}

id ML3TrackRulesGetPropertyName(int a1, uint64_t a2)
{
  v2 = *(ML3TrackRulesGetRule(a1, a2) + 32);

  return v2;
}

uint64_t ML3TrackRulesGetRule(int a1, uint64_t a2)
{
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  result = 0;
  switch(a1)
  {
    case 1:
      v5 = __itemRules;
      goto LABEL_27;
    case 2:
      v5 = __itemExtraRules;
      goto LABEL_27;
    case 3:
      v5 = __itemPlaybackRules;
      goto LABEL_27;
    case 4:
      v5 = __itemSearchRules;
      goto LABEL_27;
    case 5:
      v5 = __itemStatsRules;
      goto LABEL_27;
    case 6:
      v5 = __itemStoreRules;
      goto LABEL_27;
    case 7:
      v5 = __itemVideoRules;
      goto LABEL_27;
    case 8:
      v5 = __chapterRules;
      goto LABEL_27;
    case 9:
      v5 = __lyricsRules;
      goto LABEL_27;
    case 10:
      v5 = __specialRules;
      goto LABEL_27;
    case 11:
      v5 = __containerRules;
      goto LABEL_27;
    case 12:
      v5 = __containerSeedRules;
      goto LABEL_27;
    case 14:
      v5 = __containerItemRules;
      goto LABEL_27;
    case 15:
      v5 = __containerAuthorRules;
      goto LABEL_27;
    case 16:
      v5 = __containerItemReactionRules;
      goto LABEL_27;
    case 17:
      v5 = __albumRules;
      goto LABEL_27;
    case 18:
      v5 = __albumArtistRules;
      goto LABEL_27;
    case 19:
      v5 = __artistRules;
      goto LABEL_27;
    case 20:
      v5 = __composerRules;
      goto LABEL_27;
    case 21:
      v5 = __genreRules;
      goto LABEL_27;
    case 22:
      v5 = __personRules;
      goto LABEL_27;
    case 23:
      v5 = __containerItemPersonRules;
      goto LABEL_27;
    case 24:
      v5 = __bookletRules;
LABEL_27:
      result = v5 + 56 * a2;
      break;
    default:
      return result;
  }

  return result;
}

id ML3TrackRulesGetPropertyNameForKey(int a1, uint64_t a2)
{
  PropertyIndex = ML3TrackRulesGetPropertyIndex(a1, a2);
  if (PropertyIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *ML3TrackRulesGetPropertyNameForKey(MLImportPropertyGroupKey, MLImportPropertyKey)"}];
    [v7 handleFailureInFunction:v8 file:@"ML3TrackRules.m" lineNumber:1169 description:{@"no track rule found for property %X", a2}];

    PropertyIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *(ML3TrackRulesGetRule(a1, PropertyIndex) + 32);

  return v5;
}

uint64_t ML3TrackRulesGetPropertyIndex(int a1, int a2)
{
  Count = ML3TrackRulesGetCount(a1);
  if (!Count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = Count;
  v6 = 0;
  while (*(ML3TrackRulesGetRule(a1, v6) + 48) != a2)
  {
    if (++v6 >= v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t ML3TrackRulesGetCount(int a1)
{
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  result = 0;
  switch(a1)
  {
    case 1:
      v3 = __itemRulesCount == 0;
      v4 = 37;
      goto LABEL_31;
    case 2:
      v3 = __itemExtraRulesCount == 0;
      v4 = 33;
      goto LABEL_31;
    case 3:
      v7 = __itemPlaybackRulesCount;
      goto LABEL_28;
    case 4:
      v6 = __itemSearchRulesCount;
      goto LABEL_25;
    case 5:
      v7 = __itemStatsRulesCount;
      goto LABEL_28;
    case 6:
      v3 = __itemStoreRulesCount == 0;
      v4 = 60;
      goto LABEL_31;
    case 7:
      v3 = __itemVideoRulesCount == 0;
      v4 = 38;
      goto LABEL_31;
    case 8:
      return __chapterRulesCount;
    case 9:
      v6 = __lyricsRulesCount;
      goto LABEL_25;
    case 10:
      v3 = __specialRulesCount == 0;
      v4 = 27;
      goto LABEL_31;
    case 11:
      v3 = __containerRulesCount == 0;
      v4 = 90;
      goto LABEL_31;
    case 12:
      v5 = __containerSeedRulesCount;
      goto LABEL_16;
    case 14:
      v8 = __containerItemRulesCount;
      goto LABEL_30;
    case 15:
      v6 = __containerAuthorRulesCount;
      goto LABEL_25;
    case 16:
      v3 = __containerItemReactionRulesCount == 0;
      v4 = 4;
      goto LABEL_31;
    case 17:
      v3 = __albumRulesCount == 0;
      v4 = 26;
      goto LABEL_31;
    case 18:
      v7 = __albumArtistRulesCount;
LABEL_28:
      v3 = v7 == 0;
      v4 = 20;
      goto LABEL_31;
    case 19:
      v3 = __artistRulesCount == 0;
      v4 = 16;
      goto LABEL_31;
    case 20:
      v3 = __composerRulesCount == 0;
      v4 = 10;
      goto LABEL_31;
    case 21:
      v3 = __genreRulesCount == 0;
      v4 = 9;
      goto LABEL_31;
    case 22:
      v8 = __personRulesCount;
LABEL_30:
      v3 = v8 == 0;
      v4 = 6;
      goto LABEL_31;
    case 23:
      v5 = __containerItemPersonRulesCount;
LABEL_16:
      v3 = v5 == 0;
      v4 = 2;
      goto LABEL_31;
    case 24:
      v6 = __bookletRulesCount;
LABEL_25:
      v3 = v6 == 0;
      v4 = 5;
LABEL_31:
      if (v3)
      {
        result = 0;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t compareSortKeys(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 length];
  v6 = [v3 length];
  v7 = [v4 bytes];

  v8 = [v3 bytes];
  if (v5 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = memcmp(v7, v8, v9);
  v11 = -1;
  if (v5 >= v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v5 > v6)
  {
    v12 = 1;
  }

  if (v10 >= 0)
  {
    v11 = v12;
  }

  if (v10 <= 0)
  {
    return v11;
  }

  else
  {
    return 1;
  }
}

void sub_22D44D04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6467(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D44D288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D44D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22D44DD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D44E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D44EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D44F428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_22D44F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D44F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4511D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D451580()
{
  if (v0)
  {
    JUMPOUT(0x22D45158CLL);
  }

  JUMPOUT(0x22D451544);
}

uint64_t std::__shared_ptr_pointer<ML3HomeSharingContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingContainerImportItem>,std::allocator<ML3HomeSharingContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_33ML3HomeSharingContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3HomeSharingContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingContainerImportItem>,std::allocator<ML3HomeSharingContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3HomeSharingContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingContainerImportItem>,std::allocator<ML3HomeSharingContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D451730(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3HomeSharingTrackImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingTrackImportItem>,std::allocator<ML3HomeSharingTrackImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_29ML3HomeSharingTrackImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3HomeSharingTrackImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingTrackImportItem>,std::allocator<ML3HomeSharingTrackImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3HomeSharingTrackImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3HomeSharingTrackImportItem>,std::allocator<ML3HomeSharingTrackImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D451AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_9(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v4 = [ML3Track containerQueryWithContainer:v3 predicate:*(a1 + 40)];
  v8[0] = @"item_extra.title";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_2;
  v6[3] = &unk_278762DC0;
  v7 = *(a1 + 48);
  [v4 enumeratePersistentIDsAndProperties:v5 usingBlock:v6];
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v10 = 134218242;
    v11 = a2;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "[PH] %lld - %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v8 removeObject:v9];
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_13(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v10 = 134218242;
    v11 = a2;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "[LC] %lld - %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v8 removeObject:v9];
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v8 = a3[1];
    v11 = 134218498;
    v12 = a2;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "[LC] %lld - %{public}@ (%{public}@)", &v11, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v9 removeObject:v10];
}

void __ML3MaintenanceUtilitiesRemoveOrphanTracksAddedBeforeDate_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v10 = 134218242;
    v11 = a2;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "[SC] %lld - %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v8 removeObject:v9];
}

void __ML3MaintenanceUtilitiesRemoveCachedPlaylistsNotPlayedSinceDate_block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 40) + 8) + 24);
  v9 = *a3;
  v10 = a3[1];
  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v15 = 134218754;
    v16 = a2;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v9;
    v21 = 1024;
    v22 = v12;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[Maintenance] Purging playlist %lld - %{public}@ (%{public}@), purgedPlaylistCount=%d", &v15, 0x26u);
  }

  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v13 addObject:v14];

  if (a5 && *(*(*(a1 + 40) + 8) + 24) >= 10)
  {
    *a5 = 1;
  }
}

void __ML3MaintenanceUtilitiesConvertExistingArtworkToASTC_block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v23 = 0;
    v14 = [v11 replaceItemAtURL:v12 withItemAtURL:v13 backupItemName:0 options:1 resultingItemURL:0 error:&v23];
    v9 = v23;
    if (v14)
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        *buf = 138543362;
        v25 = v16;
        v17 = "Artwork at %{public}@ successfully converted to ASTC format";
        v18 = v15;
        v19 = 12;
LABEL_13:
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v20 = [*(a1 + 48) removeItemAtURL:*(a1 + 56) error:0];
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = *(a1 + 56);
        *buf = 138544130;
        v25 = v9;
        v26 = 2114;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        v30 = 1024;
        v31 = v20;
        v17 = "Error %{public}@ replacing artwork at %{public}@ with %{public}@ - temp file deleted %d";
        v18 = v15;
        v19 = 38;
        goto LABEL_13;
      }
    }

LABEL_15:
    goto LABEL_16;
  }

  v5 = [v3 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D27EA8]])
  {
    v6 = [v4 code];

    if (v6 == 1)
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) absoluteString];
      [v7 addObject:v8];

      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138543618;
        v25 = v4;
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "Error %{public}@ converting artwork at %{public}@ to ASTC", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_16:
  dispatch_semaphore_signal(*(a1 + 64));
}

uint64_t __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 executeUpdate:@"PRAGMA foreign_keys = ON"])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v3 executeQuery:@"PRAGMA foreign_key_check"];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_40;
    v28[3] = &unk_278763E40;
    v7 = v4;
    v29 = v7;
    v8 = v5;
    v30 = v8;
    [v6 enumerateRowsWithBlock:v28];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_2;
    v25[3] = &unk_278762110;
    v9 = v3;
    v26 = v9;
    v10 = v7;
    v27 = v10;
    [v10 enumerateKeysAndObjectsUsingBlock:v25];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_3;
    v21[3] = &unk_278762138;
    v24 = *(a1 + 40);
    v11 = v8;
    v22 = v11;
    v12 = v9;
    v23 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v21];
    if ([v10 count])
    {
      v13 = MEMORY[0x277D27EF0];
      v14 = *MEMORY[0x277D27EC0];
      v31 = v11;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v13 snapshotWithDomain:v14 type:@"Bug" subType:@"DatabaseIntegrity" context:@"ForeignKeyIntegrityCheck" triggerThresholdValues:0 events:v15 completion:0];
    }

    v16 = [v12 executeUpdate:@"PRAGMA foreign_keys = OFF"];
    if ((v16 & 1) == 0)
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(a1 + 32) databasePath];
        *buf = 138477827;
        v33 = v18;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Error disabling foreign_key constraint for library at path %{private}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) databasePath];
      *buf = 138477827;
      v33 = v19;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Error enabling foreign_key constraint for library at path %{private}@", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

void __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v3 objectAtIndexedSubscript:3];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v9];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v9];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:v9];
  [v8 addObject:v4];
}

void __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v9 = [v5 stringWithFormat:@"SELECT name FROM pragma_table_info(%@", v6, a3];
  v7 = [*(a1 + 32) executeQuery:v9];
  v8 = [v7 objectForFirstRowAndColumn];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];
}

void __ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v25 = a3;
  LOBYTE(a3) = *(a1 + 48);
  log = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
      *buf = 134218242;
      v32 = [v7 count];
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_22D2FA000, log, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Removing %lu broken entries in %@", buf, 0x16u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    log = [*(a1 + 32) objectForKeyedSubscript:v5];
    v8 = [log countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(log);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@=%@", v5, v25, v12];
          v14 = *(a1 + 40);
          v26 = 0;
          v15 = [v14 executeUpdate:v13 withParameters:MEMORY[0x277CBEBF8] error:&v26];
          v16 = v26;
          v17 = os_log_create("com.apple.amp.medialibrary", "Default");
          v18 = v17;
          if (v15)
          {
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            *buf = 138412290;
            v32 = v13;
            v19 = v18;
            v20 = OS_LOG_TYPE_DEFAULT;
            v21 = "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Successfully executed statement: %@";
            v22 = 12;
          }

          else
          {
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            *buf = 138412802;
            v32 = v12;
            v33 = 2112;
            v34 = v5;
            v35 = 2112;
            v36 = v16;
            v19 = v18;
            v20 = OS_LOG_TYPE_ERROR;
            v21 = "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck Error deleteing %@ from %@. err=%@";
            v22 = 32;
          }

          _os_log_impl(&dword_22D2FA000, v19, v20, v21, buf, v22);
LABEL_15:
        }

        v9 = [log countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v9);
    }
  }

  else if (v6)
  {
    v23 = [*(a1 + 32) objectForKeyedSubscript:v5];
    *buf = 134218242;
    v32 = [v23 count];
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_22D2FA000, log, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesPerformForeignKeyConstraintCheck: Found %lu broken entries in %@. Skipping deletion.", buf, 0x16u);
  }
}

void __ML3MaintenanceUtilitiesReconcileHLSAssetSize_block_invoke(uint64_t a1, NSObject *a2, id *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 32) libraryContainerPath];
    v27[0] = v13;
    v27[1] = v6;
    v27[2] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v15 = [v12 pathWithComponents:v14];

    v26 = 0;
    v16 = [*(a1 + 40) fileExistsAtPath:v15 isDirectory:&v26];
    if (v16)
    {
      if (v26)
      {
        v17 = MSVGetDiskUsageForPath();
        if (v17)
        {
          v18 = v17;
          v19 = [v9 longValue];
          v20 = os_log_create("com.apple.amp.medialibrary", "Default");
          v21 = v20;
          if (v18 == v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v29 = a2;
              _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEBUG, "ML3MaintenanceUtilitiesReconcileHLSAssetSize: found correct file size for pid=%lld.", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v29 = a2;
              v30 = 2048;
              v31 = v18;
              v32 = 2114;
              v33 = v9;
              _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "ML3MaintenanceUtilitiesReconcileHLSAssetSize: updating file size for pid=%lld. found: %ld expected: %{public}@", buf, 0x20u);
            }

            v25 = [(ML3Entity *)ML3Track newWithPersistentID:a2 inLibrary:*(a1 + 32)];
            [v25 populateLocationPropertiesWithPath:v15];

            *(*(*(a1 + 48) + 8) + 24) += v18 - [v9 longValue];
            ++*(*(*(a1 + 56) + 8) + 24);
          }
        }

        else
        {
          v24 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218243;
            v29 = a2;
            v30 = 2113;
            v31 = v15;
            _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesReconcileHLSAssetSize found unexpected diskSize of 0 for item pid=%lld at path=%{private}@", buf, 0x16u);
          }
        }

        goto LABEL_24;
      }

      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v29 = v15;
        v23 = "ML3MaintenanceUtilitiesReconcileHLSAssetSize expected directory at path=%{private}@";
        goto LABEL_22;
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v15;
        v23 = "ML3MaintenanceUtilitiesReconcileHLSAssetSize failed to find file at path=%{public}@";
LABEL_22:
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  v15 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218755;
    v29 = a2;
    v30 = 2113;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "ML3MaintenanceUtilitiesReconcileHLSAssetSize: failed to lookup values for pid=%lld, path=%{private}@, fileName=%{private}@, size=%{public}@", buf, 0x2Au);
  }

LABEL_24:
}

void ML3MaintenanceUtilitiesMarkArtworkPurgeable(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 updateRootArtworkPurgeability];
  v2 = [v1 databasePath];
  v3 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = v1;
    if (MSVDeviceIsAppleTV())
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v46 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v5 rootArtworkCacheDirectory];
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkCacheArtworkPurgeable - Marking purgeable cached artwork at path %{private}@", buf, 0xCu);
    }

    v43 = v1;

    v9 = [v46 enumeratorAtPath:v7];
    v10 = objc_autoreleasePoolPush();
    v45 = v9;
    v11 = [v9 nextObject];
    if (v11)
    {
      v12 = v11;
      v44 = v6;
      v13 = 0;
      v14 = 0;
      v48 = v7;
      do
      {
        v15 = v12;
        v16 = [v7 stringByAppendingPathComponent:v12];
        v17 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 138477827;
          v51 = v16;
          _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkCacheArtworkPurgeable - Enumerating purgeable cached artwork size path %{private}@", v50, 0xCu);
        }

        v47 = v16;
        v18 = [v46 enumeratorAtPath:v16];
        v19 = objc_autoreleasePoolPush();
        v20 = [v18 nextObject];
        v21 = v15;
        if (v20)
        {
          do
          {
            v22 = MEMORY[0x277CCACA8];
            *buf = v48;
            *&buf[8] = v21;
            *&buf[16] = v20;
            [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
            v24 = v23 = v5;
            v25 = [v22 pathWithComponents:v24];

            v5 = v23;
            MSVEnableDirStatsForDirectory();
            v26 = [v23 markSystemPurgeableMusicPath:v25 forUrgency:v44];
            v14 += v26 ^ 1;
            v13 += v26;
            [v18 skipDescendants];

            objc_autoreleasePoolPop(v19);
            v19 = objc_autoreleasePoolPush();
            v27 = [v18 nextObject];

            v20 = v27;
          }

          while (v27);
        }

        objc_autoreleasePoolPop(v19);

        objc_autoreleasePoolPop(v10);
        [v45 skipDescendants];
        v10 = objc_autoreleasePoolPush();
        v28 = [v45 nextObject];

        v12 = v28;
        v7 = v48;
      }

      while (v28);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    objc_autoreleasePoolPop(v10);
    v29 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 134218240;
      v51 = v13;
      v52 = 2048;
      v53 = v14;
      _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkCacheArtworkPurgeable - Completed with with %llu files marked and %llu failures", v50, 0x16u);
    }

    v49 = v5;
    if (MSVDeviceIsAppleTV())
    {
      v30 = 2;
    }

    else
    {
      if ((MSVDeviceIsWatch() & 1) == 0)
      {
        v31 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkOrginalArtworkPurgeable - Original artwork is not purgeable. Skipping task.", buf, 2u);
        }

        goto LABEL_36;
      }

      v30 = 3;
    }

    v31 = [v49 originalArtworkDirectory];
    v32 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = v31;
      _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkOrginalArtworkPurgeable - Marking original artwork at path %{private}@", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = [v33 enumeratorAtPath:v31];
    v35 = objc_autoreleasePoolPush();
    v36 = [v34 nextObject];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = 0;
      do
      {
        buf[0] = 1;
        v40 = [v31 stringByAppendingPathComponent:v37];
        [v33 fileExistsAtPath:v40 isDirectory:buf];
        if ((buf[0] & 1) == 0)
        {
          if ([v49 markSystemPurgeableMusicPath:v40 forUrgency:v30])
          {
            ++v38;
          }

          else
          {
            ++v39;
          }
        }

        objc_autoreleasePoolPop(v35);
        v35 = objc_autoreleasePoolPush();
        v41 = [v34 nextObject];

        v37 = v41;
      }

      while (v41);
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    objc_autoreleasePoolPop(v35);
    v42 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = v39;
      _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_DEFAULT, "_ML3MaintenanceUtilitiesMarkOrginalArtworkPurgeable - Completed with with %llu files marked and %llu failures", buf, 0x16u);
    }

LABEL_36:
    v1 = v43;
  }
}

void sub_22D45A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id ML3ContainerItemReactionsDatabaseImportDataSource::generateVTableInsertionFromClause(ML3ContainerItemReactionsDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container_item_reaction ON %@.ROWID = container_item_reaction.container_item_reaction_pid", a3, a3];

  return v3;
}

void ML3ContainerItemReactionsDatabaseImportDataSource::~ML3ContainerItemReactionsDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D45C7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D45D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D45D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ML3ContainerItemDatabaseImportDataSource::generateVTableInsertionFromClause(ML3ContainerItemDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container_item ON %@.ROWID = container_item.container_item_pid", a3, a3];

  return v3;
}

void ML3ContainerItemDatabaseImportDataSource::~ML3ContainerItemDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D45E598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7680(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ML3ItemStatsDatabaseImportDataSource::~ML3ItemStatsDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D45F1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D460678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22D460E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8381(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t createRecentlyPlayedSearchCriteria()
{
  if (!NewSearchCriteriaList())
  {
    InitValueRangeCriteria();
    AppendValueRangeSearchCriterion();
    InitValueRangeCriteria();
    AppendSearchCriterion();
  }

  return 0;
}

uint64_t createTop25MostPlayedSearchCriteria()
{
  if (!NewSearchCriteriaList())
  {
    InitValueRangeCriteria();
    AppendSearchCriterion();
    AppendNumericSearchCriterion();
  }

  return 0;
}

uint64_t createMyTopRatedCriteria()
{
  if (!NewSearchCriteriaList())
  {
    AppendNumericSearchCriterion();
  }

  return 0;
}

uint64_t createClassicalMusicSearchCriteria()
{
  if (!NewSearchCriteriaList())
  {
    if (!NewSearchCriteriaList())
    {
      InitValueRangeCriteria();
      AppendSearchCriterion();
      InitValueRangeCriteria();
      AppendSearchCriterion();
      AppendNestedSearchCriteriaList();
      DisposeSearchCriteriaList();
    }

    if (!NewSearchCriteriaList())
    {
      v0 = 0;
      v1 = *MEMORY[0x277CBECE8];
      do
      {
        v2 = classicalGenreStrings[v0];
        v3 = [(__CFString *)v2 length];
        v4 = MEMORY[0x2318CC510](v1, 2 * v3 + 2, 0x1000040BDFB0063, 0);
        if (v4)
        {
          v5 = v4;
          *v4 = v3;
          [(__CFString *)v2 getCharacters:v4 + 1 range:0, v3];
          AppendUStringSearchCriterion();
          CFAllocatorDeallocate(v1, v5);
        }

        ++v0;
      }

      while (v0 != 7);
      AppendNestedSearchCriteriaList();
      DisposeSearchCriteriaList();
    }
  }

  return 0;
}

uint64_t create90sMusicSearchCriteria()
{
  if (!NewSearchCriteriaList())
  {
    InitValueRangeCriteria();
    AppendValueRangeSearchCriterion();
    if (!NewSearchCriteriaList())
    {
      InitValueRangeCriteria();
      AppendSearchCriterion();
      InitValueRangeCriteria();
      AppendSearchCriterion();
      AppendNestedSearchCriteriaList();
      DisposeSearchCriteriaList();
    }
  }

  return 0;
}

void sub_22D461AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4620C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D46224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4628E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D463284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4633E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D465C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D46672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4668B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D46772C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v70 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22D467E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DatePredicateForCriteriaInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 4);
  SearchCriterionInfoValueRange = GetSearchCriterionInfoValueRange();
  if (SearchCriterionInfoValueRange)
  {
    v23 = SearchCriterionInfoValueRange;
    v24 = [MEMORY[0x277CCA890] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ML3Predicate *DatePredicateForCriteriaInfo(CriterionInfo *, NSString *__strong)"}];
    [v24 handleFailureInFunction:v25 file:@"ML3Container.m" lineNumber:257 description:{@"Could not get value range for %@ date criterion: %ld", v3, v23}];
  }

  v6 = CFTimeZoneCopySystem();
  v7 = MEMORY[0x277CBECC8];
  v8 = (GetValueRangeCriteriaStartValue() - *v7);
  v9 = (v8 - CFTimeZoneGetSecondsFromGMT(v6, v8));
  v10 = (GetValueRangeCriteriaEndValue() - *v7);
  v11 = (v10 - CFTimeZoneGetSecondsFromGMT(v6, v10));
  CFRelease(v6);
  if ((v4 & 0xF0) != 0)
  {
    matched = ML3ComparisonForCriteronMatchType(v4);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    v14 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v13 comparison:matched transformFunction:0];
  }

  else
  {
    if ((v4 & 0x301) == 0)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    if ((v4 & 0x101) != 0)
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }

    if ((v4 & 0x101) != 0)
    {
      v17 = 6;
    }

    else
    {
      v17 = 5;
    }

    v13 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v15 comparison:v16 transformFunction:0];

    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v19 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v18 comparison:v17 transformFunction:0];

    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:{v13, v19, 0}];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v20];
  }

  if (v14 && (v4 & 0x2000000) != 0)
  {
    v21 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v14];

    v14 = v21;
  }

LABEL_17:

  return v14;
}

uint64_t ML3ComparisonForCriteronMatchType(int a1)
{
  if (a1)
  {
    return 1;
  }

  if ((a1 & 0x10) != 0)
  {
    return 3;
  }

  if ((a1 & 8) != 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = (a1 << 21 >> 31) & 0xA;
  }

  if ((a1 & 4) != 0)
  {
    v2 = 8;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x40) != 0)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 0x20) != 0)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

id BooleanPredicateForCriteriaInfo(int *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if ((v5 & 0x400) != 0 && v4 == 133)
  {
    SearchCriterionInfoNumericValue = GetSearchCriterionInfoNumericValue();
    if (SearchCriterionInfoNumericValue)
    {
      v13 = SearchCriterionInfoNumericValue;
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ML3Predicate *BooleanPredicateForCriteriaInfo(CriterionInfo *, NSString *__strong)"}];
      [v14 handleFailureInFunction:v15 file:@"ML3Container.m" lineNumber:219 description:{@"Could not get numeric value for %@ criterion: %ld", v3, v13}];
    }

    v7 = 0;
  }

  else if (v4 == 37)
  {
    SearchCriterionInfoBooleanValue = GetSearchCriterionInfoBooleanValue();
    if (SearchCriterionInfoBooleanValue)
    {
      v16 = SearchCriterionInfoBooleanValue;
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ML3Predicate *BooleanPredicateForCriteriaInfo(CriterionInfo *, NSString *__strong)"}];
      [v17 handleFailureInFunction:v18 file:@"ML3Container.m" lineNumber:232 description:{@"Could not get BOOLean value for %@ criterion: %ld", v3, v16}];
    }

    v7 = [ML3ComparisonPredicate predicateWithProperty:v3 value:&stru_28408B690 comparison:1];
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_18;
    }

    v9 = GetSearchCriterionInfoBooleanValue();
    if (v9)
    {
      v19 = v9;
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ML3Predicate *BooleanPredicateForCriteriaInfo(CriterionInfo *, NSString *__strong)"}];
      [v20 handleFailureInFunction:v21 file:@"ML3Container.m" lineNumber:238 description:{@"Could not get BOOLean value for %@ criterion: %ld", v3, v19}];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v7 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v10 comparison:1];
  }

  if (v7 && (v5 & 0x2000000) != 0)
  {
    v11 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v7];

    v7 = v11;
  }

LABEL_18:

  return v7;
}

id NumericPredicateForCriteriaInfo(int *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  LODWORD(v28) = 0;
  SearchCriterionInfoValueRange = GetSearchCriterionInfoValueRange();
  if (SearchCriterionInfoValueRange)
  {
    v25 = SearchCriterionInfoValueRange;
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ML3Predicate *NumericPredicateForCriteriaInfo(CriterionInfo *, NSString *__strong)"}];
    [v26 handleFailureInFunction:v27 file:@"ML3Container.m" lineNumber:317 description:{@"Could not get value range for %@ criterion: %ld", v3, v25, 0, 0, 0, 0, 0, 0, 0, 0, v28}];
  }

  ValueRangeCriteriaStartValue = GetValueRangeCriteriaStartValue();
  ValueRangeCriteriaEndValue = GetValueRangeCriteriaEndValue();
  if ((v4 & 0x4F1) != 0)
  {
    v8 = *a1;
    v9 = v4 & 0xFFFFFBFE | 1;
    if ((v4 & 0x400) == 0)
    {
      v9 = v4;
    }

    v10 = 33;
    if (ValueRangeCriteriaStartValue != 32)
    {
      v10 = ValueRangeCriteriaStartValue;
    }

    if (v8 == 60)
    {
      v11 = v10;
    }

    else
    {
      v11 = ValueRangeCriteriaStartValue;
    }

    if (v8 == 60)
    {
      v4 = v9;
    }

    matched = ML3ComparisonForCriteronMatchType(v4);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v14 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v13 comparison:matched];

    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_27:
    if ((v4 & 0x2000000) != 0)
    {
      v23 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v14];

      v14 = v23;
    }

    goto LABEL_29;
  }

  v15 = ValueRangeCriteriaEndValue;
  if ((v4 & 0x300) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:ValueRangeCriteriaStartValue];
    if ((v4 & 0x100) != 0)
    {
      v17 = 4;
    }

    else
    {
      v17 = 3;
    }

    if ((v4 & 0x100) != 0)
    {
      v18 = 6;
    }

    else
    {
      v18 = 5;
    }

    v19 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v16 comparison:v17];

    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
    v21 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v20 comparison:v18];

    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:{v19, v21, 0}];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v22];

    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if ((v4 & 0x800) == 0)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v14 = [ML3BitMaskPredicate predicateWithProperty:v3 mask:ValueRangeCriteriaStartValue value:ValueRangeCriteriaEndValue];
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_29:

  return v14;
}

id StringPredicateForCriteriaInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 4);
  matched = ML3ComparisonForCriteronMatchType(v4);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:*(a1 + 16) length:*(a1 + 24) >> 1];
  v7 = v6;
  if (*a1 == 9)
  {
    if ((matched - 1) > 8)
    {
      v8 = &__block_literal_global_834;
    }

    else
    {
      v8 = *(&off_278762888 + (matched - 1));
    }

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __StringPredicateForCriteriaInfo_block_invoke_6;
    v16 = &unk_278762868;
    v18 = v8;
    v17 = v6;
    v10 = ML3KindsPassingTest(&v13);
    if ([v10 count])
    {
      [ML3ContainmentPredicate predicateWithProperty:v3 values:v10];
    }

    else
    {
      +[ML3TruthPredicate falsePredicate];
    }
    v9 = ;

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v6 comparison:matched caseInsensitive:HIBYTE(v4) & 1 treatNullAsString:&stru_28408B690];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if ((v4 & 0x2000000) != 0)
  {
    v11 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v9];

    v9 = v11;
  }

LABEL_13:

  return v9;
}

uint64_t ML3ContainerItemPersonImportItem::getIntegerValue(ML3ContainerItemPersonImportItem *this, int a2)
{
  if (a2 == 385875969)
  {
    v2 = 72;
    return *(this + v2);
  }

  if (a2 == 385875970)
  {
    v2 = 80;
    return *(this + v2);
  }

  return 0;
}

void ML3ContainerItemPersonImportItem::~ML3ContainerItemPersonImportItem(ML3ContainerItemPersonImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

void sub_22D46CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D46D12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D46D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ML3AlbumDatabaseImportDataSource::~ML3AlbumDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D46E944(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncLibraryPinImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncLibraryPinImportItem>,std::allocator<ML3ProtoSyncLibraryPinImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_32ML3ProtoSyncLibraryPinImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncLibraryPinImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncLibraryPinImportItem>,std::allocator<ML3ProtoSyncLibraryPinImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncLibraryPinImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncLibraryPinImportItem>,std::allocator<ML3ProtoSyncLibraryPinImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D46ED3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_22D46F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncAlbumArtistDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumArtistDeleteImportItem>,std::allocator<ML3ProtoSyncAlbumArtistDeleteImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_39ML3ProtoSyncAlbumArtistDeleteImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncAlbumArtistDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumArtistDeleteImportItem>,std::allocator<ML3ProtoSyncAlbumArtistDeleteImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncAlbumArtistDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumArtistDeleteImportItem>,std::allocator<ML3ProtoSyncAlbumArtistDeleteImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D46F640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_22D470898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  v51 = *(v49 - 120);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(v49 - 232);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

void sub_22D471FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  ML3ImportSession::~ML3ImportSession(&a61);

  _Unwind_Resume(a1);
}

void sub_22D472A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_22D473614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D473C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9036(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4741DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D4745B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22D474904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D474AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D47500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22D4753DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void ML3CPPData::~ML3CPPData(ML3CPPData *this)
{
  *this = &unk_2840864D8;
  if (*(this + 2) && *(this + 24) == 1)
  {
    MEMORY[0x2318CD250]();
  }

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840864D8;
  if (*(this + 2))
  {
    if (*(this + 24) == 1)
    {
      MEMORY[0x2318CD250]();
    }
  }
}

void ML3CPPData::ML3CPPData(ML3CPPData *this, const void *__src, size_t __n, int a4)
{
  *this = &unk_2840864D8;
  *(this + 1) = __n;
  if (__n && a4)
  {
    operator new[]();
  }

  *(this + 2) = 0;
  *(this + 24) = a4;
  if (a4)
  {
    if (__src)
    {
      memcpy(0, __src, __n);
    }

    else
    {
      bzero(0, __n);
    }
  }

  else
  {
    *(this + 2) = __src;
  }
}

id ML3CPPBridgeString(const UInt8 *a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 23) >= 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = *a1;
    }

    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  }

  else
  {
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = a1[23];
    }

    else
    {
      v6 = *(a1 + 1);
    }

    v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  }

  return v3;
}

void ML3CPPBridgeNSData(NSData *a1, void *a2)
{
  v2 = a2;
  [v2 bytes];
  [v2 length];
  operator new();
}

void ML3CPPStringFromData(NSData *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bytes];
  v4 = [v6 length];
  v5 = v4;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(a1[2].super.isa) = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  *(&a1->super.isa + v5) = 0;
}

void ML3CPPSanitizeString(std::string *this, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  v5 = *a2;
  v6 = *(a2 + 8);
  if ((v3 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  for (; v3; --v3)
  {
    if (!*v7 || *v7 == 191)
    {
      operator new();
    }

    ++v7;
  }

  if (v4 < 0)
  {

    std::string::__init_copy_ctor_external(this, v5, v6);
  }

  else
  {
    *this = *a2;
  }
}

void sub_22D476B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 + 23) < 0)
  {
    operator delete(*v30);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::~wstring_convert(&a30);
  _Unwind_Resume(a1);
}

uint64_t std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::~wstring_convert(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_range_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27875CD20, MEMORY[0x277D825E0]);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::wstring::__init_copy_ctor_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

void std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8_utf16[abi:ne200100](std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x2318CD250);
}

void ML3CPPStripInsignificantCharacters(_BYTE *a1, const UInt8 *a2)
{
  v3 = ML3CPPBridgeString(a2, 0);
  v4 = [v3 copyWithoutInsignificantPrefixAndCharacters];
  v8 = v4;
  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  a1[v7] = 0;
}

void ML3CPPSortableString(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  ML3CPPStripInsignificantCharacters(&__str, a2);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (size != v6 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v7 >= 0 ? (v9 = a2) : (v9 = *a2), memcmp(p_str, v9, size)))
  {
    std::string::operator=(a1, &__str);
    v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v4 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D47702C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D477538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D477738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D477D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22D4786F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = MEMORY[0x277CCACA8];
    v20 = [v10 description];
    v12 = [v11 stringWithFormat:@"*** Database Exception: %@"];

    v13 = [v10 userInfo];
    v14 = [ML3MediaLibraryWriter writerErrorWithCode:301 description:v12 userInfo:v13];

    v15 = _ML3LogCategoryDefault_Oversize();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 callStackSymbols];
      *(v9 - 128) = 138543618;
      v17 = v9 - 128;
      *(v17 + 4) = v14;
      *(v9 - 116) = 2114;
      *(v17 + 14) = v16;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Exception performing validation. Error=%{public}@. stackTrace=%{public}@", (v9 - 128), 0x16u);
    }

    v18 = MEMORY[0x277D27EF0];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error performing database migration: %@"];
    [v18 snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"Migration Error" context:v19 triggerThresholdValues:0 events:0 completion:?];

    objc_end_catch();
    if (!v14)
    {
      JUMPOUT(0x22D4782E8);
    }

    JUMPOUT(0x22D478364);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIPGenreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        v30 = 16;
        goto LABEL_49;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 24);
      *(a1 + 24) = v21;

LABEL_50:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_44;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v25;
    }

LABEL_44:
    v30 = 8;
LABEL_49:
    *(a1 + v30) = v20;
    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

void sub_22D47A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9512(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D47A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D47B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9635(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D47BEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  std::__hash_table<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>>>::~__hash_table(&a66);
  _Block_object_dispose(&a71, 8);

  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9738(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
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

void sub_22D47C998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,void *>>>::operator()[abi:ne200100](1, v17);

  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_27875CD30, MEMORY[0x277D825F8]);
}

uint64_t std::__hash_table<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "unordered_map::at: key not found");
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id ML3ITunesSyncImportItem::_getFoundationValue(ML3ITunesSyncImportItem *this, uint64_t a2)
{
  if (a2 == 100663308)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(this + 9)];
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual id ML3ITunesSyncImportItem::_getFoundationValue(MLImportPropertyKey) const"];
    [v4 handleFailureInFunction:v5 file:@"ML3ITunesSyncImportItem.mm" lineNumber:202 description:{@"_getFoundationValue called with unknown property key %x", a2}];

    v2 = 0;
  }

  return v2;
}

id ML3ITunesSyncImportItem::getDeduplicationPredicates(ML3ITunesSyncImportItem *this)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  if (*(this + 9))
  {
    v3 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:?];
    [v2 addObject:v3];
  }

  return v2;
}

uint64_t ML3ITunesSyncImportItem::getDescription(ML3ITunesSyncImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3ITunesSyncImportItem ", 25);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

BOOL ML3ITunesSyncImportItem::hasValue(ML3ITunesSyncImportItem *this)
{
  v1 = (*(*this + 216))(this);
  v2 = v1 != 0;

  return v2;
}

void ML3ITunesSyncImportItem::getDataValue(ML3ITunesSyncImportItem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = (*(*this + 216))(this);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    [v3 bytes];
    [v3 length];
    operator new();
  }
}

void sub_22D47D830(_Unwind_Exception *a1)
{
  MEMORY[0x2318CD250](v3, 0x1091C40934DB768);

  _Unwind_Resume(a1);
}

float ML3ITunesSyncImportItem::getFloatValue(ML3ITunesSyncImportItem *this)
{
  v1 = (*(*this + 216))(this);
  if (objc_opt_respondsToSelector())
  {
    [v1 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v1 doubleValue];
      v3 = v4;
    }
  }

  return v3;
}

uint64_t ML3ITunesSyncImportItem::getIntegerValue(ML3ITunesSyncImportItem *this)
{
  v1 = (*(*this + 216))(this);
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void ML3ITunesSyncImportItem::getStringValue(ML3ITunesSyncImportItem *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28408AC60;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = (a2 + 16);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = (*(*this + 216))(this);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 UTF8String];
    if (v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, v5);
      std::string::operator=(v3, &__str);
      *(a2 + 8) = 1;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = __str.__r_.__value_.__r.__words[0];
LABEL_7:
        operator delete(v6);
      }
    }
  }

  else
  {
    __str.__r_.__value_.__s.__data_[8] = 0;
    v8 = 0;
    v9 = 0;
    __str.__r_.__value_.__r.__words[2] = 0;
    *(a2 + 8) = 0;
    std::string::operator=(v3, &__str.__r_.__value_.__r.__words[2]);
    __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (SHIBYTE(v9) < 0)
    {
      v6 = __str.__r_.__value_.__r.__words[2];
      goto LABEL_7;
    }
  }
}

void sub_22D47DAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v20 = v21;
  if (*(v20 + 39) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void ML3ITunesSyncImportItem::~ML3ITunesSyncImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3ITunesSyncTrackImportItem::_getFoundationValue(ML3ITunesSyncTrackImportItem *this, uint64_t a2)
{
  if ((a2 - 0x1000000) >> 25 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    if (a2 <= 100663296)
    {
      if (a2 <= 50331648)
      {
        switch(a2)
        {
          case 16777217:
LABEL_40:
            v8 = _MLMediaTypeFromTrackProperiesDictionary(*(this + 12));
            goto LABEL_283;
          case 16777218:
          case 16777219:
          case 16777220:
          case 16777221:
          case 16777222:
          case 16777223:
          case 16777224:
          case 16777225:
          case 16777226:
          case 16777227:
          case 16777228:
          case 16777229:
          case 16777230:
          case 16777231:
          case 16777232:
          case 16777233:
          case 16777234:
          case 16777235:
          case 16777236:
          case 16777240:
          case 16777243:
          case 16777244:
          case 16777245:
          case 16777250:
          case 16777251:
          case 16777252:
          case 16777253:
            goto LABEL_279;
          case 16777237:
            v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackDiscNumber(this);
            goto LABEL_283;
          case 16777238:
            v4 = [*(this + 12) objectForKey:@"track_number"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"track_number"];
            goto LABEL_276;
          case 16777239:
            v4 = [*(this + 12) objectForKey:@"episode_sort_id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"episode_sort_id"];
            goto LABEL_276;
          case 16777241:
LABEL_16:
            v3 = &unk_2840C90C8;
            goto LABEL_279;
          case 16777242:
            v4 = [*(this + 12) objectForKey:@"exclude_from_shuffle"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"exclude_from_shuffle"];
            goto LABEL_276;
          case 16777246:
            v4 = [*(this + 12) objectForKey:@"is_compilation"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"is_compilation"];
            goto LABEL_276;
          case 16777247:
            v4 = [*(this + 12) objectForKey:@"date_created"];
            if (!v4)
            {
              goto LABEL_277;
            }

            v17 = MEMORY[0x277CCABB0];
            v5 = [*(this + 12) objectForKey:@"date_created"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v19 = [*(this + 12) objectForKey:@"date_created"];
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_300;
          case 16777248:
            v4 = [*(this + 12) objectForKey:@"show_composer"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"show_composer"];
            goto LABEL_276;
          case 16777249:
            v4 = [*(this + 12) objectForKey:@"is_music_show"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"is_music_show"];
            goto LABEL_276;
          default:
            switch(a2)
            {
              case 33554433:
                v4 = [*(this + 12) objectForKey:@"title"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"title"];
                goto LABEL_276;
              case 33554434:
                v4 = [*(this + 12) objectForKey:@"sort_name"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"sort_name"];
                goto LABEL_276;
              case 33554435:
                v4 = [*(this + 12) objectForKey:@"disc_count"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"disc_count"];
                goto LABEL_276;
              case 33554436:
                v4 = [*(this + 12) objectForKey:@"track_count"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"track_count"];
                goto LABEL_276;
              case 33554437:
                v4 = [*(this + 12) objectForKey:@"total_time_ms"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"total_time_ms"];
                goto LABEL_276;
              case 33554438:
                v4 = [*(this + 12) objectForKey:@"year"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"year"];
                goto LABEL_276;
              case 33554439:
              case 33554441:
              case 33554460:
              case 33554461:
              case 33554466:
                goto LABEL_279;
              case 33554440:
                v4 = [*(this + 10) objectForKey:@"location"];
                v5 = [v4 objectForKey:@"file_size"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [*(this + 10) objectForKey:@"location"];
                  v21 = [v20 objectForKey:@"file_size"];
LABEL_159:
                  v3 = v21;
                }

                else
                {
LABEL_109:
                  v3 = 0;
                }

                goto LABEL_306;
              case 33554442:
                v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackIsAudibleAudioBook(this);
                goto LABEL_283;
              case 33554443:
                v4 = [*(this + 12) objectForKey:@"date_modified"];
                if (!v4)
                {
                  goto LABEL_277;
                }

                v17 = MEMORY[0x277CCABB0];
                v5 = [*(this + 12) objectForKey:@"date_modified"];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  v19 = [*(this + 12) objectForKey:@"date_modified"];
                }

                else
                {
                  v19 = 0;
                }

                goto LABEL_300;
              case 33554444:
                goto LABEL_40;
              case 33554445:
                v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackContentRating(this);
                goto LABEL_283;
              case 33554446:
                v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackRatingLevel(this);
                goto LABEL_283;
              case 33554447:
                v4 = [*(this + 12) objectForKey:@"is_user_disabled"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"is_user_disabled"];
                goto LABEL_276;
              case 33554448:
                v4 = [*(this + 12) objectForKey:@"bpm"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"bpm"];
                goto LABEL_276;
              case 33554449:
                v4 = [*(this + 12) objectForKey:@"genius_id"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"genius_id"];
                goto LABEL_276;
              case 33554450:
                v4 = [*(this + 12) objectForKey:@"comment"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"comment"];
                goto LABEL_276;
              case 33554451:
                v4 = [*(this + 12) objectForKey:@"grouping"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"grouping"];
                goto LABEL_276;
              case 33554452:
                v4 = [*(this + 12) objectForKey:@"description"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"description"];
                goto LABEL_276;
              case 33554453:
                v4 = [*(this + 12) objectForKey:@"description_long"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"description_long"];
                goto LABEL_276;
              case 33554454:
                v4 = [*(this + 12) objectForKey:@"collection_description"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"collection_description"];
                goto LABEL_276;
              case 33554455:
                v4 = [*(this + 12) objectForKey:@"copyright"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"copyright"];
                goto LABEL_276;
              case 33554456:
                v4 = [*(this + 12) objectForKey:@"genius_checksum"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"genius_checksum"];
                goto LABEL_276;
              case 33554457:
                goto LABEL_16;
              case 33554458:
                v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackLocationKind(this);
                goto LABEL_283;
              case 33554462:
                v4 = [*(this + 12) objectForKey:@"work"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"work"];
                goto LABEL_276;
              case 33554463:
                v4 = [*(this + 12) objectForKey:@"movement_name"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"movement_name"];
                goto LABEL_276;
              case 33554464:
                v4 = [*(this + 12) objectForKey:@"movement_count"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"movement_count"];
                goto LABEL_276;
              case 33554465:
                v4 = [*(this + 12) objectForKey:@"movement_number"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_277;
                }

                v9 = [*(this + 12) objectForKey:@"movement_number"];
                goto LABEL_276;
              default:
                goto LABEL_282;
            }
        }
      }

      switch(a2)
      {
        case 83886081:
          v4 = [*(this + 13) objectForKey:@"user_rating"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"user_rating"];
          goto LABEL_276;
        case 83886082:
        case 83886095:
LABEL_18:
          v3 = MEMORY[0x277CBEC28];
          goto LABEL_279;
        case 83886083:
        case 83886098:
        case 83886100:
          goto LABEL_279;
        case 83886084:
          v4 = [*(this + 13) objectForKey:@"play_count_user"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"play_count_user"];
          goto LABEL_276;
        case 83886085:
          v4 = [*(this + 13) objectForKey:@"play_count_recent"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"play_count_recent"];
          goto LABEL_276;
        case 83886086:
          v4 = [*(this + 13) objectForKey:@"has_been_played"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"has_been_played"];
          goto LABEL_276;
        case 83886087:
          v4 = [*(this + 13) objectForKey:@"date_played"];
          if (!v4)
          {
            goto LABEL_277;
          }

          v17 = MEMORY[0x277CCABB0];
          v5 = [*(this + 13) objectForKey:@"date_played"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            goto LABEL_194;
          }

          v19 = 0;
          goto LABEL_300;
        case 83886088:
          v4 = [*(this + 13) objectForKey:@"date_skipped"];
          if (!v4)
          {
            goto LABEL_277;
          }

          v17 = MEMORY[0x277CCABB0];
          v5 = [*(this + 13) objectForKey:@"date_skipped"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v19 = [*(this + 13) objectForKey:@"date_skipped"];
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_300;
        case 83886089:
          v4 = [*(this + 13) objectForKey:@"date_played"];
          if (!v4)
          {
            goto LABEL_277;
          }

          v17 = MEMORY[0x277CCABB0];
          v5 = [*(this + 13) objectForKey:@"date_played"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
LABEL_194:
            v19 = [*(this + 13) objectForKey:@"date_played"];
          }

          else
          {
            v19 = 0;
          }

LABEL_300:
          [v19 timeIntervalSinceReferenceDate];
          v3 = [v17 numberWithDouble:?];
          if (isKindOfClass)
          {
          }

          goto LABEL_306;
        case 83886090:
          v4 = [*(this + 12) objectForKey:@"is_alarm"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"is_alarm"];
          goto LABEL_276;
        case 83886091:
          v4 = [*(this + 13) objectForKey:@"skip_count_user"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"skip_count_user"];
          goto LABEL_276;
        case 83886092:
          v4 = [*(this + 13) objectForKey:@"skip_count_recent"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"skip_count_recent"];
          goto LABEL_276;
        case 83886093:
          v4 = [*(this + 12) objectForKey:@"remember_bookmark"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"remember_bookmark"];
          goto LABEL_276;
        case 83886094:
          v4 = [*(this + 13) objectForKey:@"bookmark_time_ms"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"bookmark_time_ms"];
          goto LABEL_276;
        case 83886096:
          v4 = [*(this + 12) objectForKey:@"chosen_by_auto_fill"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"chosen_by_auto_fill"];
          goto LABEL_276;
        case 83886097:
          v4 = [*(this + 13) objectForKey:@"liked_state"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 13) objectForKey:@"liked_state"];
          goto LABEL_276;
        case 83886099:
          v4 = [*(this + 13) objectForKey:@"user_rating_is_derived"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [*(this + 13) objectForKey:@"user_rating_is_derived"];
LABEL_276:
            v3 = v9;
          }

          else
          {
LABEL_277:
            v3 = 0;
          }

          break;
        default:
          if ((a2 - 67108865) >= 5)
          {
LABEL_282:
            v8 = ML3ITunesSyncImportItem::_getFoundationValue(this, a2);
LABEL_283:
            v3 = v8;
          }

          goto LABEL_279;
      }
    }

    else if (a2 <= 117440512)
    {
      switch(a2)
      {
        case 100663297:
          v23 = [*(this + 16) objectForKey:@"store_item_id"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(this + 16) objectForKey:@"store_item_id"];
          }

          else
          {
            v24 = 0;
          }

          if ([v24 longLongValue] == -1)
          {
            v3 = &unk_2840C90C8;
          }

          else
          {
            v3 = v24;
          }

          goto LABEL_279;
        case 100663298:
          v4 = [*(this + 16) objectForKey:@"composer_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"composer_id"];
          goto LABEL_276;
        case 100663299:
          v4 = [*(this + 16) objectForKey:@"genre_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"genre_id"];
          goto LABEL_276;
        case 100663300:
          v4 = [*(this + 16) objectForKey:@"playlist_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"playlist_id"];
          goto LABEL_276;
        case 100663301:
          v4 = [*(this + 16) objectForKey:@"storefront_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"storefront_id"];
          goto LABEL_276;
        case 100663302:
          v4 = [*(this + 12) objectForKey:@"purchase_history_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"purchase_history_id"];
          goto LABEL_276;
        case 100663303:
          v4 = [*(this + 12) objectForKey:@"purchase_history_token"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"purchase_history_token"];
          goto LABEL_276;
        case 100663304:
        case 100663305:
        case 100663306:
        case 100663315:
        case 100663324:
        case 100663330:
        case 100663331:
        case 100663332:
        case 100663333:
        case 100663334:
        case 100663340:
        case 100663341:
        case 100663342:
        case 100663348:
        case 100663349:
        case 100663350:
        case 100663351:
        case 100663352:
        case 100663353:
        case 100663354:
        case 100663355:
        case 100663356:
        case 100663357:
        case 100663358:
          goto LABEL_279;
        case 100663307:
          v4 = [*(this + 12) objectForKey:@"cloud_status"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"cloud_status"];
          goto LABEL_276;
        case 100663309:
        case 100663336:
        case 100663337:
        case 100663338:
        case 100663339:
        case 100663343:
        case 100663344:
        case 100663345:
        case 100663347:
          goto LABEL_16;
        case 100663310:
          goto LABEL_18;
        case 100663311:
          v4 = [*(this + 16) objectForKey:@"store_kind"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"store_kind"];
          goto LABEL_276;
        case 100663312:
          v4 = [*(this + 16) objectForKey:@"account_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"account_id"];
          goto LABEL_276;
        case 100663313:
          v4 = [*(this + 16) objectForKey:@"download_account_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"download_account_id"];
          goto LABEL_276;
        case 100663314:
          v4 = [*(this + 16) objectForKey:@"family_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"family_id"];
          goto LABEL_276;
        case 100663316:
          v4 = [*(this + 16) objectForKey:@"key_versions"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"key_versions"];
          goto LABEL_276;
        case 100663317:
          v4 = [*(this + 16) objectForKey:@"key_platform_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"key_platform_id"];
          goto LABEL_276;
        case 100663318:
          v4 = [*(this + 16) objectForKey:@"key_id"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"key_id"];
          goto LABEL_276;
        case 100663319:
          v4 = [*(this + 12) objectForKey:@"key_id_2"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 12) objectForKey:@"key_id_2"];
          goto LABEL_276;
        case 100663320:
          v4 = [*(this + 16) objectForKey:@"date_purchased"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"date_purchased"];
          goto LABEL_276;
        case 100663321:
          v4 = [*(this + 16) objectForKey:@"date_released"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"date_released"];
          goto LABEL_276;
        case 100663322:
          v4 = [*(this + 14) objectForKey:@"external_guid"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 14) objectForKey:@"external_guid"];
          goto LABEL_276;
        case 100663323:
          v4 = [*(this + 14) objectForKey:@"feed_url"];
          v5 = v4;
          if (!v4)
          {
            v5 = [*(this + 12) objectForKey:@"feed_url"];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [*(this + 14) objectForKey:@"feed_url"];
            if (v6)
            {
LABEL_125:
              v7 = v6;
            }

            else
            {
              v7 = [*(this + 12) objectForKey:@"feed_url"];
            }

LABEL_304:
            v3 = v7;
          }

          else
          {
LABEL_224:
            v3 = 0;
          }

          if (!v4)
          {
            break;
          }

          goto LABEL_278;
        case 100663325:
          v4 = [*(this + 16) objectForKey:@"xid"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"xid"];
          goto LABEL_276;
        case 100663326:
          v4 = [*(this + 16) objectForKey:@"flavor"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"flavor"];
          goto LABEL_276;
        case 100663327:
          v4 = [*(this + 16) objectForKey:@"matched_status"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"matched_status"];
          goto LABEL_276;
        case 100663328:
          v4 = [*(this + 16) objectForKey:@"redownloaded_status"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_277;
          }

          v9 = [*(this + 16) objectForKey:@"redownloaded_status"];
          goto LABEL_276;
        case 100663346:
          v4 = [*(this + 12) objectForKey:@"is_playlist_only"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v3 = &unk_2840C90E0;
            goto LABEL_278;
          }

          v5 = [*(this + 12) objectForKey:@"is_playlist_only"];
          if (v5)
          {
            v22 = MEMORY[0x277CCABB0];
            v20 = [*(this + 12) objectForKey:@"is_playlist_only"];
            v21 = [v22 numberWithBool:{objc_msgSend(v20, "BOOLValue") ^ 1}];
            goto LABEL_159;
          }

          v3 = &unk_2840C90E0;
          break;
        default:
          goto LABEL_282;
      }

LABEL_306:
    }

    else
    {
      if (a2 > 150994945)
      {
        switch(a2)
        {
          case 167772161:
            v4 = [*(this + 12) objectForKey:@"artist"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"artist"];
            goto LABEL_276;
          case 167772162:
            v4 = [*(this + 17) objectForKey:@"series_name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"series_name"];
            goto LABEL_276;
          case 167772163:
            v4 = [*(this + 12) objectForKey:@"album_artist"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"album_artist"];
            goto LABEL_276;
          case 167772164:
            v4 = [*(this + 12) objectForKey:@"album"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"album"];
            goto LABEL_276;
          case 167772165:
            v4 = [*(this + 12) objectForKey:@"composer"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"composer"];
            goto LABEL_276;
          case 167772166:
            v4 = [*(this + 12) objectForKey:@"genre"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"genre"];
            goto LABEL_276;
          case 167772167:
            v4 = [*(this + 12) objectForKey:@"sort_artist"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"sort_artist"];
            goto LABEL_276;
          case 167772168:
            v4 = [*(this + 17) objectForKey:@"sort_series_name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"sort_series_name"];
            goto LABEL_276;
          case 167772169:
            v4 = [*(this + 12) objectForKey:@"sort_album_artist"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"sort_album_artist"];
            goto LABEL_276;
          case 167772170:
            v4 = [*(this + 12) objectForKey:@"sort_album"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"sort_album"];
            goto LABEL_276;
          case 167772171:
            v4 = [*(this + 12) objectForKey:@"sort_composer"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"sort_composer"];
            goto LABEL_276;
          case 167772172:
            goto LABEL_282;
          case 167772173:
            v4 = [*(this + 10) objectForKey:@"location"];
            v5 = [v4 objectForKey:@"location"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_109;
            }

            v13 = [*(this + 10) objectForKey:@"location"];
            v14 = [v13 objectForKey:@"location"];

            v3 = v14;
            goto LABEL_306;
          case 167772174:
          case 167772175:
          case 167772176:
          case 167772177:
          case 167772178:
          case 167772179:
          case 167772181:
          case 167772184:
          case 167772187:
          case 167772188:
            goto LABEL_279;
          case 167772180:
            v4 = [*(this + 16) objectForKey:@"artist_id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 16) objectForKey:@"artist_id"];
            goto LABEL_276;
          case 167772182:
            v4 = [*(this + 13) objectForKey:@"album_liked_state"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 13) objectForKey:@"album_liked_state"];
            goto LABEL_276;
          case 167772183:
            v4 = [*(this + 12) objectForKey:@"artwork_cache_id"];
            objc_opt_class();
            v15 = objc_opt_isKindOfClass();
            if (v15)
            {
              v16 = [*(this + 12) objectForKey:@"artwork_cache_id"];
            }

            else
            {
              v16 = 0;
            }

            v3 = [v16 stringValue];
            if (v15)
            {
            }

            goto LABEL_278;
          case 167772185:
            v4 = [*(this + 13) objectForKey:@"album_rating"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 13) objectForKey:@"album_rating"];
            goto LABEL_276;
          case 167772186:
            v4 = [*(this + 13) objectForKey:@"album_rating_is_derived"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 13) objectForKey:@"album_rating_is_derived"];
            goto LABEL_276;
          default:
            if ((a2 - 150994947) < 3)
            {
              goto LABEL_279;
            }

            if (a2 != 150994946)
            {
              goto LABEL_282;
            }

            v4 = [*(this + 18) objectForKey:@"checksum"];
            objc_opt_class();
            v3 = &unk_2840C90C8;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_278;
            }

            v10 = [*(this + 18) objectForKey:@"checksum"];
            v11 = v10;
            if (v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = &unk_2840C90C8;
            }

            break;
        }
      }

      else
      {
        switch(a2)
        {
          case 117440513:
            v4 = [*(this + 17) objectForKey:@"quality"];
            v5 = v4;
            if (!v4)
            {
              v5 = [*(this + 17) objectForKey:@"is_hd"];
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_224;
            }

            v6 = [*(this + 17) objectForKey:@"quality"];
            if (v6)
            {
              goto LABEL_125;
            }

            v7 = [*(this + 17) objectForKey:@"is_hd"];
            goto LABEL_304;
          case 117440514:
            v4 = [*(this + 12) objectForKey:@"is_rental"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"is_rental"];
            goto LABEL_276;
          case 117440515:
            v4 = [*(this + 12) objectForKey:@"has_chapter_data"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 12) objectForKey:@"has_chapter_data"];
            goto LABEL_276;
          case 117440516:
            v4 = [*(this + 17) objectForKey:@"season_number"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"season_number"];
            goto LABEL_276;
          case 117440517:
            v4 = [*(this + 17) objectForKey:@"episode_id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"episode_id"];
            goto LABEL_276;
          case 117440518:
            v4 = [*(this + 17) objectForKey:@"network_name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"network_name"];
            goto LABEL_276;
          case 117440519:
            v4 = [*(this + 17) objectForKey:@"extended_content_rating"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"extended_content_rating"];
            goto LABEL_276;
          case 117440520:
            v4 = [*(this + 17) objectForKey:@"movie_info"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"movie_info"];
            goto LABEL_276;
          case 117440521:
            v4 = [*(this + 17) objectForKey:@"has_alternate_audio"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"has_alternate_audio"];
            goto LABEL_276;
          case 117440522:
            v4 = [*(this + 17) objectForKey:@"has_subtitles"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"has_subtitles"];
            goto LABEL_276;
          case 117440523:
            v4 = [*(this + 17) objectForKey:@"audio_language"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"audio_language"];
            goto LABEL_276;
          case 117440524:
            v4 = [*(this + 17) objectForKey:@"audio_track_index"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"audio_track_index"];
            goto LABEL_276;
          case 117440525:
            v4 = [*(this + 17) objectForKey:@"audio_track_id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"audio_track_id"];
            goto LABEL_276;
          case 117440526:
            v4 = [*(this + 17) objectForKey:@"subtitle_language"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"subtitle_language"];
            goto LABEL_276;
          case 117440527:
            v4 = [*(this + 17) objectForKey:@"subtitle_track_index"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"subtitle_track_index"];
            goto LABEL_276;
          case 117440528:
            v4 = [*(this + 15) objectForKey:@"rental_duration"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 15) objectForKey:@"rental_duration"];
            goto LABEL_276;
          case 117440529:
            v4 = [*(this + 15) objectForKey:@"rental_playback_duration"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 15) objectForKey:@"rental_playback_duration"];
            goto LABEL_276;
          case 117440530:
            v4 = [*(this + 15) objectForKey:@"rental_playback_date_started"];
            if (!v4)
            {
              goto LABEL_277;
            }

            v17 = MEMORY[0x277CCABB0];
            v5 = [*(this + 15) objectForKey:@"rental_playback_date_started"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v19 = [*(this + 15) objectForKey:@"rental_playback_date_started"];
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_300;
          case 117440531:
            v4 = [*(this + 15) objectForKey:@"rental_date_started"];
            if (!v4)
            {
              goto LABEL_277;
            }

            v17 = MEMORY[0x277CCABB0];
            v5 = [*(this + 15) objectForKey:@"rental_date_started"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v19 = [*(this + 15) objectForKey:@"rental_date_started"];
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_300;
          case 117440532:
            v4 = [*(this + 15) objectForKey:@"is_demo"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 15) objectForKey:@"is_demo"];
            goto LABEL_276;
          case 117440533:
          case 117440534:
          case 117440539:
          case 117440542:
          case 117440543:
          case 117440544:
          case 117440545:
          case 117440546:
          case 117440547:
          case 117440548:
          case 117440549:
          case 117440550:
            goto LABEL_279;
          case 117440535:
            v4 = [*(this + 15) objectForKey:@"show_sort_type"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 15) objectForKey:@"show_sort_type"];
            goto LABEL_276;
          case 117440536:
            v4 = [*(this + 15) objectForKey:@"episode_type"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 15) objectForKey:@"episode_type"];
            goto LABEL_276;
          case 117440537:
            v4 = [*(this + 17) objectForKey:@"episode_type_display_name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"episode_type_display_name"];
            goto LABEL_276;
          case 117440538:
            v4 = [*(this + 17) objectForKey:@"episode_sub_sort_order"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"episode_sub_sort_order"];
            goto LABEL_276;
          case 117440540:
            goto LABEL_16;
          case 117440541:
            v4 = [*(this + 17) objectForKey:@"color_capability"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_277;
            }

            v9 = [*(this + 17) objectForKey:@"color_capability"];
            goto LABEL_276;
          default:
            if (a2 == 134217729)
            {
              v8 = ML3ITunesSyncTrackImportItem::_getCurrentTrackChapterData(this);
              goto LABEL_283;
            }

            if (a2 != 150994945)
            {
              goto LABEL_282;
            }

            v4 = [*(this + 18) objectForKey:@"checksum"];
            objc_opt_class();
            v3 = &unk_2840C90C8;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_278;
            }

            v11 = [*(this + 18) objectForKey:@"checksum"];
            if (v11)
            {
              v12 = 0;
            }

            else
            {
              v12 = &unk_2840C90C8;
            }

            break;
        }
      }

      v3 = v12;
    }

LABEL_278:
  }

LABEL_279:

  return v3;
}