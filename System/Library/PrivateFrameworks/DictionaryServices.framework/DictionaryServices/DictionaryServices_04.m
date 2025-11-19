uint64_t marisa::grimoire::algorithm::details::median<marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 - a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 - a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 - a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t marisa::grimoire::algorithm::details::insertion_sort<marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 + 16);
  if (a1 + 16 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v14 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 2;
        v10 = marisa::grimoire::algorithm::details::compare<marisa::grimoire::trie::Entry>((v8 - 2), v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 2);
        *(v8 - 2) = *v8;
        v12 = v8[1];
        *v8 = v11;
        v13 = *(v8 - 1);
        *(v8 - 1) = v12;
        v8[1] = v13;
        v8 -= 2;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v14 = v10 != 0;
    }

    v7 += v14;
    v3 += 2;
  }

  while (v3 < a2);
  return v7;
}

uint64_t marisa::grimoire::algorithm::details::compare<marisa::grimoire::trie::Entry>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 - a3);
    v8 = (*a1 - a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

uint64_t marisa::grimoire::vector::Vector<char>::read_(uint64_t a1, marisa::grimoire::io::Reader *this)
{
  v6 = 0;
  marisa::grimoire::io::Reader::read_data(this, &v6, 8uLL);
  v4 = v6;
  marisa::grimoire::vector::Vector<char>::resize(a1, v6);
  marisa::grimoire::io::Reader::read<char>(this, *(a1 + 8), v4);
  return marisa::grimoire::io::Reader::seek(this, -v6 & 7);
}

uint64_t marisa::grimoire::io::Reader::read<char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h";
    exception[2] = 0x20000001FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Reader::read_data(a1, a2, a3);
}

uint64_t marisa::grimoire::vector::Vector<char>::write_(uint64_t a1, marisa::grimoire::io::Writer *this)
{
  __buf = *(a1 + 24);
  marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  marisa::grimoire::io::Writer::write<char>(this, *(a1 + 16), *(a1 + 24));
  return marisa::grimoire::io::Writer::seek(this, -*(a1 + 24) & 7);
}

uint64_t marisa::grimoire::io::Writer::write<char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h";
    exception[2] = 0x20000001ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Writer::write_data(a1, a2, a3);
}

