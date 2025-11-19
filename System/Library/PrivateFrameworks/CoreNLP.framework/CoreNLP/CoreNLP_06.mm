uint64_t CoreNLP::MeCabSubTokenizer::copyTranscription(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 && (v6 = a1[38]) != 0 && a1[47] == *a2 && a1[48] == *(a2 + 8) && a1[5] && (*(a2 + 17) & 8) == 0)
  {
    return std::function<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::operator()((a1 + 2), a1[1], v6, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

_WORD *CoreNLP::MeCabSubTokenizer::getTranscriptionCharactersPtrOfCurrentToken(uint64_t a1, void *a2, int a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 376) != *a2)
  {
    return 0;
  }

  if (*(a1 + 384) != a2[1])
  {
    return 0;
  }

  *a4 = 0;
  if (*(*(a1 + 304) + 90) - 3 < 3)
  {
    return 0;
  }

  v5 = *(a1 + 400);
  if ((v5 - 1) <= 3 && *(a1 + 408) + 256 >= ((*(a1 + 424) - *(a1 + 416)) >> 1))
  {
    return 0;
  }

  if ((v5 - 2) < 3)
  {
    return CoreNLP::MeCabSubTokenizer::getChineseTranscriptionCharactersPtrOfCurrentToken(a1, a3, a4);
  }

  if (v5 != 1)
  {
    return 0;
  }

  return CoreNLP::MeCabSubTokenizer::getJapaneseTranscriptionCharactersPtrOfCurrentToken(a1, a4);
}

_WORD *CoreNLP::MeCabSubTokenizer::getJapaneseTranscriptionCharactersPtrOfCurrentToken(CoreNLP::MeCabSubTokenizer *this, unint64_t *a2)
{
  v4 = *(this + 51);
  v5 = (*(**(this + 1) + 48))(*(this + 1), *(this + 38), *(this + 52) + 2 * v4, 256);
  if ((v5 - 256) < 0xFFFFFF01)
  {
    return 0;
  }

  v7 = v5;
  result = (*(this + 52) + 2 * v4);
  if (*result == 42)
  {
    v8 = *(this + 38);

    return CoreNLP::MeCabSubTokenizer::getTranscriptionPtrForNoReadingNode(this, v8, a2);
  }

  else
  {
    *a2 = v7;
    *(this + 51) += v7;
  }

  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::getChineseTranscriptionCharactersPtrOfCurrentToken(CoreNLP::MeCabSubTokenizer *this, int a2, unint64_t *a3)
{
  v6 = *(this + 51);
  v7 = (*(**(this + 1) + 48))(*(this + 1), *(this + 38), *(this + 52) + 2 * v6, 256);
  if ((v7 - 256) < 0xFFFFFF01)
  {
    return 0;
  }

  v9 = *(this + 52);
  if (*(v9 + 2 * v6) == 42)
  {
    v10 = *(this + 38);

    return CoreNLP::MeCabSubTokenizer::getTranscriptionPtrForNoReadingNode(this, v10, a3);
  }

  else
  {
    v11 = v7;
    *a3 = v7;
    if ((a2 & 0x4000000) == 0)
    {
      if (!*(this + 57))
      {
        operator new[]();
      }

      v12 = *(this + 51);
      v13 = *(this + 52);
      v14 = (v13 + 2 * v6);
      if (v14 == (v13 + 2 * v12 + 2 * v11))
      {
        v11 = 0;
      }

      else
      {
        v15 = 2 * v12 + 2 * v11 - 2 * v6;
        v16 = (v13 + 2 * v6);
        v11 = 0;
        do
        {
          v17 = *v16;
          if ((v17 - 97) <= 0x19)
          {
            *(*(this + 57) + 2 * v11++) = v17;
          }

          ++v16;
          v15 -= 2;
        }

        while (v15);
      }

      memcpy(v14, *(this + 57), 2 * v11);
      *a3 = v11;
      v9 = *(this + 52);
    }

    *(this + 51) += v11;
    return v9 + 2 * v6;
  }
}

uint64_t CoreNLP::MeCabSubTokenizer::getTranscriptionPtrForNoReadingNode(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v5 = *(a2 + 80) >> 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 90);
  if (v6 == 7)
  {
    v8 = *(a1 + 408);
    memcpy((*(a1 + 416) + 2 * v8), *(a2 + 64), *(a2 + 80));
    result = *(a1 + 416) + 2 * v8;
    if (v5)
    {
      v9 = (*(a1 + 416) + 2 * v8);
      v10 = v5;
      do
      {
        v11 = *v9;
        if ((v11 - 12449) <= 0x55)
        {
          *v9 = v11 - 96;
        }

        ++v9;
        --v10;
      }

      while (v10);
    }

    *a3 = v5;
    *(a1 + 408) += v5;
  }

  else if (v6 == 6)
  {
    *a3 = v5;
    return *(a2 + 64);
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::getPartOfSpeech(CoreNLP::MeCabSubTokenizer *this)
{
  if (*(this + 25))
  {
    return std::function<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::operator()(this + 176, *(this + 38));
  }

  else
  {
    return 15;
  }
}

uint64_t std::function<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

char *CoreNLP::MeCabSubTokenizer::getNextToken(CoreNLP::MeCabSubTokenizer *this, CFRange *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = xmmword_19D27D570;
  }

  v19 = this;
  v4 = *(this + 39);
  if (!v4)
  {
    v8 = *(this + 38);
    if (v8)
    {
      v9 = (v8 + 8);
    }

    else
    {
      v9 = (this + 296);
    }

    v4 = *v9;
    if (!*v9)
    {
LABEL_17:
      v6 = 0;
      *(this + 38) = 0;
      goto LABEL_28;
    }

    while (CoreNLP::MeCabSubTokenizer::skipNonWord(this, v4))
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  *(this + 38) = v4;
  v5 = *(v4 + 91);
  if (v5 == 2)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_28;
  }

  if ((*(this + 110) & 0x10004) == 0)
  {
LABEL_19:
    if (v5 == 3)
    {
      goto LABEL_20;
    }

    if (a2)
    {
      if ((*(this + 442) & 8) != 0)
      {
        v16 = *(this + 30);
        v17 = *(this + 31);
        while (v16 != v17)
        {
          std::__function::__value_func<BOOL ()(mecab_node_t const*)>::__value_func[abi:ne200100](v22, v16);
          std::__function::__value_func<BOOL ()(mecab_node_t const*)>::__value_func[abi:ne200100](v21, v22);
          v18 = CoreNLP::MeCabSubTokenizer::combineTokens(this, &a2->location, v21);
          std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](v21);
          std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](v22);
          if (v18)
          {
            goto LABEL_27;
          }

          v16 += 32;
        }

        goto LABEL_24;
      }

      v20[0] = &unk_1F10AE1D0;
      v20[1] = CoreNLP::mecab::isOutOfBMP;
      v20[3] = v20;
      v10 = CoreNLP::MeCabSubTokenizer::combineTokens(this, &a2->location, v20);
      std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](v20);
      if ((v10 & 1) == 0)
      {
LABEL_24:
        if ((*(this + 440) & 4) == 0 && CoreNLP::MeCabSubTokenizer::getNextToken(CFRange *)::$_0::operator()(&v19, *(this + 38)))
        {
          Range = CoreNLP::MeCabSubTokenizer::getRange(this, *(this + 38));
          a2->location = Range;
          a2->length = v12;
          a2->location = *(this + 35) + Range;
        }
      }
    }

LABEL_27:
    v6 = this + 376;
    *(this + 47) = *(this + 35) + std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::operator()(this + 80, *(*(this + 34) + 8) + 2 * *(this + 35) - 2 * *(*(this + 34) + 16), this + 304, *(this + 448), *(this + 55), *(this + 58));
    *(this + 48) = v13;
    std::function<void ()(mecab_node_t const*,NLToken *,unsigned long)>::operator()(this + 144, *(this + 38), this + 376, *(this + 55));
    CoreNLP::MeCabSubTokenizer::checkNodeIsNormalized(this, *(this + 38));
    goto LABEL_28;
  }

  if (*(this + 39) != v4 && CoreNLP::MeCabSubTokenizer::hasSpace(this, v4))
  {
    CoreNLP::MeCabSubTokenizer::seekSpace(this, *(this + 38));
  }

  if (*(this + 46) >= *(*(this + 44) + 24))
  {
    *(this + 39) = 0;
    v5 = *(*(this + 38) + 91);
    goto LABEL_19;
  }

  v6 = this + 376;
  *(this + 47) = *(this + 35) + CoreNLP::mecab::SpaceIterator::next((this + 352));
  *(this + 48) = v7;
  *(this + 49) = 2048;
LABEL_28:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_19D1DDEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CoreNLP::MeCabSubTokenizer::seekSpace(uint64_t a1, uint64_t a2)
{
  *(a1 + 312) = a2;
  result = CoreNLP::MeCabSubTokenizer::getSpaceRange(a1, a2);
  if (result == -1 || (result & 0x8000000000000000) != 0 || (v5 = *(a1 + 288), (result + v4) > v5))
  {
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
  }

  else
  {
    *(a1 + 320) = *(*(a1 + 272) + 8) + 2 * *(a1 + 280) - 2 * *(*(a1 + 272) + 16);
    *(a1 + 328) = v5;
    *(a1 + 336) = result;
    *(a1 + 344) = result + v4;
  }

  v6 = *(*(a1 + 352) + 16);
  *(a1 + 360) = 0;
  *(a1 + 368) = v6;
  return result;
}

uint64_t CoreNLP::mecab::SpaceIterator::next(CoreNLP::mecab::SpaceIterator *this)
{
  if (CoreNLP::mecab::SpaceView::isCRLF(*this, *(this + 2)))
  {
    v2 = *(this + 2);
    v3 = v2 + 2;
    result = *(this + 1) + v2;
  }

  else
  {
    v5 = *(this + 2);
    v3 = v5 + 1;
    result = v5 + *(this + 1);
  }

  *(this + 2) = v3;
  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::combineTokens(void *a1, uint64_t *a2, uint64_t a3)
{
  result = std::function<BOOL ()(mecab_node_t const*)>::operator()(a3, a1[38]);
  if (result)
  {
    v7 = a1[38];
    v8 = a1[34];
    if (v8)
    {
      if (*(v7 + 91) == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(v7 + 64) - (*(v8 + 8) + 2 * a1[35]) + 2 * *(v8 + 16)) >> 1;
      }

      v8 = *(v7 + 80) >> 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = 0;
    do
    {
      v11 = v8;
      v12 = v10;
      v7 = *(v7 + 8);
      if (!v7)
      {
        if (v10)
        {
          goto LABEL_22;
        }

        return 0;
      }

      if (!*(v7 + 80) || !std::function<BOOL ()(mecab_node_t const*)>::operator()(a3, v7))
      {
        break;
      }

      v13 = a1[34];
      if (v13)
      {
        v14 = *(v7 + 91) == 2 ? 0 : (*(v7 + 64) - (*(v13 + 8) + 2 * a1[35]) + 2 * *(v13 + 16)) >> 1;
        v13 = *(v7 + 80) >> 1;
      }

      else
      {
        v14 = -1;
      }

      v8 = v13 + v11;
      v10 = 1;
    }

    while (v14 == v11 + v9);
    if (v12)
    {
      a1[38] = *v7;
LABEL_22:
      *a2 = v9;
      a2[1] = v11;
      *a2 = a1[35] + v9;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::getNextToken(CFRange *)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(v3 + 400) == 1 && (*(a2 + 90) | 4) == 6)
  {
    return 0;
  }

  if (CoreNLP::MeCabSubTokenizer::hasObjectReplacementCharacter(v3, a2))
  {
    return 1;
  }

  if (*(a2 + 91) != 1)
  {
    return 0;
  }

  if (*(a2 + 80) == 2)
  {
    result = 0;
    v5 = *(a2 + 90);
    if (v5 == 3)
    {
      return result;
    }

    v6 = **(a2 + 64);
    if (v6 == 160)
    {
      return result;
    }

    result = 0;
    if (v6 == 45 || v6 == 95)
    {
      return result;
    }

    goto LABEL_15;
  }

  v5 = *(a2 + 90);
  if (v5 == 3)
  {
    return 0;
  }

LABEL_15:
  result = 0;
  if (v5 != 4 && v5 != 7)
  {
    return CoreNLP::mecab::isIdeographExtSurrogateNode(a2) ^ 1;
  }

  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::checkNodeIsNormalized(uint64_t result, uint64_t a2)
{
  if (*(result + 72))
  {
    v2 = result;
    result = std::function<unsigned long ()(unsigned short const*,int)>::operator()(result + 48, *(a2 + 64), *(a2 + 80) >> 1);
    *(v2 + 392) |= result;
  }

  return result;
}

uint64_t std::function<BOOL ()(mecab_node_t const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t CoreNLP::MeCabSubTokenizer::createPersonNameRanges(CoreNLP::MeCabSubTokenizer *this, BOOL *a2)
{
  v3 = *(this + 33);
  if (!v3 || !*(this + 34))
  {
    return 0;
  }

  (*(*v3 + 24))(v3, *(this + 37));
  v4 = *(this + 34);
  v5 = *(**(this + 33) + 16);

  return v5();
}

BOOL CoreNLP::MeCabSubTokenizer::hasObjectReplacementCharacter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 80);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = *(a2 + 64);
  v5 = *(a1 + 440);
  if ((v5 & 0x8000) != 0 && *v4 == 65532)
  {
    return 1;
  }

  v6 = v2 >> 1;
  v7 = 1;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    ++v7;
  }

  while ((v5 & 0x8000) == 0 || v4[v8] != 65532);
  return v8 < v6;
}

void CoreNLP::MeCabSubTokenizer::reset(CoreNLP::MeCabSubTokenizer *this)
{
  *(this + 51) = 0;
  if (*(this + 34))
  {
    std::vector<unsigned short>::resize(this + 52, 0x3000uLL);
  }

  else
  {
    v1 = *(this + 52);
    if (v1 != *(this + 53))
    {
      *(this + 53) = v1;
    }
  }
}

__CFString *CoreNLP::anonymous namespace::createLatinTranscription(uint64_t a1, int a2)
{
  v6[0] = *(a1 + 64);
  v6[1] = 0;
  v6[2] = *(a1 + 80) >> 1;
  MutableString = CoreNLP::TranscriptionBuffer::createMutableString(v6);
  v4 = MutableString;
  if (MutableString)
  {
    if (!CFStringTransform(MutableString, 0, *MEMORY[0x1E695E9A8], 0))
    {
      CFRelease(v4);
    }

    if (!CFStringTransform(v4, 0, *MEMORY[0x1E695E980], 0))
    {
      CFRelease(v4);
    }

    if ((a2 & 0x20000) != 0 && !CFStringTransform(v4, 0, *MEMORY[0x1E695E988], 0))
    {
      CFRelease(v4);
    }
  }

  CoreNLP::TranscriptionBuffer::~TranscriptionBuffer(v6);
  return v4;
}

void sub_19D1DE4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNLP::TranscriptionBuffer::~TranscriptionBuffer(va);
  _Unwind_Resume(a1);
}

__CFString *CoreNLP::TranscriptionBuffer::createMutableString(CoreNLP::TranscriptionBuffer *this)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendCharacters(Mutable, *this, *(this + 2));
  }

  return v3;
}

uint64_t CoreNLP::NumberIterator::next(uint64_t *a1)
{
  v2 = 0;
  if (CoreNLP::NumberIterator::isLHS(*a1))
  {
    do
    {
      v3 = *(*a1 + 8);
      *a1 = v3;
      if (v3)
      {
        v4 = *(v3 + 80) >> 1;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v3 + 8);
      *a1 = v5;
      if (v5)
      {
        v6 = *(v5 + 80) >> 1;
      }

      else
      {
        v6 = 0;
      }

      v2 += v4 + v6;
    }

    while (CoreNLP::NumberIterator::isLHS(v5));
  }

  return v2;
}

