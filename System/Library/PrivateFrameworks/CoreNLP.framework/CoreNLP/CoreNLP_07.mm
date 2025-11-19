void sub_19D1EDFBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNLP::WordEmbedding::~WordEmbedding(va);
  _Unwind_Resume(a1);
}

CoreNLP *NLStringEmbeddingCopyVersion(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = *CoreNLP::unwrapGazetteer(result, a2);
    if (v2)
    {
      v3 = (*(*v2 + 56))(v2);
    }

    else
    {
      v3 = 0;
    }

    valuePtr = v3;
    return CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  }

  return result;
}

CFNumberRef NLStringEmbeddingCopyCurrentVersion(const __CFLocale *a1, const __CFString *a2)
{
  CoreNLP::EmbeddingManager::EmbeddingManager(&v11);
  CoreNLP::EmbeddingManager::supportedVersions(&v11, a1, a2, &__p);
  v4 = __p;
  if (__p != v10)
  {
    valuePtr = *(v10 - 1);
    v5 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    v4 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (__p)
  {
LABEL_3:
    v10 = v4;
    operator delete(v4);
  }

LABEL_4:
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v15, v15[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v14, v14[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v13, v13[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v12, v12[1]);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v5;
}

void sub_19D1EE140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  CoreNLP::EmbeddingManager::~EmbeddingManager(&a14);
  _Unwind_Resume(a1);
}

void CoreNLP::EmbeddingManager::~EmbeddingManager(CoreNLP::EmbeddingManager *this)
{
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(this + 8, *(this + 2));
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

float NLEmbeddingGetDistance(const __CFLocale *a1, const __CFString *a2, const __CFString *a3)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v14);
  Model = CoreNLP::WordEmbedding::loadModel(&v14, a1, @"embedding.dat");
  if (a2)
  {
    v7 = Model;
  }

  else
  {
    v7 = 0;
  }

  Distance = 2.0;
  if (a3 && v7)
  {
    CoreNLP::getUTF8StringFromCFString(a2, v12);
    CoreNLP::getUTF8StringFromCFString(a3, __p);
    Distance = CoreNLP::WordEmbedding::getDistance(&v14, v12, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  v14 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v18);
  CoreNLP::KDTree::~KDTree(&v17);
  if (v16 < 0)
  {
    operator delete(v15[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v15, v15[1]);
  return Distance;
}

void sub_19D1EE31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  CoreNLP::WordEmbedding::~WordEmbedding(&a22);
  _Unwind_Resume(a1);
}

float NLStringEmbeddingGetDistance(CoreNLP *a1, __CFString *a2, __CFString *a3)
{
  if (!a1)
  {
    return 2.0;
  }

  v6 = CoreNLP::unwrapGazetteer(a1, a2);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v6);
  if (CompressedWordEmbedding)
  {
    v8 = CompressedWordEmbedding;
    CoreNLP::getUTF8StringFromCFString(a2, valuePtr);
    CoreNLP::getUTF8StringFromCFString(a3, __p);
    Distance = CoreNLP::WordEmbedding::getDistance(v8, valuePtr, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(valuePtr[0]);
    }

    return Distance;
  }

  v10 = NLStringEmbeddingCopyVector(a1, a2);
  v11 = NLStringEmbeddingCopyVector(a1, a3);
  v12 = v11;
  Distance = 2.0;
  if (!v10 || !v11)
  {
LABEL_17:
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Count = CFArrayGetCount(v10);
  if (Count == CFArrayGetCount(v12))
  {
    if (Count >= 1)
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
        v19 = CFArrayGetValueAtIndex(v12, v14);
        LODWORD(valuePtr[0]) = 0;
        LODWORD(__p[0]) = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, valuePtr);
        CFNumberGetValue(v19, kCFNumberFloatType, __p);
        v16 = v16 + (*valuePtr * *valuePtr);
        v17 = v17 + (*__p * *__p);
        v15 = v15 + (*valuePtr * *__p);
        ++v14;
      }

      while (Count != v14);
      if ((v16 * v17) > 0.0)
      {
        Distance = 2.0 - (v15 + v15) / sqrtf(v16 * v17);
      }
    }

    Distance = sqrtf(fmaxf(Distance, 0.0));
    goto LABEL_17;
  }

LABEL_18:
  CFRelease(v10);
LABEL_19:
  if (v12)
  {
    CFRelease(v12);
  }

  return Distance;
}

void sub_19D1EE540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLStringEmbeddingCopyVector(CoreNLP *a1, __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v3 = CoreNLP::unwrapGazetteer(a1, a2);
  CoreNLP::getUTF8StringFromCFString(a2, __p);
  (*(**v3 + 32))(*v3, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v11;
  if (v11 == v12)
  {
    Mutable = 0;
    if (!v11)
    {
      return Mutable;
    }

LABEL_12:
    v12 = v4;
    operator delete(v4);
    return Mutable;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    do
    {
      LODWORD(__p[0]) = *v4;
      v7 = CFNumberCreate(0, kCFNumberFloatType, __p);
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v7);
      ++v4;
    }

    while (v4 != v6);
    v4 = v11;
  }

  if (v4)
  {
    goto LABEL_12;
  }

  return Mutable;
}

void sub_19D1EE69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLEmbeddingCopyNeighbors(const __CFLocale *a1, const __CFString *a2, int a3, float a4)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v20);
  Model = CoreNLP::WordEmbedding::loadModel(&v20, a1, @"embedding.dat");
  if (a2)
  {
    v9 = Model;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    CoreNLP::getUTF8StringFromCFString(a2, __p);
    CoreNLP::WordEmbedding::getNearestNeighbors(&v20, __p, a3, &v18, a4);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 == v19)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v11 = v18;
      v12 = v19;
      while (v11 != v12)
      {
        v13 = v11;
        if (*(v11 + 23) < 0)
        {
          v13 = *v11;
        }

        v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
        v11 += 32;
      }
    }

    __p[0] = &v18;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    Mutable = 0;
  }

  v20 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v24);
  CoreNLP::KDTree::~KDTree(&v23);
  if (v22 < 0)
  {
    operator delete(v21[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v21, v21[1]);
  return Mutable;
}

void sub_19D1EE880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  CoreNLP::WordEmbedding::~WordEmbedding(&a19);
  _Unwind_Resume(a1);
}

__CFArray *NLStringEmbeddingCopyNeighbors(CoreNLP *a1, __CFString *a2, int a3, float a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = CoreNLP::unwrapGazetteer(a1, a2);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v7);
  if (!CompressedWordEmbedding)
  {
    return 0;
  }

  v9 = CompressedWordEmbedding;
  CoreNLP::getUTF8StringFromCFString(a2, __p);
  CoreNLP::WordEmbedding::getNearestNeighbors(v9, __p, a3, &v18, a4);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 == v19)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v11 = v18;
    v12 = v19;
    while (v11 != v12)
    {
      v13 = v11;
      if (*(v11 + 23) < 0)
      {
        v13 = *v11;
      }

      v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
      v11 += 32;
    }
  }

  __p[0] = &v18;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  return Mutable;
}

void sub_19D1EE9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__CFDictionary *NLEmbeddingCopyNeighborsWithDistances(const __CFLocale *a1, const __CFString *a2, int a3, float a4)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v21);
  Model = CoreNLP::WordEmbedding::loadModel(&v21, a1, @"embedding.dat");
  if (a2)
  {
    v9 = Model;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    CoreNLP::getUTF8StringFromCFString(a2, __p);
    CoreNLP::WordEmbedding::getNearestNeighbors(&v21, __p, a3, &v19, a4);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 == v20)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = v19;
      v12 = v20;
      while (v11 != v12)
      {
        v13 = v11;
        if (*(v11 + 23) < 0)
        {
          v13 = *v11;
        }

        v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
        v15 = CFNumberCreate(0, kCFNumberFloatType, (v11 + 24));
        CFDictionaryAddValue(Mutable, v14, v15);
        CFRelease(v14);
        CFRelease(v15);
        v11 += 32;
      }
    }

    __p[0] = &v19;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    Mutable = 0;
  }

  v21 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v25);
  CoreNLP::KDTree::~KDTree(&v24);
  if (v23 < 0)
  {
    operator delete(v22[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v22, v22[1]);
  return Mutable;
}

void sub_19D1EEBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  CoreNLP::WordEmbedding::~WordEmbedding(&a19);
  _Unwind_Resume(a1);
}

__CFDictionary *NLStringEmbeddingCopyNeighborsWithDistances(CoreNLP *a1, __CFString *a2, int a3, float a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = CoreNLP::unwrapGazetteer(a1, a2);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v7);
  if (!CompressedWordEmbedding)
  {
    return 0;
  }

  v9 = CompressedWordEmbedding;
  CoreNLP::getUTF8StringFromCFString(a2, __p);
  CoreNLP::WordEmbedding::getNearestNeighbors(v9, __p, a3, &v19, a4);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 == v20)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = v19;
    v12 = v20;
    while (v11 != v12)
    {
      v13 = v11;
      if (*(v11 + 23) < 0)
      {
        v13 = *v11;
      }

      v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
      v15 = CFNumberCreate(0, kCFNumberFloatType, (v11 + 24));
      CFDictionaryAddValue(Mutable, v14, v15);
      CFRelease(v14);
      CFRelease(v15);
      v11 += 32;
    }
  }

  __p[0] = &v19;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  return Mutable;
}

void sub_19D1EED98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__CFArray *NLEmbeddingCopyWordClusterIDs(const __CFLocale *a1, const __CFString *a2)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v13);
  CoreNLP::WordEmbedding::clearEmptyModels(&v13);
  if (!CoreNLP::WordEmbedding::loadModel(&v13, a1, @"embedding.dat"))
  {
    Mutable = 0;
    goto LABEL_13;
  }

  CoreNLP::getUTF8StringFromCFString(a2, __p);
  CoreNLP::WordEmbedding::getCentroids(&v13, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v11;
  if (v11 == v12)
  {
    Mutable = 0;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    do
    {
      LODWORD(__p[0]) = *v4;
      v7 = CFNumberCreate(0, kCFNumberSInt32Type, __p);
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v7);
      ++v4;
    }

    while (v4 != v6);
    v4 = v11;
  }

  if (v4)
  {
LABEL_12:
    v12 = v4;
    operator delete(v4);
  }

LABEL_13:
  v13 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v17);
  CoreNLP::KDTree::~KDTree(&v16);
  if (v15 < 0)
  {
    operator delete(v14[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v14, v14[1]);
  return Mutable;
}

void sub_19D1EEF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  CoreNLP::WordEmbedding::~WordEmbedding(&a19);
  _Unwind_Resume(a1);
}

__CFArray *NLStringEmbeddingCopyWordClusterIDs(CoreNLP *a1, __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = CoreNLP::unwrapGazetteer(a1, a2);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v3);
  if (!CompressedWordEmbedding)
  {
    return 0;
  }

  v5 = CompressedWordEmbedding;
  CoreNLP::getUTF8StringFromCFString(a2, __p);
  CoreNLP::WordEmbedding::getCentroids(v5, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v13;
  if (v13 == v14)
  {
    Mutable = 0;
    if (!v13)
    {
      return Mutable;
    }

LABEL_13:
    v14 = v6;
    operator delete(v6);
    return Mutable;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = v13;
  v8 = v14;
  if (v13 != v14)
  {
    do
    {
      LODWORD(__p[0]) = *v6;
      v9 = CFNumberCreate(0, kCFNumberSInt32Type, __p);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
      ++v6;
    }

    while (v6 != v8);
    v6 = v13;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  return Mutable;
}

void sub_19D1EF0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLEmbeddingCopyWordVector(const __CFLocale *a1, const __CFString *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  CoreNLP::WordEmbedding::WordEmbedding(&v12);
  CoreNLP::WordEmbedding::clearEmptyModels(&v12);
  if (CoreNLP::WordEmbedding::loadModel(&v12, a1, @"embedding.dat"))
  {
    memset(&__p, 0, sizeof(__p));
    CoreNLP::getUTF8StringFromCFString(a2, valuePtr);
    memset(v10, 0, sizeof(v10));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, valuePtr, &v21, 1uLL);
    if (v20 < 0)
    {
      operator delete(valuePtr[0]);
    }

    if (CoreNLP::WordEmbedding::getAverageEmbedding(&v12, v10, &__p))
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      begin = __p.__begin_;
      end = __p.__end_;
      while (begin != end)
      {
        LODWORD(valuePtr[0]) = *begin;
        v7 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v7);
        ++begin;
      }
    }

    else
    {
      Mutable = 0;
    }

    valuePtr[0] = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](valuePtr);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }
  }

  else
  {
    Mutable = 0;
  }

  v12 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v16);
  CoreNLP::KDTree::~KDTree(&v15);
  if (v14 < 0)
  {
    operator delete(v13[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v13, v13[1]);
  v8 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void sub_19D1EF2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  *(v16 - 80) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 80));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  CoreNLP::WordEmbedding::~WordEmbedding(&a16);
  _Unwind_Resume(a1);
}

CoreNLP *NLStringEmbeddingFillWordVectorsWithShape(CoreNLP *result, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  if (result)
  {
    v15 = *CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::AbstractEmbedding::fillWordVectorsWithShape(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

CoreNLP *NLStringEmbeddingFillTokenVectorsWithShape(CoreNLP *result, void *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (result)
  {
    v13 = *CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::AbstractEmbedding::fillTokenVectorsWithShape(v13, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t NLStringEmbeddingCopyDataForTokenizedBatch(CoreNLP *this, void *a2, CFDictionaryRef theDict, uint64_t a4, CFErrorRef *a5)
{
  if (!a2 || !a4)
  {
    if (a5)
    {
      v14 = *MEMORY[0x1E695E480];
      v15 = kNLStringEmbeddingErrorDomain[0];
      v16 = 2;
LABEL_17:
      *a5 = CFErrorCreate(v14, v15, v16, 0);
    }

    return 0;
  }

  if (!this)
  {
    if (a5)
    {
      v14 = *MEMORY[0x1E695E480];
      v15 = kNLStringEmbeddingErrorDomain[0];
      v16 = 3;
      goto LABEL_17;
    }

    return 0;
  }

  if (theDict && CFDictionaryContainsKey(theDict, kNLStringEmbeddingPadEncoderInput[0]))
  {
    Value = CFDictionaryGetValue(theDict, kNLStringEmbeddingPadEncoderInput[0]);
    v9 = CFGetTypeID(Value);
    TypeID = CFNumberGetTypeID();
    v11 = TypeID;
    if (a5 && v9 != TypeID)
    {
      *a5 = CFErrorCreate(*MEMORY[0x1E695E480], kNLStringEmbeddingErrorDomain[0], 2, 0);
    }

    if (v9 != v11)
    {
      return 0;
    }
  }

  v12 = *(**CoreNLP::unwrapGazetteer(this, a2) + 48);

  return v12();
}

__CFDictionary *NLEmbeddingCopyAllWordVectors(const __CFLocale *a1)
{
  CoreNLP::WordEmbedding::WordEmbedding(&v18);
  CoreNLP::WordEmbedding::clearEmptyModels(&v18);
  if (CoreNLP::WordEmbedding::loadModel(&v18, a1, @"embedding.dat"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    memset(v14, 0, sizeof(v14));
    CoreNLP::WordEmbedding::getAllEmbeddings(&v18, &v15, v14);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = v15;
    if (v16 != v15)
    {
      v4 = 0;
      v5 = MEMORY[0x1E695E9C0];
      do
      {
        v6 = (v3 + 24 * v4);
        if (v6[23] < 0)
        {
          v6 = *v6;
        }

        v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
        v8 = CFArrayCreateMutable(0, 0, v5);
        v9 = &v14[0][3 * v4];
        v10 = *v9;
        v11 = v9[1];
        while (v10 != v11)
        {
          LODWORD(valuePtr[0]) = *v10;
          v12 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          CFArrayAppendValue(v8, v12);
          CFRelease(v12);
          ++v10;
        }

        CFDictionaryAddValue(Mutable, v7, v8);
        CFRelease(v7);
        CFRelease(v8);
        ++v4;
        v3 = v15;
      }

      while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
    }

    valuePtr[0] = v14;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](valuePtr);
    v14[0] = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  else
  {
    Mutable = 0;
  }

  v18 = &unk_1F10AF170;
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  CoreNLP::ProductQuantizer::~ProductQuantizer(&v22);
  CoreNLP::KDTree::~KDTree(&v21);
  if (v20 < 0)
  {
    operator delete(v19[5]);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v19, v19[1]);
  return Mutable;
}

void sub_19D1EF7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  *(v2 - 96) = va;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  va_copy(v4, va1);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  CoreNLP::WordEmbedding::~WordEmbedding(va2);
  _Unwind_Resume(a1);
}

__CFDictionary *NLStringEmbeddingCopyAllWordVectors(CoreNLP *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CoreNLP::unwrapGazetteer(a1, a2);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v2);
  if (!CompressedWordEmbedding)
  {
    return 0;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  CoreNLP::WordEmbedding::getAllEmbeddings(CompressedWordEmbedding, &v17, v16);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = v17;
  if (v18 != v17)
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E9C0];
    do
    {
      v8 = (v5 + 24 * v6);
      if (v8[23] < 0)
      {
        v8 = *v8;
      }

      v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
      v10 = CFArrayCreateMutable(0, 0, v7);
      v11 = &v16[0][3 * v6];
      v12 = *v11;
      v13 = v11[1];
      while (v12 != v13)
      {
        LODWORD(valuePtr) = *v12;
        v14 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        CFArrayAppendValue(v10, v14);
        CFRelease(v14);
        ++v12;
      }

      CFDictionaryAddValue(Mutable, v9, v10);
      CFRelease(v9);
      CFRelease(v10);
      ++v6;
      v5 = v17;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
  }

  valuePtr = v16;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&valuePtr);
  v16[0] = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v16);
  return Mutable;
}

void sub_19D1EF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  a16 = &a10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

__CFArray *NLStringEmbeddingCopyNeighborsForVector(CoreNLP *a1, const void *a2, int a3, float a4)
{
  if (!a1)
  {
    return 0;
  }

  applesauce::CF::convert_to<std::vector<float>,0>(a2, &v24);
  v8 = CoreNLP::unwrapGazetteer(a1, v7);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v8);
  if (CompressedWordEmbedding && (v10 = CompressedWordEmbedding, begin = v24.__begin_, end = v24.__end_, (*(*CompressedWordEmbedding + 8))(CompressedWordEmbedding) == end - begin))
  {
    v20 = 0;
    v21 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v24.__begin_, v24.__end_, v24.__end_ - v24.__begin_);
    CoreNLP::WordEmbedding::getNearestNeighborsForVector(v10, &__p, a3, &v22, a4);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v22 == v23)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v14 = v22;
      v15 = v23;
      while (v14 != v15)
      {
        v16 = v14;
        if (*(v14 + 23) < 0)
        {
          v16 = *v14;
        }

        v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
        CFArrayAppendValue(Mutable, v17);
        CFRelease(v17);
        v14 += 32;
      }
    }

    v25 = &v22;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  else
  {
    Mutable = 0;
  }

  if (v24.__begin_)
  {
    v24.__end_ = v24.__begin_;
    operator delete(v24.__begin_);
  }

  return Mutable;
}