uint64_t marisa::grimoire::vector::BitVector::rank1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t marisa::grimoire::vector::BitVector::select0(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

unint64_t marisa::grimoire::vector::anonymous namespace::select_bit(marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

unint64_t marisa::grimoire::vector::BitVector::select1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

void marisa::grimoire::vector::BitVector::build_index(marisa::grimoire::vector::BitVector *this, const marisa::grimoire::vector::BitVector *a2, int a3, int a4)
{
  v8 = *(a2 + 6);
  if ((v8 & 0x1FF) != 0)
  {
    v9 = (v8 >> 9) + 1;
  }

  else
  {
    v9 = v8 >> 9;
  }

  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::resize(this + 8, v9 + 1);
  v10 = *(a2 + 6);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_56;
  }

  v11 = 0;
  v12 = 0;
  for (i = 0; i < v10; ++i)
  {
    if ((i & 0x3F) != 0)
    {
      goto LABEL_24;
    }

    v14 = (i >> 6) & 7;
    v15 = (*(this + 9) + 12 * (i >> 9));
    if (v14 <= 3)
    {
      if (((i >> 6) & 7) > 1)
      {
        if (v14 == 2)
        {
          v18 = (v12 - *v15);
          v17 = v15[1] & 0xFFFF807F | ((v12 - *v15) << 7);
        }

        else
        {
          v20 = (v12 - *v15);
          v17 = v15[1] & 0xFF807FFF | ((v12 - *v15) << 15);
        }
      }

      else
      {
        if (!v14)
        {
          *v15 = v12;
          goto LABEL_24;
        }

        v17 = v15[1] & 0xFFFFFF80 | (v12 - *v15) & 0x7F;
      }

      goto LABEL_21;
    }

    if (((i >> 6) & 7) > 5)
    {
      if (v14 == 6)
      {
        v19 = v15[2] & 0xFFFC01FF | (((v12 - *v15) & 0x1FF) << 9);
      }

      else
      {
        v19 = v15[2] & 0xF803FFFF | (((v12 - *v15) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v14 == 4)
      {
        v16 = (v12 - *v15);
        v17 = v15[1] & 0x7FFFFF | ((v12 - *v15) << 23);
LABEL_21:
        v15[1] = v17;
        goto LABEL_24;
      }

      v19 = v15[2] & 0xFFFFFE00 | (v12 - *v15) & 0x1FF;
    }

    v15[2] = v19;
LABEL_24:
    if ((*(*(a2 + 2) + 8 * (i >> 6)) >> (i & 0x3F)))
    {
      if (a4 && (v12 & 0x1FF) == 0)
      {
        v37 = i;
        marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v37);
      }

      ++v12;
    }

    else
    {
      if (a3 && (v11 & 0x1FF) == 0)
      {
        v37 = i;
        marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v37);
      }

      ++v11;
    }

    v10 = *(a2 + 6);
  }

  if ((v10 & 0x1FF) != 0)
  {
    v21 = (v10 - 1) >> 9;
    v22 = ((v10 - 1) >> 6) & 7;
    if (v22 <= 3)
    {
      if ((((v10 - 1) >> 6) & 7) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(this + 9);
          v27 = (v23 + 12 * v21);
          v28 = v27[1];
          v25 = v12 - *v27;
          goto LABEL_49;
        }

        v23 = *(this + 9);
        v35 = (v23 + 12 * v21);
        v32 = v35[1];
        v25 = v12 - *v35;
      }

      else
      {
        if (v22)
        {
          v23 = *(this + 9);
          v31 = (v23 + 12 * v21);
          v26 = v31[1];
          v25 = v12 - *v31;
        }

        else
        {
          v23 = *(this + 9);
          v24 = (v23 + 12 * v21);
          v25 = v12 - *v24;
          v26 = v24[1] & 0xFFFFFF80 | v25 & 0x7F;
          v24[1] = v26;
        }

        v28 = v26 & 0xFFFF807F | (v25 << 7);
        *(v23 + 12 * v21 + 4) = v28;
LABEL_49:
        v32 = v28 & 0xFF807FFF | (v25 << 15);
        *(v23 + 12 * v21 + 4) = v32;
      }

      *(v23 + 12 * v21 + 4) = v32 & 0x7FFFFF | (v25 << 23);
LABEL_53:
      v36 = v23 + 12 * v21;
      v34 = *(v36 + 8) & 0xFFFFFE00 | v25 & 0x1FF;
      *(v36 + 8) = v34;
      goto LABEL_54;
    }

    if ((((v10 - 1) >> 6) & 7) > 5)
    {
      if (v22 != 7)
      {
        v23 = *(this + 9);
        v29 = (v23 + 12 * v21);
        v30 = v29[2];
        v25 = v12 - *v29;
        goto LABEL_55;
      }
    }

    else
    {
      if (v22 == 4)
      {
        v23 = *(this + 9);
        v25 = v12 - *(v23 + 12 * v21);
        goto LABEL_53;
      }

      v23 = *(this + 9);
      v33 = (v23 + 12 * v21);
      v34 = v33[2];
      v25 = v12 - *v33;
LABEL_54:
      v30 = v34 & 0xFFFC01FF | ((v25 & 0x1FF) << 9);
      *(v23 + 12 * v21 + 8) = v30;
LABEL_55:
      *(v23 + 12 * v21 + 8) = v30 & 0xF803FFFF | ((v25 & 0x1FF) << 18);
    }
  }

LABEL_56:
  *(this + 6) = v10;
  *(this + 7) = *(a2 + 7);
  *(*(this + 9) + 12 * *(this + 11) - 12) = v12;
  if (a3)
  {
    v37 = *(a2 + 6);
    marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 14, &v37);
    marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 28);
  }

  if (a4)
  {
    v37 = *(a2 + 6);
    marisa::grimoire::vector::Vector<unsigned int>::push_back(this + 20, &v37);
    marisa::grimoire::vector::Vector<unsigned int>::shrink(this + 40);
  }
}

uint64_t *marisa::grimoire::vector::Vector<unsigned int>::push_back(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *marisa::grimoire::vector::Vector<unsigned int>::shrink(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v2);
  }

  return result;
}