uint64_t CoreNLP::mecab::isIdeographExtSurrogateNode(uint64_t result)
{
  if (result)
  {
    if (*(result + 91) == 1)
    {
      v1 = *(result + 90);
      if (v1 == 12)
      {
        if (*result)
        {
          return *(*result + 90) == 11;
        }
      }

      else if (v1 == 11)
      {
        v2 = *(result + 8);
        if (v2)
        {
          if (*(v2 + 90) == 12)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL CoreNLP::NumberIterator::isNumeral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 82);
  if (v3 != *(a2 + 80) || *(a3 + 82) != *(a3 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 90);
  v5 = v4 == 8 || v4 == 4;
  if (!v5 || v3 != 2 || (**(a2 + 64) & 0xFFFD) != 0x2C)
  {
    return 0;
  }

  v6 = *(a3 + 90);
  return v6 == 4 || v6 == 8;
}

uint64_t CoreNLP::NumberIterator::prev(uint64_t **a1)
{
  v2 = 0;
  if (CoreNLP::NumberIterator::isRHS(*a1))
  {
    do
    {
      v3 = **a1;
      *a1 = v3;
      if (v3)
      {
        v4 = *(v3 + 80) >> 1;
      }

      else
      {
        v4 = 0;
      }

      v5 = *v3;
      *a1 = *v3;
      if (v5)
      {
        v6 = *(v5 + 80) >> 1;
      }

      else
      {
        v6 = 0;
      }

      v2 += v4 + v6;
    }

    while (CoreNLP::NumberIterator::isRHS(v5));
  }

  return v2;
}

uint64_t CoreNLP::anonymous namespace::convertCharTypeToAttributes(uint64_t a1)
{
  v1 = *(a1 + 90);
  if (v1 > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_19D27E588[v1];
  }
}

BOOL CoreNLP::mecab::skipSymbol(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 80);
  if (v2 == 6)
  {
    if (*v1 == 58 && v1[1] == 47)
    {
      return v1[2] == 47;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = *v1;
  return (v3 - 33) < 0xF || (v3 - 58) < 7;
}

uint64_t CoreNLP::mecab::SpaceIterator::seekTo(CoreNLP::mecab::SpaceView **this, uint64_t a2)
{
  v3 = *this;
  if (*(v3 + 2) > a2 || *(v3 + 3) < a2)
  {
    return -1;
  }

  this[2] = a2;
  CoreNLP::mecab::SpaceView::isCRLF(v3, a2);
  return this[1] + this[2];
}

BOOL CoreNLP::mecab::SpaceView::isCRLF(CoreNLP::mecab::SpaceView *this, uint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 2);
  if (v4 < 0)
  {
    return 0;
  }

  v5 = *(this + 3);
  if (v4 < v5)
  {
    v8 = __OFSUB__(v5, v3);
    v6 = v5 == v3;
    v7 = (v5 - v3) < 0;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0;
  }

  if (v7 ^ v8 | v6)
  {
    v11 = __OFSUB__(v4, a2);
    v9 = v4 == a2;
    v10 = v4 - a2 < 0;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v10 ^ v11 | v9 && v5 > a2 + 1 && *(v2 + 2 * a2) == 13 && *(v2 + 2 * (a2 + 1)) == 10;
}

uint64_t std::function<unsigned long ()(unsigned short const*,int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned short const*,int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned short const* ()(mecab_node_t const**,long *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::function<BOOL ()(mecab_node_t const*)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<__CFString const* (*)(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL),std::allocator<__CFString const* (*)(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>,__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10ADDA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<__CFString const* (*)(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL),std::allocator<__CFString const* (*)(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>,__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1DF204(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*),std::allocator<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>,CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10ADE50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*),std::allocator<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>,CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1DF56C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long),std::allocator<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>,CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10ADF00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long),std::allocator<CFRange (*)(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>,CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1DF8D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void (*)(mecab_node_t const*,NLToken *,unsigned long),std::allocator<void (*)(mecab_node_t const*,NLToken *,unsigned long)>,void ()(mecab_node_t const*,NLToken *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10ADFB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(mecab_node_t const*,NLToken *,unsigned long),std::allocator<void (*)(mecab_node_t const*,NLToken *,unsigned long)>,void ()(mecab_node_t const*,NLToken *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1DFC30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<NLTokenizerPartOfSpeech (*)(mecab_node_t const*),std::allocator<NLTokenizerPartOfSpeech (*)(mecab_node_t const*)>,NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10AE060;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<NLTokenizerPartOfSpeech (*)(mecab_node_t const*),std::allocator<NLTokenizerPartOfSpeech (*)(mecab_node_t const*)>,NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1DFF88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<std::function<BOOL ()(mecab_node_t const*)>>::__emplace_back_slow_path<BOOL (&)(mecab_node_t const*)>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*,mecab_node_t const*,long)>>>(a1, v6);
  }

  v9 = (32 * v5);
  v14 = 0;
  v15 = v9;
  *(&v16 + 1) = 0;
  *v9 = &unk_1F10AE1D0;
  v9[1] = a2;
  v9[3] = v9;
  *&v16 = 32 * v5 + 32;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*)>>,std::function<BOOL ()(mecab_node_t const*)>*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<BOOL ()(mecab_node_t const*)>>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1E00B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<BOOL ()(mecab_node_t const*)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<BOOL ()(mecab_node_t const*)>>,std::function<BOOL ()(mecab_node_t const*)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<BOOL ()(mecab_node_t const*)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(mecab_node_t const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<std::function<BOOL ()(mecab_node_t const*)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,unsigned long ()(unsigned short const*,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F10AE110;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,unsigned long ()(unsigned short const*,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<unsigned long ()(unsigned short const*,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1E056C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<BOOL ()(mecab_node_t const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<BOOL (*)(mecab_node_t const*),std::allocator<BOOL (*)(mecab_node_t const*)>,BOOL ()(mecab_node_t const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10AE1D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(mecab_node_t const*),std::allocator<BOOL (*)(mecab_node_t const*)>,BOOL ()(mecab_node_t const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void NLEmbeddingSubwordVocabCreate(const void *a1)
{
  applesauce::CF::StringRef::from_get(a1, &cf);
  if (cf)
  {
    applesauce::CF::convert_to<std::string,0>(cf, &__p);
    if (cf)
    {
      CFRelease(cf);
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_19D1E0908(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::StringRef::~StringRef(&a11);
  v20 = __cxa_begin_catch(a1);
  v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (a2 == 2)
  {
    if (v21)
    {
      NLEmbeddingSubwordVocabCreate_cold_4(v20);
    }
  }

  else if (v21)
  {
    NLEmbeddingSubwordVocabCreate_cold_3();
  }

  __cxa_end_catch();
  JUMPOUT(0x19D1E08B4);
}

CFArrayRef NLEmbeddingSubwordVocabCopyTokenIdsForText(CoreNLP *a1, applesauce::CF::StringRef *this)
{
  Copy = 0;
  if (a1 && this)
  {
    applesauce::CF::StringRef::from_get(this, &cf);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v5 = cf;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = __p;
    }

    if (v5 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v5)))
    {
      applesauce::CF::details::CFString_get_value<false>(v5, &v14);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = v15;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v7 = CoreNLP::unwrapGazetteer(a1, v4);
    (*(*v7 + 16))(&v15);
    CFArray = applesauce::CF::details::make_CFArrayRef<long>(&v15);
    v9 = *MEMORY[0x1E695E480];
    cf = CFArray;
    Copy = CFArrayCreateCopy(v9, CFArray);
    if (CFArray)
    {
      CFRelease(CFArray);
    }

    if (v15.__r_.__value_.__r.__words[0])
    {
      v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  return Copy;
}

void sub_19D1E0C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21)
{
  __cxa_free_exception(v21);
  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

CFStringRef NLEmbeddingSubwordVocabCopyTextForTokenIds(CoreNLP *a1, CFTypeRef cf)
{
  Copy = 0;
  if (a1 && cf)
  {
    CFRetain(cf);
    v20 = cf;
    v5 = CFGetTypeID(cf);
    if (v5 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = CoreNLP::unwrapGazetteer(a1, v6);
    if (!v20)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = 0uLL;
    v16 = 0;
    v8 = applesauce::CF::convert_or<std::vector<long>,0>(v20, &v15, &__p);
    (*(*v7 + 24))(v18, v7, &__p, v8);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (v15.n128_u64[0])
    {
      v15.n128_u64[1] = v15.n128_u64[0];
      operator delete(v15.n128_u64[0]);
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v18;
    }

    else
    {
      v9 = v18[0];
    }

    if (v9)
    {
      if ((v19 & 0x80u) == 0)
      {
        v10 = v19;
      }

      else
      {
        v10 = v18[1];
      }

      v9 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
      __p.n128_u64[0] = v9;
      if (!v9)
      {
        v11 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v11, "Could not construct");
        __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      __p.n128_u64[0] = 0;
    }

    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v9);
    if (__p.n128_u64[0])
    {
      CFRelease(__p.n128_u64[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  return Copy;
}

void sub_19D1E0ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v20 - 40));
  _Unwind_Resume(a1);
}

CFStringRef NLEmbeddingSubwordVocabCopyPreprocessedText(CoreNLP *a1, applesauce::CF::StringRef *this)
{
  Copy = 0;
  if (a1 && this)
  {
    applesauce::CF::StringRef::from_get(this, &cf);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v5 = cf;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v16 = __p;
    }

    if (v5 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v5)))
    {
      applesauce::CF::details::CFString_get_value<false>(v5, &v15);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v15 = v16;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v7 = CoreNLP::unwrapGazetteer(a1, v4);
    (*(*v7 + 72))(&v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      v8 = CFStringCreateWithBytes(0, v8, size, 0x8000100u, 0);
      cf = v8;
      if (!v8)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v10, "Could not construct");
        __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v8);
    if (cf)
    {
      CFRelease(cf);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return Copy;
}

void sub_19D1E11C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNLP::TaggingFeatureExtractor::useModel(uint64_t result, const char *a2, unint64_t a3, int a4, int a5)
{
  v10 = a5;
  if (a3 >= 0x1D && a2 && a4 == 7 && *a2 == 2000 && *(a2 + 6) + *(a2 + 2) + *(a2 + 4) + 28 <= a3)
  {
    v6 = result;
    v11 = &v10;
    v7 = std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(result + 56, &v10);
    BloomFilter::loadFromBuffer((v7 + 5), &a2[*(a2 + 5)], *(a2 + 6));
    v11 = &v10;
    v8 = std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(v6 + 8, &v10);
    BloomFilter::loadFromBuffer((v8 + 5), &a2[*(a2 + 1)], *(a2 + 2));
    v11 = &v10;
    v9 = std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(v6 + 32, &v10);
    return BloomFilter::loadFromBuffer((v9 + 5), &a2[*(a2 + 3)], *(a2 + 4));
  }

  return result;
}

void sub_19D1E1398(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D1E1388);
}

void CoreNLP::TaggingFeatureExtractor::extractFeatures(std::string *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  if (a2 == 104 && a3 == 4)
  {

    CoreNLP::TaggingFeatureExtractor::extractFeatures_Chinese(a1, 104, 4, a4, a5, a7);
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    if ((a5 & 0x8000000000000000) == 0)
    {
      v13 = *a4;
      v14 = a4[1];
      if (*a4 != v14 && a5 < (v14 - v13) >> 3)
      {
        v15 = *(v13 + 8 * a5);
        v129 = *(v15 + 8);
        CoreNLP::TaggingFeatureExtractor::featureIDs(a1, a2, a3, &v134);
        v17 = v134;
        v16 = v135;
        if (v134 != v135)
        {
          v130 = a5 + 1;
          v127 = a5 - 1;
          v128 = a5 + 2;
          cf = a6;
          v126 = a5 - 2;
          v121 = (v129 - 2);
          v120 = (v129 - 3);
          __pos = (v129 - 4);
          if (v129 >= 2)
          {
            v18 = 2;
          }

          else
          {
            v18 = v129;
          }

          if (v129 >= 3)
          {
            v19 = 3;
          }

          else
          {
            v19 = v129;
          }

          v123 = v19;
          v124 = v18;
          if (v129 >= 4)
          {
            v20 = 4;
          }

          else
          {
            v20 = v129;
          }

          v122 = v20;
          while (2)
          {
            v21 = *v17;
            memset(&v133, 0, sizeof(v133));
            v22 = 1;
            v23 = 4;
            v24 = (v15 + 80);
            switch(v21)
            {
              case 33:
                if ((*(*(*a4 + 8 * a5) + 73) & 8) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 34:
                if ((*(*(*a4 + 8 * a5) + 73) & 0x10) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 36:
                if ((*(*(*a4 + 8 * a5) + 73) & 0x40) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 37:
                if ((*(*(*a4 + 8 * a5) + 72) & 0x10) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 38:
                if ((*(*(*a4 + 8 * a5) + 74) & 8) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 39:
                if (*(*(*a4 + 8 * a5) + 74))
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 40:
                if ((*(*(*a4 + 8 * a5) + 74) & 2) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 41:
                if ((*(*(*a4 + 8 * a5) + 74) & 0x40) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 42:
                if ((*(*(*a4 + 8 * a5) + 72) & 0x80) != 0)
                {
                  goto LABEL_321;
                }

                goto LABEL_322;
              case 65:
                goto LABEL_155;
              case 68:
                CoreNLP::extractAffix(&v133, (v15 + 80), v122, 1);
                goto LABEL_321;
              case 69:
                CoreNLP::extractAffix(&v133, (v15 + 80), v123, 1);
                goto LABEL_321;
              case 70:
                CoreNLP::extractAffix(&v133, (v15 + 80), v124, 1);
                goto LABEL_321;
              case 71:
                if (v129 < 5)
                {
                  goto LABEL_208;
                }

                v53 = *(v15 + 103);
                if ((v53 & 0x8000000000000000) != 0)
                {
                  v53 = *(v15 + 88);
                }

                if (v53 <= __pos)
                {
                  goto LABEL_208;
                }

                std::string::basic_string(&__p, (v15 + 80), __pos, 4uLL, &v131);
                goto LABEL_205;
              case 72:
                if (v129 < 4)
                {
                  goto LABEL_208;
                }

                v70 = *(v15 + 103);
                if ((v70 & 0x8000000000000000) != 0)
                {
                  v70 = *(v15 + 88);
                }

                if (v70 <= v120)
                {
                  goto LABEL_208;
                }

                std::string::basic_string(&__p, (v15 + 80), v120, 3uLL, &v131);
                goto LABEL_205;
              case 73:
                if (v129 < 3)
                {
                  goto LABEL_208;
                }

                v71 = *(v15 + 103);
                if ((v71 & 0x8000000000000000) != 0)
                {
                  v71 = *(v15 + 88);
                }

                if (v71 <= v121)
                {
LABEL_208:
                  CoreNLP::extractAffix(&v133, (v15 + 80), v129, 1);
                }

                else
                {
                  std::string::basic_string(&__p, (v15 + 80), v121, 2uLL, &v131);
LABEL_205:
                  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v133.__r_.__value_.__l.__data_);
                  }

                  v133 = __p;
                }

                goto LABEL_321;
              case 74:
                v85 = *(*a4 + 8 * a5);
                v88 = *(v85 + 32);
                v86 = v85 + 32;
                v87 = v88;
                if (v88)
                {
                  v89 = v86;
                  do
                  {
                    if (*(v87 + 32) >= 6)
                    {
                      v89 = v87;
                    }

                    v87 = *(v87 + 8 * (*(v87 + 32) < 6));
                  }

                  while (v87);
                  if (v89 != v86 && *(v89 + 32) <= 6)
                  {
                    std::string::push_back(&v133, *(v89 + 40));
                    std::string::push_back(&v133, 74);
                  }
                }

                goto LABEL_322;
              case 75:
                if (a5 >= 2 && v126 < (a4[1] - *a4) >> 3)
                {
                  v80 = *(*a4 + 8 * v126);
                  v83 = *(v80 + 32);
                  v81 = v80 + 32;
                  v82 = v83;
                  if (v83)
                  {
                    v84 = v81;
                    do
                    {
                      if (*(v82 + 32) >= 6)
                      {
                        v84 = v82;
                      }

                      v82 = *(v82 + 8 * (*(v82 + 32) < 6));
                    }

                    while (v82);
                    if (v84 != v81 && *(v84 + 32) <= 6)
                    {
                      std::string::push_back(&v133, *(v84 + 40));
                    }
                  }

                  std::string::push_back(&v133, 75);
                }

                goto LABEL_322;
              case 76:
                if (a5 && v127 < (a4[1] - *a4) >> 3)
                {
                  v47 = *(*a4 + 8 * v127);
                  v50 = *(v47 + 32);
                  v48 = v47 + 32;
                  v49 = v50;
                  if (v50)
                  {
                    v51 = v48;
                    do
                    {
                      if (*(v49 + 32) >= 6)
                      {
                        v51 = v49;
                      }

                      v49 = *(v49 + 8 * (*(v49 + 32) < 6));
                    }

                    while (v49);
                    if (v51 != v48 && *(v51 + 32) <= 6)
                    {
                      std::string::push_back(&v133, *(v51 + 40));
                    }
                  }

                  std::string::push_back(&v133, 76);
                }

                goto LABEL_322;
              case 77:
                if (v130 < (a4[1] - *a4) >> 3)
                {
                  v57 = *(*a4 + 8 * v130);
                  v60 = *(v57 + 32);
                  v58 = v57 + 32;
                  v59 = v60;
                  if (v60)
                  {
                    v61 = v58;
                    do
                    {
                      if (*(v59 + 32) >= 6)
                      {
                        v61 = v59;
                      }

                      v59 = *(v59 + 8 * (*(v59 + 32) < 6));
                    }

                    while (v59);
                    if (v61 != v58 && *(v61 + 32) <= 6)
                    {
                      std::string::push_back(&v133, *(v61 + 40));
                    }
                  }

                  std::string::push_back(&v133, 77);
                }

                goto LABEL_322;
              case 78:
                if (v128 < (a4[1] - *a4) >> 3)
                {
                  v92 = *(*a4 + 8 * v128);
                  v95 = *(v92 + 32);
                  v93 = v92 + 32;
                  v94 = v95;
                  if (v95)
                  {
                    v96 = v93;
                    do
                    {
                      if (*(v94 + 32) >= 6)
                      {
                        v96 = v94;
                      }

                      v94 = *(v94 + 8 * (*(v94 + 32) < 6));
                    }

                    while (v94);
                    if (v96 != v93 && *(v96 + 32) <= 6)
                    {
                      std::string::push_back(&v133, *(v96 + 40));
                    }
                  }

                  std::string::push_back(&v133, 78);
                }

                goto LABEL_322;
              case 79:
                if ((*(*(*a4 + 8 * a5) + 73) & 8) == 0)
                {
                  goto LABEL_321;
                }

                v52 = CoreNLP::TaggingFeatureExtractor::isInGazetter(a1, 0x2000000000, a4, a5, 2, a3);
                goto LABEL_131;
              case 80:
                if ((*(*(*a4 + 8 * a5) + 73) & 8) == 0)
                {
                  goto LABEL_321;
                }

                v52 = CoreNLP::TaggingFeatureExtractor::isInGazetter(a1, 0x4000000000, a4, a5, 3, a3);
LABEL_131:
                if (v52)
                {
LABEL_132:
                  std::string::push_back(&v133, 1);
                }

                goto LABEL_321;
              case 81:
                if ((*(*(*a4 + 8 * a5) + 73) & 8) == 0 || !CoreNLP::TaggingFeatureExtractor::isInGazetter(a1, 0x8000000000, a4, a5, 3, a3))
                {
                  goto LABEL_321;
                }

                goto LABEL_132;
              case 82:
                if (!a5)
                {
                  goto LABEL_321;
                }

                v54 = (*a4 + 8 * a5 - 8);
                goto LABEL_154;
              case 83:
                if (v130 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_321;
                }

                v54 = (*a4 + 8 * v130);
LABEL_154:
                v24 = (*v54 + 80);
LABEL_155:
                std::string::operator=(&v133, v24);
                goto LABEL_321;
              case 112:
                goto LABEL_215;
              case 113:
                goto LABEL_214;
              case 114:
                goto LABEL_148;
              case 115:
                v22 = 0;
                goto LABEL_215;
              case 116:
                v22 = 0;
LABEL_214:
                v23 = 3;
                goto LABEL_215;
              case 117:
                v22 = 0;
LABEL_148:
                v23 = 2;
LABEL_215:
                CoreNLP::extractAffixLetters(&v133, (v15 + 80), v23, v22);
                goto LABEL_321;
              case 118:
                v107 = 0;
                do
                {
                  v108 = *(v15 + 103);
                  if ((v108 & 0x8000000000000000) != 0)
                  {
                    v108 = *(v15 + 88);
                  }

                  if (v108 <= v107)
                  {
                    break;
                  }

                  CoreNLP::extractLetters((v15 + 80), 1, v107, &__p);
                  v109 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = __p.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    std::vector<std::string>::push_back[abi:ne200100](a7, &__p);
                    v111 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    v109 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v111 = __p.__r_.__value_.__r.__words[1];
                    }

                    v107 += v111;
                  }

                  if (v109 < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                while (size);
                goto LABEL_322;
              case 119:
                if (a5)
                {
                  std::string::operator=(&v133, (*(*a4 + 8 * a5 - 8) + 80));
                }

                goto LABEL_253;
              case 120:
                std::string::operator=(&v133, (v15 + 80));
                std::string::push_back(&v133, 32);
                goto LABEL_312;
              case 121:
                if (a5)
                {
                  std::string::operator=(&v133, (*(*a4 + 8 * a5 - 8) + 80));
                }

                std::string::push_back(&v133, 32);
                v97 = *(v15 + 103);
                if (v97 >= 0)
                {
                  v98 = (v15 + 80);
                }

                else
                {
                  v98 = *(v15 + 80);
                }

                if (v97 >= 0)
                {
                  v99 = *(v15 + 103);
                }

                else
                {
                  v99 = *(v15 + 88);
                }

                std::string::append(&v133, v98, v99);
LABEL_312:
                v41 = *a4;
                if (v130 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_321;
                }

                v42 = a5 + 1;
                goto LABEL_314;
              case 122:
                std::string::operator=(&v133, (v15 + 80));
                std::string::push_back(&v133, 32);
                if (v130 < (a4[1] - *a4) >> 3)
                {
                  v34 = *(*a4 + 8 * v130);
                  v37 = *(v34 + 80);
                  v35 = v34 + 80;
                  v36 = v37;
                  v38 = *(v35 + 23);
                  if (v38 >= 0)
                  {
                    v39 = v35;
                  }

                  else
                  {
                    v39 = v36;
                  }

                  if (v38 >= 0)
                  {
                    v40 = *(v35 + 23);
                  }

                  else
                  {
                    v40 = *(v35 + 8);
                  }

                  std::string::append(&v133, v39, v40);
                }

                std::string::push_back(&v133, 32);
                v41 = *a4;
                if (v128 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_321;
                }

                v42 = a5 + 2;
LABEL_314:
                v100 = *(v41 + 8 * v42);
                v103 = *(v100 + 80);
                v101 = v100 + 80;
                v102 = v103;
                v104 = *(v101 + 23);
                if (v104 >= 0)
                {
                  v78 = v101;
                }

                else
                {
                  v78 = v102;
                }

                if (v104 >= 0)
                {
                  v79 = *(v101 + 23);
                }

                else
                {
                  v79 = *(v101 + 8);
                }

LABEL_320:
                std::string::append(&v133, v78, v79);
                goto LABEL_321;
              case 123:
                if (a5 >= 2)
                {
                  std::string::operator=(&v133, (*(*a4 + 8 * a5 - 16) + 80));
                }

                std::string::push_back(&v133, 32);
                if (a5)
                {
                  std::string::operator=(&v133, (*(*a4 + 8 * a5 - 8) + 80));
                }

LABEL_253:
                std::string::push_back(&v133, 32);
                v77 = *(v15 + 103);
                if (v77 >= 0)
                {
                  v78 = (v15 + 80);
                }

                else
                {
                  v78 = *(v15 + 80);
                }

                if (v77 >= 0)
                {
                  v79 = *(v15 + 103);
                }

                else
                {
                  v79 = *(v15 + 88);
                }

                goto LABEL_320;
              case 124:
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v32 = __p.__r_.__value_.__l.__size_;
                }

                if (!v32)
                {
                  goto LABEL_291;
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                std::string::append(&v133, p_p, v32);
                std::string::push_back(&v133, 124);
                goto LABEL_290;
              case 125:
                if (a5 < 2 || v126 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_322;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v126), &__p);
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v30 = __p.__r_.__value_.__l.__size_;
                }

                if (!v30)
                {
                  goto LABEL_291;
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v31 = &__p;
                }

                else
                {
                  v31 = __p.__r_.__value_.__r.__words[0];
                }

                std::string::append(&v133, v31, v30);
                std::string::push_back(&v133, 125);
                goto LABEL_290;
              case 126:
                if (!a5 || v127 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_322;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v127), &__p);
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v55 = __p.__r_.__value_.__l.__size_;
                }

                if (!v55)
                {
                  goto LABEL_291;
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v56 = &__p;
                }

                else
                {
                  v56 = __p.__r_.__value_.__r.__words[0];
                }

                std::string::append(&v133, v56, v55);
                std::string::push_back(&v133, 126);
                goto LABEL_290;
              case 127:
                if (v130 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_322;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v130), &__p);
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v62 = __p.__r_.__value_.__l.__size_;
                }

                if (!v62)
                {
                  goto LABEL_291;
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v63 = &__p;
                }

                else
                {
                  v63 = __p.__r_.__value_.__r.__words[0];
                }

                std::string::append(&v133, v63, v62);
                std::string::push_back(&v133, 127);
                goto LABEL_290;
              case 128:
                if (v128 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_322;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v128), &__p);
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v90 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v90 = __p.__r_.__value_.__l.__size_;
                }

                if (!v90)
                {
                  goto LABEL_291;
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v91 = &__p;
                }

                else
                {
                  v91 = __p.__r_.__value_.__r.__words[0];
                }

                std::string::append(&v133, v91, v90);
                std::string::push_back(&v133, 0x80);
LABEL_290:
                v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_291:
                if (v29 < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                goto LABEL_322;
              case 129:
                if (a5 && v127 < (a4[1] - *a4) >> 3)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v127), &__p);
                  v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v25, v26);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v133, 32);
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &__p;
                }

                else
                {
                  v27 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v28 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(&v133, v27, v28);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if ((*(&v133.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  if (v133.__r_.__value_.__l.__size_ <= 1)
                  {
                    goto LABEL_386;
                  }
                }

                else if (HIBYTE(v133.__r_.__value_.__r.__words[2]) < 2u)
                {
                  goto LABEL_373;
                }

                std::string::push_back(&v133, -127);
                goto LABEL_322;
              case 130:
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v43 = &__p;
                }

                else
                {
                  v43 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v44 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(&v133, v43, v44);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::string::push_back(&v133, 32);
                if (v130 < (a4[1] - *a4) >> 3)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v130), &__p);
                  v45 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v46 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v45, v46);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v133.__r_.__value_.__l.__size_ <= 1)
                  {
                    goto LABEL_386;
                  }
                }

                else if (HIBYTE(v133.__r_.__value_.__r.__words[2]) < 2u)
                {
                  goto LABEL_373;
                }

                std::string::push_back(&v133, -126);
                goto LABEL_322;
              case 131:
                if (a5)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5 - 8), &__p);
                  v64 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v65 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v64, v65);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v133, 32);
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v66 = &__p;
                }

                else
                {
                  v66 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v67 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(&v133, v66, v67);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::string::push_back(&v133, 32);
                if (v130 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_244;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v130), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v68 = &__p;
                }

                else
                {
                  v68 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v69 = __p.__r_.__value_.__l.__size_;
                }

                goto LABEL_242;
              case 132:
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v73 = &__p;
                }

                else
                {
                  v73 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v74 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(&v133, v73, v74);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::string::push_back(&v133, 32);
                if (v130 < (a4[1] - *a4) >> 3)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v130), &__p);
                  v75 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v76 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v75, v76);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v133, 32);
                if (v128 >= (a4[1] - *a4) >> 3)
                {
                  goto LABEL_244;
                }

                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * v128), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v68 = &__p;
                }

                else
                {
                  v68 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v69 = __p.__r_.__value_.__l.__size_;
                }

LABEL_242:
                std::string::append(&v133, v68, v69);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

LABEL_244:
                if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_374:
                  if (v133.__r_.__value_.__l.__size_ > 2)
                  {
LABEL_321:
                    std::string::push_back(&v133, v21);
                    goto LABEL_322;
                  }

LABEL_386:
                  *v133.__r_.__value_.__l.__data_ = 0;
                  v133.__r_.__value_.__l.__size_ = 0;
                }

                else
                {
                  if (HIBYTE(v133.__r_.__value_.__r.__words[2]) > 2u)
                  {
                    goto LABEL_321;
                  }

LABEL_373:
                  v133.__r_.__value_.__s.__data_[0] = 0;
                  *(&v133.__r_.__value_.__s + 23) = 0;
                }

LABEL_322:
                v105 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
                v106 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
                if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v105 = v133.__r_.__value_.__l.__size_;
                }

                if (v105)
                {
                  std::vector<std::string>::push_back[abi:ne200100](a7, &v133);
                  v106 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
                }

                if (v106 < 0)
                {
                  operator delete(v133.__r_.__value_.__l.__data_);
                }

                if (++v17 != v16)
                {
                  continue;
                }

                v17 = v134;
                break;
              case 133:
                if (a5 >= 2)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5 - 16), &__p);
                  v112 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v113 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v112, v113);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v133, 32);
                if (a5)
                {
                  CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5 - 8), &__p);
                  v114 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v115 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                  std::string::append(&v133, v114, v115);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v133, 32);
                CoreNLP::TaggingFeatureExtractor::posFeature(*(*a4 + 8 * a5), &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v116 = &__p;
                }

                else
                {
                  v116 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v117 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v117 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(&v133, v116, v117);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if ((*(&v133.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  goto LABEL_374;
                }

                if (HIBYTE(v133.__r_.__value_.__r.__words[2]) < 3u)
                {
                  goto LABEL_373;
                }

                goto LABEL_321;
              case 134:
                if (cf)
                {
                  CFRetain(cf);
                  v131 = cf;
                  v72 = CFGetTypeID(cf);
                  if (v72 != CFStringGetTypeID())
                  {
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "Could not construct");
                    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  if (v131)
                  {
                    applesauce::CF::convert_to<std::string,0>(v131, &__p);
                    goto LABEL_378;
                  }
                }

                else
                {
                  v131 = 0;
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, "");
LABEL_378:
                if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v133.__r_.__value_.__l.__data_);
                }

                v133 = __p;
                if (v131)
                {
                  CFRelease(v131);
                }

                goto LABEL_322;
              default:
                goto LABEL_322;
            }

            break;
          }
        }

        if (v17)
        {
          v135 = v17;
          operator delete(v17);
        }
      }
    }
  }
}