void sub_19D1EFBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  *(v16 - 56) = &a12;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100]((v16 - 56));
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFDictionary *NLStringEmbeddingCopyNeighborsForVectorWithDistances(CoreNLP *a1, const void *a2, int a3, float a4)
{
  if (!a1)
  {
    return 0;
  }

  applesauce::CF::convert_to<std::vector<float>,0>(a2, &v25);
  v8 = CoreNLP::unwrapGazetteer(a1, v7);
  CompressedWordEmbedding = CoreNLP::EmbeddingManager::getCompressedWordEmbedding(v8);
  if (CompressedWordEmbedding && (v10 = CompressedWordEmbedding, begin = v25.__begin_, end = v25.__end_, (*(*CompressedWordEmbedding + 8))(CompressedWordEmbedding) == end - begin))
  {
    v21 = 0;
    v22 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
    CoreNLP::WordEmbedding::getNearestNeighborsForVector(v10, &__p, a3, &v23, a4);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (v23 == v24)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = v23;
      v15 = v24;
      while (v14 != v15)
      {
        v16 = v14;
        if (*(v14 + 23) < 0)
        {
          v16 = *v14;
        }

        v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
        v18 = CFNumberCreate(0, kCFNumberFloatType, (v14 + 24));
        CFDictionaryAddValue(Mutable, v17, v18);
        CFRelease(v17);
        CFRelease(v18);
        v14 += 32;
      }
    }

    v26 = &v23;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v26);
  }

  else
  {
    Mutable = 0;
  }

  if (v25.__begin_)
  {
    v25.__end_ = v25.__begin_;
    operator delete(v25.__begin_);
  }

  return Mutable;
}

void sub_19D1EFDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char *a18)
{
  a18 = &a12;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFTypeRef NLStringEmbeddingCopySupportedVersions(const __CFLocale *a1, const __CFString *a2)
{
  CoreNLP::EmbeddingManager::EmbeddingManager(&v11);
  CoreNLP::EmbeddingManager::supportedVersions(&v11, a1, a2, &__p);
  v4 = __p;
  if (__p == v10)
  {
    v6 = 0;
    if (__p)
    {
LABEL_5:
      v10 = v4;
      operator delete(v4);
    }
  }

  else
  {
    CFArray = applesauce::CF::details::make_CFArrayRef<long>(&__p);
    v6 = CFRetain(CFArray);
    if (CFArray)
    {
      CFRelease(CFArray);
    }

    v4 = __p;
    if (__p)
    {
      goto LABEL_5;
    }
  }

  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v15, v15[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v14, v14[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v13, v13[1]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v12, v12[1]);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v6;
}

void sub_19D1EFF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a10);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  CoreNLP::EmbeddingManager::~EmbeddingManager(&a14);
  _Unwind_Resume(a1);
}

CFArrayRef NLStringEmbeddingCopyTokenIDsForText(CoreNLP *a1, applesauce::CF::StringRef *this)
{
  CFArray = 0;
  if (a1 && this)
  {
    applesauce::CF::StringRef::from_get(this, &v11);
    v5 = CoreNLP::unwrapGazetteer(a1, v4);
    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(v11, &__p);
    (*(**v5 + 120))(v10);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    CFArray = applesauce::CF::details::make_CFArrayRef<long>(v10);
    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return CFArray;
}

void sub_19D1F0064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::StringRef::~StringRef((v18 - 24));
  _Unwind_Resume(a1);
}

CFStringRef NLStringEmbeddingCopyTextForTokenIDs(CoreNLP *a1, CFTypeRef cf)
{
  v2 = 0;
  if (!a1 || !cf)
  {
    return v2;
  }

  CFRetain(cf);
  v17 = cf;
  v5 = CFGetTypeID(cf);
  if (v5 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = CoreNLP::unwrapGazetteer(a1, v6);
  if (!v17)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::vector<long>,0>(v17, __p);
  (*(**v7 + 128))(v15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = v15[0];
  }

  if (v8)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15[1];
    }

    v2 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
    __p[0] = v2;
    if (!v2)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v16 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v2 = 0;
  if ((v16 & 0x80) != 0)
  {
LABEL_16:
    operator delete(v15[0]);
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }

  return v2;
}

void sub_19D1F02A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v18 - 40));
  _Unwind_Resume(a1);
}

CoreNLP *NLStringEmbeddingApplyMeanPoolingOverFragments(CoreNLP *result, void *a2)
{
  if (result)
  {
    v2 = *(**CoreNLP::unwrapGazetteer(result, a2) + 136);

    return v2();
  }

  return result;
}

void applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,std::vector<float>>>(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  Count = CFDictionaryGetCount(a1);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::vector<void const*>::vector[abi:ne200100](v13, Count);
  std::vector<void const*>::vector[abi:ne200100](v12, Count);
  CFDictionaryGetKeysAndValues(a1, v13[0], v12[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      applesauce::CF::convert_to<std::string,0>(*(v13[0] + i), v7);
      applesauce::CF::convert_to<std::vector<float>,0>(*(v12[0] + i), &v6);
      *v9 = *v7;
      v10 = v8;
      v7[1] = 0;
      v8 = 0;
      __p = v6;
      memset(&v6, 0, sizeof(v6));
      v7[0] = 0;
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<float>>>(a2, v9);
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      if (v6.__begin_)
      {
        v6.__end_ = v6.__begin_;
        operator delete(v6.__begin_);
      }

      if (SHIBYTE(v8) < 0)
      {
        operator delete(v7[0]);
      }
    }
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_19D1F04E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 56);
  if (v22)
  {
    *(v19 - 48) = v22;
    operator delete(v22);
  }

  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v18, *(v18 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<float>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__construct_node<std::pair<std::string const,std::vector<float>>>();
  }

  return v2;
}

std::string *std::pair<std::string const,std::vector<float>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  return this;
}

uint64_t std::pair<std::string const,std::vector<float>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<int,std::string>(const __CFDictionary *a1, const __CFString *a2)
{
  result = applesauce::CF::details::at_key<std::string>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

const void *applesauce::CF::details::at_key<std::string>(const __CFDictionary *a1, CFStringRef a2)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (!a2)
  {
    cf = 0;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  info = v3->info;
  if ((data_high & 0x80u) == 0)
  {
    v7 = data_high;
  }

  else
  {
    v7 = info;
  }

  a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
  cf = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_9:
  Value = CFDictionaryGetValue(a1, a2);
  a2 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(a2);
  }

LABEL_14:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_19D1F0830(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D1F07DCLL);
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<unsigned int,std::string>(const __CFDictionary *a1, const __CFString *a2)
{
  result = applesauce::CF::details::at_key<std::string>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<unsigned int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<unsigned int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::number_convert_as<unsigned int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_19D27DA00);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_19D27DA10), xmmword_19D27DA20);
  return v18.i64[0] | v14 | v18.i64[1];
}

const void *applesauce::CF::details::find_at_key_or_optional<std::string,std::string&>@<X0>(const __CFDictionary *a1@<X0>, const __CFString *a2@<X1>, _BYTE *a3@<X8>)
{
  result = applesauce::CF::details::at_key<std::string>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<std::string,0>(result, a3);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  return result;
}

CFTypeID applesauce::CF::convert_as<std::string,0>@<X0>(CFTypeID result@<X0>, uint64_t a2@<X8>)
{
  if (result && (v3 = result, TypeID = CFStringGetTypeID(), result = CFGetTypeID(v3), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(v3, &v5);
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

_BYTE *applesauce::CF::details::find_at_key<std::string,std::string&>@<X0>(const __CFDictionary *a1@<X0>, const __CFString *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<std::string>(a1, a2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<std::string,0>(v4, a3);
}

void std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,float>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t CoreNLP::crfsuite::Instance::init(CoreNLP::crfsuite::Instance *this)
{
  if (*(this + 3) && *(this + 4))
  {
    crfsuite_instance_finish();
  }

  result = crfsuite_instance_init_n();
  if (*(this + 4) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(this + 3);
      result = crfsuite_item_init_with_capacity();
      ++v4;
      v3 += 16;
    }

    while (v4 < *(this + 4));
  }

  return result;
}

void CoreNLP::TaggingModelManager::applyGazetteer(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    v30 = v2;
    v31 = v3;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = v5 >> 3;
    do
    {
      v10 = v8;
      v8 = v8 + 2;
      v11 = *a2;
      if (v9 > v8)
      {
        v12 = *(v11 + 8 * v7);
        v13 = *(v12 + 72);
        if ((v13 & 0x8000000000) != 0 && (*(*(v11 + 8 * (v10 + 1)) + 76) & 0x80) != 0 && (*(*(v11 + 8 * v8) + 76) & 0x80) != 0)
        {
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v12 + 24, &v28) + 10) = 69;
          v21 = *(*a2 + 8 * (v10 + 1));
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v21 + 24, &v28) + 10) = 69;
          v22 = *(*a2 + 8 * v8);
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v22 + 24, &v28) + 10) = 69;
LABEL_35:
          LODWORD(v8) = v10 + 3;
          goto LABEL_36;
        }

        if ((v13 & 0x4000000000) != 0 && (*(*(v11 + 8 * (v10 + 1)) + 76) & 0x40) != 0 && (*(*(v11 + 8 * v8) + 76) & 0x40) != 0)
        {
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v12 + 24, &v28) + 10) = 68;
          v24 = *(*a2 + 8 * (v10 + 1));
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v24 + 24, &v28) + 10) = 68;
          v25 = *(*a2 + 8 * v8);
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v25 + 24, &v28) + 10) = 68;
          goto LABEL_35;
        }

        if ((v13 & 0x2000000000) != 0 && (*(*(v11 + 8 * (v10 + 1)) + 76) & 0x20) != 0 && (*(*(v11 + 8 * v8) + 76) & 0x20) != 0)
        {
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v12 + 24, &v28) + 10) = 67;
          v26 = *(*a2 + 8 * (v10 + 1));
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v26 + 24, &v28) + 10) = 67;
          v27 = *(*a2 + 8 * v8);
          v28 = 7;
          v29 = &v28;
          *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v27 + 24, &v28) + 10) = 67;
          goto LABEL_35;
        }
      }

      v14 = v10 + 1;
      v15 = *(v11 + 8 * v7);
      v16 = *(v15 + 72);
      if (v9 <= v14)
      {
        goto LABEL_20;
      }

      if ((v16 & 0x2000000000) != 0 && (*(*(v11 + 8 * v14) + 76) & 0x20) != 0)
      {
        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28) + 10) = 67;
        v19 = *(*a2 + 8 * v14);
        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v19 + 24, &v28) + 10) = 67;
      }

      else if ((v16 & 0x8000000000) != 0 && (*(*(v11 + 8 * v14) + 76) & 0x80) != 0)
      {
        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28) + 10) = 69;
        v20 = *(*a2 + 8 * v14);
        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v20 + 24, &v28) + 10) = 69;
      }

      else
      {
        if ((v16 & 0x4000000000) == 0 || (*(*(v11 + 8 * v14) + 76) & 0x40) == 0)
        {
LABEL_20:
          if ((v16 & 0x8000000000) != 0)
          {
            v28 = 7;
            v29 = &v28;
            *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28) + 10) = 69;
          }

          else if ((v16 & 0x4000000000) != 0)
          {
            v28 = 7;
            v29 = &v28;
            *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28) + 10) = 68;
          }

          else
          {
            v28 = 7;
            v29 = &v28;
            if ((v16 & 0x2000000000) != 0)
            {
              v17 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28);
              v18 = 67;
            }

            else
            {
              v17 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28);
              v18 = 70;
            }

            *(v17 + 10) = v18;
          }

          LODWORD(v8) = v14;
          goto LABEL_36;
        }

        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v15 + 24, &v28) + 10) = 68;
        v23 = *(*a2 + 8 * v14);
        v28 = 7;
        v29 = &v28;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v23 + 24, &v28) + 10) = 68;
      }

LABEL_36:
      v7 = v8;
    }

    while (v9 > v8);
  }
}