double marisa::Keyset::Keyset(marisa::Keyset *this)
{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

int64x2_t marisa::Keyset::push_back(uint64_t a1, uint64_t a2)
{
  v4 = marisa::Keyset::reserve(a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v5 = 0;
    do
    {
      *(v4 + v5) = *(*a2 + v5);
      ++v5;
      v6 = *(a2 + 8);
    }

    while (v5 < v6);
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(*(a1 + 48) + ((*(a1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 88);
  *v8 = v4;
  *(v8 + 8) = v7;
  *(v8 + 12) = *(a2 + 12);
  v9.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v9.i64[1] = v6;
  result = vaddq_s64(*(a1 + 88), v9);
  *(a1 + 88) = result;
  return result;
}

size_t marisa::Keyset::reserve(size_t *this, size_t __sz)
{
  if (this[7] == this[11] >> 8)
  {
    marisa::Keyset::append_key_block(this);
  }

  if (__sz < 0x401)
  {
    v5 = this[10];
    if (v5 < __sz)
    {
      marisa::Keyset::append_base_block(this);
      v5 = this[10];
    }

    result = this[9];
    this[9] = result + __sz;
    this[10] = v5 - __sz;
  }

  else
  {
    marisa::Keyset::append_extra_block(this, __sz);
    return *(this[3] + 8 * this[4] - 8);
  }

  return result;
}

int64x2_t marisa::Keyset::push_back(marisa::Keyset *this, uint64_t a2, char a3)
{
  if (*(this + 7) == *(this + 11) >> 8)
  {
    marisa::Keyset::append_key_block(this);
  }

  v6 = marisa::Keyset::reserve(this, *(a2 + 8) + 1);
  if (*(a2 + 8))
  {
    v7 = 0;
    do
    {
      *(v6 + v7) = *(*a2 + v7);
      ++v7;
      v8 = *(a2 + 8);
    }

    while (v7 < v8);
  }

  else
  {
    v8 = 0;
  }

  *(v6 + v8) = a3;
  v9 = *(*(this + 6) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11);
  v10 = *(a2 + 8);
  *v9 = v6;
  *(v9 + 8) = v10;
  *(v9 + 12) = *(a2 + 12);
  v11.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v11.i64[1] = v10;
  result = vaddq_s64(*(this + 88), v11);
  *(this + 88) = result;
  return result;
}

uint64_t marisa::Keyset::append_key_block(marisa::Keyset *this)
{
  v2 = *(this + 7);
  if (v2 == *(this + 8))
  {
    if (v2)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 >> 61 != 0;
    if (8 * v3 >= 0xFFFFFFFFFFFFFFF0)
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = -1;
    }

    else
    {
      v5 = 8 * v3 + 16;
    }

    v6 = operator new[](v5, MEMORY[0x277D826F0]);
    if (!v6)
    {
      v20 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_282F96898;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x8000000A9;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:169: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v6 = 8;
    v6[1] = v3;
    v7 = (v6 + 2);
    if (v3)
    {
      bzero(v6 + 2, 8 * v3);
    }

    v20 = v7;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v9 = *(this + 6);
        v10 = v20;
        v11 = *(v9 + 8 * i);
        *(v9 + 8 * i) = *(v20 + 8 * i);
        *(v10 + 8 * i) = v11;
      }

      v7 = v20;
    }

    v12 = *(this + 6);
    *(this + 6) = v7;
    v20 = v12;
    *(this + 8) = v3;
    marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(&v20);
  }

  v13 = operator new[](0x1000uLL, MEMORY[0x277D826F0]);
  if (!v13)
  {
    v18 = __cxa_allocate_exception(0x20uLL);
    *v18 = &unk_282F96898;
    v18[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v18[2] = 0x8000000B1;
    v18[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:177: MARISA_MEMORY_ERROR: new_block.get() == NULL";
  }

  v14 = v13;
  bzero(v13, 0x1000uLL);
  v16 = *(this + 6);
  v15 = *(this + 7);
  *(this + 7) = v15 + 1;
  result = *(v16 + 8 * v15);
  *(v16 + 8 * v15) = v14;
  if (result)
  {
    return MEMORY[0x223D5E5B0](result, 0x1050C80717B85FCLL);
  }

  return result;
}

void sub_21E5C6244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

double marisa::Keyset::push_back(marisa::Keyset *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x200000032;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:50: MARISA_NULL_ERROR: str == NULL";
  }

  v3 = 0;
    ;
  }

  *&result = marisa::Keyset::push_back(this, a2, v3 - 1, 1.0).u64[0];
  return result;
}

int64x2_t marisa::Keyset::push_back(marisa::Keyset *this, const char *a2, size_t __sz, float a4)
{
  v6 = a2;
  if (!a2 && __sz)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x20000003DLL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:61: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
    goto LABEL_10;
  }

  if (HIDWORD(__sz))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x70000003ELL;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:62: MARISA_SIZE_ERROR: length > MARISA_UINT32_MAX";
LABEL_10:
    exception[3] = v16;
  }

  v8 = marisa::Keyset::reserve(this, __sz);
  if (__sz)
  {
    v9 = v8;
    v10 = __sz;
    do
    {
      v11 = *v6++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  v12 = *(*(this + 6) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11);
  *v12 = v8;
  *(v12 + 8) = __sz;
  *(v12 + 12) = a4;
  v13.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v13.i64[1] = __sz;
  result = vaddq_s64(*(this + 88), v13);
  *(this + 88) = result;
  return result;
}

double marisa::Keyset::reset(marisa::Keyset *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t *marisa::Keyset::clear(marisa::Keyset *this)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  marisa::Keyset::swap(v2, this);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v3);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v2[1] + 1);
  return marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v2);
}

uint64_t *marisa::Keyset::swap(uint64_t *this, marisa::Keyset *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(a2 + 1);
  *this = *a2;
  this[1] = v4;
  *a2 = v2;
  *(a2 + 1) = v3;
  v5 = this[2];
  v6 = this[3];
  v7 = *(a2 + 3);
  this[2] = *(a2 + 2);
  this[3] = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  v8 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = this[5];
  v10 = this[6];
  v11 = *(a2 + 6);
  this[5] = *(a2 + 5);
  this[6] = v11;
  *(a2 + 5) = v9;
  *(a2 + 6) = v10;
  v12 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = this[8];
  v14 = this[9];
  v15 = *(a2 + 9);
  this[8] = *(a2 + 8);
  this[9] = v15;
  *(a2 + 8) = v13;
  *(a2 + 9) = v14;
  v16 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v18;
  return this;
}