void sub_19D1E24D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 112);
  if (v35)
  {
    *(v33 - 104) = v35;
    operator delete(v35);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CoreNLP::TaggingFeatureExtractor::extractFeatures_Chinese(std::string *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if ((a5 & 0x8000000000000000) == 0)
  {
    v8 = *(a4 + 8);
    if (*a4 != v8 && a5 < (v8 - *a4) >> 3)
    {
      CoreNLP::TaggingFeatureExtractor::featureIDs(a1, a2, a3, &v19);
      v11 = v19;
      v12 = v20;
      if (v19 != v20)
      {
        do
        {
          v13 = *v11;
          CoreNLP::TaggingFeatureExtractor::getChineseNERFeature(a1, v13, a4, a5, &__p);
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v15 = v13 - 94;
            v16 = v15 < 0x12 || a1[16].__r_.__value_.__r.__words[0] == 0;
            if (v16 || &a1[15].__r_.__value_.__r.__words[2] != std::__tree<std::string>::find<std::string>(&a1[15].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_))
            {
              if (!a1[17].__r_.__value_.__r.__words[0])
              {
                goto LABEL_17;
              }

              if (&a1[16].__r_.__value_.__r.__words[2] == std::__tree<std::string>::find<std::string>(&a1[16].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_))
              {
                exit(1);
              }

              p_p = &__p;
              v17 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[16].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_);
              if (v15 < 0x12u || *(v17 + 56) >= 5u)
              {
LABEL_17:
                std::vector<std::string>::push_back[abi:ne200100](a6, &__p);
              }
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v11;
        }

        while (v11 != v12);
        v11 = v19;
      }

      if (v11)
      {
        v20 = v11;
        operator delete(v11);
      }
    }
  }
}

void *CoreNLP::TaggingFeatureExtractor::featureIDs@<X0>(void *result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 == 105)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v4 = result[13];
    v5 = result[14];
    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
  }

  if (a2 == 101)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v4 = result[10];
    v5 = result[11];
    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
  }

  if (a2 == 104 && a3 == 4)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v4 = result[34];
    v5 = result[35];
    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
  }

  switch(a2)
  {
    case 'f':
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v4 = result[16];
      v5 = result[17];
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
    case 'j':
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v4 = result[22];
      v5 = result[23];
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
    case 'g':
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v4 = result[19];
      v5 = result[20];
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
  }

  if ((a2 & 0xFFFFFFFD) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v4 = result[28];
    v5 = result[29];
    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
  }

  if (a2 <= 106)
  {
    if (a2 == 1)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v4 = result[25];
      v5 = result[26];
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
    }

    if (a2 == 3)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v4 = result[31];
      v5 = result[32];
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
    }
  }

  else
  {
    switch(a2)
    {
      case 'k':
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v4 = result[37];
        v5 = result[38];
        return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
      case 'l':
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v4 = result[40];
        v5 = result[41];
        return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
      case 'm':
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v4 = result[43];
        v5 = result[44];
        return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a4, v4, v5, v5 - v4);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

uint64_t CoreNLP::TaggingFeatureExtractor::isInGazetter(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, int a6)
{
  if (a2 != 0x2000000000 && a2 != 0x8000000000 && a2 != 0x4000000000)
  {
    return 0;
  }

  v9 = 56;
  if (a2 == 0x4000000000)
  {
    v9 = 32;
  }

  v10 = 8;
  if (a2 != 0x2000000000)
  {
    v10 = v9;
  }

  v11 = a1 + v10;
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = a5;
  v16 = a4;
  v18 = v12;
  do
  {
    if (*(v13 + 32) >= a6)
    {
      v18 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a6));
  }

  while (v13);
  if (v18 == v12 || *(v18 + 32) > a6)
  {
    return 0;
  }

  v21 = *a3;
  if ((*(*(*a3 + 8 * a4) + 72) & a2) != 0)
  {
    return 1;
  }

  LODWORD(v22) = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (a5 >= 1 && (a4 & 0x8000000000000000) == 0)
  {
    v23 = a3[1];
    while (1)
    {
      v24 = v16;
      v25 = v51;
      if (v16 >= (v23 - v21) >> 3)
      {
        break;
      }

      if (v50 == v51)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v50, (*(v21 + 8 * v16) + 80));
      }

      else
      {
        if (*(v51 - 1) >= 0)
        {
          v26 = *(v51 - 1);
        }

        else
        {
          v26 = *(v51 - 16);
        }

        std::string::basic_string[abi:ne200100](&v47, v26 + 1);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v47;
        }

        else
        {
          v27 = v47.__r_.__value_.__r.__words[0];
        }

        if (v26)
        {
          if (*(v25 - 1) >= 0)
          {
            v28 = (v25 - 24);
          }

          else
          {
            v28 = *(v25 - 24);
          }

          memmove(v27, v28, v26);
        }

        *(&v27->__r_.__value_.__l.__data_ + v26) = 32;
        v29 = *(*a3 + 8 * v24);
        v32 = *(v29 + 80);
        v30 = v29 + 80;
        v31 = v32;
        v33 = *(v30 + 23);
        if (v33 >= 0)
        {
          v34 = v30;
        }

        else
        {
          v34 = v31;
        }

        if (v33 >= 0)
        {
          v35 = *(v30 + 23);
        }

        else
        {
          v35 = *(v30 + 8);
        }

        v36 = std::string::append(&v47, v34, v35);
        v37 = *&v36->__r_.__value_.__l.__data_;
        v49 = v36->__r_.__value_.__r.__words[2];
        *__p = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](&v50, __p);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }
      }

      v16 = v24 + 1;
      v21 = *a3;
      v23 = a3[1];
      if (v24 + 1 < (v23 - *a3) >> 3 && (v38 = *(v21 + 8 * v24 + 8), (*(v38 + 73) & 2) != 0) && *(v38 + 8) == 1)
      {
        v15 += 2;
      }

      else
      {
        v39 = *(v21 + 8 * v24);
        if ((*(v39 + 72) & 0x80) != 0 && *(v39 + 8) > 1)
        {
          ++v15;
        }
      }

      if (v15-- <= 1)
      {
        v25 = v51;
        break;
      }
    }

    LODWORD(v22) = -1431655765 * ((v25 - v50) >> 3);
  }

  v41 = 24 * v22;
  while (1)
  {
    v19 = v22 > 0;
    v42 = __OFSUB__(v22, 1);
    v22 = (v22 - 1);
    if (v22 < 0 != v42)
    {
      break;
    }

    v43 = (v50 + v41 - 24);
    v44 = *(v50 + v41 - 1);
    if (v44 < 0)
    {
      v43 = *v43;
      v44 = *(v50 + v41 - 16);
    }

    v41 -= 24;
    if (BloomFilter::possiblyContains((v18 + 40), v43, v44))
    {
      v45 = *a3 + 0x5555555555555555 * (v51 - v50) + 8 * v16;
      v46 = v22 + 1;
      do
      {
        *(*(v45 + 8 * v22--) + 72) |= a2;
        --v46;
      }

      while (v46 > 0);
      break;
    }
  }

  __p[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return v19;
}