uint64_t *CoreNLP::TaggingModelManager::checkInvalidCharInNER(uint64_t *result, uint64_t *a2, int a3, CoreNLP::NLAttributedToken *a4)
{
  if (a3 != 4)
  {
    v37 = v4;
    v38 = v5;
    v7 = result[78];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = result + 78;
    do
    {
      if (*(v7 + 32) >= a3)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a3));
    }

    while (v7);
    if (v8 != result + 78 && *(v8 + 8) <= a3)
    {
      v10 = *(a4 + 1);
      if (v8[5] && v10 && (v33 = *a2, a2[1] != *a2))
      {
        v34 = 0;
        do
        {
          result = CoreNLP::hasInvalidCharInNERToken(v8[5], v10, *(v33 + 8 * v34), a4);
          v9 = result;
          if (result)
          {
            break;
          }

          ++v34;
          v33 = *a2;
        }

        while (v34 < (a2[1] - *a2) >> 3);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
LABEL_9:
      v9 = 0;
      v10 = *(a4 + 1);
    }

    v11 = *a2;
    v12 = a2[1];
    if ((v12 - *a2) < 9)
    {
LABEL_40:
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
      while (1)
      {
        v15 = *(v11 + 8 * v13);
        v18 = *(v15 + 32);
        v16 = v15 + 32;
        v17 = v18;
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = v16;
        do
        {
          if (*(v17 + 32) >= 7)
          {
            v19 = v17;
          }

          v17 = *(v17 + 8 * (*(v17 + 32) < 7));
        }

        while (v17);
        if (v19 == v16 || *(v19 + 32) >= 8)
        {
LABEL_19:
          v19 = v16;
        }

        v20 = *(v11 + 8 * v14);
        v23 = *(v20 + 32);
        v21 = v20 + 32;
        v22 = v23;
        if (!v23)
        {
          break;
        }

        v24 = v21;
        do
        {
          if (*(v22 + 32) >= 7)
          {
            v24 = v22;
          }

          v22 = *(v22 + 8 * (*(v22 + 32) < 7));
        }

        while (v22);
        if (v24 == v21)
        {
          break;
        }

        if (*(v24 + 32) > 7 || v19 == v16)
        {
          break;
        }

        v26 = *(v19 + 40);
        if (v26 != 70 && v26 != *(v24 + 40))
        {
          result = CFStringGetCharacterAtIndex(v10, **(v11 + 8 * v13) + *(*(v11 + 8 * v13) + 8) - 1);
          v11 = *a2;
          if (result == 46)
          {
            v27 = *(v11 + 8 * v13);
            v28 = *(v27 + 8);
            v29 = v28 >= 4 && v28 + *v27 < **(v11 + 8 * v14);
            if (v29 && (*(v27 + 73) & 0x10) == 0)
            {
              *(v19 + 40) = 70;
              v12 = a2[1];
              goto LABEL_43;
            }
          }
        }

        ++v14;
        v12 = a2[1];
        ++v13;
        if (v14 >= (v12 - v11) >> 3)
        {
          goto LABEL_40;
        }
      }

      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

LABEL_43:
    if ((v12 - v11) >= 9)
    {
      v30 = 0;
      do
      {
        v31 = *(v11 + 8 * v30);
        v35 = 7;
        v36 = &v35;
        result = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v31 + 24, &v35);
        *(result + 10) = 70;
        v11 = *a2;
        v32 = v30 + 2;
        ++v30;
      }

      while (v32 < (a2[1] - *a2) >> 3);
    }
  }

  return result;
}

void CoreNLP::ReadOnlyFile<char>::open(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN7CoreNLP12ReadOnlyFileIcE4openERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcb_block_invoke;
  v6[3] = &unk_1E76251E0;
  v6[5] = a1;
  v6[6] = a2;
  v7 = a3;
  v6[4] = &v8;
  CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getResource(a1, v6, a4);
  v4 = *(v9 + 63);
  if (v4 < 0)
  {
    v4 = v9[6];
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ResourceCreationException::ResourceCreationException(exception, (v9 + 5));
  }

  _Block_object_dispose(&v8, 8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_19D1F1640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *(v27 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Block_object_dispose(&a17, 8);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentResource(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentResource();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE21getPersistentResourceERKS5_U13block_pointerFPS7_vE_block_invoke;
  block[3] = &unk_1E7625270;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t ___ZN7CoreNLP19TaggingModelManager12loadCRFModelENS_15NLTagSchemeTypeE12NLLanguageID_block_invoke(uint64_t a1)
{
  v2 = CoreNLP::copyLocaleForLanguageID(*(a1 + 36));
  v4 = v2;
  v11 = 0;
  v5 = *(a1 + 32);
  if (v5 == 7)
  {
    if (*(a1 + 36) == 10)
    {
      v7 = @"ner_v2.dat";
    }

    else
    {
      v7 = @"ner.dat";
    }

    CoreNLP::Resource::getAssetResource(v2, @"Tagging", v7, 0, __p);
  }

  else
  {
    v6 = 0;
    if (v5 != 6)
    {
      goto LABEL_9;
    }

    CoreNLP::Resource::getAssetResource(v2, @"Tagging", @"pos.dat", 0, __p);
  }

  v6 = __p[0];
  v11 = __p[0];
LABEL_9:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    if (CoreNLP::Resource::exists(v6, v3))
    {
      CoreNLP::Resource::path(v6, v8, __p);
      CoreNLP::ReadOnlyFile<char>::create();
    }

    CoreNLP::Resource::~Resource(v6);
    MEMORY[0x19EAF8CA0]();
  }

  return 0;
}

void sub_19D1F1890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, CoreNLP::Resource *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<CoreNLP::Resource>::reset[abi:ne200100](&a15, 0);
  _Unwind_Resume(a1);
}

const void ***CoreNLP::TaggingModelManager::labelMap@<X0>(const void ***result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a2 == 7)
  {
    if (a3 == 4)
    {
      v4 = result + 70;
    }

    else
    {
      v4 = result + 67;
    }
  }

  else
  {
    if (a2 != 6)
    {
      a4[2] = 0;
      a4[1] = 0;
      *a4 = a4 + 1;
      return result;
    }

    v4 = result + 73;
  }

  return std::map<std::string,int>::map[abi:ne200100](a4, v4);
}

uint64_t CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentResource(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentResource();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageID4USetE21getPersistentResourceERKS1_U13block_pointerFPS2_vE_block_invoke;
  block[3] = &unk_1E7625298;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getQueue(void)::queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void CoreNLP::TaggingModelManager::tagToLabel(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (a3 == 7 && (v6 = a2 - 100, (a2 - 100) <= 0x64))
  {
    v7 = a1[64];
    v8 = a1 + 65;
    if (v7 != a1 + 65)
    {
      while (1)
      {
        if (*(v7 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7[4], v7[5]);
        }

        else
        {
          __p = *(v7 + 4);
        }

        v22 = *(v7 + 14);
        if (v6 == v22)
        {
          break;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
        if (v10 == v8)
        {
          return;
        }
      }

      std::string::operator=(a5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v14 = a1[4];
    v12 = a1 + 4;
    v13 = v14;
    if (v14)
    {
      v15 = v12;
      do
      {
        if (*(v13 + 8) >= a3)
        {
          v15 = v13;
        }

        v13 = v13[*(v13 + 8) < a3];
      }

      while (v13);
      if (v15 != v12 && *(v15 + 8) <= a3)
      {
        v18 = v15[6];
        v16 = v15 + 6;
        v17 = v18;
        if (v18)
        {
          v19 = v16;
          do
          {
            if (*(v17 + 8) >= a4)
            {
              v19 = v17;
            }

            v17 = v17[*(v17 + 8) < a4];
          }

          while (v17);
          if (v19 != v16 && *(v19 + 8) <= a4)
          {
            v20 = v19[5];
            if (v20)
            {
              (*(*v20 + 72))(&__p);
              *a5 = __p;
            }
          }
        }
      }
    }
  }
}

void sub_19D1F1BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::TaggingModelManager::setCustomModelPath(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
  }

  else
  {
    v9 = *a4;
  }

  v10 = 0;
  v11 = 0;
  v8[0] = a3;
  v8[1] = a2;
  v12 = v8;
  v7 = std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::__emplace_unique_key_args<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::piecewise_construct_t const&,std::tuple<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>&&>,std::tuple<>>(a1 + 464, v8);
  std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>::operator=[abi:ne200100](v7 + 40, &v9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_19D1F1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t CoreNLP::TaggingModelManager::loadCustomGazetteer(uint64_t result, const char *a2)
{
  v2 = *(result + 496);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = result + 496;
  do
  {
    v4 = *(v2 + 32);
    if ((v4 & 0x80000000) == 0)
    {
      v3 = v2;
    }

    v2 = *(v2 + ((v4 >> 28) & 8));
  }

  while (v2);
  if (v3 == result + 496 || *(v3 + 32) >= 1)
  {
LABEL_8:
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v5 = CFStringCreateWithCString(0, a2, 0x8000100u);
    v6 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, kNLGazetteerCompressedModelURL[0], v6);
    NLGazetteerCreate();
  }

  return result;
}

void sub_19D1F1E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<void *>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFIndex CoreNLP::TaggingModelManager::setCustomGazetteers(uint64_t a1, CFArrayRef theArray, int a3)
{
  v17 = a3;
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v9 = NLGazetteerCopyLocale(ValueAtIndex, v8);
      if (v9)
      {
        v11 = v9;
        LocaleLanguage = CoreNLP::getLocaleLanguage(v9, v10);
        p_LocaleLanguage = &LocaleLanguage;
        v12 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a1 + 488, &LocaleLanguage);
        p_LocaleLanguage = &v17;
        v13 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v12 + 5), &v17);
        nlp::CFScopedPtr<void *>::acquire(v13 + 5, ValueAtIndex);
        CFRelease(v11);
      }

      else
      {
        LocaleLanguage = 0;
        p_LocaleLanguage = &LocaleLanguage;
        v14 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::map<NLLanguageID,CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType const&>,std::tuple<>>(a1 + 488, &LocaleLanguage);
        p_LocaleLanguage = &v17;
        v15 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v14 + 5), &v17);
        nlp::CFScopedPtr<void *>::acquire(v15 + 5, ValueAtIndex);
      }

      result = CFArrayGetCount(theArray);
    }
  }

  return result;
}

void nlp::CFScopedPtr<void *>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<void *>::reset(a1, cf);
  }
}

uint64_t CoreNLP::hasInvalidCharInNERToken(CoreNLP *this, CFStringRef theString, __CFString *a3, CoreNLP::NLAttributedToken *a4)
{
  Length = CFStringGetLength(theString);
  isa = a3[1].isa;
  if (isa)
  {
    v10 = Length;
    v11 = a3 + 1;
    do
    {
      if (SLODWORD(isa[1].isa) >= 7)
      {
        v11 = isa;
      }

      isa = *(&isa->isa + (SLODWORD(isa[1].isa) < 7));
    }

    while (isa);
    if (v11 != &a3[1] && SLODWORD(v11[1].isa) <= 7 && (LODWORD(v11[1].info) - 67) <= 2)
    {
      if (a3->info >= 1)
      {
        v12 = a3->isa;
        v13 = a3->isa;
        while ((v12 & 0x8000000000000000) == 0)
        {
          if (v13 >= v10)
          {
            break;
          }

          CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v13);
          if (!MEMORY[0x19EAF9880](this, CharacterAtIndex))
          {
            break;
          }

          if (++v13 >= a3->isa + a3->info)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_18;
      }

LABEL_15:
      if ((a3[2].info & 0x200) == 0 && (CoreNLP::isPunctuationOrWhitespace(a3, v8) || a3->info <= 1))
      {
LABEL_18:
        v16 = 7;
        v17 = &v16;
        *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(&a3->length, &v16) + 10) = 70;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t CoreNLP::TaggingModelManager::checkInvalidCharInSimplifiedChineseNER(uint64_t result, uint64_t *a2, uint64_t a3, CoreNLP::NLAttributedToken *a4)
{
  v4 = *(result + 624);
  if (v4)
  {
    v6 = result + 624;
    do
    {
      if (*(v4 + 32) >= 4)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < 4));
    }

    while (v4);
    if (v6 != result + 624 && *(v6 + 32) <= 4)
    {
      v7 = *(a3 + 8);
      if (*(v6 + 40))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = *a2;
        if (a2[1] != *a2)
        {
          v10 = 0;
          v11 = 0;
          do
          {
            result = CoreNLP::hasInvalidCharInNERToken(*(v6 + 40), v7, (v9 + v10), a4);
            ++v11;
            v9 = *a2;
            v10 += 112;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v11);
        }
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_hint_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,CoreNLP::AbstractModel *> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::__find_equal<NLLanguageID>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID> const,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t *std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void std::vector<CoreNLP::NLAttributedToken *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::SubWordTagger *>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::vector<std::pair<int,double>>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(uint64_t a1, int *a2)
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

char *std::vector<std::pair<int,double>>::__assign_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(char **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      v5 += 16;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 8);
        v5 += 16;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void *std::__tree<CoreNLP::AbstractModel *>::__emplace_unique_key_args<CoreNLP::AbstractModel *,CoreNLP::AbstractModel * const&>(uint64_t a1, unint64_t *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::AbstractModel *,std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::less<CoreNLP::AbstractModel *>,true>,std::allocator<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getResource(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3802000000;
  v11 = __Block_byref_object_copy__108;
  v13 = 0;
  v14 = 0;
  v12 = __Block_byref_object_dispose__109;
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::onceToken != -1)
  {
    CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getResource();
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke;
  v7[3] = &unk_1E7625208;
  v7[4] = a2;
  v7[5] = &v8;
  v7[6] = a1;
  dispatch_sync(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue, v7);
  v6 = v9[6];
  *a3 = v9[5];
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v8, 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_19D1F2D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAF8CA0](v16, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    MEMORY[0x19EAF8860](*(*(v15 + 32) + 8) + 40, v20);
    __cxa_end_catch();
    JUMPOUT(0x19D1F2D60);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__108(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__109(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke(uint64_t a1)
{
  if (CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getCache(void)::cache;
  v3 = std::__tree<std::string>::find<std::string>(CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getCache(void)::cache, *(a1 + 48));
  if (v2 + 8 == v3 || (v4 = v3, (v5 = *(v3 + 64)) == 0) || v5->__shared_owners_ == -1)
  {
    v8 = (*(*(a1 + 32) + 16))();
    if (v8)
    {
      std::shared_ptr<CoreNLP::ReadOnlyFile<char>>::reset[abi:ne200100]<CoreNLP::ReadOnlyFile<char>,0>(*(*(a1 + 40) + 8) + 40, v8);
    }
  }

  else
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(v4 + 56);
    }

    else
    {
      v7 = 0;
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 48);
    *(v9 + 40) = v7;
    *(v9 + 48) = v6;
    if (v10)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_19D1F2F94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<char>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void std::shared_ptr<CoreNLP::ReadOnlyFile<char>>::shared_ptr[abi:ne200100]<CoreNLP::ReadOnlyFile<char>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19D1F3114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CoreNLP::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CoreNLP::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = CoreNLP::ReadOnlyFile<char>::~ReadOnlyFile(v2);
    MEMORY[0x19EAF8CA0](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

void std::__shared_ptr_pointer<CoreNLP::ReadOnlyFile<char> *,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>::__shared_ptr_default_delete<CoreNLP::ReadOnlyFile<char>,CoreNLP::ReadOnlyFile<char>>,std::allocator<CoreNLP::ReadOnlyFile<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::__shared_ptr_pointer<CoreNLP::ReadOnlyFile<char> *,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>::__shared_ptr_default_delete<CoreNLP::ReadOnlyFile<char>,CoreNLP::ReadOnlyFile<char>>,std::allocator<CoreNLP::ReadOnlyFile<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<CoreNLP::ReadOnlyFile<char>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE21getPersistentResourceERKS5_U13block_pointerFPS7_vE_block_invoke(uint64_t a1)
{
  if (CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerINSt3__14pairINS_15NLTagSchemeTypeE12NLLanguageIDEENS_12ReadOnlyFileIcEEE19clearEmptyResourcesEv_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache;
  result = std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::find<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(CoreNLP::SingletonResourceManager<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char>>::getPersistentCache(void)::cache, *(a1 + 48));
  if (v2 + 8 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
    v4 = *(a1 + 48);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    result = std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__emplace_unique_key_args<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::piecewise_construct_t const&,std::tuple<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID> const&>,std::tuple<>>(v2, v4);
    *(result + 40) = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(result + 40);
  }

  return result;
}

void sub_19D1F3490(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(*(v1 + 40) + 8) + 24) = 0;
  __cxa_end_catch();
  JUMPOUT(0x19D1F344CLL);
}

uint64_t std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__emplace_unique_key_args<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::piecewise_construct_t const&,std::tuple<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID> const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__find_equal<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__find_equal<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageID4USetE21getPersistentResourceERKS1_U13block_pointerFPS2_vE_block_invoke(uint64_t a1)
{
  if (CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentCache(void)::onceToken != -1)
  {
    ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageID4USetE21getPersistentResourceERKS1_U13block_pointerFPS2_vE_block_invoke_cold_1();
  }

  v2 = CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentCache(void)::cache;
  v3 = *(CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentCache(void)::cache + 1);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = **(a1 + 48);
  v5 = CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentCache(void)::cache + 8;
  do
  {
    if (*(v3 + 8) >= v4)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < v4)];
  }

  while (v3);
  if (v5 != CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getPersistentCache(void)::cache + 8 && v4 >= *(v5 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v5 + 5);
  }

  else
  {
LABEL_10:
    *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
    v6 = *(a1 + 48);
    v7 = *(*(*(a1 + 40) + 8) + 24);
    std::__tree<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,CoreNLP::AbstractModel *>>>::__emplace_unique_key_args<NLLanguageID,std::piecewise_construct_t const&,std::tuple<NLLanguageID const&>,std::tuple<>>(v2, v6)[5] = v7;
  }
}

void sub_19D1F368C(void *a1)
{
  __cxa_begin_catch(a1);
  *(*(*(v1 + 40) + 8) + 24) = 0;
  __cxa_end_catch();
  JUMPOUT(0x19D1F3634);
}

void ___ZN7CoreNLP24SingletonResourceManagerI12NLLanguageID4USetE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<NLLanguageID,USet>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

void *std::__tree<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::__map_value_compare<CoreNLP::AbstractModel *,std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>,std::less<CoreNLP::AbstractModel *>,true>,std::allocator<std::__value_type<CoreNLP::AbstractModel *,std::set<CoreNLP::AbstractModel *>>>>::__emplace_unique_key_args<CoreNLP::AbstractModel *,std::piecewise_construct_t const&,std::tuple<CoreNLP::AbstractModel * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>>>::__emplace_unique_key_args<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::piecewise_construct_t const&,std::tuple<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>&&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::__map_value_compare<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>,std::less<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>,true>,std::allocator<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,CoreNLP::ReadOnlyFile<char> *>>>::__find_equal<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID>,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<CoreNLP::NLTagSchemeType,NLLanguageID> const,std::pair<std::string,std::shared_ptr<CoreNLP::ReadOnlyFile<char>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CoreNLP::NLTagSchemeType,nlp::CFScopedPtr<void *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      nlp::CFScopedPtr<void *>::reset(v2 + 5, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CoreNLP::NLTagSchemeType,CoreNLP::Gazetteer *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CoreNLP::EmbeddingManager *CoreNLP::EmbeddingManager::EmbeddingManager(CoreNLP::EmbeddingManager *this)
{
  v49[3] = *MEMORY[0x1E69E9840];
  *this = 0;
  v2 = (this + 8);
  v34 = 1;
  v35 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v18, &v34, 1);
  v36 = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](v37, &v18);
  v30 = 1;
  v31 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v32, &v30, 1);
  v38 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v39, &v32);
  v28 = 1;
  v29 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v16, &v28, 1);
  v40 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v41, &v16);
  v26 = 1;
  v27 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v14, &v26, 1);
  v42 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v43, &v14);
  v24 = 1;
  v25 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v12, &v24, 1);
  v44 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v45, &v12);
  v22 = 1;
  v23 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v10, &v22, 1);
  v46 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v47, &v10);
  v20 = 1;
  v21 = @"embedding.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v8, &v20, 1);
  v48 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v49, &v8);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](v2, &v36, 7);
  for (i = 0; i != -28; i -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v49[i], v49[i + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v8, v9);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v10, v11);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v12, v13);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v14, v15);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v16, v17);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v32, v33);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v18, v19);
  v34 = 1;
  v35 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v18, &v34, 1);
  v36 = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](v37, &v18);
  v30 = 1;
  v31 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v32, &v30, 1);
  v38 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v39, &v32);
  v28 = 1;
  v29 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v16, &v28, 1);
  v40 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v41, &v16);
  v26 = 1;
  v27 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v14, &v26, 1);
  v42 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v43, &v14);
  v24 = 1;
  v25 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v12, &v24, 1);
  v44 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v45, &v12);
  v22 = 1;
  v23 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v10, &v22, 1);
  v46 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v47, &v10);
  v20 = 1;
  v21 = @"bilm.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v8, &v20, 1);
  v48 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v49, &v8);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 4, &v36, 7);
  for (j = 0; j != -28; j -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v49[j], v49[j + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v8, v9);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v10, v11);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v12, v13);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v14, v15);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v16, v17);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v32, v33);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v18, v19);
  v34 = 1;
  v35 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v18, &v34, 1);
  v36 = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](v37, &v18);
  v30 = 1;
  v31 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v32, &v30, 1);
  v38 = 4;
  std::map<long,__CFString const*>::map[abi:ne200100](v39, &v32);
  v28 = 1;
  v29 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v16, &v28, 1);
  v40 = 12;
  std::map<long,__CFString const*>::map[abi:ne200100](v41, &v16);
  v26 = 1;
  v27 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v14, &v26, 1);
  v42 = 29;
  std::map<long,__CFString const*>::map[abi:ne200100](v43, &v14);
  v24 = 1;
  v25 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v12, &v24, 1);
  v44 = 19;
  std::map<long,__CFString const*>::map[abi:ne200100](v45, &v12);
  v22 = 1;
  v23 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v10, &v22, 1);
  v46 = 13;
  std::map<long,__CFString const*>::map[abi:ne200100](v47, &v10);
  v20 = 1;
  v21 = @"sentence.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v8, &v20, 1);
  v48 = 25;
  std::map<long,__CFString const*>::map[abi:ne200100](v49, &v8);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 7, &v36, 7);
  for (k = 0; k != -28; k -= 4)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v49[k], v49[k + 1]);
  }

  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v8, v9);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v10, v11);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v12, v13);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v14, v15);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v16, v17);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v32, v33);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v18, v19);
  v32 = 1;
  v33 = @"similarity.dat";
  std::map<long,__CFString const*>::map[abi:ne200100](&v18, &v32, 1);
  v36 = 10;
  std::map<long,__CFString const*>::map[abi:ne200100](v37, &v18);
  std::map<NLLanguageID,std::map<long,__CFString const*>>::map[abi:ne200100](this + 10, &v36, 1);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v37, v37[1]);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&v18, v19);
  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_19D1F41D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v32 + 8, *(v33 + 208));
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a30, *(v33 + 40));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v30 + 7), v30[8]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy((v30 + 4), v30[5]);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v31, v30[2]);
  v35 = *v30;
  *v30 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  _Unwind_Resume(a1);
}