void *marisa::Keyset::append_extra_block(marisa::Keyset *this, size_t __sz)
{
  v4 = *(this + 4);
  if (v4 == *(this + 5))
  {
    if (v4)
    {
      v5 = 2 * v4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5 >> 61 != 0;
    if (8 * v5 >= 0xFFFFFFFFFFFFFFF0)
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 8 * v5 + 16;
    }

    v8 = operator new[](v7, MEMORY[0x277D826F0]);
    if (!v8)
    {
      v21 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_282F96898;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000097;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:151: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v8 = 8;
    v8[1] = v5;
    v9 = (v8 + 2);
    if (v5)
    {
      bzero(v8 + 2, 8 * v5);
    }

    v21 = v9;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v11 = *(this + 3);
        v12 = v21;
        v13 = *(v11 + 8 * i);
        *(v11 + 8 * i) = *(v21 + 8 * i);
        *(v12 + 8 * i) = v13;
      }

      v9 = v21;
    }

    v14 = *(this + 3);
    *(this + 3) = v9;
    v21 = v14;
    *(this + 5) = v5;
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v21);
  }

  result = operator new[](__sz, MEMORY[0x277D826F0]);
  if (!result)
  {
    v19 = __cxa_allocate_exception(0x20uLL);
    *v19 = &unk_282F96898;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v19[2] = 0x80000009FLL;
    v19[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:159: MARISA_MEMORY_ERROR: new_block.get() == NULL";
  }

  v17 = *(this + 3);
  v16 = *(this + 4);
  *(this + 4) = v16 + 1;
  v18 = *(v17 + 8 * v16);
  *(v17 + 8 * v16) = result;
  if (v18)
  {
    return MEMORY[0x223D5E5B0](v18, 0x1000C8077774924);
  }

  return result;
}

void sub_21E5C6748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

uint64_t *marisa::Keyset::append_base_block(uint64_t *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 == this[2])
  {
    if (v2)
    {
      v3 = 2 * v2;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 >> 61 != 0;
    if (8 * v3 >= 0xFFFFFFFFFFFFFFF0)
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = -1;
    }

    else
    {
      v5 = 8 * v3 + 16;
    }

    v6 = operator new[](v5, MEMORY[0x277D826F0]);
    if (!v6)
    {
      v16 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_282F96898;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000081;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:129: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v6 = 8;
    v6[1] = v3;
    v7 = (v6 + 2);
    if (v3)
    {
      bzero(v6 + 2, 8 * v3);
    }

    v16 = v7;
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v9 = v16;
        v10 = *(*v1 + 8 * i);
        *(*v1 + 8 * i) = *(v16 + 8 * i);
        *(v9 + 8 * i) = v10;
      }

      v7 = v16;
    }

    v11 = *v1;
    *v1 = v7;
    v16 = v11;
    v1[2] = v3;
    this = marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v16);
    v2 = v1[1];
  }

  v12 = *v1;
  v13 = *(*v1 + 8 * v2);
  if (!v13)
  {
    this = operator new[](0x1000uLL, MEMORY[0x277D826F0]);
    if (!this)
    {
      v15 = __cxa_allocate_exception(0x20uLL);
      *v15 = &unk_282F96898;
      v15[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      v15[2] = 0x80000008ALL;
      v15[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:138: MARISA_MEMORY_ERROR: new_block.get() == NULL";
    }

    *(v12 + 8 * v2) = this;
    v13 = *(*v1 + 8 * v2);
  }

  v1[1] = v2 + 1;
  v1[9] = v13;
  v1[10] = 4096;
  return this;
}

void sub_21E5C694C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::build(marisa::grimoire::trie::LoudsTrie **this, marisa::Keyset *a2, unsigned int a3)
{
  v6 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    v11 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x80000000ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:14: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v11 = v7;
  marisa::grimoire::trie::LoudsTrie::build(v7, a2, a3);
  v8 = *this;
  *this = v7;
  v11 = v8;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::mmap(marisa::grimoire::trie::LoudsTrie **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:21: MARISA_NULL_ERROR: filename == NULL";
  }

  v4 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_282F96898;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x800000018;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:24: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Mapper::Mapper(v10);
  marisa::grimoire::io::Mapper::open(v10, a2);
  marisa::grimoire::trie::LoudsTrie::map(v11, v10);
  v6 = *this;
  *this = v11;
  v11 = v6;
  marisa::grimoire::io::Mapper::~Mapper(v10);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

void sub_21E5C6BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::map(marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_282F96898;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  marisa::grimoire::io::Mapper::Mapper(v12);
  marisa::grimoire::io::Mapper::open(v12, a2, a3);
  marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  marisa::grimoire::io::Mapper::~Mapper(v12);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_21E5C6D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::load(marisa::grimoire::trie::LoudsTrie **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x20000002DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:45: MARISA_NULL_ERROR: filename == NULL";
  }

  v4 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_282F96898;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x800000030;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:48: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a2);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *this;
  *this = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

void sub_21E5C6F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::read(marisa::grimoire::trie::LoudsTrie **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x500000039;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:57: MARISA_CODE_ERROR: fd == -1";
  }

  v4 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_282F96898;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x80000003CLL;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:60: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a2);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *this;
  *this = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

void sub_21E5C70D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

void marisa::Trie::save(marisa::grimoire::trie::LoudsTrie ***this, const char *a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000045;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:69: MARISA_STATE_ERROR: trie_.get() == NULL";
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000046;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:70: MARISA_NULL_ERROR: filename == NULL";
LABEL_6:
    exception[3] = v5;
  }

  marisa::grimoire::io::Reader::Reader(v6);
  marisa::grimoire::io::Writer::open(v6, a2);
  marisa::grimoire::trie::LoudsTrie::write(*this, v6);
  marisa::grimoire::io::Reader::~Reader(v6);
}