void sub_19D1E2C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  a16 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

_BYTE *CoreNLP::TaggingFeatureExtractor::posFeature@<X0>(CoreNLP::NLAttributedToken *a1@<X1>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 4);
  v4 = a1 + 32;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    if (*(v5 + 8) >= 6)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < 6)];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= 6)
  {
    v9 = *(v7 + 10) - 16;
    if (v9 > 0x32)
    {
      v8 = "OtherWord";
    }

    else
    {
      v8 = off_1E7624DE8[v9];
    }
  }

  else
  {
LABEL_9:
    v8 = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v8);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void CoreNLP::TaggingFeatureExtractor::collectFeatures(std::string *a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2 == 7 && a3 == 4 && (a5 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 8);
    if (*a4 != v7 && a5 < (v7 - *a4) >> 3)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, a1[11].__r_.__value_.__l.__size_, a1[11].__r_.__value_.__r.__words[2], a1[11].__r_.__value_.__r.__words[2] - a1[11].__r_.__value_.__l.__size_);
      v9 = v17;
      v10 = v18;
      if (v17 != v18)
      {
        do
        {
          v11 = *v9;
          CoreNLP::TaggingFeatureExtractor::getChineseNERFeature(a1, v11, a4, a5, &__p);
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v13 = (v11 - 94) < 0x12 || a1[16].__r_.__value_.__r.__words[0] == 0;
            if (v13 || &a1[15].__r_.__value_.__r.__words[2] != std::__tree<std::string>::find<std::string>(&a1[15].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_))
            {
              if (&a1[16].__r_.__value_.__r.__words[2] == std::__tree<std::string>::find<std::string>(&a1[16].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_))
              {
                p_p = &__p;
                v14 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[16].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_);
                v15 = 1;
              }

              else
              {
                p_p = &__p;
                v14 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[16].__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__data_);
                v15 = *(v14 + 56) + 1;
              }

              *(v14 + 56) = v15;
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v9;
        }

        while (v9 != v10);
        v9 = v17;
      }

      if (v9)
      {
        v18 = v9;
        operator delete(v9);
      }
    }
  }
}

void sub_19D1E3034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

std::string *CoreNLP::TaggingFeatureExtractor::getChineseNERFeature@<X0>(std::string *result@<X0>, int a2@<W1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v7 = result;
  switch(a2)
  {
    case 'T':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v9 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v9 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 1);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v10 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v10;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v11 = &v168;
      }

      else
      {
        v11 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v12 = v170;
      }

      else
      {
        v12 = v169;
      }

      std::string::append(a5, v11, v12);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      if (!a4)
      {
        v52 = "BOSBOS";
        return std::string::append(a5, v52);
      }

      if (a4 == 1)
      {
        std::string::append(a5, "BOS");
        v13 = *a3;
        goto LABEL_363;
      }

      v154 = (*a3)[a4 - 2];
      v157 = *(v154 + 80);
      v155 = v154 + 80;
      v156 = v157;
      v158 = *(v155 + 23);
      if (v158 >= 0)
      {
        v159 = v155;
      }

      else
      {
        v159 = v156;
      }

      if (v158 >= 0)
      {
        v160 = *(v155 + 23);
      }

      else
      {
        v160 = *(v155 + 8);
      }

      std::string::append(a5, v159, v160);
      goto LABEL_360;
    case 'U':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v83 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v83 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 2);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v84 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v84;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v85 = &v168;
      }

      else
      {
        v85 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v86 = v170;
      }

      else
      {
        v86 = v169;
      }

      std::string::append(a5, v85, v86);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      if (a4)
      {
        v87 = (*a3)[a4 - 1];
        v90 = *(v87 + 80);
        v88 = v87 + 80;
        v89 = v90;
        v91 = *(v88 + 23);
        if (v91 >= 0)
        {
          v92 = v88;
        }

        else
        {
          v92 = v89;
        }

        if (v91 >= 0)
        {
          v93 = *(v88 + 23);
        }

        else
        {
          v93 = *(v88 + 8);
        }

        std::string::append(a5, v92, v93);
      }

      else
      {
        std::string::append(a5, "BOS");
      }

      goto LABEL_351;
    case 'V':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v61 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v61 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 3);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v62 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v62;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v63 = &v168;
      }

      else
      {
        v63 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v64 = v170;
      }

      else
      {
        v64 = v169;
      }

      std::string::append(a5, v63, v64);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v65 = (*a3)[a4];
      v68 = *(v65 + 80);
      v66 = v65 + 80;
      v67 = v68;
      v69 = *(v66 + 23);
      if (v69 >= 0)
      {
        v40 = v66;
      }

      else
      {
        v40 = v67;
      }

      if (v69 >= 0)
      {
        v41 = *(v66 + 23);
      }

      else
      {
        v41 = *(v66 + 8);
      }

      goto LABEL_76;
    case 'W':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v74 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v74 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 4);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v75 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v75;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v76 = &v168;
      }

      else
      {
        v76 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v77 = v170;
      }

      else
      {
        v77 = v169;
      }

      std::string::append(a5, v76, v77);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v78 = a3[1] - *a3;
      if (v78 - 1 == a4)
      {
        v52 = "EOSEOS";
        return std::string::append(a5, v52);
      }

      v146 = v78 - 2;
      v147 = (*a3)[a4 + 1];
      v150 = *(v147 + 80);
      v148 = v147 + 80;
      v149 = v150;
      v151 = *(v148 + 23);
      if (v151 >= 0)
      {
        v152 = v148;
      }

      else
      {
        v152 = v149;
      }

      if (v151 >= 0)
      {
        v153 = *(v148 + 23);
      }

      else
      {
        v153 = *(v148 + 8);
      }

      if (v146 == a4)
      {
        std::string::append(a5, v152, v153);
LABEL_348:
        v52 = "EOS";
        return std::string::append(a5, v52);
      }

      std::string::append(a5, v152, v153);
      v50 = *a3;
LABEL_362:
      v13 = &v50[a4 + 2];
      goto LABEL_363;
    case 'X':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v31 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v31 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 5);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v32 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v32;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v33 = &v168;
      }

      else
      {
        v33 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v34 = v170;
      }

      else
      {
        v34 = v169;
      }

      std::string::append(a5, v33, v34);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      if (a4)
      {
        v35 = (*a3)[a4 - 1];
        v38 = *(v35 + 80);
        v36 = v35 + 80;
        v37 = v38;
        v39 = *(v36 + 23);
        if (v39 >= 0)
        {
          v40 = v36;
        }

        else
        {
          v40 = v37;
        }

        if (v39 >= 0)
        {
          v41 = *(v36 + 23);
        }

        else
        {
          v41 = *(v36 + 8);
        }

LABEL_76:
        std::string::append(a5, v40, v41);
      }

      else
      {
        std::string::append(a5, "BOS");
      }

      goto LABEL_347;
    case 'Y':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v102 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v102 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 6);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v103 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v103;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v104 = &v168;
      }

      else
      {
        v104 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v105 = v170;
      }

      else
      {
        v105 = v169;
      }

      std::string::append(a5, v104, v105);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      if (a4 < 2)
      {
        goto LABEL_257;
      }

      v13 = &(*a3)[a4 - 2];
      goto LABEL_363;
    case 'Z':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v114 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v114 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 7);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v115 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v115;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v116 = &v168;
      }

      else
      {
        v116 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v117 = v170;
      }

      else
      {
        v117 = v169;
      }

      std::string::append(a5, v116, v117);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      if (a4)
      {
LABEL_360:
        v13 = &(*a3)[a4 - 1];
LABEL_363:
        v161 = *v13;
        v164 = *(v161 + 80);
        v162 = v161 + 80;
        v163 = v164;
        v165 = *(v162 + 23);
        if (v165 >= 0)
        {
          v166 = v162;
        }

        else
        {
          v166 = v163;
        }

        if (v165 >= 0)
        {
          v167 = *(v162 + 23);
        }

        else
        {
          v167 = *(v162 + 8);
        }

        return std::string::append(a5, v166, v167);
      }

      else
      {
LABEL_257:
        v52 = "BOS";
        return std::string::append(a5, v52);
      }

    case '[':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v79 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v79 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 8);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v80 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v80;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v81 = &v168;
      }

      else
      {
        v81 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v82 = v170;
      }

      else
      {
        v82 = v169;
      }

      std::string::append(a5, v81, v82);
      if (v170 < 0)
      {
        operator delete(v168);
      }

LABEL_351:
      v13 = &(*a3)[a4];
      goto LABEL_363;
    case '\\':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v126 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v126 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 9);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v127 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v127;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v128 = &v168;
      }

      else
      {
        v128 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v129 = v170;
      }

      else
      {
        v129 = v169;
      }

      std::string::append(a5, v128, v129);
      if (v170 < 0)
      {
        operator delete(v168);
      }