void sub_19D1F44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v47 = v45 + 200;
  v48 = -224;
  do
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v47, *(v47 + 8));
    v47 -= 32;
    v48 += 32;
  }

  while (v48);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a14, a15);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a18, a19);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a26, v46[1]);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a45, v46[20]);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a30, v46[5]);
  JUMPOUT(0x19D1F4474);
}

void sub_19D1F4914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  MEMORY[0x19EAF8CA0](v21, v20);
  _Unwind_Resume(a1);
}

void *CoreNLP::EmbeddingManager::EmbeddingManager(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  result[2] = 0;
  *result = v2;
  result[1] = result + 2;
  result[5] = 0;
  result[3] = 0;
  result[4] = result + 5;
  result[8] = 0;
  result[6] = 0;
  result[7] = result + 8;
  result[12] = 0;
  result[11] = 0;
  result[9] = 0;
  result[10] = result + 11;
  return result;
}

void CoreNLP::EmbeddingManager::supportedVersions(CoreNLP::EmbeddingManager *this@<X0>, const __CFLocale *a2@<X1>, const __CFString *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  if (kNLStringEmbeddingModelTypeCompressedWordEmbedding[0] == a3)
  {
    v5 = this + 8;
  }

  else if (kNLStringEmbeddingModelTypeContextualWordEmbedding[0] == a3)
  {
    v5 = this + 32;
  }

  else if (kNLStringEmbeddingModelTypeSentenceEmbedding[0] == a3)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = &v25;
  }

  LocaleLanguage = CoreNLP::getLocaleLanguage(a2, a2);
  v9 = *(v5 + 1);
  v8 = v5 + 8;
  v7 = v9;
  if (v9)
  {
    v10 = v8;
    do
    {
      if (*(v7 + 32) >= LocaleLanguage)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < LocaleLanguage));
    }

    while (v7);
    if (v10 != v8 && LocaleLanguage >= *(v10 + 8))
    {
      v11 = *(v10 + 5);
      v12 = v10 + 48;
      if (v11 != v10 + 48)
      {
        v13 = 0;
        do
        {
          v14 = a4[2];
          if (v13 >= v14)
          {
            v15 = *a4;
            v16 = v13 - *a4;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v19 = v14 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v20);
            }

            *(8 * v17) = *(v11 + 4);
            v13 = (8 * v17 + 8);
            memcpy(0, v15, v16);
            v21 = *a4;
            *a4 = 0;
            a4[1] = v13;
            a4[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v13 = *(v11 + 4);
            v13 += 8;
          }

          a4[1] = v13;
          v22 = *(v11 + 1);
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
              v23 = *(v11 + 2);
              v24 = *v23 == v11;
              v11 = v23;
            }

            while (!v24);
          }

          v11 = v23;
        }

        while (v23 != v12);
      }
    }
  }

  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(&v25, v26[0]);
}

void sub_19D1F4B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(&a10, a11);
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL37getModelVersionForContextualEmbeddingPK14__CFDictionary_block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v2[0] = kNLStringEmbeddingELMo[0];
  v2[1] = kNLStringEmbeddingBERTPlusGECTagger[0];
  v3[0] = &unk_1F10B4D70;
  v3[1] = &unk_1F10B4D88;
  v2[2] = kNLStringEmbeddingBERT[0];
  v2[3] = kNLStringEmbeddingMultilingualBERT[0];
  v3[2] = &unk_1F10B4DA0;
  v3[3] = &unk_1F10B4DB8;
  v2[4] = kNLStringEmbeddingBERTPlusGECS2S[0];
  v2[5] = kNLStringEmbeddingBERTPlusParser[0];
  v3[4] = &unk_1F10B4DD0;
  v3[5] = &unk_1F10B4DE8;
  v2[6] = kNLStringEmbeddingMultilingualBERTForSearch[0];
  v3[6] = &unk_1F10B4E00;
  result = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:{7), "copy"}];
  getModelVersionForContextualEmbedding(__CFDictionary const*)::mappingArchitectureToVersion = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL20requestedEnglishBERTP8NSStringlPb_block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3[0] = kNLStringEmbeddingBERTPlusGECTagger[0];
  v3[1] = kNLStringEmbeddingBERT[0];
  v3[2] = kNLStringEmbeddingBERTPlusGECS2S[0];
  v3[3] = kNLStringEmbeddingBERTPlusParser[0];
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 4)}];
  requestedEnglishBERT(NSString *,long,BOOL *)::englishBERT = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL25requestedMultilingualBERTP8NSStringl_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3[0] = kNLStringEmbeddingMultilingualBERT[0];
  v3[1] = kNLStringEmbeddingMultilingualBERTForSearch[0];
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 2)}];
  requestedMultilingualBERT(NSString *,long)::multilingualBERT = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *applesauce::CF::StringRef_proxy::StringRef_proxy(void *this, const applesauce::CF::StringRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return this;
}