void marisa::Trie::write(marisa::grimoire::trie::LoudsTrie ***this, int a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000004ELL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:78: MARISA_STATE_ERROR: trie_.get() == NULL";
    goto LABEL_6;
  }

  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x50000004FLL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:79: MARISA_CODE_ERROR: fd == -1";
LABEL_6:
    exception[3] = v5;
  }

  marisa::grimoire::io::Reader::Reader(v6);
  marisa::grimoire::io::Writer::open(v6, a2);
  marisa::grimoire::trie::LoudsTrie::write(*this, v6);
  marisa::grimoire::io::Reader::~Reader(v6);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::lookup(result, a2);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::reverse_lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::reverse_lookup(result, a2);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::common_prefix_search(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::common_prefix_search(result, a2);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::predictive_search(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::predictive_search(result, a2);
  }

  return result;
}

uint64_t marisa::Trie::num_tries(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 1072);
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::num_keys(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 264);
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::num_nodes(marisa::Trie *this)
{
  if (*this)
  {
    return (*(*this + 48) >> 1) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::tail_mode(marisa::Trie *this)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return *(*this + 1084);
}

uint64_t marisa::Trie::node_order(marisa::Trie *this)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:139: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return *(*this + 1088);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::total_size(marisa::grimoire::trie::LoudsTrie **this)
{
  result = *this;
  if (result)
  {
    return marisa::grimoire::trie::LoudsTrie::total_size(result);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::io_size(marisa::grimoire::trie::LoudsTrie **this)
{
  result = *this;
  if (result)
  {
    return marisa::grimoire::trie::LoudsTrie::io_size(result);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::clear(marisa::grimoire::trie::LoudsTrie **this)
{
  v2 = *this;
  *this = 0;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v2);
}

uint64_t *marisa::Trie::swap(uint64_t *this, marisa::Trie *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  return this;
}

marisa::grimoire::trie::LoudsTrie **marisa::fread(__sFILE *this, __sFILE *a2, marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000DELL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:222: MARISA_NULL_ERROR: file == NULL";
    goto LABEL_8;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000DFLL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:223: MARISA_NULL_ERROR: trie == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return marisa::TrieIO::fread(this, a2, a3);
}

marisa::grimoire::trie::LoudsTrie **marisa::TrieIO::fread(__sFILE *this, __sFILE *a2, marisa::Trie *a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000B4;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:180: MARISA_NULL_ERROR: trie == NULL";
  }

  v5 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v5)
  {
    v12 = 0;
    v10 = __cxa_allocate_exception(0x20uLL);
    *v10 = &unk_282F96898;
    v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v10[2] = 0x8000000B8;
    v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:184: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v6 = v5;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v5);
  v12 = v6;
  marisa::grimoire::io::Reader::Reader(v11);
  marisa::grimoire::io::Reader::open(v11, this);
  marisa::grimoire::trie::LoudsTrie::read(v12, v11);
  p = a2->_p;
  a2->_p = v12;
  v12 = p;
  marisa::grimoire::io::Reader::~Reader(v11);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v12);
}

void sub_21E5C78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

void marisa::fwrite(__sFILE *this, __sFILE *a2, const marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000E4;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:228: MARISA_NULL_ERROR: file == NULL";
  }

  marisa::TrieIO::fwrite(this, a2, a3);
}

void marisa::TrieIO::fwrite(__sFILE *this, __sFILE *a2, const marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000C0;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:192: MARISA_NULL_ERROR: file == NULL";
    goto LABEL_6;
  }

  if (!a2->_p)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000C1;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:193: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
LABEL_6:
    exception[3] = v6;
  }

  marisa::grimoire::io::Reader::Reader(v7);
  marisa::grimoire::io::Writer::open(v7, this);
  marisa::grimoire::trie::LoudsTrie::write(a2->_p, v7);
  marisa::grimoire::io::Reader::~Reader(v7);
}

uint64_t marisa::read(uint64_t a1, marisa::grimoire::trie::LoudsTrie **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000E9;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:233: MARISA_NULL_ERROR: trie == NULL";
  }

  return marisa::TrieIO::read(a1, a2);
}

uint64_t marisa::TrieIO::read(uint64_t a1, marisa::grimoire::trie::LoudsTrie **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000C8;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:200: MARISA_NULL_ERROR: trie == NULL";
  }

  v4 = operator new(0x470uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_282F96898;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x8000000CCLL;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:204: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a1);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *a2;
  *a2 = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
  return a1;
}