LABEL_347:
      if (a3[1] - *a3 - 1 == a4)
      {
        goto LABEL_348;
      }

      v13 = &(*a3)[a4 + 1];
      goto LABEL_363;
    case ']':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v46 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v46 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 10);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v47 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v47;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v48 = &v168;
      }

      else
      {
        v48 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v49 = v170;
      }

      else
      {
        v49 = v169;
      }

      std::string::append(a5, v48, v49);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v50 = *a3;
      v51 = a3[1] - *a3;
      v52 = "EOS";
      if (v51 - 1 == a4 || v51 - 2 == a4)
      {
        return std::string::append(a5, v52);
      }

      goto LABEL_362;
    case '^':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v122 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v122 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 11);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v123 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v123;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v124 = &v168;
      }

      else
      {
        v124 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v125 = v170;
      }

      else
      {
        v125 = v169;
      }

      std::string::append(a5, v124, v125);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 2, 4);
      goto LABEL_334;
    case '_':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v27 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v27 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 12);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v28 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v28;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v29 = &v168;
      }

      else
      {
        v29 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v30 = v170;
      }

      else
      {
        v30 = v169;
      }

      std::string::append(a5, v29, v30);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 2, 4);
      goto LABEL_334;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v42 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v42 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 13);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v43 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v43;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v44 = &v168;
      }

      else
      {
        v44 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v45 = v170;
      }

      else
      {
        v45 = v169;
      }

      std::string::append(a5, v44, v45);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 2, 4);
      goto LABEL_334;
    case 'a':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v110 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v110 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 14);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v111 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v111;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v112 = &v168;
      }

      else
      {
        v112 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v113 = v170;
      }

      else
      {
        v113 = v169;
      }

      std::string::append(a5, v112, v113);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 3, 4);
      goto LABEL_334;
    case 'b':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v23 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v23 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 15);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v24 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v24;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v25 = &v168;
      }

      else
      {
        v25 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v26 = v170;
      }

      else
      {
        v26 = v169;
      }

      std::string::append(a5, v25, v26);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 3, 4);
      goto LABEL_334;
    case 'c':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v70 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v70 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 16);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v71 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v71;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v72 = &v168;
      }

      else
      {
        v72 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v73 = v170;
      }

      else
      {
        v73 = v169;
      }

      std::string::append(a5, v72, v73);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 3, 4);
      goto LABEL_334;
    case 'd':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v19 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v19 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 17);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v20 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v20;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v21 = &v168;
      }

      else
      {
        v21 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v22 = v170;
      }

      else
      {
        v22 = v169;
      }

      std::string::append(a5, v21, v22);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 4, 4);
      goto LABEL_334;
    case 'e':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v94 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v94 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 18);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v95 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v95;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v96 = &v168;
      }

      else
      {
        v96 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v97 = v170;
      }

      else
      {
        v97 = v169;
      }

      std::string::append(a5, v96, v97);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 4, 4);
      goto LABEL_334;
    case 'f':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v118 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v118 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 19);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v119 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v119;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v120 = &v168;
      }

      else
      {
        v120 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v121 = v170;
      }

      else
      {
        v121 = v169;
      }

      std::string::append(a5, v120, v121);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 4, 4);
      goto LABEL_334;
    case 'g':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v134 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v134 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 20);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v135 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v135;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v136 = &v168;
      }

      else
      {
        v136 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v137 = v170;
      }

      else
      {
        v137 = v169;
      }

      std::string::append(a5, v136, v137);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 5, 4);
      goto LABEL_334;
    case 'h':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v98 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v98 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 21);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v99 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v99;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v100 = &v168;
      }

      else
      {
        v100 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v101 = v170;
      }

      else
      {
        v101 = v169;
      }

      std::string::append(a5, v100, v101);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 5, 4);
      goto LABEL_334;
    case 'i':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v106 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v106 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 22);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v107 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v107;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v108 = &v168;
      }

      else
      {
        v108 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v109 = v170;
      }

      else
      {
        v109 = v169;
      }

      std::string::append(a5, v108, v109);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 5, 4);
      goto LABEL_334;
    case 'j':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v130 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v130 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 23);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v131 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v131;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v132 = &v168;
      }

      else
      {
        v132 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v133 = v170;
      }

      else
      {
        v133 = v169;
      }

      std::string::append(a5, v132, v133);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 6, 4);
      goto LABEL_334;
    case 'k':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v138 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v138 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 24);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v139 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v139;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v140 = &v168;
      }

      else
      {
        v140 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v141 = v170;
      }

      else
      {
        v141 = v169;
      }

      std::string::append(a5, v140, v141);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 6, 4);
      goto LABEL_334;
    case 'l':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v57 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v57 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 25);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v58 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v58;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v59 = &v168;
      }

      else
      {
        v59 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v60 = v170;
      }

      else
      {
        v60 = v169;
      }

      std::string::append(a5, v59, v60);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 6, 4);
      goto LABEL_334;
    case 'm':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v53 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v53 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 26);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v54 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v54;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v55 = &v168;
      }

      else
      {
        v55 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v56 = v170;
      }

      else
      {
        v56 = v169;
      }

      std::string::append(a5, v55, v56);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x2000000000, a3, a4, 7, 4);
      goto LABEL_334;
    case 'n':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v142 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v142 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 27);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v143 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v143;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v144 = &v168;
      }

      else
      {
        v144 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v145 = v170;
      }

      else
      {
        v145 = v169;
      }

      std::string::append(a5, v144, v145);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x4000000000, a3, a4, 7, 4);
      goto LABEL_334;
    case 'o':
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v171);
      v14 = v172;
      *(&v174[1].__locale_ + *(v172 - 24)) = 2;
      std::ios::fill[abi:ne200100]((&v172 + *(v14 - 24)), 0x30u);
      MEMORY[0x19EAF8A70](&v172, 28);
      std::stringbuf::str();
      v171[0] = *MEMORY[0x1E69E54D8];
      v15 = *(MEMORY[0x1E69E54D8] + 72);
      *(v171 + *(v171[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v172 = v15;
      v173 = MEMORY[0x1E69E5548] + 16;
      if (v176 < 0)
      {
        operator delete(__p);
      }

      v173 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v174);
      std::iostream::~basic_iostream();
      MEMORY[0x19EAF8C10](v177);
      if ((v170 & 0x80u) == 0)
      {
        v16 = &v168;
      }

      else
      {
        v16 = v168;
      }

      if ((v170 & 0x80u) == 0)
      {
        v17 = v170;
      }

      else
      {
        v17 = v169;
      }

      std::string::append(a5, v16, v17);
      if (v170 < 0)
      {
        operator delete(v168);
      }

      v18 = CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(v7, 0x8000000000, a3, a4, 7, 4);
LABEL_334:
      if (v18)
      {
        v52 = "1";
      }

      else
      {
        v52 = "0";
      }

      return std::string::append(a5, v52);
    default:
      return result;
  }
}

void sub_19D1E6AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::TaggingFeatureExtractor::setConstrainFeaturePath(uint64_t a1, uint64_t *a2)
{
  v19[19] = *MEMORY[0x1E69E9840];
  v4 = a1 + 376;
  std::__tree<std::string>::destroy(a1 + 368, *(a1 + 376));
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = v4;
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_17;
    }

    v5 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_17;
  }

  std::ifstream::basic_ifstream(v17);
  v6 = v17[0];
  if ((v18[*(v17[0] - 24) + 16] & 5) == 0)
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v7 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v17 + *(v6 - 24)));
      v8 = std::locale::use_facet(&v16, v7);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v16);
      v10 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__p, v9);
      v11 = HIBYTE(v15);
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (v15 < 0)
      {
        v11 = v14;
      }

      if (v11)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 368, &__p);
      }

      v6 = v17[0];
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  v17[0] = *MEMORY[0x1E69E54C8];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x19EAF8960](v18);
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v19);
LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x19EAF8950](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19D1E7108(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::TaggingFeatureExtractor::isInChineseGazetter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 != 0x2000000000 && a2 != 0x8000000000 && a2 != 0x4000000000)
  {
    return 0;
  }

  v8 = a5;
  if (a5 < 2 || a5 + a4 > ((a3[1] - *a3) >> 3))
  {
    return 0;
  }

  memset(&v29, 0, sizeof(v29));
  v15 = 8 * a4;
  do
  {
    v16 = *(*a3 + v15);
    v19 = *(v16 + 80);
    v17 = v16 + 80;
    v18 = v19;
    v20 = *(v17 + 23);
    if (v20 >= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = v18;
    }

    if (v20 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = *(v17 + 8);
    }

    std::string::append(&v29, v21, v22);
    v15 += 8;
    --v8;
  }

  while (v8);
  v23 = 56;
  if (a2 == 0x4000000000)
  {
    v23 = 32;
  }

  if (a2 == 0x2000000000)
  {
    v23 = 8;
  }

  v24 = (a1 + v23 + 8);
  v25 = *v24;
  if (!*v24)
  {
    goto LABEL_32;
  }

  v26 = a1 + v23 + 8;
  do
  {
    if (*(v25 + 32) >= a6)
    {
      v26 = v25;
    }

    v25 = *(v25 + 8 * (*(v25 + 32) < a6));
  }

  while (v25);
  if (v26 != v24 && *(v26 + 32) <= a6)
  {
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v29;
    }

    else
    {
      v27 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v10 = BloomFilter::possiblyContains((v26 + 40), v27, size);
  }

  else
  {
LABEL_32:
    v10 = 0;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_19D1E72B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::TaggingFeatureExtractor::dependency(unsigned int a1@<W1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 < 4 || a1 - 102 <= 4 && ((1 << (a1 - 102)) & 0x13) != 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, 1uLL);
  }
}

void sub_19D1E7374(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAF8960](a1 + 2);

  return std::istream::~istream();
}

uint64_t std::ios::fill[abi:ne200100](std::ios_base *this, std::ios_base::fmtflags a2)
{
  fmtflags = this[1].__fmtflags_;
  if (fmtflags == -1)
  {
    std::ios_base::getloc(this);
    v5 = std::locale::use_facet(&v7, MEMORY[0x1E69E5318]);
    fmtflags = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
    this[1].__fmtflags_ = fmtflags;
  }

  this[1].__fmtflags_ = a2;
  return fmtflags;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1E7568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<NLLanguageID,BloomFilter>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,BloomFilter>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,BloomFilter>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_19D1E76C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NLLanguageID,BloomFilter>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NLLanguageID,BloomFilter>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 143) < 0)
    {
      operator delete(__p[15]);
    }

    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    v3 = __p[5];
    if (v3)
    {
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void CoreNLP::TranscriptionBuffer::~TranscriptionBuffer(CoreNLP::TranscriptionBuffer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x19EAF8C70](v1, 0x1000C80BDFB0063);
  }
}

__CFString *CoreNLP::createLatinTranscription(CoreNLP *this, const unsigned __int16 *a2, int a3)
{
  v3 = 0;
  if (this && a2)
  {
    v7 = this;
    v8 = 0;
    v9 = a2;
    MutableString = CoreNLP::TranscriptionBuffer::createMutableString(&v7);
    v3 = MutableString;
    if (MutableString)
    {
      if (!CFStringTransform(MutableString, 0, *MEMORY[0x1E695E9A8], 0))
      {
        CFRelease(v3);
      }

      if (a3 && !CFStringTransform(v3, 0, @"Latin-NumericPinyin", 0))
      {
        CFRelease(v3);
      }
    }

    if (v8)
    {
      MEMORY[0x19EAF8C70](v8, 0x1000C80BDFB0063);
    }
  }

  return v3;
}

void sub_19D1E78D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x19EAF8C70](a11, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D1E7970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CoreNLP::PunctClassifier::~PunctClassifier(CoreNLP::PunctClassifier *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<std::string>::destroy(this + 24, *(this + 4));
}

void CoreNLP::PunctClassifier::setString(CoreNLP::PunctClassifier *this, CFTypeRef cf)
{
  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
    *(this + 2) = 0;
  }

  if (cf)
  {
    *(this + 2) = CFRetain(cf);
  }
}

void CoreNLP::KoreanSubWordTagger::KoreanSubWordTagger(CoreNLP::KoreanSubWordTagger *this, const CoreNLP::TaggerContext *a2, const CoreNLP::StringBuffer *a3)
{
  v5 = CoreNLP::SubWordTagger::SubWordTagger(this, a2, a3);
  *v5 = &unk_1F10AE2E8;
  v6 = *a2;
  v5[6] = *a2;
  *(v5 + 56) = 0;
  v5[8] = -1;
  v5[9] = 0;
  v5[10] = 0;
  if ((*(this + 12) & 0x188A0004) != 0)
  {
    CoreNLP::MeCabSubTokenizer::createTokenizer();
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  operator new();
}

void sub_19D1E7B3C(_Unwind_Exception *a1)
{
  std::unique_ptr<CoreNLP::BufferedDecompounder>::~unique_ptr[abi:ne200100]((v1 + 112));
  v3 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 88);
  *(v1 + 88) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::anonymous namespace::createICUTextBreak(CoreNLP::_anonymous_namespace_ *this, unint64_t a2)
{
  if ((a2 & 0x188A0004) == 0 || (a2 & 0x80000) != 0)
  {
    if ((a2 & 0x10000) == 0)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

CoreNLP::SubWordTagger **std::unique_ptr<CoreNLP::BufferedDecompounder>::~unique_ptr[abi:ne200100](CoreNLP::SubWordTagger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 3);
    if (v3)
    {
      *(v2 + 4) = v3;
      operator delete(v3);
    }

    CoreNLP::SubWordTagger::~SubWordTagger(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void CoreNLP::KoreanSubWordTagger::~KoreanSubWordTagger(CoreNLP::SubWordTagger **this)
{
  *this = &unk_1F10AE2E8;
  std::unique_ptr<CoreNLP::BufferedDecompounder>::~unique_ptr[abi:ne200100](this + 14);
  v2 = this[13];
  this[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[12];
  this[12] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[11];
  this[11] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::KoreanSubWordTagger::~KoreanSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::KoreanSubWordTagger::setString(CoreNLP::KoreanSubWordTagger *this, const __CFString *a2, CFRange a3)
{
  *(this + 56) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = -1;
  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3.location, a3.length);
    v5 = *(this + 14);
    v5[2] = 0;
    v5[4] = v5[3];
  }

  else if (*(this + 12))
  {
    CoreNLP::StringBuffer::getSubStringCharsOfRange(*(this + 2), a3);
    v6 = *(*(this + 2) + 24);
    v7 = *(**(this + 12) + 16);

    return v7();
  }

  return result;
}

uint64_t CoreNLP::KoreanSubWordTagger::fastEnumerateTokensWithSpecifiedStop(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t CoreNLP::KoreanSubWordTagger::enumerateTokensWithSpecifiedStop(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t CoreNLP::KoreanSubWordTagger::enumerateSubTokensOfToken(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a2[1])
  {
    v6 = result;
    v7 = *(result + 104);
    if (!v7)
    {
      CoreNLP::MeCabSubTokenizer::createTokenizer();
    }

    (*(*v7 + 96))(v7, (**(v6 + 8) & 0x18880000) == 0);
    result = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(v6 + 16), *(*(v6 + 8) + 16));
    v8 = *(*(v6 + 16) + 24);
    if (v8)
    {
      (*(**(v6 + 104) + 16))(*(v6 + 104), v8, *a2, a2[1]);
      v11 = 0;
      for (result = (*(**(v6 + 104) + 72))(*(v6 + 104), 0); result; result = (*(**(v6 + 104) + 72))(*(v6 + 104), 0))
      {
        v9 = *(result + 16);
        v12 = *result;
        v10 = v12 - *a2;
        v13 = v9;
        *&v12 = v10;
        result = (*(a4 + 16))(a4, &v12, &v11);
        if (v11)
        {
          break;
        }
      }
    }
  }

  return result;
}

__n128 CoreNLP::KoreanSubWordTagger::goToTokenAtIndex(CoreNLP::KoreanSubWordTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  v7 = *(this + 12);
  if (!v7)
  {
    v10 = *(this + 11);
    if (!v10)
    {
      return result;
    }

    if (a4)
    {
      *a4 = xmmword_19D27D570;
    }

    if (*(this + 50))
    {
      v11 = (*(*v10 + 40))(v10, a2, a3);
      if (!v11)
      {
        return result;
      }
    }

    else
    {
      v11 = CoreNLP::BufferedDecompounder::goToTokenAtIndex(*(this + 14), a3);
      if (!v11)
      {
        v12 = (*(**(this + 11) + 40))(*(this + 11), a2, a3);
        if (!v12)
        {
          return result;
        }

        CoreNLP::BufferedDecompounder::tokenize(*(this + 14), v12);
        v11 = CoreNLP::BufferedDecompounder::goToTokenAtIndex(*(this + 14), a3);
        if (!v11)
        {
          return result;
        }
      }
    }

    v13 = v11[1].n128_u64[0];
    result = *v11;
    *(this + 4) = *v11;
    *(this + 10) = v13 | 2;
    return result;
  }

  v8 = *(*v7 + 40);

  v8();
  return result;
}

char *CoreNLP::BufferedDecompounder::goToTokenAtIndex(CoreNLP::BufferedDecompounder *this, uint64_t a2)
{
  result = *(this + 3);
  v4 = *(this + 4);
  if (result == v4)
  {
    return 0;
  }

  if (*result > a2 || *(v4 - 2) + *(v4 - 3) <= a2)
  {
    *(this + 2) = 0;
    *(this + 4) = result;
    return 0;
  }

  v5 = v4 - result;
  if (v4 - result < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v5 / 0x18;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  while (*result <= a2)
  {
    ++v6;
    if (*(result + 1) + *result > a2)
    {
      goto LABEL_14;
    }

    result += 24;
    if (v7 == v6)
    {
      return 0;
    }
  }

  result = 0;
LABEL_14:
  *(this + 2) = v6;
  return result;
}

uint64_t CoreNLP::BufferedDecompounder::tokenize(uint64_t a1, CFIndex *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 32) = *(a1 + 24);
  v6 = 0;
  v7.length = a2[1];
  v2 = a2[2];
  v3 = *a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN7CoreNLP20BufferedDecompounder8tokenizeEPK7NLToken_block_invoke;
  v5[3] = &__block_descriptor_tmp_4;
  v5[4] = a1;
  v5[5] = v2;
  v7.location = v3;
  return CoreNLP::EnglishCompoundWord::enumerateDecomposedTokensWithSpecifiedStop(a1, v7, &v6, v5);
}

__CFString *CoreNLP::KoreanSubWordTagger::copyTranscriptionOfCurrentToken(uint64_t a1, CFIndex *a2, uint64_t a3)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = **(a1 + 8);
    v7 = *(*v4 + 48);
    v8 = *(a1 + 96);

    return v7(v8, a2, v6, a3);
  }

  else if (a2 && (v10.location = *a2, *a2 != -1) && (v10.length = a2[1]) != 0)
  {
    SubStringCharsOfRange = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(a1 + 16), v10);
    v12 = a2[1];

    return CoreNLP::createLatinTranscription(SubStringCharsOfRange, v12, 0);
  }

  else
  {
    return 0;
  }
}

CFRange *CoreNLP::KoreanSubWordTagger::getNextToken(CoreNLP::KoreanSubWordTagger *this, CFRange *a2)
{
  v3 = *(this + 6);
  if ((v3 & 0x80000) == 0)
  {
    v4 = *(this + 12);
    if (v4)
    {
      v5 = *(*v4 + 72);

      return v5();
    }

    result = *(this + 11);
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      *a2 = xmmword_19D27D570;
      v3 = *(this + 6);
    }

    v15 = 0;
    if ((v3 & 0x10000) != 0)
    {
      result = (*(result->location + 56))(result, &v15);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = *(this + 14);
      v8 = v7[3];
      v9 = v7[4];
      if (v8 != v9)
      {
        v10 = v7[2];
        if (v10 >= (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)))
        {
          v7[4] = v8;
          v7[2] = 0;
        }

        else
        {
          v7[2] = v10 + 1;
          if (v8 && v10 != -1)
          {
            v11 = (v8 + 24 * v10);
            v12 = *v11;
            location = v11[1].location;
            result = (this + 64);
LABEL_24:
            *(this + 10) = location;
            *(this + 4) = v12;
            *(this + 10) = location | 2;
            return result;
          }
        }
      }

      result = (*(result->location + 56))(result, &v15);
      if (!result)
      {
        return result;
      }

      CoreNLP::BufferedDecompounder::tokenize(*(this + 14), &result->location);
      result = CoreNLP::BufferedDecompounder::getNextToken(*(this + 14));
      if (!result)
      {
        return result;
      }
    }

    v14 = result;
    result = (this + 64);
    v12 = *v14;
    location = v14[1].location;
    goto LABEL_24;
  }

  return CoreNLP::KoreanSubWordTagger::getNextShorterToken(this, a2);
}