_BYTE *applesauce::CF::details::pretty_print@<X0>(const __CFString *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    return applesauce::CF::convert_to<std::string,0>(this, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "(null)");
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void *CoreNLP::MontrealModel::MontrealModel(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  a1[1] = 0;
  if (CoreNLP::MontrealModel::MontrealModel(std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>> const&)::onceToken != -1)
  {
    CoreNLP::MontrealModel::MontrealModel();
  }

  if (CoreNLP::MontrealModel::MontrealModel(std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>> const&)::softLinked == 1 && *a2 != a2[1])
  {
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    std::string::basic_string[abi:ne200100]<0>(__dst, "input");
    std::string::basic_string[abi:ne200100]<0>(&__p, "MRLNeuralNetworkOptionInputNamesKey");
    p_p = &__p;
    v4 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v28, &__p.__r_.__value_.__l.__data_);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((v4 + 56), __dst, &__dst[24], 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    std::string::basic_string[abi:ne200100]<0>(__dst, "output");
    std::string::basic_string[abi:ne200100]<0>(&__p, "MRLNeuralNetworkOptionOutputNamesKey");
    p_p = &__p;
    v5 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v28, &__p.__r_.__value_.__l.__data_);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>((v5 + 56), __dst, &__dst[24], 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    p_p = applesauce::CF::details::make_CFDictionaryRef<std::string,std::vector<std::string>>(&v28);
    *a1 = CoreNLP::_MRLNeuralNetworkCreate(p_p, 0);
    v6 = *a2;
    if (*(*a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      __p.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v10 = CFStringCreateWithBytes(0, v8, size, 0x8000100u, 0);
      cf = v10;
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v10 = 0;
      cf = 0;
    }

    v12 = *a1;
    memcpy(__dst, (*a2 + 24), sizeof(__dst));
    (CoreNLP::_MRLNeuralNetworkAddNode)(v12, v10, __dst, 0);
    CoreNLP::_MRLNeuralNetworkConnectNodes(*a1, @"input", 0, cf, 1, 0);
    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v25 = cf;
    v14 = *a2;
    if ((0x2FD2FD2FD2FD2FD3 * ((a2[1] - *a2) >> 3)) >= 2)
    {
      v15 = 1;
      v16 = 1;
      while (1)
      {
        v17 = v14 + 728 * v15;
        v18 = *(v17 + 23);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        if (*v17)
        {
          break;
        }

        v13 = 0;
LABEL_34:
        v19 = cf;
        cf = v13;
        *__dst = v19;
        if (v19)
        {
          CFRelease(v19);
        }

        v20 = *a1;
        memcpy(__dst, (*a2 + 728 * v15 + 24), sizeof(__dst));
        (CoreNLP::_MRLNeuralNetworkAddNode)(v20, v13, __dst, 0);
        v21 = v25;
        CoreNLP::_MRLNeuralNetworkConnectNodes(*a1, v25, 9, v13, 1, 0);
        v25 = v13;
        if (v13)
        {
          CFRetain(v13);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        v15 = ++v16;
        v14 = *a2;
        if (0x2FD2FD2FD2FD2FD3 * ((a2[1] - *a2) >> 3) <= v16)
        {
          goto LABEL_43;
        }
      }

      v18 = *(v17 + 1);
      v17 = *v17;
LABEL_33:
      v13 = CFStringCreateWithBytes(0, v17, v18, 0x8000100u, 0);
      *__dst = v13;
      if (!v13)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not construct");
        __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      goto LABEL_34;
    }

LABEL_43:
    CoreNLP::_MRLNeuralNetworkConnectNodes(*a1, v13, 9, @"output", 0, 0);
    if (v13)
    {
      CFRelease(v13);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (p_p)
    {
      CFRelease(p_p);
    }

    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v28, v29[0]);
  }

  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

void *___ZN7CoreNLP13MontrealModelC2ERKNSt3__16vectorINS1_4pairINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE29MRLNeuralNetworkNodeParameterEENS7_ISB_EEEE_block_invoke(CoreNLP *a1)
{
  result = CoreNLP::softlinkMontreal(a1);
  CoreNLP::MontrealModel::MontrealModel(std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>> const&)::softLinked = result;
  return result;
}

void *CoreNLP::softlinkMontreal(CoreNLP *this)
{
  result = CoreNLP::loadMontreal(this);
  if (result)
  {
    v2 = result;
    CoreNLP::_MRLNeuralNetworkCreate = dlsym(result, "MRLNeuralNetworkCreate");
    CoreNLP::_MRLNeuralNetworkGetOutputDimension = dlsym(v2, "MRLNeuralNetworkGetOutputDimension");
    CoreNLP::_MRLNeuralNetworkSetInput = dlsym(v2, "MRLNeuralNetworkSetInput");
    CoreNLP::_MRLNeuralNetworkPredict = dlsym(v2, "MRLNeuralNetworkPredict");
    CoreNLP::_MRLNeuralNetworkClear = dlsym(v2, "MRLNeuralNetworkClear");
    CoreNLP::_MRLNeuralNetworkGetOutput = dlsym(v2, "MRLNeuralNetworkGetOutput");
    CoreNLP::_MRLNeuralNetworkTensorCreate = dlsym(v2, "MRLNeuralNetworkTensorCreate");
    CoreNLP::_MRLNeuralNetworkTensorAppendData = dlsym(v2, "MRLNeuralNetworkTensorAppendData");
    CoreNLP::_MRLNeuralNetworkSetInputTensor = dlsym(v2, "MRLNeuralNetworkSetInputTensor");
    CoreNLP::_MRLNeuralNetworkAddNode = dlsym(v2, "MRLNeuralNetworkAddNode");
    CoreNLP::_MRLNeuralNetworkConnectNodes = dlsym(v2, "MRLNeuralNetworkConnectNodes");
    CoreNLP::_MRLNeuralNetworkSave = dlsym(v2, "MRLNeuralNetworkSave");
    v3 = dlsym(v2, "MRLNeuralNetworkCopyModelData");
    result = 0;
    CoreNLP::_MRLNeuralNetworkCopyModelData = v3;
    if (CoreNLP::_MRLNeuralNetworkCreate)
    {
      if (CoreNLP::_MRLNeuralNetworkGetOutputDimension && CoreNLP::_MRLNeuralNetworkSetInput && CoreNLP::_MRLNeuralNetworkPredict && CoreNLP::_MRLNeuralNetworkClear && CoreNLP::_MRLNeuralNetworkGetOutput && CoreNLP::_MRLNeuralNetworkTensorCreate)
      {
        if (CoreNLP::_MRLNeuralNetworkTensorAppendData)
        {
          return (CoreNLP::_MRLNeuralNetworkSetInputTensor != 0);
        }
      }
    }
  }

  return result;
}

void *___ZN7CoreNLP13MontrealModelC2ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(CoreNLP *a1)
{
  result = CoreNLP::softlinkMontreal(a1);
  CoreNLP::MontrealModel::MontrealModel(std::string const&)::softLinked = result;
  return result;
}

CoreNLP::MontrealModel *CoreNLP::MontrealModel::MontrealModel(CoreNLP::MontrealModel *this, const __CFData *a2)
{
  *this = 0;
  *(this + 1) = 0;
  if (CoreNLP::MontrealModel::MontrealModel(__CFData const*)::onceToken != -1)
  {
    CoreNLP::MontrealModel::MontrealModel();
  }

  if (CoreNLP::MontrealModel::MontrealModel(__CFData const*)::softLinked == 1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"MRLNeuralNetworkOptionModelDataKey", a2);
    CFDictionaryAddValue(Mutable, @"kMRLNeuralNetworkOptionModelTypeKey", @"FlatModel");
    *this = CoreNLP::_MRLNeuralNetworkCreate(Mutable, 0);
    CFRelease(Mutable);
  }

  return this;
}

void *___ZN7CoreNLP13MontrealModelC2EPK8__CFData_block_invoke(CoreNLP *a1)
{
  result = CoreNLP::softlinkMontreal(a1);
  CoreNLP::MontrealModel::MontrealModel(__CFData const*)::softLinked = result;
  return result;
}

uint64_t CoreNLP::MontrealModel::setInput(CoreNLP::MontrealModel *this, uint64_t a2, uint64_t a3, void *a4, const __CFString *a5)
{
  result = *this;
  if (result)
  {
    return CoreNLP::_MRLNeuralNetworkSetInput(result, a5, a2, a3, a4, 0);
  }

  return result;
}

uint64_t CoreNLP::MontrealModel::copyInt8ModelData(void *a1, void *a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"modelInt8.dat"}];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v25[0] = @"MRLNeuralNetworkOptionModelURLKey";
    v25[1] = @"MRLNeuralNetworkOptionModelNameKey";
    v26[0] = v3;
    v26[1] = @"000-000";
    v26[2] = @"1";
    v25[2] = @"MRLNeuralNetworkOptionModelVersionKey";
    v25[3] = @"MRLNeuralNetworkOptionQuantizationParamsKey";
    v26[3] = [MEMORY[0x1E695DF90] dictionary];
    [v4 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, v25, 4)}];
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        if (*(v6 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, v6[4], v6[5]);
        }

        else
        {
          v8 = *(v6 + 2);
          *&v21.__r_.__value_.__l.__data_ = v8;
          v21.__r_.__value_.__r.__words[2] = v6[6];
        }

        v22 = *(v6 + 14);
        v24[0] = @"MRLNeuralNetworkOptionQuantizationSchemeNameLinearInt8";
        v23[0] = @"MRLNeuralNetworkOptionQuantizationSchemeNameKey";
        v23[1] = @"MRLNeuralNetworkOptionQuantizationSchemeLinearInt8RangeMinKey";
        *&v8 = -v22;
        v24[1] = [MEMORY[0x1E696AD98] numberWithFloat:*&v8];
        v23[2] = @"MRLNeuralNetworkOptionQuantizationSchemeLinearInt8RangeMaxKey";
        *&v9 = v22;
        v24[2] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
        v11 = [v4 objectForKeyedSubscript:@"MRLNeuralNetworkOptionQuantizationParamsKey"];
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v21;
        }

        else
        {
          v12 = v21.__r_.__value_.__r.__words[0];
        }

        [v11 setObject:v10 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v12)}];
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = v6[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v6 = v14;
      }

      while (v14 != v5);
    }

    CoreNLP::_MRLNeuralNetworkSave(*a1, v4, 0);
    v16 = CoreNLP::_MRLNeuralNetworkCreate(v4, 0);
    v17 = CoreNLP::_MRLNeuralNetworkCopyModelData(v16, 0);
    CFRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,std::vector<std::string>>(void *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::vector<std::string> const&>(&v11, v3 + 32, v3 + 7);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<std::string> const&>(v5, v3 + 32, v3 + 7);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_19D1F5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::vector<std::string> const&>(uint64_t a1, const UInt8 *a2, __int128 **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<std::string> const&>((16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1F60EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<std::string> const&>(CFStringRef *a1, const UInt8 *a2, __int128 **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a1[1] = applesauce::CF::details::make_CFArrayRef<std::string>(a3);
  return a1;
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,int const&>(uint64_t a1, const UInt8 *a2, int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,int const&>((16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1F62E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t NLTokenizerSetLocale(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

uint64_t NLTokenizerSetLocaleConstraints(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

void *NLTokenizerSetStringType(void *result, int a2)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return CoreNLP::Tagger::setStringType(result, a2);
    }
  }

  return result;
}

uint64_t NLTokenizerSetOptions(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 32))();
    }
  }

  return result;
}

uint64_t NLTokenizerEnumerateDerivedSubTokensOfToken(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 96))(result, a2, 0, a3);
    }
  }

  return result;
}

uint64_t NLTokenizerEnumeratePossibleTokenSequences(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 72))();
    }
  }

  return result;
}

uint64_t NLTokenizerEnumerateTokensOfCurrentTokenSequence(uint64_t *a1, uint64_t a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return (*(*v2 + 80))(v2, 0, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t NLTokenizerCopyTranscriptionOfCurrentToken(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 104))();
  }

  else
  {
    return 0;
  }
}

uint64_t NLTokenizerGetPartOfSpeechOfCurrentToken(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 120))();
  }

  else
  {
    return 15;
  }
}

void __NLTaggerCopyAvailableTagSchemes_block_invoke(uint64_t a1, CoreNLP::Resource **a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"Tagging", 0) == kCFCompareEqualTo)
  {
    v5 = CoreNLP::Resource::name(*a2);
    if (!CFStringHasPrefix(v5, @"pos") || (v6 = a1 + 32, v7 = *(*(*(a1 + 32) + 8) + 24), v16.length = CFArrayGetCount(v7), v8 = kNLTagSchemeLexicalClass, v16.location = 0, CFArrayContainsValue(v7, v16, kNLTagSchemeLexicalClass[0])))
    {
      v9 = CoreNLP::Resource::name(*a2);
      if (!CFStringHasPrefix(v9, @"ner"))
      {
        return;
      }

      v11 = *(a1 + 32);
      v10 = a1 + 32;
      v12 = *(*(v11 + 8) + 24);
      v17.length = CFArrayGetCount(v12);
      v8 = kNLTagSchemeNamedEntity;
      v17.location = 0;
      if (CFArrayContainsValue(v12, v17, kNLTagSchemeNamedEntity[0]))
      {
        return;
      }

      v6 = v10;
    }

    v13 = *(*(*v6 + 8) + 24);
    v14 = *v8;

    CFArrayAppendValue(v13, v14);
  }
}

void NLTaggerSetStringEditedInRange(CoreNLP *a1, void *a2, CFIndex a3)
{
  if (a1)
  {
    v5 = CoreNLP::unwrapGazetteer(a1, a2);
    v6.location = a2;
    v6.length = a3;

    CoreNLP::TaggerManager::setStringEditedInRange(v5, v6);
  }
}

__CFDictionary *NLTaggerCopyHypothesesForCurrentToken(__CFDictionary *result, __CFString *a2)
{
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::copyTagAndProbabilityForCurrentToken(v3, a2);
  }

  return result;
}

__CFDictionary *NLTaggerCopyHypothesesAtIndex(__CFDictionary *result, void *a2, CFIndex a3, const __CFString *a4, uint64_t a5)
{
  if (result)
  {
    v8 = a2;
    v9 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::copyTagAndProbabilityAtIndex(v9, v8, a3, a4, a5);
  }

  return result;
}

void NLTaggerEnumerateSubTokens(CoreNLP *a1, void *a2)
{
  if (a1)
  {
    v3 = CoreNLP::unwrapGazetteer(a1, a2);
    v4 = *a2;
    v5 = a2[2];
    CoreNLP::SubWordTagger::~SubWordTagger(v3);
  }
}

__CFDictionary *NLTaggerCopyLanguageMapAtIndex(__CFDictionary *result, void *a2, CFIndex a3)
{
  if (result)
  {
    v4 = a2;
    v5 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::copyLanguageMapAtIndex(v5, v4, a3);
  }

  return result;
}

CoreNLP *NLTaggerSetGazetteers(CoreNLP *result, void *a2, const __CFString *a3)
{
  if (result)
  {
    v5 = CoreNLP::unwrapGazetteer(result, a2);

    return CoreNLP::TaggerManager::setGazetteers(v5, a2, a3);
  }

  return result;
}

void std::__shared_ptr_pointer<CoreNLP::TaggerManager *,std::shared_ptr<CoreNLP::TaggerManager>::__shared_ptr_default_delete<CoreNLP::TaggerManager,CoreNLP::TaggerManager>,std::allocator<CoreNLP::TaggerManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::__shared_ptr_pointer<CoreNLP::TaggerManager *,std::shared_ptr<CoreNLP::TaggerManager>::__shared_ptr_default_delete<CoreNLP::TaggerManager,CoreNLP::TaggerManager>,std::allocator<CoreNLP::TaggerManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void CoreNLP::chunkNounPhrases(CoreNLP *this@<X0>, uint64_t *a2@<X8>)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  std::vector<unsigned long>::vector[abi:ne200100](&v79, 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  v72 = a2;
  v6 = *v5;
  v7 = *this;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*v5 - *this) >> 3);
  v9 = this;
  v77 = this;
  if (v8 >= 2)
  {
    v10 = 1;
    v11 = 1;
    while (1)
    {
      v12 = *(v9 + 6);
      v13 = *(v9 + 12);
      v14 = *(v12 + 4 * v11);
      if (v14 == 12 || v14 == 9)
      {
        *&v79[8 * v11] = v10++;
      }

      if (v14 == 11)
      {
        if (*(v13 + 4 * *(*(v9 + 9) + 4 * v11)) == 2 || *(v13 + 4 * v11) == 46)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = *(v13 + 4 * v11);
        if (v14 != 8 || v16 == 11)
        {
          if (v14 != 15 || v16 == 11)
          {
            goto LABEL_23;
          }

          {
            std::string::basic_string[abi:ne200100]<0>(__p, "$");
            std::string::basic_string[abi:ne200100]<0>(&v83[1], "%");
            std::string::basic_string[abi:ne200100]<0>(&v84[16], "£");
            std::string::basic_string[abi:ne200100]<0>(v85, "°");
            std::string::basic_string[abi:ne200100]<0>(v86, "€");
            std::string::basic_string[abi:ne200100]<0>(v87, "n°");
            std::string::basic_string[abi:ne200100]<0>(v88, "kw");
            std::string::basic_string[abi:ne200100]<0>(v89, "kg");
            std::string::basic_string[abi:ne200100]<0>(v90, "g");
            std::string::basic_string[abi:ne200100]<0>(v91, "km");
            std::string::basic_string[abi:ne200100]<0>(v92, "cm");
            std::string::basic_string[abi:ne200100]<0>(v93, "mm");
            std::string::basic_string[abi:ne200100]<0>(v94, "m");
            std::string::basic_string[abi:ne200100]<0>(v95, "m²");
            std::string::basic_string[abi:ne200100]<0>(v96, "cm²");
            std::string::basic_string[abi:ne200100]<0>(v97, "mm²");
            std::string::basic_string[abi:ne200100]<0>(v98, "km²");
            v19 = 51;
            do
            {
              if (SHIBYTE(__p[v19 - 1]) < 0)
              {
                operator delete(v81.__r_.__value_.__r.__words[v19 + 1]);
              }

              v19 -= 3;
            }

            while (v19 * 8);
            v9 = this;
          }

          {
            v14 = *(v12 + 4 * v11);
LABEL_23:
            if (v14 != 1)
            {
              goto LABEL_29;
            }
          }
        }
      }

      *&v79[8 * v11] = v10++;
LABEL_29:
      ++v11;
      v7 = *v9;
      v6 = *(v9 + 1);
      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((v6 - *v9) >> 3))
      {
        goto LABEL_38;
      }
    }
  }

  do
  {
LABEL_38:
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) < 2)
    {
      break;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -2;
    v24 = 2;
    v25 = 16;
    v26 = 8;
    v27 = 1;
    do
    {
      v28 = *(*(v9 + 9) + 4 * v27);
      if (!v28)
      {
        goto LABEL_75;
      }

      v29 = *(v9 + 6);
      *v78 = *(v9 + 12);
      v30 = *&v79[8 * v28];
      if (!v30 || *&v79[8 * v27] == v30)
      {
        goto LABEL_43;
      }

      v35 = *(v29 + 4 * v27);
      LODWORD(v81.__r_.__value_.__l.__data_) = *(*v78 + 4 * v27);
      {
        v76 = v22;
        *v74 = v29;
        v29 = *v74;
        v22 = v76;
        if (v54)
        {
          *&v84[16] = 52;
          *__p = xmmword_19D27ED08;
          *v83 = unk_19D27ED18;
          *v84 = xmmword_19D27ED28;
          v22 = v76;
          v29 = *v74;
        }
      }

      if (v35 == 11 || LODWORD(v81.__r_.__value_.__l.__data_) != 46)
      {
        *v73 = v29;
        v75 = v22;
        v9 = v77;
        {
          if (v27 + 1 >= (v80 - v79) >> 3)
          {
LABEL_83:
            v51 = v27 - 1;
            if (v27 == 1)
            {
              v22 = v75;
              goto LABEL_75;
            }

            while (*&v79[8 * v51] != *&v79[8 * *(*(v77 + 9) + 4 * v27)])
            {
              v52 = *(*(v77 + 12) + 4 * v51);
              if (v52 == 41 || v52 == 37)
              {
                if (--v51)
                {
                  continue;
                }
              }

              goto LABEL_95;
            }
          }

          else
          {
            v47 = ((v80 - v79) >> 3) + v23;
            v48 = (*(v77 + 12) + v26);
            v49 = &v79[v25];
            while (1)
            {
              v50 = *v49++;
              if (v50 == *&v79[8 * *(*(v77 + 9) + 4 * v27)])
              {
                break;
              }

              if (*v48 == 41 || *v48 == 37)
              {
                ++v48;
                if (--v47)
                {
                  continue;
                }
              }

              goto LABEL_83;
            }
          }

          LODWORD(v81.__r_.__value_.__l.__data_) = *(*v78 + 4 * v27);
          {
            *__p = xmmword_19D27ED3C;
            *v83 = unk_19D27ED4C;
            *v84 = xmmword_19D27ED5C;
            *&v84[12] = *(&xmmword_19D27ED5C + 12);
            v9 = v77;
          }

          {
            std::string::basic_string[abi:ne200100]<0>(__p, "-");
            std::string::basic_string[abi:ne200100]<0>(&v83[1], "/");
            std::string::basic_string[abi:ne200100]<0>(&v84[16], "'");
            std::string::basic_string[abi:ne200100]<0>(v85, "");
            std::string::basic_string[abi:ne200100]<0>(v86, "(");
            std::string::basic_string[abi:ne200100]<0>(v87, ")");
            for (i = 0; i != -144; i -= 24)
            {
              if (v87[i + 23] < 0)
              {
                operator delete(*&v87[i]);
              }
            }

            v9 = v77;
          }

          {
LABEL_95:
            v22 = v75;
            v29 = *v73;
          }

          else
          {
            v22 = v75;
            v29 = *v73;
            if (v53)
            {
              *&v79[8 * v27] = *&v79[8 * v28];
              v22 = 1;
            }
          }

LABEL_43:
          if (v27 >= 2 && v27 < 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 1) - *v9) >> 3) - 1)
          {
            v31 = *(*v78 + 4 * v27);
            if (v31 == 61 || v31 == 12 || v31 == 11 && *(v29 + 4 * v27) == 10)
            {
              v32 = &v79[8 * v27];
              v33 = *(v32 - 1);
              if (v33 == *(v32 + 1) && v33 && *v32 != v33)
              {
                *v32 = v33;
                v22 = 1;
              }
            }
          }

          goto LABEL_75;
        }
      }

      else
      {
        v9 = v77;
      }

      v36 = v79;
      v37 = *&v79[8 * v28];
      *&v79[8 * v27] = v37;
      if (v27 < v28)
      {
        v38 = vdupq_n_s64(~v21 + v28 - 1);
        v39 = (v20 + v28) & 0xFFFFFFFFFFFFFFFELL;
        v40 = &v36[v25];
        v41 = 1;
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v41 - 1), xmmword_19D27D560)));
          if (v42.i8[0])
          {
            *(v40 - 1) = v37;
          }

          if (v42.i8[4])
          {
            *v40 = v37;
          }

          v41 += 2;
          v40 += 16;
          v39 -= 2;
        }

        while (v39);
      }

      if (v27 > v28)
      {
        v43 = 0;
        v44 = vdupq_n_s64(~v28 + v27);
        v45 = &v36[8 * v28];
        do
        {
          v46 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(vdupq_n_s64(v43), xmmword_19D27D560)));
          if (v46.i8[0])
          {
            *&v45[8 * v43] = v37;
          }

          if (v46.i8[4])
          {
            *&v45[8 * v43 + 8] = v37;
          }

          v43 += 2;
        }

        while (((v24 - v28) & 0xFFFFFFFFFFFFFFFELL) != v43);
      }

      v22 = 1;