void sub_21E5C7C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t marisa::TrieIO::write(uint64_t a1, marisa::grimoire::trie::LoudsTrie ***a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:213: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
  }

  marisa::grimoire::io::Reader::Reader(v6);
  marisa::grimoire::io::Reader::open(v6, a1);
  marisa::grimoire::trie::LoudsTrie::write(*a2, v6);
  marisa::grimoire::io::Reader::~Reader(v6);
  return a1;
}

void DCSIDXDictionary::searchByString_internal()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_27CECA8E8 = @"IDXExactMatch";
    unk_27CECA8F0 = @"IDXPrefixMatch";
    qword_27CECA8F8 = @"IDXCommonPrefixMatch";
    unk_27CECA900 = @"IDXWildcardMatch";

    __cxa_guard_release(&_MergedGlobals);
  }
}

void DCSIDXDictionary::hasRecord_internal()
{
  if (__cxa_guard_acquire(&qword_27CECA8E0))
  {
    qword_27CECA908 = @"IDXExactMatch";
    unk_27CECA910 = @"IDXPrefixMatch";
    qword_27CECA918 = @"IDXCommonPrefixMatch";
    unk_27CECA920 = @"IDXWildcardMatch";

    __cxa_guard_release(&qword_27CECA8E0);
  }
}

void DCSDictionaryAssetCopyInstalledDictionaries_cold_3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_21E58C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DCSDictionaryAssetCopyInstalledDictionaries: containerURL == NULL", buf, 2u);
}