CFRange *CoreNLP::KoreanSubWordTagger::getNextShorterToken(CoreNLP::KoreanSubWordTagger *this, CFRange *a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = xmmword_19D27D570;
  }

  v4 = (this + 64);
  if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = (*(**(this + 12) + 72))(*(this + 12), a2);
    if (v8)
    {
      break;
    }

    *(this + 56) = 0;
LABEL_7:
    CoreNLP::KoreanSubWordTagger::mergeTokens(this, &v11);
    location = v11.location;
    if ((v5 & 1) == 0 && v11.location == -1)
    {
      return 0;
    }

    if (v5 && *(this + 12))
    {
      *(this + 56) = 1;
      length = v11.length;
      v13.location = location;
      v13.length = v11.length;
      CoreNLP::StringBuffer::getSubStringCharsOfRange(*(this + 2), v13);
      (*(**(this + 12) + 16))(*(this + 12), *(*(this + 2) + 24), location, length);
    }

    *v4 = v11;
    *(this + 10) = v12;
    if ((v12 & 0x1000) != 0)
    {
      *(this + 10) |= 2uLL;
    }

    if ((*(this + 56) & 1) == 0)
    {
      return v4;
    }
  }

  v9 = *v8;
  *(this + 10) = *(v8 + 16);
  *v4 = v9;
  return v4;
}

uint64_t CoreNLP::BufferedDecompounder::getNextToken(CoreNLP::BufferedDecompounder *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3 >= (0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3)))
  {
    v5 = 0;
    *(this + 4) = v1;
    *(this + 2) = 0;
  }

  else
  {
    v4 = __CFADD__(v3, 1);
    *(this + 2) = v3 + 1;
    v5 = v1 + 24 * v3;
    if (v4)
    {
      return 0;
    }
  }

  return v5;
}

void CoreNLP::KoreanSubWordTagger::releaseString(CoreNLP::KoreanSubWordTagger *this)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = -1;
  v2 = *(this + 11);
  if (v2)
  {
    CoreNLP::ICUTextBreak::reset(v2);
    v3 = *(this + 14);
    v3[2] = 0;
    v3[4] = v3[3];
  }
}

uint64_t CoreNLP::KoreanSubWordTagger::reset(CoreNLP::KoreanSubWordTagger *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

__n128 CoreNLP::KoreanSubWordTagger::mergeTokens(uint64_t a1, __n128 *a2)
{
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = -1;
  v11 = 0;
  v4 = (*(**(a1 + 88) + 56))(*(a1 + 88), &v11);
  if (!v4)
  {
    return result;
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v7 = v4;
    v9 = v4[1].n128_u64[0];
    if ((v6 & 1) == 0 && (v9 & 0x1000) == 0)
    {
      result = *v4;
      a2[1].n128_u64[0] = v4[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    if (v6 & 1 | ((v4[1].n128_u64[0] & 0x1000) == 0))
    {
      break;
    }

    a2->n128_u64[0] = v4->n128_u64[0];
LABEL_10:
    v6 = (v9 >> 12) & 1;
    v11 = 0;
    v4 = (*(**(a1 + 88) + 56))(*(a1 + 88), &v11);
    v8 = v7;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if ((v6 & 1) == 0 || (v9 & 0x1000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v6)
  {
    if (v8)
    {
      v10 = v8[1].n128_u64[0];
      a2->n128_u64[1] = v8->n128_u64[1] + v8->n128_u64[0] - a2->n128_u64[0];
      a2[1].n128_u64[0] = v10;
    }
  }

  return result;
}

void ___ZN7CoreNLP20BufferedDecompounder8tokenizeEPK7NLToken_block_invoke(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  *(a2 + 2) |= *(a1 + 40);
  v5 = v3[4];
  v4 = v3[5];
  if (v5 >= v4)
  {
    v8 = v3[3];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>((v3 + 3), v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    v7 = 24 * v9 + 24;
    v15 = v3[3];
    v16 = v3[4] - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = v3[3];
    v3[3] = v17;
    v3[4] = v7;
    v3[5] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  v3[4] = v7;
}

void CoreNLP::SentenceEmbedding::L2Normalize(uint64_t a1, uint64_t a2)
{
  __C = 0.0;
  vDSP_dotpr(*a2, 1, *a2, 1, &__C, (*(a2 + 8) - *a2) >> 2);
  if (fabsf(__C) > 0.000001)
  {
    vDSP_vsdiv(*a2, 1, &__C, *a2, 1, (*(a2 + 8) - *a2) >> 2);
  }
}

void CoreNLP::SentenceEmbedding::SentenceEmbedding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *&v15[4] = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F10AE3C0;
  *(a1 + 40) = 0;
  v13 = 0x3EC5AEE63F019653;
  v14 = 1037865425;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1 + 40, &v13, v15, 3uLL);
  *(a1 + 20) = a6;
  *(a1 + 64) = 0x3F4000003EBEDFA4;
  *(a1 + 16) = a5;
  v10 = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 20));
  v11[0] = kNLStringEmbeddingModelType[0];
  v11[1] = kNLStringEmbeddingModelLocale[0];
  v12[0] = kNLStringEmbeddingModelTypeContextualWordEmbedding[0];
  v12[1] = a2;
  v11[2] = kNLStringEmbeddingModelVersion[0];
  v12[2] = v10;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  CFRelease(v10);
  NLStringEmbeddingCreateWithOptions();
}

void sub_19D1E8ED4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);
  v7 = *v4;
  if (*v4)
  {
    *(v3 + 48) = v7;
    operator delete(v7);
  }

  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::SentenceEmbedding::~SentenceEmbedding(CoreNLP::SentenceEmbedding *this)
{
  *this = &unk_1F10AE3C0;
  CFRelease(*(this + 1));
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 3, 0);
}

{
  CoreNLP::SentenceEmbedding::~SentenceEmbedding(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::SentenceEmbedding::fillStringVector(uint64_t a1, char *a2, uint64_t a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No contextual embedding found.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ((*(a1 + 20) & 0xFFFFFFFE) != 4)
  {
    Dimension = NLStringEmbeddingGetDimension(v4, a2);
    LODWORD(v18) = 0;
    std::vector<float>::vector[abi:ne200100](v21, Dimension);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, kNLTagSchemeTokenType[0]);
    NLTaggerCreate();
  }

  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = NLStringEmbeddingCopyVector(*(a1 + 8), [MEMORY[0x1E696AEC0] stringWithUTF8String:v6]);
  v21[0] = v7;
  Count = CFArrayGetCount(v7);
  LODWORD(v20) = 0;
  std::vector<float>::vector[abi:ne200100](&v18, Count);
  v9 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v9;
    operator delete(v9);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v10 = 0;
  v11 = 0;
  *a3 = v18;
  *(a3 + 16) = v19;
  while (CFArrayGetCount(v7) > v11)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, (*a3 + v10));
    ++v11;
    v10 += 4;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_19D1E96D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN7CoreNLP17SentenceEmbedding16fillStringVectorERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERNS1_6vectorIfNS5_IfEEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) substringWithRange:{*a2, a2[1]}];
  v4 = *(a1 + 40);

  return [v4 addObject:v3];
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void CoreNLP::JapaneseSubWordTagger::JapaneseSubWordTagger(CoreNLP::JapaneseSubWordTagger *this, const CoreNLP::TaggerContext *a2, const CoreNLP::StringBuffer *a3)
{
  v3 = CoreNLP::SubWordTagger::SubWordTagger(this, a2, a3);
  *v3 = &unk_1F10AE480;
  *(v3 + 24) = 0;
  CoreNLP::MeCabSubTokenizer::createTokenizer();
}

void sub_19D1E98A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v3)
  {
    CoreNLP::JapaneseSubWordTagger::JapaneseSubWordTagger(v3);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void CoreNLP::JapaneseSubWordTagger::~JapaneseSubWordTagger(CoreNLP::JapaneseSubWordTagger *this)
{
  *this = &unk_1F10AE480;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::JapaneseSubWordTagger::~JapaneseSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

unsigned __int16 *CoreNLP::JapaneseSubWordTagger::setString(unsigned __int16 *this, const __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v5 = this;
  v6 = *(this + 1);
  if ((*v6 & 0x20890000) == 0x20000000 && a3.length <= 4)
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v8 == a3.location && v7 == a3.length)
    {
      this = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(this + 2), a3);
      if (length < 1)
      {
LABEL_15:
        v5[24] = 1;
        return this;
      }

      v12 = length;
      while (1)
      {
        v13 = *this++;
        if ((v13 - 12353) >= 0xBF)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_15;
        }
      }
    }
  }

  *(v5 + 48) = 0;
  if (*(v5 + 7))
  {
    v15.location = location;
    v15.length = length;
    CoreNLP::StringBuffer::getSubStringCharsOfRange(*(v5 + 2), v15);
    v10 = *(*(v5 + 2) + 24);
    v11 = *(**(v5 + 7) + 16);

    return v11();
  }

  return this;
}

uint64_t CoreNLP::JapaneseSubWordTagger::fastEnumerateTokensWithSpecifiedStop(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t CoreNLP::JapaneseSubWordTagger::goToTokenAtIndex(CoreNLP::JapaneseSubWordTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 40))(result, a2, a3, a4);
  }

  return result;
}

uint64_t CoreNLP::JapaneseSubWordTagger::copyTranscriptionOfCurrentToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result, a2, **(a1 + 8), a3);
  }

  return result;
}

uint64_t CoreNLP::JapaneseSubWordTagger::getTranscriptionCharactersPtrOfCurrentToken(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 56))(result, a2, **(a1 + 8));
  }

  return result;
}

uint64_t CoreNLP::JapaneseSubWordTagger::getPartOfSpeechOfCurrentToken(CoreNLP::JapaneseSubWordTagger *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return (*(*v1 + 64))();
  }

  else
  {
    return 15;
  }
}

double CoreNLP::JapaneseSubWordTagger::getNextToken(CoreNLP::JapaneseSubWordTagger *this, CFRange *a2)
{
  if (*(this + 48) == 1)
  {
    if ((*(this + 49) & 1) == 0)
    {
      v3 = *(*(this + 1) + 16);
      *(this + 24) = v3;
      *(this + 5) = 128;
      *(this + 49) = 1;
      if (a2)
      {
        *&v3 = -1;
        *a2 = xmmword_19D27D570;
      }
    }
  }

  else
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 72))(v2, a2);
    }
  }

  return *&v3;
}

uint64_t CoreNLP::JapaneseSubWordTagger::reset(CoreNLP::JapaneseSubWordTagger *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void CoreNLP::BERTSentenceEmbedding::BERTSentenceEmbedding(void *a1, const void **a2, char a3)
{
  *a1 = &unk_1F10AE558;
  v6 = (a1 + 1);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v12;
  std::string::basic_string[abi:ne200100](v12, v7 + 38);
  if (v13 < 0)
  {
    v8 = v12[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, "/sentence_embeddings_head.espresso.bin");
  std::string::basic_string[abi:ne200100]<0>(__p, "CPU");
  corelm::NeuralNetwork::NeuralNetwork(v6, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  a1[14] = 0;
  if (a3)
  {
    operator new();
  }

  operator new();
}

void sub_19D1E9E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x19EAF8CA0](v22, 0x10B3C40FE858EBELL);
  v24 = *(v21 + 112);
  *(v21 + 112) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  corelm::NeuralNetwork::~NeuralNetwork(v20);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::BERTSentenceEmbedding::fillStringVector(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(**(a1 + 112) + 32))(*(a1 + 112));
  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "input");
    corelm::NeuralNetwork::setInputTensor<float,void>((a1 + 8), *a3, (a3[1] - *a3) >> 2, &__p, 1);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    corelm::NeuralNetwork::predict((a1 + 8));
    v11 = *(a1 + 120);
    std::string::basic_string[abi:ne200100]<0>(v9, "output");
    corelm::NeuralNetwork::getOutput<1ul>(v9, (a1 + 8), &v11, &__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    LODWORD(v11) = 0;
    std::vector<float>::vector[abi:ne200100](v9, v13);
    v6 = *a3;
    if (*a3)
    {
      a3[1] = v6;
      operator delete(v6);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    v7 = v9[0];
    *a3 = *v9;
    a3[2] = v10;
    memmove(v7, v14, 4 * v13);
    corelm::NeuralNetwork::clear((a1 + 8));
  }

  return v5;
}

void sub_19D1EA074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::BERTSentenceEmbedding::~BERTSentenceEmbedding(CoreNLP::BERTSentenceEmbedding *this)
{
  *this = &unk_1F10AE558;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 1);
}

{
  *this = &unk_1F10AE558;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 1);

  JUMPOUT(0x19EAF8CA0);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_19D1EA328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::ChineseSubWordTagger::ChineseSubWordTagger(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = CoreNLP::SubWordTagger::SubWordTagger(a1, a2, a3);
  *v5 = &unk_1F10AE648;
  *(v5 + 12) = a4;
  CoreNLP::MeCabSubTokenizer::createTokenizer();
}

void sub_19D1EA3F4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v3)
  {
    CoreNLP::JapaneseSubWordTagger::JapaneseSubWordTagger(v3);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void CoreNLP::ChineseSubWordTagger::~ChineseSubWordTagger(CoreNLP::ChineseSubWordTagger *this)
{
  *this = &unk_1F10AE648;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::ChineseSubWordTagger::~ChineseSubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::ChineseSubWordTagger::setString(uint64_t this, const __CFString *a2, CFRange a3)
{
  if (*(this + 56))
  {
    v3 = this;
    CoreNLP::StringBuffer::getSubStringCharsOfRange(*(this + 16), a3);
    v4 = *(*(v3 + 16) + 24);
    v5 = *(**(v3 + 56) + 16);

    return v5();
  }

  return this;
}

uint64_t CoreNLP::ChineseSubWordTagger::fastEnumerateTokensWithSpecifiedStop(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t CoreNLP::ChineseSubWordTagger::goToTokenAtIndex(CoreNLP::ChineseSubWordTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 40))(result, a2, a3, a4);
  }

  return result;
}

uint64_t CoreNLP::ChineseSubWordTagger::copyTranscriptionOfCurrentToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result, a2, **(a1 + 8), a3);
  }

  return result;
}

uint64_t CoreNLP::ChineseSubWordTagger::getTranscriptionCharactersPtrOfCurrentToken(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 56))(result, a2, **(a1 + 8));
  }

  return result;
}

uint64_t CoreNLP::ChineseSubWordTagger::getPartOfSpeechOfCurrentToken(CoreNLP::ChineseSubWordTagger *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return (*(*v1 + 64))();
  }

  else
  {
    return 15;
  }
}

uint64_t CoreNLP::ChineseSubWordTagger::getNextToken(CoreNLP::ChineseSubWordTagger *this, CFRange *a2)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 72))(result, a2);
  }

  return result;
}

uint64_t CoreNLP::ChineseSubWordTagger::reset(CoreNLP::ChineseSubWordTagger *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t CoreNLP::TaggerContext::setLocaleConstraints(CoreNLP::TaggerContext *this, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    result = CoreNLP::getLocaleLanguage(ValueAtIndex, v5);
  }

  else
  {
    result = 1;
  }

  *(this + 15) = result;
  return result;
}