LABEL_75:
      ++v27;
      v7 = *v9;
      v6 = *(v9 + 1);
      ++v21;
      --v23;
      v26 += 4;
      v25 += 8;
      --v20;
      ++v24;
    }

    while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v6 - *v9) >> 3));
  }

  while ((v22 & 1) != 0);
  *v72 = 0;
  v72[1] = 0;
  v72[2] = 0;
  v56 = v79;
  v57 = v80;
  if ((v80 - v79) >= 9)
  {
    v58 = 1;
    do
    {
      v59 = *&v56[8 * v58];
      if (v59)
      {
        v60 = *v9 + 24 * v58;
        if (*(v60 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, *v60, *(v60 + 8));
          v56 = v79;
          v57 = v80;
        }

        else
        {
          v61 = *v60;
          v81.__r_.__value_.__r.__words[2] = *(v60 + 16);
          *&v81.__r_.__value_.__l.__data_ = v61;
        }

        v62 = v58 + 1;
        if (v58 + 1 < ((v57 - v56) >> 3))
        {
          v63 = 24 * v58 + 24;
          do
          {
            if (*&v56[8 * v62] != v59)
            {
              break;
            }

            v64 = *v9;
            std::operator+<char>();
            if (SHIBYTE(v83[0]) >= 0)
            {
              v65 = __p;
            }

            else
            {
              v65 = __p[0];
            }

            if (SHIBYTE(v83[0]) >= 0)
            {
              v66 = HIBYTE(v83[0]);
            }

            else
            {
              v66 = __p[1];
            }

            std::string::append(&v81, v65, v66);
            if (SHIBYTE(v83[0]) < 0)
            {
              operator delete(__p[0]);
            }

            ++v62;
            v56 = v79;
            v63 += 24;
          }

          while (v62 < (v80 - v79) >> 3);
        }

        __p[0] = v58;
        __p[1] = (v62 - v58);
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v83, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
        }

        else
        {
          *v83 = *&v81.__r_.__value_.__l.__data_;
          *v84 = *(&v81.__r_.__value_.__l + 2);
        }

        v67 = v72[1];
        if (v67 >= v72[2])
        {
          v69 = std::vector<CoreNLP::NounPhrase>::__emplace_back_slow_path<CoreNLP::NounPhrase>(v72, __p);
          v70 = v84[7];
          v72[1] = v69;
          if (v70 < 0)
          {
            operator delete(v83[0]);
          }
        }

        else
        {
          *v67 = *__p;
          v68 = *v83;
          *(v67 + 32) = *v84;
          *(v67 + 16) = v68;
          v72[1] = v67 + 40;
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        v56 = v79;
        v57 = v80;
      }

      else
      {
        v62 = v58 + 1;
      }

      v58 = v62;
    }

    while (v62 < (v57 - v56) >> 3);
  }

  if (v56)
  {
    v80 = v56;
    operator delete(v56);
  }

  v71 = *MEMORY[0x1E69E9840];
}

void sub_19D1F73D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v48 = &STACK[0x277];
  v49 = -408;
  v50 = &STACK[0x277];
  while (1)
  {
    v51 = *v50;
    v50 -= 3;
    if (v51 < 0)
    {
      operator delete(*(v48 - 23));
    }

    v48 = v50;
    v49 += 24;
    if (!v49)
    {
      if (__p)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_19D1F7814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_19D1F798C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

uint64_t std::unordered_set<NLDepLabel>::unordered_set(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<NLDepLabel,std::hash<NLDepLabel>,std::equal_to<NLDepLabel>,std::allocator<NLDepLabel>>::__emplace_unique_key_args<NLDepLabel,NLDepLabel const&>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<NLDepLabel,std::hash<NLDepLabel>,std::equal_to<NLDepLabel>,std::allocator<NLDepLabel>>::__emplace_unique_key_args<NLDepLabel,NLDepLabel const&>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<NLDepLabel,std::hash<NLDepLabel>,std::equal_to<NLDepLabel>,std::allocator<NLDepLabel>>::find<NLDepLabel>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
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
      if (*(result + 4) == v3)
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

uint64_t std::vector<CoreNLP::NounPhrase>::__emplace_back_slow_path<CoreNLP::NounPhrase>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NounPhrase>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CoreNLP::NounPhrase>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1F8488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CoreNLP::NounPhrase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NounPhrase>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CoreNLP::NounPhrase>,CoreNLP::NounPhrase*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t std::__split_buffer<CoreNLP::NounPhrase>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CoreNLP::NounPhrase>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CoreNLP::NounPhrase>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<CoreNLP::NounPhrase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CoreNLP::NounPhrase>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<CoreNLP::NounPhrase>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

double CoreNLP::ICUTextBreak::reset(CoreNLP::ICUTextBreak *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
    v3 = *(this + 9);
    *(this + 8) = 0;
    *(this + 9) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  result = NAN;
  *(this + 1) = xmmword_19D27D570;
  *(this + 80) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = -1;
  return result;
}

void *CoreNLP::_CFInit_ModelTrainerWrapper(void *this, const void *a2)
{
  this[3] = 0;
  this[4] = 0;
  this[2] = &unk_1F10AECD0;
  return this;
}

uint64_t CoreNLP::createModelTrainerWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62CA68 = 0;
    unk_1EE62CA78 = 0u;
    unk_1EE62CA88 = 0u;
    CoreNLP::_CFGetTypeID_ModelTrainerWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void CoreNLP::ModelTrainerWrapper::~ModelTrainerWrapper(CoreNLP::ModelTrainerWrapper *this)
{
  *this = &unk_1F10AECD0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AECD0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::SentimentModel::CreateModel(int a1@<W0>, void *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = CoreNLP::copyLocaleForLanguageID(a1);
  v26[1] = v3;
  CoreNLP::Resource::getAssetResource(v3, @"Sentiment", @"sentiment.bundle", 0, v26);
  v24 = 0uLL;
  v25 = 0;
  if (v26[0] && CoreNLP::Resource::exists(v26[0], v4))
  {
    CoreNLP::Resource::path(v26[0], v5, &v21);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v25 = *&v21.st_uid;
    v24 = *&v21.st_dev;
    if ((v21.st_gid & 0x80000000) == 0)
    {
      st_gid_high = HIBYTE(v21.st_gid);
    }

    else
    {
      st_gid_high = *(&v24 + 1);
    }

    v7 = &v21;
    std::string::basic_string[abi:ne200100](&v21, st_gid_high + 1);
    if ((v21.st_gid & 0x80000000) != 0)
    {
      v7 = *&v21.st_dev;
    }

    if (st_gid_high)
    {
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v7, v8, st_gid_high);
    }

    *(&v7->st_dev + st_gid_high) = 47;
    v9 = std::string::append(&v21, "sentiment.nlmodel");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v23 = v9->__r_.__value_.__r.__words[2];
    v22 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.st_gid) < 0)
    {
      operator delete(*&v21.st_dev);
    }

    if (v23 >= 0)
    {
      v11 = &v22;
    }

    else
    {
      v11 = v22;
    }

    if (stat(v11, &v21))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "output1");
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v28, &v29, 1uLL);
      CoreNLP::CNNModel::CreateCNNModel(1, &v18);
      v27 = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      operator new();
    }

    if (v25 >= 0)
    {
      v12 = HIBYTE(v25);
    }

    else
    {
      v12 = *(&v24 + 1);
    }

    v13 = &v28;
    std::string::basic_string[abi:ne200100](&v28, v12 + 1);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v28.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if (v25 >= 0)
      {
        v14 = &v24;
      }

      else
      {
        v14 = v24;
      }

      memmove(v13, v14, v12);
    }

    *(&v13->__r_.__value_.__l.__data_ + v12) = 47;
    v15 = std::string::append(&v28, "char_id.json");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v20 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *a2 = 0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](v26);
  if (v3)
  {
    CFRelease(v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19D1F8DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x19EAF8CA0](v23, 0x10B3C40686E1955);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 137) < 0)
  {
    operator delete(*(v24 - 160));
  }

  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100]((v24 - 104));
  nlp::CFScopedPtr<__CFLocale const*>::reset((v24 - 96), 0);
  _Unwind_Resume(a1);
}

void *CoreNLP::SentimentModel::SentimentModel(void *a1, uint64_t *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  CoreNLP::AbstractModel::AbstractModel(a1, &v6);
  std::__tree<std::string>::destroy(&v6, v7[0]);
  *a1 = &unk_1F10AED30;
  v4 = *a2;
  *a2 = 0;
  a1[9] = v4;
  a1[10] = 0;
  a1[13] = 0;
  a1[12] = 0;
  a1[11] = a1 + 12;
  return a1;
}

void CoreNLP::SentimentModel::SentimentModel(void *a1)
{
  v3[71] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  CoreNLP::AbstractModel::AbstractModel(a1, &v2);
  std::__tree<std::string>::destroy(&v2, v3[0]);
  *a1 = &unk_1F10AED30;
  a1[9] = 0;
  operator new();
}

void sub_19D1F93E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  if (a2)
  {
    __cxa_free_exception(v56);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x1E69E54D8]);
    MEMORY[0x19EAF8C10](&a36);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x19D1F92C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D1F9640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v15);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  if (a14)
  {
    MEMORY[0x19EAF8C70](a14, v14);
  }

  _Unwind_Resume(a1);
}

CoreNLP::MontrealModel **std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](CoreNLP::MontrealModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreNLP::MontrealModel::~MontrealModel(v2);
    MEMORY[0x19EAF8CA0]();
  }

  return a1;
}

void CoreNLP::SentimentModel::vinference(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "PAD");
    v6 = std::__tree<std::string>::find<std::string>(a1 + 88, &__p.__begin_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "UNK");
    v7 = std::__tree<std::string>::find<std::string>(a1 + 88, &__p.__begin_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    v8 = a1 + 96;
    v9 = 0.0;
    v10 = 0.0;
    if (a1 + 96 != v6)
    {
      v10 = *(v6 + 56);
    }

    v32 = v10;
    if (v8 != v7)
    {
      v9 = *(v7 + 56);
    }

    std::vector<float>::vector[abi:ne200100](&__p, 0x190uLL);
    v11 = *a2;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v34, *v11, v11[1], 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 3));
    v12 = 0x5555555555555555 * ((*(*a2 + 8) - **a2) >> 3);
    if (v12 <= 0xFFFFFFFFFFFFFE6FLL)
    {
      begin = __p.__begin_;
    }

    else
    {
      v13 = 0;
      v14 = v12 + 400;
      do
      {
        v15 = std::__tree<std::string>::find<std::string>(a1 + 88, (**a2 + v13));
        v16 = v9;
        if (v8 != v15)
        {
          v16 = *(v15 + 56);
        }

        begin = __p.__begin_;
        *&__p.__begin_[v14++] = v16;
        v13 += 24;
      }

      while (v14 != 400);
    }

    CoreNLP::MontrealModel::setInput(*(a1 + 80), 1, 1, begin, 0);
    CoreNLP::MontrealModel::predict(*(a1 + 80));
    v25 = CoreNLP::MontrealModel::output(*(a1 + 80), 0);
    if (v25)
    {
      v24 = *(v25 + 4);
    }

    else
    {
      v24 = 0.0;
    }

    cf = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&cf);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    goto LABEL_30;
  }

  v18 = *(a1 + 72);
  memset(v31, 0, sizeof(v31));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v31, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v19 = CoreNLP::CNNModel::featureRepresentation(v18, v31);
  v34 = v19;
  __p.__begin_ = v31;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  Value = CFDictionaryGetValue(v19, @"output1");
  v21 = Value;
  if (!Value)
  {
    cf = 0;
    goto LABEL_70;
  }

  CFRetain(Value);
  cf = v21;
  v22 = CFGetTypeID(v21);
  if (v22 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
LABEL_70:
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::vector<float>,0>(cf, &__p);
  v23 = *(__p.__begin_ + 1);
  __p.__end_ = __p.__begin_;
  operator delete(__p.__begin_);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v24 = v23;
LABEL_30:
  if (v24 < -0.05 || v24 >= 0.05)
  {
    if (v24 < 0.05 || v24 >= 0.15)
    {
      if (v24 < 0.15 || v24 >= 0.25)
      {
        if (v24 < 0.25 || v24 >= 0.35)
        {
          if (v24 < 0.35 || v24 >= 0.45)
          {
            if (v24 < 0.45 || v24 >= 0.55)
            {
              if (v24 < 0.55 || v24 >= 0.65)
              {
                if (v24 < 0.65 || v24 >= 0.75)
                {
                  if (v24 < 0.75 || v24 >= 0.85)
                  {
                    if (v24 < 0.85 || v24 >= 0.95)
                    {
                      v27 = v24 >= 1.05 || v24 < 0.95;
                      v26 = 211;
                      if (v27)
                      {
                        v26 = 0;
                      }
                    }

                    else
                    {
                      v26 = 210;
                    }
                  }

                  else
                  {
                    v26 = 209;
                  }
                }

                else
                {
                  v26 = 208;
                }
              }

              else
              {
                v26 = 207;
              }
            }

            else
            {
              v26 = 206;
            }
          }

          else
          {
            v26 = 205;
          }
        }

        else
        {
          v26 = 204;
        }
      }

      else
      {
        v26 = 203;
      }
    }

    else
    {
      v26 = 202;
    }
  }

  else
  {
    v26 = 201;
  }

  v34 = v26;
  v35 = 0x3FF0000000000000;
  memset(&__p, 0, sizeof(__p));
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double> const*,std::pair<int,double> const*>(&__p, &v34, &v36, 1uLL);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a3, &__p, &v38, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_19D1F9C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a13);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a14, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::SentimentModel::~SentimentModel(CoreNLP::SentimentModel *this)
{
  *this = &unk_1F10AED30;
  std::__tree<std::string>::destroy(this + 88, *(this + 12));
  std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](this + 10);
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::AbstractModel::~AbstractModel(this);
}