void DCSDictionaryAssetCopyInstalledDictionaries_cold_4(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_fault_impl(&dword_21E58C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DCSDictionaryAssetCopyInstalledDictionaries: dictionaryLanguageCode == NULL (dictionaryLanguage: %@)", buf, 0xCu);
}

void DCSDictionaryAssetCopyInstalledDictionaries_cold_5(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_fault_impl(&dword_21E58C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DCSDictionaryAssetCopyInstalledDictionaries: localeLanguageCode == NULL (languageID: %@)", buf, 0xCu);
}

void DCSDictionaryAssetCopyInstalledDictionaries_cold_6(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_fault_impl(&dword_21E58C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DCSDictionaryAssetCopyInstalledDictionaries: localeComponents == NULL (languageID: %@)", buf, 0xCu);
}

__CFArray *IDXCopyIndexNames(const __CFURL *a1, int a2)
{
  v4 = SyncSingleton<IDXDictionaryManager>::instance();
  v5 = IDXDictionaryManager::dictionary(v4, a1);
  if (!v5)
  {
    return 0;
  }

  LODWORD(capacity) = 0;
  v6 = IDXDictionaryPackage::indexInfoList(v5, &capacity);
  if (!v6 || capacity < 1)
  {
    return 0;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
  if (capacity >= 1)
  {
    for (i = 0; i < capacity; ++i)
    {
      v10 = *(v7 + 8 * i);
      if (!a2)
      {
        v11 = IDXIndexInfo::indexName(*(v7 + 8 * i));
        if (v11)
        {
          goto LABEL_9;
        }

        v10 += 4;
      }

      v11 = *v10;
LABEL_9:
      CFArrayAppendValue(Mutable, v11);
    }
  }

  return Mutable;
}

void *IDXCreateIndexObject(uint64_t a1, const __CFURL *a2, const __CFString *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = SyncSingleton<IDXDictionaryManager>::instance();
  v6 = IDXDictionaryManager::dictionary(v5, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = IDXDictionaryPackage::retainIndex(v6, a3);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = SyncSingleton<IDXAccessMethodManager>::instance();
  v11 = IDXIndexInfo::accessMethodName(v9);
  v12 = IDXAccessMethodManager::accessMethod(v10, v11, v7);
  if (!v12 || (v13 = v12, (v14 = (*(*v12 + 48))(v12, v9)) == 0))
  {
LABEL_9:
    IDXDictionaryPackage::releaseIndex(v7, v9);
    return 0;
  }

  v15 = v14;
  pthread_once(&_IDXIndexClassID(void)::once_control, _IDXIndexInitialize);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    (*(*v13 + 56))(v13, v15);
    goto LABEL_9;
  }

  v17 = Instance;
  v18 = IDXIndexInfo::dataFields(v9);
  v19 = malloc_type_malloc((32 * (v18[1] + *v18 + v18[2])) | 0x10, 0x10800404B4DF656uLL);
  v17[2] = v13;
  v17[3] = v7;
  v17[4] = v9;
  v17[5] = v15;
  v17[8] = v19;
  v20 = IDXIndexInfo::dataSizeLength(v9);
  v21 = IDXIndexInfo::fixedDataSize(v9);
  v22 = IDXIndexInfo::bigEndian(v9);
  v17[6] = GetPreConfiguredGetDataSizeFunction(v20, v21, v22, v17 + 7);
  return v17;
}

uint64_t IDXCreateDictionaryPackage(const __CFURL *a1, __CFString *a2)
{
  v4 = SyncSingleton<IDXDictionaryManager>::instance();
  v5 = SyncSingleton<IDXAccessMethodManager>::instance();
  result = IDXDictionaryManager::templateProperty(v4, a2);
  if (result)
  {
    v7 = result;
    FileSystemPath = CreateFileSystemPath(a1);
    v9 = mkdir(FileSystemPath, 0x1FFu);
    free(FileSystemPath);
    if (v9)
    {
      return 0;
    }

    DictionaryComponentURL = CreateDictionaryComponentURL(a1, 0);
    v11 = CreateFileSystemPath(DictionaryComponentURL);
    CFRelease(DictionaryComponentURL);
    LODWORD(DictionaryComponentURL) = mkdir(v11, 0x1FFu);
    free(v11);
    if (DictionaryComponentURL)
    {
      return 0;
    }

    valuePtr = 1;
    Value = CFDictionaryGetValue(v7, @"IDXDictionaryVersion");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
      if (valuePtr >= 3)
      {
        v13 = CreateDictionaryComponentURL(a1, @"Resources");
        v11 = CreateFileSystemPath(v13);
        CFRelease(v13);
        LODWORD(v13) = mkdir(v11, 0x1FFu);
        free(v11);
        if (v13)
        {
          return 0;
        }
      }
    }

    v14 = CreateDictionaryComponentURL(a1, @"Info.plist");
    v15 = CFWriteStreamCreateWithFile(0, v14);
    if (v15)
    {
      v16 = v15;
      if (CFWriteStreamOpen(v15))
      {
        v17 = CFPropertyListWriteToStream(v7, v16, kCFPropertyListBinaryFormat_v1_0, 0);
        CFWriteStreamClose(v16);
        v18 = v17 < 1;
      }

      else
      {
        v18 = 1;
      }

      CFRelease(v16);
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = 1;
      if (!v14)
      {
LABEL_15:
        if (!v18)
        {
          v19 = IDXDictionaryManager::dictionary(v4, a1);
          if (v19)
          {
            v20 = v19;
            v27 = 0;
            v21 = IDXDictionaryPackage::indexInfoList(v19, &v27);
            if (v21)
            {
              if (v27 < 1)
              {
                return 1;
              }

              v22 = v21;
              v23 = 0;
              while (1)
              {
                v24 = *(v22 + 8 * v23);
                v25 = IDXIndexInfo::accessMethodName(v24);
                v26 = IDXAccessMethodManager::accessMethod(v5, v25, 0);
                if (!v26 || ((*(*v26 + 144))(v26, *v24, *(v24 + 1)) & 1) == 0)
                {
                  break;
                }

                if (++v23 >= v27)
                {
                  return 1;
                }
              }
            }

            IDXDictionaryManager::remove(v4, v20);
          }
        }

        DeleteDirectoryAtPath(v11);
        return 0;
      }
    }

    CFRelease(v14);
    goto LABEL_15;
  }

  return result;
}

uint64_t HeapAccessContext::createIndexFile(HeapAccessContext *this, IDXIndexInfo *a2)
{
  v3 = IDXIndexInfo::POSIXPath(this);
  v4 = IDXIndexInfo::writable(this);
  v5 = openRawIndexFile(v3, v4, 1);
  if (v5 != -1)
  {
    v6 = v5;
    if (lseek(v5, 63, 0) != -1 && write(v6, "", 1uLL) == 1)
    {
      close(v6);
      return 1;
    }

    close(v6);
    v8 = IDXIndexInfo::POSIXPath(this);
    remove(v8, v9);
  }

  return 0;
}

uint64_t HeapAccessContext::initializeSubclass(HeapAccessContext *this, int a2, void **a3)
{
  if (*(this + 38))
  {
    return 0;
  }

  if (a2)
  {
    v27 = 0;
    v5 = IDXIndexInfo::POSIXPath(*(this + 1));
    v6 = openRawIndexFile(v5, *(this + 33), 0);
    if (v6 == -1)
    {
      return 0;
    }

    v7 = v6;
    v8 = mapIndexFile(v6, *(this + 33), &v27);
    close(v7);
    if (v8 == -1)
    {
      return 0;
    }

    v9 = v8 + 16;
    v10 = v27 - 64;
    *(this + 5) = malloc_type_malloc(0x18uLL, 0x80040B8603338uLL);
    v11 = IDXIndexInfo::POSIXPath(*(this + 1));
    v12 = strlen(v11);
    v13 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
    v14 = IDXIndexInfo::POSIXPath(*(this + 1));
    strlcpy(v13, v14, v12 + 1);
    if ((*(this + 32) & 1) == 0 && *(this + 18) != 3)
    {
      v20 = *(this + 5);
      v16 = malloc_type_malloc(0x38uLL, 0x10900408C52C49CuLL);
      if (v16)
      {
        v16 = OUTLINED_FUNCTION_0(v16);
        *(v16 + 8) = 0;
        v16[5] = 0;
        *(v16 + 12) = 0;
        if (v10 >= 4 && (v21 = *v9, v10 >= v21))
        {
          *(v16 + 9) = v21;
          if (v21 >= 0x20 && !v8[17])
          {
            v26 = -v8[18] & (v8[18] >> 31);
            *(v16 + 8) = v26;
            if (v26 >= 1)
            {
              *(v16 + 10) = v8[19];
              *(v16 + 11) = v8[20];
              *(v16 + 12) = v8[21];
            }
          }
        }

        else
        {
          *(v16 + 9) = 0;
        }
      }

      goto LABEL_18;
    }

    v15 = *(this + 5);
    v16 = malloc_type_malloc(0x30uLL, 0x109004033C35484uLL);
    if (!v16)
    {
LABEL_18:
      *(this + 3) = v16;
      **(this + 5) = v13;
      *(*(this + 5) + 8) = *(this + 3);
      *(*(this + 5) + 16) = v27;
      *a3 = *(this + 5);
      return 1;
    }

    v16 = OUTLINED_FUNCTION_0(v16);
    if (v10 >= 4 && (v17 = *v9, v10 >= v17))
    {
      *(v16 + 8) = v17;
      v23 = v17 >= 8;
      v24 = v17 - 8;
      if (v23)
      {
        v25 = v8[17];
        *(v16 + 9) = v25;
        if (!v25)
        {
          goto LABEL_18;
        }

        v18 = (v24 / v25);
        goto LABEL_12;
      }
    }

    else
    {
      *(v16 + 8) = 0;
    }

    v18 = 0;
    *(v16 + 9) = 0;
LABEL_12:
    v16[5] = v18;
    goto LABEL_18;
  }

  v19 = *a3;
  *(this + 5) = *a3;
  *(this + 3) = *(v19 + 8);
  return 1;
}

uint64_t myReallocator(char *a1, uint64_t a2, const char **a3)
{
  v6 = openRawIndexFile(*a3, 1, 0);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v10 = 0;
  if (fstat(v6, &v11) == -1)
  {
    return 0;
  }

  unmapIndexFile(a1 - 64, v11.st_size);
  if (ftruncate(v7, a2 + 64) == -1)
  {
    return 0;
  }

  v8 = mapIndexFile(v7, 1, &v10);
  a3[2] = v10;
  close(v7);
  return v8 + 64;
}

{
  v6 = openRawIndexFile(*a3, 1, 0);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v10 = 0;
  if (fstat(v6, &v11) == -1)
  {
    return 0;
  }

  unmapIndexFile(a1 - 64, v11.st_size);
  if (ftruncate(v7, a2 + 64) == -1)
  {
    return 0;
  }

  v8 = mapIndexFile(v7, 1, &v10);
  a3[2] = v10;
  close(v7);
  return v8 + 64;
}

void HeapAccessContext::getDataByID(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218496;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = a3;
  _os_log_error_impl(&dword_21E58C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "HeapAccessContext: Error: originalDataSize: %ld, dataSize: %ld, maxLength: %ld", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t TrieAccessContext::createIndexFile(TrieAccessContext *this, IDXIndexInfo *a2)
{
  v3 = IDXIndexInfo::POSIXPath(this);
  v4 = IDXIndexInfo::writable(this);
  v5 = openRawIndexFile(v3, v4, 1);
  if (v5 != -1)
  {
    v6 = v5;
    if (lseek(v5, 4159, 0) != -1 && write(v6, "", 1uLL) == 1)
    {
      close(v6);
      TrieAccessContext::createIndexInfoForHeapAccess(this, v7);
    }

    close(v6);
    v8 = IDXIndexInfo::POSIXPath(this);
    remove(v8, v9);
  }

  return 0;
}

uint64_t TrieAccessContext::initializeSubclass(TrieAccessContext *this, int a2, void **a3)
{
  v5 = *(this + 37);
  if (v5 > 2)
  {
    return 0;
  }

  v18[9] = v3;
  v18[10] = v4;
  if (v5 && (*(this + 73) & 1) != 0)
  {
    return 0;
  }

  if (a2)
  {
    v18[0] = 0;
    v7 = IDXIndexInfo::POSIXPath(*(this + 1));
    v8 = openRawIndexFile(v7, *(this + 72), 0);
    if (v8 != -1)
    {
      v9 = v8;
      v10 = mapIndexFile(v8, *(this + 72), v18);
      close(v9);
      if (v10 != -1)
      {
        *(this + 8) = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
        v11 = IDXIndexInfo::POSIXPath(*(this + 1));
        v12 = strlen(v11);
        v13 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
        v14 = IDXIndexInfo::POSIXPath(*(this + 1));
        strlcpy(v13, v14, v12 + 1);
        TrieAccessContext::createIndexInfoForHeapAccess(*(this + 1), v15);
      }
    }

    return 0;
  }

  v17 = *a3;
  *(this + 8) = *a3;
  *(this + 3) = *(v17 + 8);
  *(this + 4) = *(v17 + 24);
  return 1;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x28210F9B8](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}