__CFString *CoreNLP::TaggerContext::getCurrentDominantLanguage(CoreNLP::TaggerContext *this)
{
  if (*(this + 5))
  {
    JUMPOUT(0x19EAF8290);
  }

  result = *(this + 6);
  if (result)
  {
    return CoreNLP::Orthography::getDominantLanguageTag(result);
  }

  return result;
}

__CFString *CoreNLP::TaggerContext::getCurrentDominantLanguageForString(CoreNLP::TaggerContext *this, const __CFString *a2, CFRange a3)
{
  if (*(this + 5))
  {
    JUMPOUT(0x19EAF8290);
  }

  result = *(this + 6);
  if (result)
  {
    return CoreNLP::Orthography::getLanguageTagForString(result, a2, a3);
  }

  return result;
}

__CFString *CoreNLP::TaggerContext::getCurrentDominantScript(CoreNLP::TaggerContext *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    return CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
  }

  result = *(this + 6);
  if (result)
  {
    return CoreNLP::Orthography::getDominantScriptTag(result);
  }

  return result;
}

__CFDictionary *CoreNLP::TaggerContext::copyLanguageMap(CoreNLP::TaggerContext *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    keys = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
    v3 = MEMORY[0x19EAF8290](*(this + 5));
    values = v3;
    if (keys && v3 != 0)
    {
      cf = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      v7 = CFDictionaryCreate(0, &keys, &cf, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CFRelease(cf);
      return v7;
    }
  }

  v5 = *(this + 6);
  if (!v5)
  {
    return 0;
  }

  return CoreNLP::Orthography::copyLanguageMap(v5);
}

void CoreNLP::LineBreakTagger::LineBreakTagger(CoreNLP::LineBreakTagger *this, const __CFLocale **a2)
{
  v3 = CoreNLP::WordTagger::WordTagger(this, a2);
  *v3 = &unk_1F10AE720;
  *(v3 + 5) = 0;
  CoreNLP::LineBreakTagger::resetICULineBreak(v3, a2[5]);
}

void sub_19D1EA9D4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  *(v1 + 5) = 0;
  if (v3)
  {
    CoreNLP::LineBreakTagger::LineBreakTagger(v3);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(v1);
  _Unwind_Resume(a1);
}

void CoreNLP::LineBreakTagger::resetICULineBreak(CoreNLP::LineBreakTagger *this, const __CFLocale *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  CoreNLP::getLocaleCString(a2, v2, 0x40);
  operator new();
}

void CoreNLP::LineBreakTagger::~LineBreakTagger(CoreNLP::LineBreakTagger *this)
{
  *this = &unk_1F10AE720;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  CoreNLP::LineBreakTagger::~LineBreakTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::LineBreakTagger::setLocale(CoreNLP::TaggerContext **this, const __CFLocale *a2)
{
  CoreNLP::Tagger::setLocale(this, a2);

  CoreNLP::LineBreakTagger::resetICULineBreak(this, a2);
}

uint64_t CoreNLP::LineBreakTagger::setLocaleConstraints(CoreNLP::TaggerContext **this, const __CFArray *a2)
{
  result = CoreNLP::Tagger::setLocaleConstraints(this, a2);
  if (a2)
  {
    result = CFArrayGetCount(a2);
    if (result == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);

      CoreNLP::LineBreakTagger::resetICULineBreak(this, ValueAtIndex);
    }
  }

  return result;
}

uint64_t CoreNLP::LineBreakTagger::setString(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  CoreNLP::Tagger::setString(a1, a2, a3, a4, a5);
  v6 = *(**(a1 + 40) + 16);

  return v6();
}

uint64_t CoreNLP::LemmaTagger::createLemmaTag(CoreNLP::TaggerContext **a1, CFRange *a2, int a3)
{
  CurrentDominantLanguageID = CoreNLP::TaggerContext::getCurrentDominantLanguageID(*a1);
  LXLemmatizer = CoreNLP::getLXLemmatizer(CurrentDominantLanguageID);
  if (LXLemmatizer)
  {
    v8 = LXLemmatizer;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(*a1 + 1), *a2);
    if (v10)
    {
      v11 = v10;
      if (CoreNLP::normalizeAndCreateLemmatizerLemma(_LXLemmatizer const*,__CFString const*,int)::onceToken != -1)
      {
        CoreNLP::LemmaTagger::createLemmaTag();
      }

      MutableCopy = CFStringCreateMutableCopy(v9, 0, v11);
      v13 = MutableCopy;
      v14 = v11;
      if (MutableCopy)
      {
        Length = CFStringGetLength(MutableCopy);
        v19.location = 0;
        v19.length = Length;
        CFStringFindAndReplace(v13, @"‘", @"'", v19, 0);
        v20.location = 0;
        v20.length = Length;
        CFStringFindAndReplace(v13, @"’", @"'", v20, 0);
        v21.location = 0;
        v21.length = Length;
        CFStringFindAndReplace(v13, @"“", @"", v21, 0);
        v22.location = 0;
        v22.length = Length;
        CFStringFindAndReplace(v13, @"”", @"", v22, 0);
        v14 = v13;
      }

      LemmatizerLemma = CoreNLP::createLemmatizerLemma(v8, v14, a3);
      if (LemmatizerLemma)
      {
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (!v13)
        {
          LemmatizerLemma = 0;
LABEL_19:
          CFRelease(v11);
          return LemmatizerLemma;
        }

        CFStringLowercase(v13, 0);
        LemmatizerLemma = CoreNLP::createLemmatizerLemma(v8, v13, a3);
        if (!LemmatizerLemma)
        {
          CFStringCapitalize(v13, 0);
          LemmatizerLemma = CoreNLP::createLemmatizerLemma(v8, v13, a3);
          if (!LemmatizerLemma)
          {
            CFStringLowercase(v13, 0);
            Value = CFDictionaryGetValue(CoreNLP::normalizeAndCreateLemmatizerLemma(_LXLemmatizer const*,__CFString const*,int)::replacementDictionary, v13);
            if (Value)
            {
              LemmatizerLemma = CoreNLP::createLemmatizerLemma(v8, Value, a3);
            }

            else
            {
              LemmatizerLemma = 0;
            }
          }
        }
      }

      CFRelease(v13);
      goto LABEL_19;
    }
  }

  return 0;
}

void sub_19D1EAF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  _Unwind_Resume(a1);
}

void ___ZN7CoreNLPL15getLXLemmatizerE12NLLanguageID_block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(CoreNLP::getLXLemmatizer(NLLanguageID)::lemmatizerMap + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = CoreNLP::getLXLemmatizer(NLLanguageID)::lemmatizerMap + 8;
    do
    {
      if (*(v3 + 32) >= v4)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v4));
    }

    while (v3);
    if (v5 != CoreNLP::getLXLemmatizer(NLLanguageID)::lemmatizerMap + 8 && v4 >= *(v5 + 32))
    {
      *(*(*(a1 + 32) + 8) + 24) = *(v5 + 40);
      return;
    }
  }

  else
  {
    v4 = *v2;
  }

  v6 = CoreNLP::copyLocaleForLanguageID(v4);
  v16 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x19EAF8290]();
    v9 = v8;
    if (!v8)
    {
LABEL_26:
      CFRelease(v7);
LABEL_27:
      v14 = v9;
      if (v9)
      {
        v12 = MEMORY[0x19EAF8290](v9);
        *(*(*(a1 + 32) + 8) + 24) = CoreNLP::_LXLemmatizerCreate(v12, 0);
      }

      goto LABEL_29;
    }

    cf = 0;
    if (CFStringCompare(v8, @"en", 0))
    {
      if (CFStringCompare(v9, @"es", 0))
      {
        if (CFStringCompare(v9, @"pt", 0))
        {
          v10 = 0;
          goto LABEL_21;
        }

        v10 = CFLocaleCreate(*MEMORY[0x1E695E480], @"pt_BR");
      }

      else
      {
        v10 = CFLocaleCreate(*MEMORY[0x1E695E480], @"es_ES");
      }
    }

    else
    {
      v10 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US");
    }

    cf = v10;
LABEL_21:
    p_cf = &cf;
    if (!v10)
    {
      p_cf = &v16;
    }

    v9 = *p_cf;
    *p_cf = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    v7 = v16;
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v14 = 0;
LABEL_29:
  v13 = *(*(*(a1 + 32) + 8) + 24);
  v16 = v2;
  std::__tree<std::__value_type<NLLanguageID,_LXLemmatizer const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,_LXLemmatizer const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,_LXLemmatizer const*>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(CoreNLP::getLXLemmatizer(NLLanguageID)::lemmatizerMap, v2)[5] = v13;
  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_19D1EB204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *___ZN7CoreNLPL14loadLexiconAPIEv_block_invoke(CoreNLP *a1)
{
  result = CoreNLP::loadLexicon(a1);
  if (result)
  {
    v2 = result;
    CoreNLP::_LXLemmatizerCreate = dlsym(result, "LXLemmatizerCreate");
    result = dlsym(v2, "LXLemmatizerEnumerateLemmasforString");
    CoreNLP::_LXLemmatizerEnumerateLemmasforString = result;
    if (CoreNLP::_LXLemmatizerCreate)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 1;
    }

    v4 = !v3;
    CoreNLP::loadLexiconAPI(void)::isSoftlinked = v4;
  }

  return result;
}

void ___ZN12_GLOBAL__N_18getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.LemmaTagger", 0);
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

CFDictionaryRef ___ZN7CoreNLPL33normalizeAndCreateLemmatizerLemmaEPK13_LXLemmatizerPK10__CFStringi_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E7625048;
  v4 = *&off_1E7625058;
  v5 = xmmword_1E7625068;
  v2[0] = xmmword_1E7625078;
  v2[1] = *&off_1E7625088;
  v2[2] = xmmword_1E7625098;
  result = CFDictionaryCreate(*MEMORY[0x1E695E4A8], keys, v2, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CoreNLP::normalizeAndCreateLemmatizerLemma(_LXLemmatizer const*,__CFString const*,int)::replacementDictionary = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreNLP::createLemmatizerLemma(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 16) > 0x45)
  {
    v3 = 12;
  }

  else
  {
    v3 = byte_19D27E7F0[a3 - 16];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3002000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3002000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  cf = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN7CoreNLPL21createLemmatizerLemmaEPK13_LXLemmatizerPK10__CFStringi_block_invoke;
  v7[3] = &unk_1E76250B0;
  v8 = v3;
  v7[4] = &v9;
  v7[5] = &v15;
  CoreNLP::_LXLemmatizerEnumerateLemmasforString(a1, a2, v7);
  v4 = v16;
  if (!v16[5])
  {
    v4 = v10;
  }

  v5 = v4[5];
  v4[5] = 0;
  _Block_object_dispose(&v9, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v15, 8);
  if (v20)
  {
    CFRelease(v20);
  }

  return v5;
}

void sub_19D1EB524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Block_object_dispose((v9 - 80), 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v9 - 40), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN7CoreNLPL21createLemmatizerLemmaEPK13_LXLemmatizerPK10__CFStringi_block_invoke(uint64_t a1, CFTypeRef cf, int a3, _BYTE *a4)
{
  v8 = *(*(a1 + 32) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    nlp::CFScopedPtr<__CFString const*>::acquire(v9, cf);
  }

  if (*(a1 + 48) == a3)
  {
    nlp::CFScopedPtr<__CFString const*>::acquire((*(*(a1 + 40) + 8) + 40), cf);
    *a4 = 1;
  }
}

void nlp::CFScopedPtr<__CFString const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFString const*>::reset(a1, cf);
  }
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

__n128 corelm::util::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, __n128 *a3, int a4)
{
  *a1 = a4;
  result = *a3;
  *(a1 + 8) = *a3;
  *(a1 + 24) = a2;
  return result;
}