{
  *this = &unk_1F10AED30;
  std::__tree<std::string>::destroy(this + 88, *(this + 12));
  std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](this + 10);
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::AbstractModel::~AbstractModel(this);

  JUMPOUT(0x19EAF8CA0);
}

void applesauce::CF::details::parse_object<minijson::const_buffer_context>(minijson::detail::buffer_context_base *a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  minijson::parse_object<minijson::const_buffer_context,applesauce::CF::TypeRef applesauce::CF::details::parse_object<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(char const*,minijson::value)#1}>(a1, &v3, a1);
  *a2 = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(&v3);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(&v3, v4[0]);
}

uint64_t minijson::parse_object<minijson::const_buffer_context,applesauce::CF::TypeRef applesauce::CF::details::parse_object<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(char const*,minijson::value)#1}>(minijson::detail::buffer_context_base *this, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  v4 = *(this + 1);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v27 = *(this + 5);
    v18 = v27 != 0;
    v28 = v27 - 1;
    if (!v18)
    {
      v28 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v28;
    v20 = 12;
LABEL_43:
    *(exception + 4) = v20;
  }

  v32 = 0;
  if (*this <= 2u)
  {
    v5 = 8 * (*this & 3);
    HIBYTE(v32) = 0x5B7B00u >> v5;
    LOBYTE(v32) = 1u >> v5;
  }

  v6 = 0;
  *this = 0;
  v7 = MEMORY[0x1E69E9830];
  v8 = "";
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          while (1)
          {
            if (*(this + 1) != v4)
            {
              exception = __cxa_allocate_exception(0x18uLL);
              v17 = *(this + 5);
              v18 = v17 != 0;
              v19 = v17 - 1;
              if (!v18)
              {
                v19 = 0;
              }

              *exception = &unk_1F10AEDD0;
              exception[1] = v19;
              v20 = 11;
              goto LABEL_43;
            }

            if (v32)
            {
              v9 = *(this + 5);
              if (v9 >= *(this + 4))
              {
                v11 = 0;
              }

              else
              {
                v10 = *(this + 2);
                *(this + 5) = v9 + 1;
                v11 = *(v10 + v9);
              }

              HIBYTE(v32) = v11;
            }

            else
            {
              v11 = HIBYTE(v32);
            }

            LOBYTE(v32) = 1;
            if ((v11 & 0x80) == 0)
            {
              break;
            }

            result = __maskrune(v11, 0x4000uLL);
            if (!result)
            {
              goto LABEL_16;
            }
          }

          result = *(v7 + 4 * v11 + 60) & 0x4000;
        }

        while (result);
LABEL_16:
        if (v6 > 2)
        {
          break;
        }

        if (v6)
        {
          if (v6 == 1)
          {
            v13 = HIBYTE(v32);
            if (HIBYTE(v32) == 125)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v13 = HIBYTE(v32);
          }

          if (v13 != 34)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            v29 = *(this + 5);
            v18 = v29 != 0;
            v30 = v29 - 1;
            if (!v18)
            {
              v30 = 0;
            }

            *exception = &unk_1F10AEDD0;
            exception[1] = v30;
            v20 = 1;
            goto LABEL_43;
          }

          *(this + 7) = *(this + 3) + *(this + 6);
          minijson::detail::read_quoted_string<minijson::const_buffer_context>(this, 1);
          v8 = *(this + 7);
          v6 = 3;
LABEL_35:
          if (!HIBYTE(v32))
          {
            v14 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v14, "This line should never be reached, please file a bug report");
            __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        else
        {
          if (HIBYTE(v32) != 123)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            v23 = *(this + 5);
            v18 = v23 != 0;
            v24 = v23 - 1;
            if (!v18)
            {
              v24 = 0;
            }

            *exception = &unk_1F10AEDD0;
            exception[1] = v24;
            v20 = 8;
            goto LABEL_43;
          }

          v6 = 1;
        }
      }

      if (v6 != 3)
      {
        break;
      }

      if (HIBYTE(v32) != 58)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v21 = *(this + 5);
        v18 = v21 != 0;
        v22 = v21 - 1;
        if (!v18)
        {
          v22 = 0;
        }

        *exception = &unk_1F10AEDD0;
        exception[1] = v22;
        v20 = 9;
        goto LABEL_43;
      }

      v6 = 4;
    }

    if (v6 != 5)
    {
      minijson::detail::parse_value_helper<minijson::const_buffer_context>(this, &v32 + 1, &v32, v31);
      applesauce::CF::details::parse_object<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(char const*,minijson::value)#1}::operator()(v33, v8, v31);
      v6 = 5;
      goto LABEL_35;
    }

    if (HIBYTE(v32) != 44)
    {
      break;
    }

    v6 = 2;
  }

  if (HIBYTE(v32) != 125)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v25 = *(this + 5);
    v18 = v25 != 0;
    v26 = v25 - 1;
    if (!v18)
    {
      v26 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v26;
    v20 = 10;
    goto LABEL_43;
  }

LABEL_37:
  v15 = *(this + 1);
  if (v15)
  {
    *(this + 1) = v15 - 1;
  }

  return result;
}

void *minijson::detail::read_quoted_string<minijson::const_buffer_context>(minijson::detail::buffer_context_base *this, int a2)
{
  v2 = a2;
  v43 = 0;
  v42 = 0;
  v4 = *(this + 5);
  if (v4 >= *(this + 4))
  {
    v7 = 0;
LABEL_65:
    exception = __cxa_allocate_exception(0x18uLL);
    v23 = *(this + 5);
    v24 = v23 != 0;
    v25 = v23 - 1;
    if (!v24)
    {
      v25 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v25;
    if (v7 & 1) != 0 || (v2)
    {
      v26 = 5;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_73;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E9830];
  v9 = a2;
  while (1)
  {
    v10 = *(this + 2);
    *(this + 5) = v4 + 1;
    v11 = *(v10 + v4);
    if (!v11)
    {
      goto LABEL_65;
    }

    if (v9 <= 1)
    {
      break;
    }

    if (v9 == 2)
    {
      if (v11 <= 101)
      {
        if (v11 > 91)
        {
          if (v11 == 92)
          {
            v17 = this;
            v18 = 92;
          }

          else
          {
            if (v11 != 98)
            {
              goto LABEL_84;
            }

            v17 = this;
            v18 = 8;
          }
        }

        else if (v11 == 34)
        {
          v17 = this;
          v18 = 34;
        }

        else
        {
          if (v11 != 47)
          {
            goto LABEL_84;
          }

          v17 = this;
          v18 = 47;
        }

        goto LABEL_50;
      }

      if (v11 > 113)
      {
        switch(v11)
        {
          case 'r':
            v17 = this;
            v18 = 13;
            break;
          case 't':
            v17 = this;
            v18 = 9;
            break;
          case 'u':
            v9 = 3;
            goto LABEL_64;
          default:
            goto LABEL_84;
        }

        goto LABEL_50;
      }

      if (v11 == 102)
      {
        v17 = this;
        v18 = 12;
        goto LABEL_50;
      }

      if (v11 == 110)
      {
        v17 = this;
        v18 = 10;
LABEL_50:
        minijson::detail::buffer_context_base::write(v17, v18);
        goto LABEL_63;
      }

LABEL_84:
      exception = __cxa_allocate_exception(0x18uLL);
      v37 = *(this + 5);
      v24 = v37 != 0;
      v38 = v37 - 1;
      if (!v24)
      {
        v38 = 0;
      }

      *exception = &unk_1F10AEDD0;
      exception[1] = v38;
      v26 = 3;
LABEL_73:
      *(exception + 4) = v26;
      goto LABEL_74;
    }

    *(&v42 + v5) = v11;
    if (v5 == 3)
    {
      for (i = 0; i != 4; ++i)
      {
        v13 = *(&v42 + i);
        if (v13 < 0 || (*(v8 + 4 * v13 + 60) & 0x10000) == 0)
        {
          v28 = __cxa_allocate_exception(1uLL);
        }
      }

      v14 = minijson::detail::parse_long(&v42, 0x10);
      if (!(v14 | v6))
      {
        v34 = __cxa_allocate_exception(0x18uLL);
        v35 = *(this + 5);
        v24 = v35 != 0;
        v36 = v35 - 1;
        if (!v24)
        {
          v36 = 0;
        }

        *v34 = &unk_1F10AEDD0;
        v34[1] = v36;
        *(v34 + 4) = 13;
      }

      if (v6)
      {
        v15 = minijson::detail::utf16_to_utf8(v6, v14);
        v16 = 0;
        v41 = v15;
        do
        {
          if (v16 && !*(&v41 + v16))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v41 + v16++));
        }

        while (v16 != 4);
        goto LABEL_61;
      }

      if (v14 >> 10 != 54)
      {
        if (((v14 + 0x2000) >> 11) > 0x1Eu)
        {
          v39 = __cxa_allocate_exception(1uLL);
        }

        v19 = v14;
        if (v14 >= 0x80u)
        {
          if (v14 > 0x7FFu)
          {
            v19 = (v14 >> 12) | 0xE0;
            v21 = (v14 >> 6) & 0x3F | 0x80;
            v20 = ((v14 & 0x3F) << 16) | 0x800000;
          }

          else
          {
            v20 = 0;
            v19 = (v14 >> 6) | 0xC0;
            v21 = v14 & 0x3F | 0x80;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        v22 = 0;
        v40 = v20 | (v21 << 8) | v19;
        do
        {
          if (v22 && !*(&v40 + v22))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v40 + v22++));
        }

        while (v22 != 4);
LABEL_61:
        v5 = 0;
LABEL_62:
        v6 = 0;
LABEL_63:
        v9 = 1;
        goto LABEL_64;
      }

      v5 = 0;
      v9 = 1;
      v6 = v14;
    }

    else
    {
      v9 = 3;
      ++v5;
    }

LABEL_64:
    v4 = *(this + 5);
    v7 = 1;
    if (v4 >= *(this + 4))
    {
      goto LABEL_65;
    }
  }

  if (!v9)
  {
    v9 = 1;
    if (v11 != 34)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v30 = *(this + 5);
      v24 = v30 != 0;
      v31 = v30 - 1;
      if (!v24)
      {
        v31 = 0;
      }

      *exception = &unk_1F10AEDD0;
      exception[1] = v31;
      *(exception + 4) = 1;
LABEL_74:
    }

    goto LABEL_64;
  }

  if (v11 == 92)
  {
    v9 = 2;
    goto LABEL_64;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v32 = *(this + 5);
    v24 = v32 != 0;
    v33 = v32 - 1;
    if (!v24)
    {
      v33 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v33;
    v26 = 2;
    goto LABEL_73;
  }

  if (v11 != 34)
  {
    minijson::detail::buffer_context_base::write(this, v11);
    goto LABEL_62;
  }

  return minijson::detail::buffer_context_base::write(this, 0);
}

void sub_19D1FA750(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *(v2 + 40);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v6;
    *(exception + 4) = 4;
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::details::parse_object<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(char const*,minijson::value)#1}::operator()(uint64_t a1, char *__s, uint64_t a3)
{
  v5 = *a3;
  if (*a3 > 2)
  {
    if (v5 == 3)
    {
      applesauce::CF::details::parse_object<minijson::const_buffer_context>(&cf, *(a1 + 8));
      v16 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v27 = __p;
      v17 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16, __p);
      v15 = *(v17 + 56);
      *(v17 + 56) = cf;
      cf = v15;
      if (v25 < 0)
      {
        operator delete(__p[0]);
        v15 = cf;
        if (!cf)
        {
          return;
        }
      }

      else if (!v15)
      {
        return;
      }
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          cf = 0;
          v11 = *a1;
          std::string::basic_string[abi:ne200100]<0>(__p, __s);
          v27 = __p;
          v12 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v11, __p);
          v10 = *(v12 + 56);
          *(v12 + 56) = 0;
          cf = v10;
          if (v25 < 0)
          {
            operator delete(__p[0]);
            if (v10)
            {
              goto LABEL_34;
            }
          }

          else if (v10)
          {
            goto LABEL_34;
          }
        }

        return;
      }

      applesauce::CF::details::parse_array<minijson::const_buffer_context>(*(a1 + 8), &cf);
      v21 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v27 = __p;
      v22 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v21, __p);
      v15 = *(v22 + 56);
      *(v22 + 56) = cf;
      cf = v15;
      if (v25 < 0)
      {
        operator delete(__p[0]);
        v15 = cf;
        if (!cf)
        {
          return;
        }
      }

      else if (!v15)
      {
        return;
      }
    }

LABEL_38:
    CFRelease(v15);
    return;
  }

  switch(v5)
  {
    case 0:
      applesauce::CF::TypeRef::TypeRef(&cf, *(a3 + 8));
      v13 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v27 = __p;
      v14 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v13, __p);
      v15 = *(v14 + 56);
      *(v14 + 56) = cf;
      cf = v15;
      if (v25 < 0)
      {
        operator delete(__p[0]);
        v15 = cf;
        if (!cf)
        {
          return;
        }
      }

      else if (!v15)
      {
        return;
      }

      goto LABEL_38;
    case 1:
      __p[0] = *(a3 + 24);
      cf = CFNumberCreate(0, kCFNumberDoubleType, __p);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v18 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v27 = __p;
      v19 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18, __p);
      v20 = *(v19 + 56);
      *(v19 + 56) = cf;
      cf = v20;
      if (v25 < 0)
      {
        operator delete(__p[0]);
        v20 = cf;
        if (!cf)
        {
          return;
        }
      }

      else if (!v20)
      {
        return;
      }

      CFRelease(v20);
      break;
    case 2:
      v6 = MEMORY[0x1E695E4D0];
      if (!*(a3 + 16))
      {
        v6 = MEMORY[0x1E695E4C0];
      }

      cf = *v6;
      v7 = cf;
      v8 = *a1;
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v27 = __p;
      v9 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8, __p);
      v10 = *(v9 + 56);
      *(v9 + 56) = v7;
      cf = v10;
      if ((v25 & 0x80000000) == 0)
      {
        if (!v10)
        {
          return;
        }

LABEL_34:
        CFRelease(v10);
        return;
      }

      operator delete(__p[0]);
      if (v10)
      {
        goto LABEL_34;
      }

      break;
  }
}

minijson::detail::buffer_context_base *minijson::detail::parse_value_helper<minijson::const_buffer_context>@<X0>(minijson::detail::buffer_context_base *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _OWORD *a4@<X8>)
{
  result = minijson::detail::read_value<minijson::const_buffer_context>(a1, *a2, v12);
  v9 = v12[1];
  *a4 = v12[0];
  a4[1] = v9;
  v10 = *a4;
  if (*a4)
  {
    if (v10 == 4)
    {
      v11 = 2;
      goto LABEL_6;
    }

    if (v10 == 3)
    {
      v11 = 1;
LABEL_6:
      *a1 = v11;
      ++*(a1 + 1);
      return result;
    }

    *a2 = v13;
    *a3 = 0;
  }

  return result;
}

void minijson::parse_error::~parse_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x19EAF8CA0);
}

const char *minijson::parse_error::what(minijson::parse_error *this)
{
  v1 = *(this + 4);
  if (v1 > 0xD)
  {
    return "";
  }

  else
  {
    return off_1E76253E0[v1];
  }
}

void *minijson::detail::buffer_context_base::write(void *this, char a2)
{
  v2 = this[6];
  if (v2 >= this[5])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid write call, please file a bug report");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = this[3];
  this[6] = v2 + 1;
  *(v3 + v2) = a2;
  return this;
}