uint64_t corelm::util::Matrix<float>::row@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v9[0] = &unk_1F10AD890;
  v9[1] = a1;
  v9[3] = v9;
  *a3 = v5;
  std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::__value_func[abi:ne200100]((a3 + 1), v9);
  a3[5] = a2;
  a3[6] = v6;
  result = std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1EB780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t corelm::util::Matrix<float>::flatIndex(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2;
  if (*a1)
  {
    v4 = a3;
  }

  else
  {
    v3 = 4;
    v4 = a2;
  }

  if (*a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5 + *&a1[v3] * v4;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_19D1EB900(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

void *CoreNLP::NLLangid::setLanguageConstraints(uint64_t a1, char *a2, int64_t a3)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  result[1] = v4;
  if (a2)
  {
    if (a3 >= 1)
    {
      return std::vector<NLLanguageID>::__assign_with_size[abi:ne200100]<NLLanguageID const*,NLLanguageID const*>(result, a2, &a2[4 * a3], a3);
    }
  }

  return result;
}

_BYTE *CoreNLP::NLLangid::isThaiString(CoreNLP::NLLangid *this, const __CFString *a2, CFRange a3)
{
  if (result)
  {
    if (*result == 116 && result[1] == 104)
    {
      return (result[2] == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CoreNLP::NLLangid::setTokenizerOptions(uint64_t this, int a2)
{
  if ((a2 & 0x80000) != 0)
  {
    if (!*(this + 24))
    {
      operator new();
    }

    **(this + 24) = a2 & 0x80000000;
  }

  return this;
}

dispatch_queue_t ___ZN7CoreNLP8NLLangid18copyLanguageStringEPK10__CFString7CFRange_block_invoke()
{
  CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::langid = langid_create();
  result = dispatch_queue_create("com.apple.CoreNLP.LanguageIdentifier", 0);
  CoreNLP::NLLangid::copyLanguageString(__CFString const*,CFRange)::queue = result;
  return result;
}

__CFArray *CoreNLP::NLLangid::copyPossibleLanguageStrings(int **this, const __CFString *a2, CFRange a3)
{
  location = a3.location;
  v29 = *MEMORY[0x1E69E9840];
  if (a3.length >= 0x190uLL)
  {
    length = 400;
  }

  else
  {
    length = a3.length;
  }

  a3.length = length;
  CoreNLP::UStringPiece::UStringPiece(&v25, a2, a3);
  if (!v26)
  {
    goto LABEL_23;
  }

  v30.location = location;
  v30.length = length;
  if (!CoreNLP::NLLangid::cjTokenLengthInString(this, a2, v30))
  {
    goto LABEL_23;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_24;
  }

  v8 = this[4];
  if (this[5] - v8 == 4)
  {
    v9 = CoreNLP::convertLanguageIDToCode(*v8);
    v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
    if (v10)
    {
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
    }

    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_23:
    Mutable = 0;
    goto LABEL_24;
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v13 = v11;
    do
    {
      v14 = v28[v12];
      v15 = langid_languagecode();
      v17 = v15;
      if (v15)
      {
        v18 = CoreNLP::convertLanguageIDWithCode(v15, v16);
        v19 = *(this + 2);
        v20 = this[5];
        v21 = this[4];
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        while (*v21 != v18)
        {
          if (++v21 == v20)
          {
            goto LABEL_21;
          }
        }

        if (v21 != v20)
        {
LABEL_19:
          v22 = CFStringCreateWithCString(0, v17, 0x8000100u);
          if (v22)
          {
            CFArrayAppendValue(Mutable, v22);
            CFRelease(v22);
          }
        }
      }

LABEL_21:
      ++v12;
    }

    while (v12 != v13);
  }

LABEL_24:
  CoreNLP::UStringPiece::~UStringPiece(&v25);
  v23 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t anonymous namespace::langid_identifiy_possible_languages(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = 0;
  v34[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    goto LABEL_43;
  }

  langid_reset();
  v7 = langid_consume_string();
  result = langid_numlanguages();
  v8 = result >= 3 ? 3 : result;
  if (!result)
  {
    goto LABEL_43;
  }

  v9 = result;
  v10 = memset(a4, 255, 4 * v8);
  if (v9 < 1)
  {
    result = 0;
    goto LABEL_43;
  }

  MEMORY[0x1EEE9AC00](v10, v34);
  v13 = v34 - v12;
  v14 = 0;
  v15 = 0;
  v16 = v34 - v12 + 4;
  do
  {
    if (v15 >= 1)
    {
      v17 = 0;
      v18 = *(v7 + 4 * v14);
      v19 = v16;
      while (1)
      {
        v20 = *v19;
        v19 += 2;
        if (v18 > v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          LODWORD(v17) = v15;
          goto LABEL_17;
        }
      }

      LODWORD(v21) = v15 - 2;
      if (v15 - 2 >= v17)
      {
        v21 = v21;
        do
        {
          *&v13[8 * v21 + 8] = *&v13[8 * v21];
        }

        while (v21-- > v17);
      }

      goto LABEL_23;
    }

    LODWORD(v17) = 0;
LABEL_17:
    if (v8 > v15)
    {
      v18 = *(v7 + 4 * v14);
LABEL_23:
      v23 = &v13[8 * v17];
      *v23 = v14;
      *(v23 + 1) = v18;
      if (v8 > v15)
      {
        ++v15;
      }
    }

    ++v14;
  }

  while (v14 != v11);
  if (v15 < 1)
  {
    goto LABEL_40;
  }

  v24 = 0;
  v25 = 0;
  result = 0;
  v26 = v13 + 4;
  v27 = 4 * v15;
  v28 = v26;
  while (2)
  {
    v30 = *v28;
    v28 += 2;
    v29 = v30;
    if (v30)
    {
      v31 = *(v26 - 1);
      if ((v31 - 20) > 2)
      {
        goto LABEL_38;
      }

      if (v24)
      {
        if (v29 <= 0x63)
        {
          v32 = 1.5;
        }

        else
        {
          v32 = 1.2;
        }

        if (v32 * v29 < v25)
        {
LABEL_38:
          v24 += 4;
          v26 = v28;
          if (v27 == v24)
          {
            break;
          }

          continue;
        }
      }

      else
      {
        v25 = v29;
      }

      a4[v24 / 4] = v31;
      result = (result + 1);
      goto LABEL_38;
    }

    break;
  }

  if (!result)
  {
LABEL_40:
    *a4 = 0x1500000014;
    a4[2] = 22;
    result = 3;
  }

LABEL_43:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CoreNLP::NLLangid::getTopHypothesesOfString(uint64_t *a1, const __CFString *a2, CFRange a3, _DWORD *a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3.length >= 0x190uLL)
  {
    a3.length = 400;
  }

  CoreNLP::UStringPiece::UStringPiece(&v23, a2, a3);
  if (!v24)
  {
    goto LABEL_19;
  }

  v8 = a1[4];
  if (a1[5] - v8 == 4)
  {
    *a4 = *v8;
    a4[1] = 1065353216;
    v9 = 1;
    goto LABEL_20;
  }

  v11 = v10 >= a5 ? a5 : v10;
  if (v11 < 1)
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = 0;
  for (i = 0; i != v11; ++i)
  {
    v13 = v26[i];
    v14 = langid_languagecode();
    v16 = CoreNLP::convertLanguageIDWithCode(v14, v15);
    v17 = *(a1 + 2);
    v18 = a1[5];
    v19 = a1[4];
    if (v19 == v18)
    {
      goto LABEL_16;
    }

    while (*v19 != v16)
    {
      if (++v19 == v18)
      {
        goto LABEL_17;
      }
    }

    if (v19 != v18)
    {
LABEL_16:
      v20 = &a4[2 * v9];
      *v20 = v16;
      v20[1] = 1058642330;
      ++v9;
    }

LABEL_17:
    ;
  }

LABEL_20:
  CoreNLP::UStringPiece::~UStringPiece(&v23);
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CoreNLP::NLLangid::getLanguageOfCJKString(uint64_t a1, const __CFString *a2, CFIndex *a3, uint64_t a4)
{
  LanguageOfString = a4;
  if (a4 > 0x36 || ((1 << a4) & 0x40000000300030) == 0)
  {
    LanguageOfString = CoreNLP::NLLangid::getLanguageOfString(a1, a2, *a3, a3[1], a4);
    if (LanguageOfString > 0x36 || ((1 << LanguageOfString) & 0x40000000300030) == 0)
    {
      return *(a1 + 8);
    }
  }

  return LanguageOfString;
}

void *std::vector<NLLanguageID>::__assign_with_size[abi:ne200100]<NLLanguageID const*,NLLanguageID const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t CoreNLP::mecab::DefaultNameTokenizer::createPersonNameRanges(CoreNLP::mecab::DefaultNameTokenizer *this, const CoreNLP::UStringPiece *a2, BOOL *a3)
{
  if (!*(a2 + 1))
  {
    return 0;
  }

  v4 = *(a2 + 3);
  if (!v4)
  {
    return 0;
  }

  *a3 = 0;
  if (v4 == 1)
  {
    goto LABEL_12;
  }

  if (CoreNLP::isChineseCompoundLastName(a2, a2))
  {
    *a3 = 1;
    v6 = *(a2 + 3);
    v7 = 2;
  }

  else
  {
    v6 = *(a2 + 3);
    if (v6 < 2)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v7 = (v6 >> 1);
  }

  if (v6 > v7)
  {
    operator new();
  }

LABEL_11:
  if (v6 == v7)
  {
LABEL_12:
    operator new();
  }

  return 0;
}

uint64_t CoreNLP::mecab::JapaneseNameTokenizer::createPersonNameRanges(CoreNLP::mecab::JapaneseNameTokenizer *this, const CoreNLP::UStringPiece *a2, BOOL *a3)
{
  if (*(a2 + 1) && *(a2 + 3))
  {
    operator new();
  }

  return 0;
}

uint64_t CoreNLP::mecab::JapaneseNameTokenizer::isNotFullName(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((*(v3 + 91) & 0xFE) != 2 && *(v3 + 80) || (v3 = *(v3 + 8)) != 0 && (*(v3 + 91) & 0xFE) != 2)
    {
      v4 = *(v3 + 80);
      if (*(v3 + 80))
      {
        v5 = *(v3 + 88);
        if (*(a2 + 24) == v4 >> 1)
        {
          if (v5 == 1)
          {
            v6 = 0x40000;
LABEL_12:
            *a3 = (*(v3 + 64) - *(a2 + 8)) >> 1;
            a3[1] = v4 >> 1;
            a3[2] = v6;
            return 1;
          }

LABEL_11:
          v6 = 0x10000;
          goto LABEL_12;
        }

        if (v5 == 2)
        {
          goto LABEL_11;
        }

        v8 = *(v3 + 16);
        if (v8)
        {
          v6 = 0x10000;
          while (*(v8 + 80) != v4 || *(v8 + 88) != 2)
          {
            result = 0;
            v8 = *(v8 + 16);
            if (!v8)
            {
              return result;
            }
          }

          goto LABEL_12;
        }
      }
    }
  }

  return 0;
}

uint64_t CoreNLP::mecab::SimplifiedChineseNameTokenizer::createPersonNameRanges(CoreNLP::mecab::SimplifiedChineseNameTokenizer *this, const CoreNLP::UStringPiece *a2, BOOL *a3)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v8 = *v3;
      if ((v8 - 7680) < 0xFA || (v8 - 33) < 0x5E || (v8 - 161) <= 0x195)
      {
        v10 = 1;
        do
        {
          v11 = v10;
          if (v5 == v10)
          {
            break;
          }

          v12 = v3[v10++];
        }

        while ((v12 - 7680) < 0xFA || (v12 - 33) < 0x5E || (v12 - 161) < 0x196);
        v9 = v11 >= v5;
      }

      else
      {
        v9 = 0;
      }

      if (v5 <= 2 && !v9)
      {
        *a3 = 0;
      }

      if (CoreNLP::isChineseCompoundLastName(a2, a2))
      {
        *a3 = 1;
        v13 = *(a2 + 3);
        v14 = 2;
      }

      else
      {
        v15 = (*(**(this + 1) + 56))(*(this + 1), a2, 41);
        v13 = *(a2 + 3);
        if (v9 && v15 == 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = v15;
        }

        *a3 = v14 > 0;
        if (v14 <= 0)
        {
          v14 = v13 >> 1;
        }
      }

      if (v13 > v14)
      {
        operator new();
      }

      if (v13 == v14)
      {
        operator new();
      }
    }
  }

  return 0;
}

uint64_t CoreNLP::mecab::KoreanNameTokenizer::createPersonNameRanges(CoreNLP::mecab::KoreanNameTokenizer *this, const CoreNLP::UStringPiece *a2, BOOL *a3)
{
  if (*(a2 + 1))
  {
    if (*(a2 + 3))
    {
      v4 = *(this + 2);
      if (v4)
      {
        v5 = ((*(v4 + 91) & 0xFE) != 2 && *(v4 + 80) || (v4 = *(v4 + 8)) != 0) && *(v4 + 86) == 1095;
        *a3 = v5;
        v8 = 0;
        LastNameLength = CoreNLP::mecab::KoreanNameTokenizer::getLastNameLength(this, v4, a3, &v8);
        if ((LastNameLength & 0x80000000) == 0)
        {
          if (*(a2 + 3) > LastNameLength)
          {
            operator new();
          }

          operator new();
        }
      }
    }
  }

  return 0;
}

uint64_t CoreNLP::mecab::KoreanNameTokenizer::getLastNameLength(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 && (v4 = *(a2 + 64)) != 0)
  {
    v5 = *(a2 + 80) & 0xFFFE;
    if (v5 == 2)
    {
      result = 1;
      *a4 = 1;
    }

    else
    {
      v8 = *v4;
      v9 = &word_19D27E84A;
      v10 = 48;
      do
      {
        if (v8 == *(v9 - 1) && v4[1] == *v9)
        {
          *a3 = 1;
          *a4 = 1;
          goto LABEL_18;
        }

        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v5 != 4)
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 8);
      if (v11 && (*(v11 + 80) & 0xFFFE) == 2)
      {
        v12 = v8;
        {
          memcpy(__dst, &unk_19D27E948, sizeof(__dst));
          std::unordered_set<unsigned short>::unordered_set(CoreNLP::mecab::korean::isSingleSyllableLastName(unsigned short)::set, __dst, 168);
          __cxa_atexit(std::unordered_set<unsigned short>::~unordered_set[abi:ne200100], CoreNLP::mecab::korean::isSingleSyllableLastName(unsigned short)::set, &dword_19D184000);
        }

        if (std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(CoreNLP::mecab::korean::isSingleSyllableLastName(unsigned short)::set, &v12))
        {
LABEL_16:
          result = 1;
          goto LABEL_6;
        }
      }

LABEL_18:
      result = 2;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::unordered_set<unsigned short>::unordered_set(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1, a2++);
      v5 -= 2;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void NLStringEmbeddingCreate(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, kNLStringEmbeddingModelLocale[0], a1);
  NLStringEmbeddingCreateWithOptions();
}

int *NLStringEmbeddingGetVocabularySize(int *result, void *a2)
{
  if (result)
  {
    v2 = CoreNLP::unwrapGazetteer(result, a2);
    result = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v2);
    if (result)
    {
      return result[678];
    }
  }

  return result;
}

char **CoreNLP::EmbeddingManager::getCompressedWordEmbedding(char ***this)
{
  result = *this;
  if (result)
  {
    v2 = **result;
  }

  return result;
}

uint64_t NLStringEmbeddingSaveModel(const void *a1, const void *a2, const __CFDictionary *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  CFDictionaryAddValue(MutableCopy, kNLStringEmbeddingModelPath[0], a1);
  v6 = NLStringEmbeddingSaveCompressedModel(a2, MutableCopy);
  CFRelease(MutableCopy);
  return v6;
}

uint64_t NLStringEmbeddingSaveCompressedModel(const void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kNLStringEmbeddingModelPath[0]);
  v5 = CFDictionaryGetValue(theDict, kNLStringEmbeddingModelData[0]);
  applesauce::CF::convert_to<std::map<std::string,std::vector<float>>,0>(a1, v50);
  if (!theDict)
  {
    v49.length = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(theDict);
  v49.length = theDict;
  v6 = CFGetTypeID(theDict);
  if (v6 != CFDictionaryGetTypeID())
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = v50[0][7];
  v7 = v50[0][8];
  applesauce::CF::convert_to<std::string,0>(kNLStringEmbeddingSubDimension, &__p);
  v9 = (v7 - v8) >> 2;
  v10 = applesauce::CF::details::find_at_key_or_optional<int,std::string>(v49.length, &__p);
  if ((v10 & 0x100000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (!v49.length)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(kNLStringEmbeddingModelVersion[0], &__p);
  v12 = applesauce::CF::details::find_at_key_or_optional<unsigned int,std::string>(v49.length, &__p);
  if ((v12 & 0x100000000) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  if (!v49.length)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(kNLStringEmbeddingNumberOfTrees, &__p);
  v14 = applesauce::CF::details::find_at_key_or_optional<int,std::string>(v49.length, &__p);
  if ((v14 & 0x100000000) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  applesauce::CF::convert_to<std::string,0>(kNLStringEmbeddingModelLocale[0], &v49);
  if (!v49.length)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<std::string,std::string&>(v49.length, &v49, &__p);
  if (LOBYTE(__p.length) == 1)
  {
    if (SHIBYTE(__p.data) < 0)
    {
      operator delete(__p.isa);
    }

    if (!v49.length)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
      __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key<std::string,std::string&>(v49.length, &v49, &__p);
    if (SHIBYTE(__p.data) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.isa;
    }

    v18 = CoreNLP::convertLanguageIDWithCode(p_p, v16);
    if (SHIBYTE(__p.data) < 0)
    {
      operator delete(__p.isa);
    }
  }

  else
  {
    if (!v49.length)
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
      __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (applesauce::CF::details::has_key<std::string &>(v49.length, &v49))
    {
      v19 = CFDictionaryGetValue(theDict, kNLStringEmbeddingModelLocale[0]);
      v20 = MEMORY[0x19EAF8290](v19);
      applesauce::CF::StringRef::from_get(v20, &v45);
      if (!v45)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(v45, &__p);
      if (SHIBYTE(__p.data) >= 0)
      {
        isa = &__p;
      }

      else
      {
        isa = __p.isa;
      }

      v18 = CoreNLP::convertLanguageIDWithCode(isa, v21);
      if (SHIBYTE(__p.data) < 0)
      {
        operator delete(__p.isa);
      }

      if (v45)
      {
        CFRelease(v45);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  applesauce::CF::convert_or<std::string>(Value, &__p, &v44);
  *&v45 = __PAIR64__(v11, v9);
  *(&v45 + 1) = __PAIR64__(v15, v13);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    v47 = v5;
    v48 = v18;
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = v44;
    v47 = v5;
    v48 = v18;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  CoreNLP::WordEmbedding::WordEmbedding(&__p);
  v33 = v45;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v46;
  }

  v35 = v47;
  v36 = v48;
  v23 = CoreNLP::WordEmbedding::buildModelFromDictionary(&__p, v50, &v33);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  __p.isa = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v41);
  CoreNLP::KDTree::~KDTree(&v40);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(&__p.info, __p.data);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.data) < 0)
  {
    operator delete(v49.isa);
  }

  if (v49.length)
  {
    CFRelease(v49.length);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v50, v50[1]);
  return v23;
}

void sub_19D1ED69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  applesauce::CF::StringRef::~StringRef((v26 - 192));
  if (*(v26 - 113) < 0)
  {
    operator delete(*(v26 - 136));
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v26 - 112));
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v26 - 104, *(v26 - 96));
  _Unwind_Resume(a1);
}

void applesauce::CF::convert_to<std::map<std::string,std::vector<float>>,0>(const void *a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,std::vector<float>>>(a1, a2);
}

void applesauce::CF::convert_or<std::string>(CFTypeID a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  applesauce::CF::convert_as<std::string,0>(a1, __p);
  if ((v7 & 1) == 0)
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p[0], __p[1]);
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v6;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1EDB10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](&a11);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D1EDAF4);
}

void sub_19D1EDCE4(void *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, uint64_t *);
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<CoreNLP::EmbeddingManager>::~unique_ptr[abi:ne200100](va1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D1EDCC8);
}

CFLocaleRef NLStringEmbeddingCopyModelLocale(CoreNLP *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *CoreNLP::unwrapGazetteer(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(*v2 + 72))(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = CoreNLP::convertLanguageIDToCode(v3);
  v5 = strlen(v4);
  if (v4)
  {
    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    cf = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v6 = 0;
    cf = 0;
  }

  v8 = CFLocaleCreate(*MEMORY[0x1E695E480], v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void sub_19D1EDE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFNumberRef NLEmbeddingCopyVersion(const __CFLocale *a1)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v5);
  CoreNLP::WordEmbedding::clearEmptyModels(&v5);
  if (CoreNLP::WordEmbedding::loadModel(&v5, a1, @"embedding.dat"))
  {
    v4 = v7;
    v2 = CFNumberCreate(0, kCFNumberCFIndexType, &v4);
  }

  else
  {
    v2 = 0;
  }

  v5 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v11);
  CoreNLP::KDTree::~KDTree(&v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v6, v6[1]);
  return v2;
}