uint64_t minijson::detail::utf16_to_utf8(minijson::detail *this, int a2)
{
  if (((this + 0x2000) >> 11) > 0x1Eu)
  {
    if (this >> 10 < 0x37 && ((a2 + 0x2000) >> 10) > 0x3Eu)
    {
      v7 = ((this + 10240) << 10) + a2 + 74752;
      v2 = (v7 >> 18) | 0xF0;
      v3 = (v7 >> 12) & 0x3F | 0x80;
      v6 = (v7 >> 6) & 0x3F | 0x80;
      v5 = ((a2 & 0x3F) << 24) | 0x80000000;
      return v5 | (v6 << 16) | (v3 << 8) | v2;
    }

LABEL_18:
    exception = __cxa_allocate_exception(1uLL);
  }

  if (a2)
  {
    goto LABEL_18;
  }

  v2 = (this >> 12) | 0xE0;
  v3 = (this >> 6) & 0x3F | 0x80;
  if (this <= 0x7FF)
  {
    v4 = 0;
  }

  else
  {
    v4 = this & 0x3F | 0x80;
  }

  if (this <= 0x7FF)
  {
    v3 = this & 0x3F | 0x80;
    v2 = (this >> 6) | 0xC0;
  }

  v5 = 0;
  if (this >= 0x80)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (this < 0x80)
  {
    v3 = 0;
    v2 = this;
  }

  return v5 | (v6 << 16) | (v3 << 8) | v2;
}

uint64_t minijson::detail::parse_long(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_11;
  }

  v3 = *this;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a2;
  if ((v3 & 0x80000000) != 0)
  {
    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_11;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x4000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *__error();
  *__error() = 0;
  __endptr = 0;
  v6 = strtol(this, &__endptr, v4);
  v7 = __error();
  v8 = *v7;
  *v7 = v5;
  if (*__endptr || v8 == 34 && (v6 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
LABEL_11:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v6;
}

void applesauce::CF::details::parse_array<minijson::const_buffer_context>(minijson::detail::buffer_context_base *a1@<X0>, CFArrayRef *a2@<X8>)
{
  memset(v3, 0, sizeof(v3));
  minijson::parse_array<minijson::const_buffer_context,applesauce::CF::TypeRef applesauce::CF::details::parse_array<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(minijson::value)#1}>(a1, v3, a1);
  *a2 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(v3);
  v4 = v3;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_19D1FAFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void minijson::parse_array<minijson::const_buffer_context,applesauce::CF::TypeRef applesauce::CF::details::parse_array<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(minijson::value)#1}>(minijson::detail::buffer_context_base *a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a2;
  v26[1] = a3;
  v4 = *(a1 + 1);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v22 = *(a1 + 5);
    v13 = v22 != 0;
    v23 = v22 - 1;
    if (!v13)
    {
      v23 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v23;
    v15 = 12;
    goto LABEL_36;
  }

  v25 = 0;
  if (*a1 <= 2u)
  {
    v5 = 8 * (*a1 & 3);
    HIBYTE(v25) = 0x5B7B00u >> v5;
    LOBYTE(v25) = 1u >> v5;
  }

  v6 = 0;
  *a1 = 0;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    do
    {
      while (1)
      {
        if (*(a1 + 1) != v4)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          v12 = *(a1 + 5);
          v13 = v12 != 0;
          v14 = v12 - 1;
          if (!v13)
          {
            v14 = 0;
          }

          *exception = &unk_1F10AEDD0;
          exception[1] = v14;
          v15 = 11;
          goto LABEL_36;
        }

        if (v25)
        {
          v8 = *(a1 + 5);
          if (v8 >= *(a1 + 4))
          {
            v10 = 0;
          }

          else
          {
            v9 = *(a1 + 2);
            *(a1 + 5) = v8 + 1;
            v10 = *(v9 + v8);
          }

          HIBYTE(v25) = v10;
        }

        else
        {
          v10 = HIBYTE(v25);
        }

        LOBYTE(v25) = 1;
        if ((v10 & 0x80) == 0)
        {
          break;
        }

        if (!__maskrune(v10, 0x4000uLL))
        {
          goto LABEL_16;
        }
      }
    }

    while ((*(v7 + 4 * v10 + 60) & 0x4000) != 0);
LABEL_16:
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (HIBYTE(v25) == 91)
        {
          v6 = 1;
          continue;
        }

        exception = __cxa_allocate_exception(0x18uLL);
        v17 = *(a1 + 5);
        v13 = v17 != 0;
        v18 = v17 - 1;
        if (!v13)
        {
          v18 = 0;
        }

        *exception = &unk_1F10AEDD0;
        exception[1] = v18;
        v15 = 8;
LABEL_36:
        *(exception + 4) = v15;
      }

      if (HIBYTE(v25) == 93)
      {
        goto LABEL_25;
      }

LABEL_26:
      minijson::detail::parse_value_helper<minijson::const_buffer_context>(a1, &v25 + 1, &v25, v24);
      applesauce::CF::details::parse_array<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(minijson::value)#1}::operator()(v26, v24);
      if (!HIBYTE(v25))
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "This line should never be reached, please file a bug report");
        __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v6 = 3;
      continue;
    }

    if (v6 == 2)
    {
      goto LABEL_26;
    }

    if (HIBYTE(v25) != 44)
    {
      if (HIBYTE(v25) != 93)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        v20 = *(a1 + 5);
        v13 = v20 != 0;
        v21 = v20 - 1;
        if (!v13)
        {
          v21 = 0;
        }

        *exception = &unk_1F10AEDD0;
        exception[1] = v21;
        v15 = 10;
        goto LABEL_36;
      }

LABEL_25:
      v6 = 4;
      continue;
    }

    v6 = 2;
  }

  while (v6 != 4);
  v11 = *(a1 + 1);
  if (v11)
  {
    *(a1 + 1) = v11 - 1;
  }
}

void applesauce::CF::details::parse_array<minijson::const_buffer_context>(minijson::const_buffer_context &)::{lambda(minijson::value)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 2)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          return;
        }

        v3 = *a1;
        v4 = *(a2 + 16);
        LOBYTE(cf) = v4 != 0;
        v5 = *(v3 + 8);
        if (v5 >= *(v3 + 16))
        {
          v7 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<BOOL>(v3, &cf);
        }

        else
        {
          if (v4)
          {
            v6 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v6 = MEMORY[0x1E695E4C0];
          }

          *v5 = *v6;
          v7 = (v5 + 1);
        }

        goto LABEL_29;
      }

      v3 = *a1;
      cf = *(a2 + 24);
      v10 = *(v3 + 8);
      if (v10 >= *(v3 + 16))
      {
        v7 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<double>(v3, &cf);
        goto LABEL_29;
      }

      std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,0>(v3, *(v3 + 8), &cf);
    }

    else
    {
      v3 = *a1;
      v9 = *(a2 + 8);
      cf = v9;
      v10 = *(v3 + 8);
      if (v10 >= *(v3 + 16))
      {
        v7 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<char const*>(v3, &cf);
        goto LABEL_29;
      }

      applesauce::CF::TypeRef::TypeRef(*(v3 + 8), v9);
    }

    v7 = v10 + 8;
    *(v3 + 8) = v10 + 8;
LABEL_29:
    *(v3 + 8) = v7;
    return;
  }

  if (v2 == 3)
  {
    v11 = *a1;
    applesauce::CF::details::parse_object<minijson::const_buffer_context>(&cf, a1[1]);
    v12 = v11[1];
    if (v12 < v11[2])
    {
      goto LABEL_24;
    }

    v13 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<applesauce::CF::TypeRef>(v11, &cf);
    v14 = cf;
    v11[1] = v13;
    if (!v14)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v2 != 4)
  {
    if (v2 != 5)
    {
      return;
    }

    v3 = *a1;
    v8 = *(*a1 + 8);
    if (v8 >= *(v3 + 16))
    {
      v7 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<>(v3);
    }

    else
    {
      *v8 = 0;
      v7 = (v8 + 1);
    }

    goto LABEL_29;
  }

  v11 = *a1;
  applesauce::CF::details::parse_array<minijson::const_buffer_context>(&cf, a1[1]);
  v12 = v11[1];
  if (v12 < v11[2])
  {
LABEL_24:
    *v12 = cf;
    v11[1] = v12 + 1;
    return;
  }

  v15 = std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<applesauce::CF::TypeRef>(v11, &cf);
  v14 = cf;
  v11[1] = v15;
  if (v14)
  {
LABEL_32:
    CFRelease(v14);
  }
}

void sub_19D1FB548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<char const*>(uint64_t a1, char **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  v16 = (8 * v2);
  applesauce::CF::TypeRef::TypeRef((8 * v2), *a2);
  *&v16 = 8 * v2 + 8;
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1FB670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4++ = *v7;
      *v7++ = 0;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<applesauce::CF::TypeRef>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator<applesauce::CF::TypeRef>::destroy[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      std::allocator<applesauce::CF::TypeRef>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(void **a1)
{
  std::__split_buffer<applesauce::CF::TypeRef>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::TypeRef>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 8;
    std::allocator<applesauce::CF::TypeRef>::destroy[abi:ne200100](v4, (i - 8));
  }
}

uint64_t std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<double>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1FB954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,0>(uint64_t a1, CFNumberRef *a2, uint64_t *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<BOOL>(void *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v6);
  }

  v9 = (8 * v5);
  v15 = 0;
  v16 = 8 * v5;
  if (*a2)
  {
    v10 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  *v9 = *v10;
  v17 = (v9 + 1);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1FBB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<applesauce::CF::TypeRef>(void *a1, CFTypeRef *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&v13);
  return v12;
}

void sub_19D1FBC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRef>::__emplace_back_slow_path<>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 3;
  v4 = v3 + 1;
  if ((v3 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - v1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v4 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v14 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v4);
  }

  v11 = 0;
  v12 = (8 * v3);
  *v12 = 0;
  v13 = (8 * v3 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRef>,applesauce::CF::TypeRef*>(a1, v1, v2, 0);
  v7 = *a1;
  *a1 = 0;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&v11);
  return v10;
}

void sub_19D1FBD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<applesauce::CF::TypeRef>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

minijson::detail::buffer_context_base *minijson::detail::read_value<minijson::const_buffer_context>@<X0>(minijson::detail::buffer_context_base *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  switch(a2)
  {
    case '""':
      *(this + 7) = *(this + 3) + *(this + 6);
      this = minijson::detail::read_quoted_string<minijson::const_buffer_context>(this, 1);
      v6 = *(v3 + 56);
      *a3 = 0;
      *(a3 + 4) = 0;
      goto LABEL_8;
    case '[':
      v5 = 4;
      goto LABEL_6;
    case '{':
      v5 = 3;
LABEL_6:
      *a3 = v5;
      *(a3 + 4) = 0;
      v6 = "";
LABEL_8:
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = v6;
      *(a3 + 32) = 0;
      return this;
  }

  *(this + 7) = *(this + 3) + *(this + 6);
  v7 = minijson::detail::read_unquoted_value<minijson::const_buffer_context>(this, a2);
  this = minijson::detail::parse_unquoted_value<minijson::const_buffer_context>(v3, a3);
  *(a3 + 32) = v7;
  return this;
}

uint64_t minijson::detail::read_unquoted_value<minijson::const_buffer_context>(minijson::detail::buffer_context_base *this, int a2)
{
  if (a2)
  {
    minijson::detail::buffer_context_base::write(this, a2);
  }

  v3 = *(this + 5);
  if (v3 >= *(this + 4))
  {
    goto LABEL_16;
  }

  v4 = MEMORY[0x1E69E9830];
  while (1)
  {
    v5 = *(this + 2);
    *(this + 5) = v3 + 1;
    v6 = *(v5 + v3);
    v7 = v6;
    if (v6 <= 92)
    {
      if (v6 == 44)
      {
        goto LABEL_20;
      }

      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else if (v6 == 93 || v6 == 125)
    {
      goto LABEL_20;
    }

    if ((v7 & 0x80000000) == 0)
    {
      if ((*(v4 + 4 * v7 + 60) & 0x4000) != 0)
      {
        break;
      }

      goto LABEL_15;
    }

    if (__maskrune(v6, 0x4000uLL))
    {
      break;
    }

LABEL_15:
    minijson::detail::buffer_context_base::write(this, v7);
    v3 = *(this + 5);
    if (v3 >= *(this + 4))
    {
      goto LABEL_16;
    }
  }

  if (!v7)
  {
LABEL_16:
    exception = __cxa_allocate_exception(0x18uLL);
    v9 = *(this + 5);
    v10 = v9 != 0;
    v11 = v9 - 1;
    if (!v10)
    {
      v11 = 0;
    }

    *exception = &unk_1F10AEDD0;
    exception[1] = v11;
    *(exception + 4) = 7;
  }

LABEL_20:
  minijson::detail::buffer_context_base::write(this, 0);
  return v7;
}

uint64_t minijson::detail::parse_unquoted_value<minijson::const_buffer_context>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  result = strcmp(v3, "true");
  if (result)
  {
    result = strcmp(v3, "false");
    if (result)
    {
      result = strcmp(v3, "null");
      if (result)
      {
        result = minijson::detail::parse_long(v3, 0xA);
        *a2 = 1;
        *(a2 + 4) = 1;
        *(a2 + 5) = 1;
        *(a2 + 8) = v3;
        *(a2 + 16) = result;
        *(a2 + 24) = result;
        return result;
      }

      *a2 = 5;
      *(a2 + 4) = 0;
    }

    else
    {
      *a2 = 2;
      *(a2 + 4) = 257;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = 2;
    *(a2 + 4) = 257;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0x3FF0000000000000;
  }

  return result;
}

void sub_19D1FC0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    minijson::detail::parse_double(v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x19D1FC04CLL);
  }

  _Unwind_Resume(exception_object);
}

double minijson::detail::parse_double(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_12;
  }

  v3 = *this;
  if (!*this)
  {
    goto LABEL_12;
  }

  v4 = 1;
  do
  {
    if ((v3 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) == 0)
    {
      v5 = v3 - 43;
      if (v5 > 0x3A || ((1 << v5) & 0x40000000400000DLL) == 0)
      {
        goto LABEL_12;
      }
    }

    v3 = *(this + v4++);
  }

  while (v3);
  v6 = *__error();
  *__error() = 0;
  v12 = 0;
  v7 = strtod(this, &v12);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (*v12 || v9 == 34)
  {
LABEL_12:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v7;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(const void ***a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,applesauce::CF::TypeRef const&>(&v11, (v3 + 4), v3 + 7);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,0>(&v11, v5, (v3 + 4), v3 + 7);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_19D1FC35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,applesauce::CF::TypeRef const&>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,0>(a1, (16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1FC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,0>(uint64_t a1, void *a2, uint64_t a3, const void **a4)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  result = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a4;
  if (v10)
  {
    result = CFRetain(v10);
  }

  a2[1] = v10;
  return result;
}

void std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void applesauce::CF::convert_to<std::map<std::string,int>,0>(const void *a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,int>>(a1, a2);
}

void applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,int>>(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  Count = CFDictionaryGetCount(a1);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::vector<void const*>::vector[abi:ne200100](v13, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a1, v13[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      applesauce::CF::convert_to<std::string,0>(*(v13[0] + i), v7);
      v6 = applesauce::CF::convert_to<int,0>(values[0][i]);
      *__p = *v7;
      v10 = v8;
      v7[1] = 0;
      v8 = 0;
      v7[0] = 0;
      v11 = v6;
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(a2, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v8) < 0)
      {
        operator delete(v7[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_19D1FC7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    *(v25 - 48) = v27;
    operator delete(v27);
  }

  std::__tree<std::string>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::pair<std::string const,int> const&>();
  }

  return result;
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void CoreNLP::SentenceTagger::setLocale(CoreNLP::TaggerContext **this, const __CFLocale *a2)
{
  CoreNLP::Tagger::setLocale(this, a2);

  CoreNLP::SentenceTagger::resetICUSentenceBreak(this, a2);
}

uint64_t CoreNLP::SentenceTagger::setLocaleConstraints(CoreNLP::TaggerContext **this, const __CFArray *a2)
{
  result = CoreNLP::Tagger::setLocaleConstraints(this, a2);
  if (a2)
  {
    result = CFArrayGetCount(a2);
    if (result == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);

      CoreNLP::SentenceTagger::resetICUSentenceBreak(this, ValueAtIndex);
    }
  }

  return result;
}