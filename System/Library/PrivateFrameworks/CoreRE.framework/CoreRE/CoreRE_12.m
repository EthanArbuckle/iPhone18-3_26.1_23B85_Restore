double re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::AnimationManager::setTaskOptions(uint64_t result, float *a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    result = re::Scheduler::setTaskOptions(*(result + 8), v4, a2);
  }

  v5 = *a2;
  *(v3 + 24) = *(a2 + 8);
  *(v3 + 16) = v5;
  return result;
}

uint64_t re::Scheduler::setTaskOptions(re::Scheduler *a1, unint64_t a2, float *a3)
{
  re::Scheduler::updateTaskSchedule(a1, a2, *a3);
  result = re::Scheduler::setTaskUpdateInterval(a1, a2, a3[1]);
  if (*(a1 + 59) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 60) + a2) = *(a3 + 1);
  if (*(a1 + 62) <= a2)
  {
    goto LABEL_5;
  }

  *(*(a1 + 63) + a2) = *(a3 + 8);
  return result;
}

void re::AnimationManager::isAnimated(re::AnimationManager *this, const re::BindNode *a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported. BindNode does not yet have a function to iterate over children.", "!Unreachable code", "isAnimated", 380);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationManager::isAnimated(re::AnimationManager *this, const re::BindPoint *a2)
{
  v2 = *(this + 29);
  if (v2)
  {
    re::AnimationManager::updateLookupTableForAllBuckets(this);
    v5 = re::BindPoint::targetIdentifier(a2);
    v6 = 0;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
    v8 = v7 ^ (v7 >> 31);
    v9 = 1;
    while (1)
    {
      v10 = v9;
      v11 = this + 48 * v6 + 280;
      if (*v11)
      {
        v12 = *(*(v11 + 1) + 4 * (v8 % *(v11 + 6)));
        if (v12 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_8:
      v9 = 0;
      v2 = 0;
      v6 = 1;
      if ((v10 & 1) == 0)
      {
        return v2;
      }
    }

    v13 = *(v11 + 2);
    while (*(v13 + 32 * v12 + 8) != v5)
    {
      v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  return v2;
}

unint64_t re::AnimationManager::updateLookupTableForAllBuckets(unint64_t this)
{
  v1 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v13 = this + 280;
  v2 = this + 376;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = v2 + 40 * v1;
    if (*(v5 + 16) >= 1)
    {
      v6 = v13 + 48 * v1;
      v7 = (*(v5 + 16) & 0x7FFFFFFFLL) - 1;
      do
      {
        if (*(v5 + 16) <= v7)
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v14 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(*(v5 + 32) + 8 * v7);
        this = re::BindPoint::targetIdentifier((v8 + 8));
        v9 = *(v8 + 96);
        if (v9 != this)
        {
          v10 = this;
          if (v9)
          {
            this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v6, v9);
          }

          if (v10)
          {
            v14 = 0uLL;
            *&v15 = 0;
            v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
            this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v14, v6, v10, v11 ^ (v11 >> 31));
            if (HIDWORD(v14) == 0x7FFFFFFF)
            {
              this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v6, DWORD2(v14), v14);
              *(this + 8) = v10;
              *(this + 16) = v8;
              ++*(v6 + 40);
            }
          }

          *(v8 + 96) = v10;
        }

        v12 = v7-- + 1;
      }

      while (v12 > 1);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return this;
}

uint64_t re::AnimationManager::isAnimated(re::AnimationManager *this, re::BindNode **a2, const re::IntrospectionBase *a3, const char *a4)
{
  if (!*(this + 29))
  {
    return 0;
  }

  {
    isAnimated = re::AnimationManager::isAnimated(this, &v12);
  }

  else
  {
    isAnimated = 0;
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  return isAnimated;
}

double anonymous namespace::findBindPoint(_anonymous_namespace_ *this, re::BindNode **a2, const re::IntrospectionBase *a3, const char *__s, int a5)
{
  if (__s && *__s)
  {
    if (a5)
    {
      v10 = __s;
      v11 = strlen(__s);
      return re::BindNode::bindPointWithOverride(a2, a3, &v10, this);
    }

    else
    {
      v10 = __s;
      v11 = strlen(__s);
      return re::BindNode::bindPoint(a2, a3, &v10, this);
    }
  }

  else
  {
    v9 = *re::animationLogObjects(this);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "No bind target found for played animation.", &v10, 2u);
    }

    *(this + 5) = 0;
    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 8) = 0;
  }

  return result;
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, __int128 *a4, char a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *a4;
  v10 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, a3, 0, &v9, a5, 0, a6, a7, a8);
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, void *a4, uint64_t a5, char a6, re::internal::TimelineTreeInfo *a7, void *a8, unint64_t a9, uint64_t a10)
{
  LOBYTE(v163) = a6;
  v181 = *MEMORY[0x1E69E9840];
  if (*(a1 + 504))
  {
    return 0;
  }

  v158 = a2;
  v167 = a1;
  if (!*(a1 + 29))
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v167 + 64 * v10 + 72;
      re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(v13, 0);
      ++*(v13 + 24);
      *(v13 + 44) = 32;
      re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(v13);
      v14 = v167 + 40 * v10 + 200;
      re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v14, 0x10uLL);
      ++*(v14 + 24);
      v15 = v167 + 40 * v10 + 376;
      a1 = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v15, 0x20uLL);
      v11 = 0;
      ++*(v15 + 24);
      v10 = 1;
    }

    while ((v12 & 1) != 0);
  }

  v16 = (v163 & 1) == 0;
  v17 = v167;
  v18 = v167 + 72;
  v19 = v167 + 64 * v16 + 72;
  v20 = *(v19 + 56);
  if ((v20 + 1) >> 24)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20 + 1;
  }

  *(v19 + 56) = v21;
  v22 = *(v19 + 52);
  v23 = *(v19 + 54);
  if (v22 == 0xFFFF && v23 == 0xFFFF)
  {
    if (*(v19 + 48) >= *(v19 + 44))
    {
      a1 = re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(v19);
    }

    v24 = *(v19 + 16);
    v23 = (v24 - 1);
    if (v24)
    {
      v22 = *(v19 + 48);
      if (v22 < 0x10000)
      {
        v25 = (*(v19 + 32) + 16 * v23);
        *(v19 + 48) = v22 + 1;
        *(v25[1] + 4 * v22) = *(v19 + 56);
        v26 = *v25 + 312 * v22;
        goto LABEL_17;
      }

LABEL_239:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v22);
      _os_crash();
      __break(1u);
      goto LABEL_240;
    }

LABEL_238:
    *&v168 = 0;
    v180 = 0u;
    memset(buf, 0, sizeof(buf));
    v22 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 789;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v23;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_239;
  }

  v10 = *(v19 + 16);
  if (v10 <= v23)
  {
LABEL_237:
    *&v168 = 0;
    v180 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 789;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v23;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_238;
  }

  v27 = (*(v19 + 32) + 16 * v23);
  *(v27[1] + 4 * v22) = v21;
  v26 = *v27 + 312 * v22;
  *(v19 + 52) = *v26;
LABEL_17:
  ++*(v19 + 40);
  *(v26 + 248) = 0u;
  *(v26 + 232) = 0u;
  *(v26 + 216) = 0u;
  *(v26 + 200) = 0u;
  *(v26 + 184) = 0u;
  *(v26 + 152) = 0u;
  *(v26 + 136) = 0u;
  *(v26 + 120) = 0u;
  *(v26 + 104) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 280) = 0u;
  *(v26 + 296) = 0u;
  *(v26 + 264) = 0u;
  *(v26 + 168) = 0u;
  *v26 = &unk_1F5CB0398;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 56) = 0u;
  *(v26 + 40) = 0u;
  re::DynamicString::setCapacity((v26 + 40), 0);
  *(v26 + 72) = 0;
  *(v26 + 80) = -1;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0;
  *(v26 + 160) = 0;
  *(v26 + 104) = 0;
  *(v26 + 112) = 0;
  *(v26 + 96) = 0;
  *(v26 + 120) = 0;
  objc_initWeak((v26 + 168), 0);
  *v26 = &unk_1F5CB17F0;
  *(v26 + 176) = 0u;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0u;
  *(v26 + 240) = 0;
  *(v26 + 248) = 767;
  *(v26 + 252) = 1065353216;
  *(v26 + 256) = 0u;
  *(v26 + 272) = 0u;
  *(v26 + 288) = 0u;
  *(v26 + 304) = 0;
  v28 = v22 + (v23 << 16) + ((*(v19 + 56) & 0xFFFFFF) << 32);
  v29 = re::DataArray<re::internal::TimelineTreeInfo>::get(v19, v22 + (v23 << 16));
  v30 = *(v167 + 8);
  v31 = *(v167 + 506);
  v18 = v158;
  if ((v32 & 1) == 0)
  {
    v32 = re::DataArray<re::internal::TimelineTreeInfo>::destroy(v19, v28);
LABEL_89:
    v79 = *re::animationLogObjects(v32);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v120 = *(v158 + 4);
      *buf = 136315138;
      *&buf[4] = v120;
      _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Potentially invalid timeline detected. Name of root timeline: %s", buf, 0xCu);
    }

    return 0;
  }

  if (!(v28 + (v16 << 56)))
  {
    goto LABEL_89;
  }

  v10 = a9;
  v19 = re::DataArray<re::internal::TimelineTreeInfo>::get(v19, v28);
  *(v19 + 256) = a9;
  *(v19 + 264) = a10;
  v33 = re::animationLogObjects(v19);
  if (re::AnimationLogObjects::loggingEnabled(v33))
  {
LABEL_240:
    v147 = *(a5 + 16);
    if (v147 && *v147)
    {
      v148 = re::DynamicString::operator=((v19 + 40), v147);
    }

    else
    {
      v151 = strlen(*(v18 + 32));
      *buf = *(v18 + 32);
      *&buf[8] = v151;
      v148 = re::DynamicString::operator=((v19 + 40), buf);
    }

    v152 = re::animationLogObjects(v148);
    v153 = re::AnimationLogObjects::loggingEnabled(v152);
    v17 = v167;
    if (v153)
    {
      v10 = *re::animationLogObjects(v153);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v19 + 48))
        {
          v154 = *(v19 + 56);
        }

        else
        {
          v154 = v19 + 49;
        }

        v155 = *(v19 + 104);
        *buf = 136315394;
        *&buf[4] = v154;
        *&buf[12] = 2048;
        *&buf[14] = v155;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: Starting Animation %s, timeline count=%zu\n", buf, 0x16u);
      }
    }
  }

  updated = re::AnimationManager::updateLookupTableForAllBuckets(v17);
  *v166 = *(v19 + 32);
  if (v166[0] < 1)
  {
    goto LABEL_111;
  }

  v160 = 0;
  v35 = 0;
  v36 = v17;
  v37 = v17 + 48 * *(v19 + 248) + 280;
  v18 = v36 + 40 * *(v19 + 248) + 376;
  v156 = 136315906;
  do
  {
    v23 = v37;
    v10 = v10 & 0xFFFFFFFF00000000 | v35;
    v38 = v35;
    v39 = re::internal::TimelineTree::source(v19, v35);
    v40 = (*(*v39 + 16))(v39);
    if (!v40)
    {
LABEL_25:
      v171 = 0;
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
      goto LABEL_26;
    }

    v41 = v40;
    if (!a4)
    {
      v178 = 0;
      memset(to, 0, 36);
      v57 = v173 >> 1;
      if ((v173 & 1) == 0)
      {
        v57 = v173 >> 1;
      }

      {
        v59 = to[0];
        v60 = re::animationLogObjects(BindPath);
        if (v59 == v41)
        {
          v65 = re::AnimationLogObjects::loggingEnabled(v60);
          if (v65)
          {
            v74 = *re::animationLogObjects(v65);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = re::BindPoint::baseValueUntyped(to);
              v76 = re::BindPoint::overrideValueUntyped(to);
              v77 = &v173 + 1;
              if (v173)
              {
                v77 = v174;
              }

              v78 = v19 + 49;
              if (*(v19 + 48))
              {
                v78 = *(v19 + 56);
              }

              *buf = 134219266;
              *&buf[4] = v75;
              *&buf[12] = 2048;
              *&buf[14] = v76;
              *&buf[22] = 2080;
              *&buf[24] = v77;
              *&buf[32] = 2080;
              *&buf[34] = v78;
              *&buf[42] = 2048;
              *&buf[44] = v19;
              *&buf[52] = 1024;
              *&buf[54] = v35;
              _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "ANIM: Animation Target: %p, %p - %s, TimelineTreeInfo: %s (%p), index=%d\n", buf, 0x3Au);
            }
          }

          v168 = *to;
          v169 = *&to[2];
          memset(&to[1], 0, 24);
          v171 = v178;
          v178 = 0;
          ++LODWORD(to[4]);
          v170 = 1;
          goto LABEL_56;
        }

        v61 = *v60;
        if (os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
        {
          v62 = &v173 + 1;
          if (v173)
          {
            v62 = v174;
          }

          *buf = 136315138;
          *&buf[4] = v62;
          _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Failed to create bind point. Type mismatch for path: %s", buf, 0xCu);
        }
      }

      else
      {
        v63 = re::animationLogObjects(BindPath);
        v64 = re::AnimationLogObjects::loggingEnabled(v63);
        if (v64)
        {
          v71 = *re::animationLogObjects(v64);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v19 + 49;
            if (*(v19 + 48))
            {
              v72 = *(v19 + 56);
            }

            v73 = &v173 + 1;
            if (v173)
            {
              v73 = v174;
            }

            *buf = 136315906;
            *&buf[4] = v72;
            *&buf[12] = 2048;
            *&buf[14] = v19;
            *&buf[22] = 1024;
            *&buf[24] = v35;
            *&buf[28] = 2080;
            *&buf[30] = v73;
            _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "ANIM: TimelineTreeInfo: %s (%p), index=%d, Invalid bind path: %s\n", buf, 0x26u);
          }
        }
      }

      v171 = 0;
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
LABEL_56:
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&to[1]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&to[1]);
      v37 = v23;
      if (v172 && (v173 & 1) != 0)
      {
        (*(*v172 + 40))();
      }

      goto LABEL_26;
    }

    if (*a4 != v40)
    {
      goto LABEL_25;
    }

    *&v168 = *a4;
    re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v168 + 8, a4 + 1);
LABEL_26:
    v42 = re::internal::TimelineTree::source(v19, v35);
    if ((*(*v42 + 64))(v42, &v168))
    {
      CompositionChain = re::AnimationManager::getCompositionChain(v167, &v168);
      if (!CompositionChain)
      {
        v44 = re::internal::TimelineTree::source(v19, v35);
        (*(*CompositionChain + 16))(CompositionChain, &v168);
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v23, CompositionChain[12]);
        v45 = re::BindPoint::targetIdentifier((CompositionChain + 1));
        if (!v45)
        {
          goto LABEL_236;
        }

        v47 = v45;
        memset(buf, 0, 24);
        v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
        v49 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(buf, v23, v45, v48 ^ (v48 >> 31));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v49 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v23, *&buf[8], *buf);
          *(v49 + 1) = v47;
          *(v49 + 2) = CompositionChain;
          ++*(v23 + 40);
        }

        CompositionChain[12] = v47;
        v50 = *(v18 + 8);
        v51 = *(v18 + 16);
        if (v51 >= v50)
        {
          v52 = v51 + 1;
          if (v50 < v51 + 1)
          {
            if (*v18)
            {
              v53 = 2 * v50;
              v121 = v50 == 0;
              v54 = 8;
              if (!v121)
              {
                v54 = v53;
              }

              if (v54 <= v52)
              {
                v55 = v52;
              }

              else
              {
                v55 = v54;
              }

              re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v18, v55);
            }

            else
            {
              re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v18, v52);
              ++*(v18 + 24);
            }
          }

          v51 = *(v18 + 16);
        }

        *(*(v18 + 32) + 8 * v51) = CompositionChain;
        *(v18 + 16) = v51 + 1;
        ++*(v18 + 24);
      }

      v66 = *(v19 + 232);
      if (v66 <= v35)
      {
        goto LABEL_234;
      }

      *(*(v19 + 240) + 8 * v35) = CompositionChain;
      v67 = re::internal::TimelineTree::source(v19, v35);
      if (buf[0])
      {
        v68 = *&buf[4];
      }

      else
      {
        v68 = 0;
      }

      v35 = (v68 + v35);
      if (v68 >= 1)
      {
        do
        {
          if (*(re::internal::TimelineTree::source(v19, v38) + 8) == 49)
          {
            v69 = re::internal::TimelineTree::source(v19, v38);
            if (*(*(*(v69 + 112) + 80) + 496) != 255)
            {
              *(v69 + 96) = 1;
            }
          }

          ++v38;
        }

        while (v38 < v35);
      }

      v160 = 1;
      v37 = v23;
    }

    else
    {
      v35 = (v35 + 1);
    }

    v70 = &v168;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v168 + 8);
    updated = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v168 + 8);
  }

  while (v35 < v166[0]);
  v18 = v158;
  if ((v160 & 1) == 0)
  {
    memset(&buf[8], 0, 24);
    re::DynamicString::setCapacity(buf, 0);
    v82 = 0;
    v23 = v166[0] & 0x7FFFFFFF;
    do
    {
      v70 = (v82 + (v70 & 0xFFFFFFFF00000000));
      if (v82)
      {
        re::DynamicString::append(buf, ", ", 2uLL);
      }

      re::DynamicString::append(buf, "", 1uLL);
      v83 = to[1];
      v84 = to[2];
      if (to[1])
      {
        v85 = to[2];
      }

      else
      {
        v85 = &to[1] + 1;
      }

      if (to[1])
      {
        v86 = to[1] >> 1;
      }

      else
      {
        v86 = LOBYTE(to[1]) >> 1;
      }

      re::DynamicString::append(buf, v85, v86);
      v87 = re::DynamicString::append(buf, "", 1uLL);
      if (v83)
      {
        v87 = to[0];
        if (to[0])
        {
          v87 = (*(*to[0] + 40))(to[0], v84);
        }
      }

      ++v82;
    }

    while (v23 != v82);
    v88 = *re::animationLogObjects(v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      if (buf[8])
      {
        v146 = *&buf[16];
      }

      else
      {
        v146 = &buf[9];
      }

      LODWORD(to[0]) = 136315138;
      *(to + 4) = v146;
      _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Cannot find a BindPoint for any bind path: %s", to, 0xCu);
    }

    updated = *buf;
    v18 = v158;
    if (*buf && (buf[8] & 1) != 0)
    {
      updated = (*(**buf + 40))();
    }
  }

LABEL_111:
  v89 = *(v19 + 232);
  if (v89)
  {
    v90 = *(v19 + 240);
    v91 = 8 * v89;
    while (!*v90)
    {
      ++v90;
      v91 -= 8;
      if (!v91)
      {
        goto LABEL_115;
      }
    }
  }

  else
  {
LABEL_115:
    v92 = *re::animationLogObjects(updated);
    updated = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
    if (updated)
    {
      if (*(v18 + 48))
      {
        v93 = *(v18 + 56);
      }

      else
      {
        v93 = v18 + 49;
      }

      *buf = 136315138;
      *&buf[4] = v93;
      _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "Failed to assign animation to target variables. Please check the bind node/point. Make sure the animation type matches the target variable. Failing bind path is: '%s'.", buf, 0xCu);
    }
  }

  v94 = 0;
  v95 = *(a5 + 12);
  LODWORD(v158) = v95 != 0x80000000;
  v96 = *(a5 + 4);
  v97 = *a5;
  if (*a5 > 2)
  {
    if ((v97 - 4) < 2)
    {
      goto LABEL_126;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (v97 != 3)
    {
      goto LABEL_141;
    }

    if (v96 > 0.0)
    {
      v94 = 0;
      v100 = 0;
      v99 = 1;
      v98 = 1;
      goto LABEL_141;
    }

    v80 = v167;
    if (*(a5 + 8))
    {
      v123 = 0;
      goto LABEL_198;
    }

LABEL_226:
    re::AnimationManager::removeExcept(v80, v19, 0);
LABEL_227:
    v144 = v167 + 64 * *(v19 + 248) + 72;
    v145 = re::DataArray<re::internal::TimelineTreeInfo>::handle(v144, v19);
    re::DataArray<re::internal::TimelineTreeInfo>::destroy(v144, v145);
    return 0;
  }

  if (v97)
  {
    if (v97 == 1)
    {
      v98 = 0;
      v99 = 1;
      v94 = 4;
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (v97 != 2)
      {
        goto LABEL_141;
      }

LABEL_126:
      v98 = 0;
      if (v97 == 4)
      {
        v94 = 1;
      }

      else
      {
        v94 = 2 * (v97 == 5);
      }

      v99 = *(a5 + 8);
    }

    v100 = 1;
  }

  else
  {
    v101 = *(v19 + 232);
    if (v101)
    {
      for (i = 0; i < v101; ++i)
      {
        updated = *(*(v19 + 240) + 8 * i);
        if (updated)
        {
          updated = (*(*updated + 48))(updated);
          v101 = *(v19 + 232);
        }
      }
    }

    v94 = 0;
    v98 = 0;
    v100 = 1;
    v99 = 2;
  }

LABEL_141:
  v161 = v100;
  LODWORD(a3) = v98;
  v163 = v99;
  v103 = re::animationLogObjects(updated);
  v104 = re::AnimationLogObjects::loggingEnabled(v103);
  if (v104)
  {
    v149 = *re::animationLogObjects(v104);
    v104 = os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT);
    if (v104)
    {
      if (*(v19 + 48))
      {
        v150 = *(v19 + 56);
      }

      else
      {
        v150 = v19 + 49;
      }

      *buf = 134218242;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v150;
      _os_log_impl(&dword_1E1C61000, v149, OS_LOG_TYPE_DEFAULT, "ANIM: Add Timeline Tree %p, name: %s\n", buf, 0x16u);
    }
  }

  *v166 = *(v19 + 104);
  if (v166[0] >= 1)
  {
    v35 = 0;
    a4 = *(v19 + 112);
    v66 = (*(v19 + 104) & 0x7FFFFFFFLL);
    v38 = 24;
    while (1)
    {
      v10 = *(v19 + 232);
      if (v10 <= v35)
      {
        break;
      }

      v23 = *(*(v19 + 240) + 8 * v35);
      if (v23)
      {
        v107 = v95;
        if (v95 == 0x80000000)
        {
          if (*v166 <= v35)
          {
            goto LABEL_235;
          }

          v107 = *(a4[v35] + 12);
        }

        v108 = *(v23 + 72);
        if (v108)
        {
          v18 = 0;
          v109 = (*(v23 + 88) + 16);
          while (1)
          {
            v110 = *v109;
            v109 += 6;
            if (v110 > v107)
            {
              break;
            }

            if (v108 == ++v18)
            {
              v18 = *(v23 + 72);
              break;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v10 = v108 + 1;
        if (v108 + 1 <= v18)
        {
          goto LABEL_233;
        }

        v111 = *(v23 + 64);
        if (v108 >= v111)
        {
          if (v111 < v10)
          {
            if (*(v23 + 56))
            {
              v112 = 2 * v111;
              if (!v111)
              {
                v112 = 8;
              }

              if (v112 <= v10)
              {
                v113 = v10;
              }

              else
              {
                v113 = v112;
              }

              v104 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((v23 + 56), v113);
            }

            else
            {
              v104 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((v23 + 56), v10);
              ++*(v23 + 80);
            }
          }

          v108 = *(v23 + 72);
        }

        v114 = *(v23 + 88) + 24 * v108;
        if (v108 > v18)
        {
          v106 = *(v114 - 24);
          *v114 = v106;
          *(v114 + 16) = *(v114 - 8);
          v115 = *(v23 + 88);
          v105 = v115 + 24 * v18;
          v116 = v115 + 24 * *(v23 + 72);
          if (v116 - 24 != v105)
          {
            v104 = memmove((v105 + 24), v105, v116 - 24 - v105 - 3);
            v115 = *(v23 + 88);
          }

          v114 = v115 + 24 * v18;
        }

        *v114 = v19;
        *(v114 + 8) = v35;
        *(v114 + 16) = v107;
        *(v114 + 20) = v94;
        ++*(v23 + 72);
        ++*(v23 + 80);
      }

      if (++v35 == v66)
      {
        goto LABEL_173;
      }
    }

    *&v168 = 0;
    v180 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 468;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v35;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_233:
    *&v168 = 0;
    v180 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "insert";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 855;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v18;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_234:
    v172 = 0;
    v180 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = v156;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 468;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v38;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v66;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_235:
    re::internal::assertLog(6, v105, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, *v166);
    _os_crash();
    __break(1u);
LABEL_236:
    re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) ", "bindPointTargetIdentifier", "addToLookupTable", 954);
    _os_crash();
    __break(1u);
    goto LABEL_237;
  }

LABEL_173:
  if (v96 <= 0.0)
  {
    v117 = a5;
    v119 = v163;
    v80 = v167;
    goto LABEL_188;
  }

  v117 = a5;
  *buf = *a5;
  buf[4] = v161;
  v80 = v167;
  if (v161)
  {
    *&buf[8] = 0;
  }

  buf[12] = a3;
  if (a3)
  {
    *&buf[16] = 0;
  }

  *&buf[20] = *(a5 + 4);
  v118 = re::AnimationManager::addFadeOutHandoffBehavior(v167, v19, buf);
  if (v163 == 1)
  {
    if (*(a5 + 8) == 1)
    {
      LOBYTE(v172) = v95 != 0x80000000;
      if (v95 != 0x80000000)
      {
        HIDWORD(v172) = v95;
      }

      v106.n128_f64[0] = re::AnimationManager::removeLayerExcept(v167, v19, &v172, v118);
    }

    else
    {
      v106.n128_f64[0] = re::AnimationManager::removeExcept(v167, v19, v118);
    }

    v119 = 1;
LABEL_188:
    v121 = v96 <= 0.0 && v119 == 1;
    v122 = !v121;
    if (v119 != 2 && (v122 & 1) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_196;
  }

  if (v163 != 2)
  {
    goto LABEL_203;
  }

LABEL_196:
  if (*(v117 + 8))
  {
    v123 = 1;
LABEL_198:
    v175[0] = v95 != 0x80000000;
    if (v95 != 0x80000000)
    {
      v176 = v95;
    }

    v106.n128_f64[0] = re::AnimationManager::removeLayerExcept(v80, v19, v175, 0);
    if (v123)
    {
      goto LABEL_203;
    }

    goto LABEL_227;
  }

  v106.n128_f64[0] = re::AnimationManager::removeExcept(v80, v19, 0);
LABEL_203:
  v124 = *(v19 + 232);
  if (v124)
  {
    v125 = *(v19 + 240);
    v126 = 8 * v124;
    do
    {
      if (*v125)
      {
        (*(**v125 + 56))(*v125, v106);
      }

      ++v125;
      v126 -= 8;
    }

    while (v126);
  }

  re::AnimationManager::updateScheduler(v80);
  if (*(v19 + 32))
  {
    v127 = 0;
    do
    {
      if (*(re::internal::TimelineTree::source(v19, v127) + 8) == 49)
      {
        v80 = re::internal::TimelineTree::source(v19, v127);
        *buf = 255;
        buf[2] = 0;
        *&buf[4] = 0;
        memset(&buf[16], 0, 41);
        v128 = *(v80 + 120);
        v129 = *(v80 + 104);
        if ((v128 & 0x80000000) == 0)
        {
          do
          {
            v130 = (*(*v129 + 16))(v129, v128);
            v129 = *(v80 + 104);
            v132 = *(v129 + 16);
            if (v132 <= v128)
            {
              re::internal::assertLog(6, v131, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v128, v132);
              _os_crash();
              __break(1u);
              goto LABEL_226;
            }

            if (v130)
            {
              break;
            }

            v128 = *(*(v129 + 8) + 4 * v128);
          }

          while ((v128 & 0x80000000) == 0);
          if (v130)
          {
            *&buf[40] = v130 + 8;
            *(v130 + 104) = 1;
          }
        }

        to[0] = 0;
        objc_copyWeak(to, (v129 + 168));
        WeakRetained = objc_loadWeakRetained(to);
        if (WeakRetained)
        {
          v135 = WeakRetained - 8;
        }

        else
        {
          v135 = 0;
        }

        v136 = *(v80 + 104);
        v137 = *(v136 + 160);
        v138 = *(v80 + 120);
        v139 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v136 + 80), v134);
        v140 = re::RelativeArray<re::AnimationClock>::operator[](v139, v138);
        v142 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(v80 + 104) + 80), v141);
        v143 = re::RelativeArray<re::AnimationClock>::operator[](v142, 0);
        (*(*v135 + 40))(v135, 12, v137, v140, *(v80 + 112), -1, v80, buf, *(v143 + 1));

        objc_destroyWeak(to);
        v80 = v167;
      }

      ++v127;
    }

    while (*(v19 + 32) > v127);
  }

  return v80;
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, __int128 *a4, char a5, void *a6)
{
  v7 = *a4;
  v8 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, a3, 0, &v7, a5, 0, a6, 0, 0);
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, void *a3, __int128 *a4, char a5, re::internal::TimelineTreeInfo *a6, void *a7)
{
  v8 = *a4;
  v9 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, 0, a3, &v8, a5, a6, a7, 0, 0);
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 312 * a2;
}

double re::AnimationManager::updateScheduler(re::AnimationManager *this)
{
  v2 = *(this + 56);
  if (*(this + 29))
  {
    if (*(this + 28))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(this + 44) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 56) = v3;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*(*v4 + 16))(v4);
  }

  v7 = *(this + 4);
  if (v7 != -1)
  {
    v8 = *(this + 1);
    if (*(v8 + 136) <= v7 >> 6)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(v8 + 144))
    {
      v9 = v8 + 152;
    }

    else
    {
      v9 = *(v8 + 160);
    }

    v10 = *(this + 56);
    if (v10 != ((*(v9 + 8 * (v7 >> 6)) >> v7) & 1))
    {
      re::Scheduler::setEnabled(v8, v7, v10);
      if (*(this + 56) == 1)
      {
        v11 = *(this + 1);
        v12 = *(this + 4);

        return re::Scheduler::resetTaskCurrentTime(v11, v12);
      }
    }
  }

  return result;
}

void re::AnimationManager::stopAnimation(re::AnimationManager *this, const re::BindNode *a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported. BindNode does not yet have a function to iterate over children.", "!Unreachable code", "stopAnimation", 547);
  _os_crash();
  __break(1u);
}

re::AnimationManager *re::AnimationManager::stopAnimation(re::AnimationManager *this, const re::BindPoint *a2)
{
  if (*(this + 29))
  {
    return re::AnimationManager::removeCompositionChainsForBindPoint(this, a2, 1);
  }

  return this;
}

uint64_t re::AnimationManager::removeCompositionChainsForBindPoint(re::AnimationManager *this, const re::BindPoint *a2, BOOL a3)
{
  v8 = *a2;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v9, a2 + 1);
  for (i = re::AnimationManager::getCompositionChain(this, &v8); i; i = re::AnimationManager::getCompositionChain(this, &v8))
  {
    v6 = *(i + 72);
    if (!v6)
    {
      break;
    }

    re::AnimationManager::remove(this, *(*(i + 88) + 24 * v6 - 24), a3);
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
}

void re::AnimationManager::stopAllAnimations(re::AnimationManager *this)
{
  if (*(this + 29))
  {
    v2 = 0;
    v3 = this + 376;
    v4 = 1;
    do
    {
      v5 = v4;
      for (i = &v3[40 * v2]; ; re::AnimationManager::removeCompositionChainsForBindPoint(this, (*(*(i + 4) + 8 * v7 - 8) + 8), 0))
      {
        v7 = *(i + 2);
        if (!v7)
        {
          break;
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);

    re::AnimationManager::raiseAnimationEvents(this);
  }
}

void re::AnimationManager::raiseAnimationEvents(re::AnimationManager *this)
{
  v2 = *(this + 122);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 59) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 122);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v6 = *(*(this + 59) + 24 * v3 + 16);
    (*(*v6 + 48))(v6);
    v7 = *(this + 122);
    if (v7 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 59) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v7;
LABEL_14:
    ;
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 456);
}

uint64_t (***re::DataArray<re::internal::TimelineTreeInfo>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -311)
      {
        v7 = 0x6F96F96F96F96F97 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash();
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash();
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::AnimationManager::getCompositionChain(re::AnimationManager *this, const re::BindPoint *a2)
{
  re::AnimationManager::updateLookupTableForAllBuckets(this);
  v4 = re::BindPoint::targetIdentifier(a2);
  v5 = 0;
  v6 = this + 280;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  for (i = 1; ; i = 0)
  {
    v10 = i;
    v11 = &v6[48 * v5];
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v13, v11, v4, v8);
    if (v14 != 0x7FFFFFFF)
    {
      break;
    }

    v5 = 1;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return *(*(v11 + 16) + 32 * v14 + 16);
}

uint64_t anonymous namespace::getBindPath(void *a1, re::internal::TimelineTree *a2, int a3)
{
  LODWORD(v3) = a3;
  a1[1] = 0;
  v6 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v7 = re::DynamicString::setCapacity(a1, 0);
  result = re::DynamicString::setCapacity(a1, 0x80uLL);
  if ((v3 & 0x80000000) == 0)
  {
    v3 = v3;
    while (1)
    {
      result = re::internal::TimelineTree::source(a2, v3);
      v10 = *(result + 48);
      v11 = v10 & 1;
      v12 = v10 >> 1;
      v13 = v10 >> 1;
      if (*(result + 48))
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = result;
        if (*v6)
        {
          v16 = *v6 >> 1;
        }

        else
        {
          v16 = *v6 >> 1;
        }

        if (v16)
        {
          re::DynamicString::insert(a1, 0, 1, 46);
          v17 = *(v15 + 48);
          v11 = v17 & 1;
          v12 = v17 >> 1;
          v13 = v17 >> 1;
        }

        if (v11)
        {
          v18 = *(v15 + 56);
        }

        else
        {
          v18 = (v15 + 49);
        }

        if (v11)
        {
          v19 = v12;
        }

        else
        {
          v19 = v13;
        }

        result = re::DynamicString::insert(a1, 0, v18, v19);
      }

      v20 = *(a2 + 2);
      if (v20 <= v3)
      {
        break;
      }

      v3 = *(*(a2 + 1) + 4 * v3);
      if ((v3 & 0x80000000) != 0)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v20);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 312 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::AnimationManager::addFadeOutHandoffBehavior(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v8 = re::internal::AnimationHandoffBehavior::AnimationHandoffBehavior(v6, a1, a2, a3);
  re::DynamicArray<re::internal::AnimationHandoffBehavior *>::add(a1 + 5 * *(a2 + 248) + 25, &v8);
  return v8;
}

double re::AnimationManager::removeLayerExcept(re::AnimationManager *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v27 = 0x7FFFFFFFLL;
  v4 = *(a2 + 232);
  if (!v4)
  {
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
  }

  v7 = a2;
  v8 = 0;
  v9 = (a3 + 4);
  do
  {
    v10 = *(v7[30] + 8 * v8);
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = v9;
    if ((*a3 & 1) == 0)
    {
      v12 = v7[13];
      if (v12 <= v8)
      {
        goto LABEL_34;
      }

      v11 = (*(v7[14] + 8 * v8) + 12);
    }

    LODWORD(v13) = *(v10 + 72);
    if (v13 - 1 < 0)
    {
      goto LABEL_17;
    }

    v14 = *v11;
    do
    {
      v13 = (v13 - 1);
      v15 = *(v10 + 72);
      if (v15 <= v13)
      {
        v28 = 0;
        memset(v37, 0, sizeof(v37));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v29 = 136315906;
        v30 = "operator[]";
        v31 = 1024;
        v32 = 789;
        v33 = 2048;
        v34 = v13;
        v35 = 2048;
        v36 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_34:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v12);
        _os_crash();
        __break(1u);
      }

      a2 = *(v10 + 88) + 24 * v13;
      if (*(a2 + 16) == v14 && *a2 != v7)
      {
        if (a4)
        {
          *&v37[0] = *a2;
          re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(a4 + 168, v37);
        }

        else
        {
          re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v24, a2);
        }
      }
    }

    while (v13 > 0);
    v4 = v7[29];
LABEL_17:
    ++v8;
  }

  while (v4 > v8);
  v16 = v26;
  if (v26)
  {
    v17 = 0;
    v18 = v25;
    v19 = (v25 + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 6;
      if (v20 < 0)
      {
        break;
      }

      if (v26 == ++v17)
      {
        LODWORD(v17) = v26;
        break;
      }
    }

    if (v26 != v17)
    {
      do
      {
        re::AnimationManager::remove(a1, *(v18 + 24 * v17 + 16), 1);
        if (v16 <= v17 + 1)
        {
          v21 = v17 + 1;
        }

        else
        {
          v21 = v16;
        }

        while (v21 - 1 != v17)
        {
          LODWORD(v17) = v17 + 1;
          if ((*(v18 + 24 * v17 + 8) & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }

        LODWORD(v17) = v21;
LABEL_31:
        ;
      }

      while (v17 != v16);
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
}

double re::AnimationManager::removeExcept(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, re::internal::AnimationHandoffBehavior *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v22 = 0x7FFFFFFFLL;
  v3 = *(a2 + 29);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*(a2 + 30) + 8 * i);
      if (v8)
      {
        LODWORD(v9) = *(v8 + 72);
        if (v9 - 1 >= 0)
        {
          do
          {
            v9 = (v9 - 1);
            v10 = *(v8 + 72);
            if (v10 <= v9)
            {
              v23 = 0;
              memset(v32, 0, sizeof(v32));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v24 = 136315906;
              v25 = "operator[]";
              v26 = 1024;
              v27 = 789;
              v28 = 2048;
              v29 = v9;
              v30 = 2048;
              v31 = v10;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v11 = (*(v8 + 88) + 24 * v9);
            if (*v11 != a2)
            {
              if (a3)
              {
                *&v32[0] = *v11;
                re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(a3 + 168, v32);
              }

              else
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v19, v11);
              }
            }
          }

          while (v9 > 0);
          v3 = *(a2 + 29);
        }
      }
    }

    v12 = v21;
    if (v21)
    {
      v13 = 0;
      v14 = v20;
      v15 = (v20 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 < 0)
        {
          break;
        }

        if (v21 == ++v13)
        {
          LODWORD(v13) = v21;
          break;
        }
      }

      if (v21 != v13)
      {
        do
        {
          re::AnimationManager::remove(this, *(v14 + 24 * v13 + 16), 1);
          if (v12 <= v13 + 1)
          {
            v17 = v13 + 1;
          }

          else
          {
            v17 = v12;
          }

          while (v17 - 1 != v13)
          {
            LODWORD(v13) = v13 + 1;
            if ((*(v14 + 24 * v13 + 8) & 0x80000000) != 0)
            {
              goto LABEL_26;
            }
          }

          LODWORD(v13) = v17;
LABEL_26:
          ;
        }

        while (v13 != v12);
      }
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v19);
}

double re::AnimationManager::remove(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = this;
  v45 = *MEMORY[0x1E69E9840];
  v6 = re::animationLogObjects(this);
  v7 = re::AnimationLogObjects::loggingEnabled(v6);
  if (v7)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v8 = *(a2 + 248);
    v9 = v5 + 40 * v8;
    v10 = *(v9 + 27);
    if (v10)
    {
      v11 = *(v9 + 29);
      v12 = 8 * v10;
      do
      {
        if (**v11 == a2)
        {
          **v11 = 0;
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }

    if ((*(v5 + 504) & 1) == 0)
    {
      re::AnimationManager::cleanUpHandoffBehaviors(v5, v8);
    }

    v13 = *(a2 + 29);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      while (*(a2 + 23) > v15)
      {
        if (*(*(a2 + 24) + v14) == 1)
        {
          v16 = *(a2 + 248);
          v17 = re::DataArray<re::internal::TimelineTreeInfo>::handle(v5 + 64 * v16 + 72, a2);
          re::AnimationManager::blendFactorAsBindPoint(v5, v17 & 0xFFFFFFFFFFFFFFLL | (v16 << 56), v15, buf);
          if (*(v5 + 29))
          {
            re::AnimationManager::removeCompositionChainsForBindPoint(v5, buf, 1);
          }

          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          v13 = *(a2 + 29);
        }

        ++v15;
        v14 += 12;
        if (v13 <= v15)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_50;
    }

LABEL_17:
    v18 = *(a2 + 13);
    if (v18)
    {
      v19 = *(a2 + 14);
      do
      {
        if (*(*v19 + 8) == 49)
        {
          re::TypedEventTimelineInstance<float>::timelineRemoved(*v19, v8);
        }

        ++v19;
        --v18;
      }

      while (v18);
      v13 = *(a2 + 29);
    }

    if (v13)
    {
      for (i = 0; v13 > i; ++i)
      {
        v21 = *(*(a2 + 30) + 8 * i);
        if (v21)
        {
          (*(*v21 + 64))(v21);
          v22 = *(v21 + 72);
          if (!v22)
          {
            goto LABEL_52;
          }

          v23 = 0;
          v24 = 0;
          v25 = *(v21 + 88);
          while (*(v25 + v23) != a2 || i != *(v25 + v23 + 8))
          {
            ++v24;
            v23 += 24;
            if (v22 == v24)
            {
              goto LABEL_52;
            }
          }

          if (v22 <= v24)
          {
            goto LABEL_52;
          }

          v26 = v22 - 1;
          if (v22 - 1 > v24 && 24 * v22 - 24 != v23)
          {
            memmove((*(v21 + 88) + v23), (*(v21 + 88) + v23 + 24), 24 * v22 - v23 - 27);
            v26 = *(v21 + 72) - 1;
          }

          *(v21 + 72) = v26;
          ++*(v21 + 80);
          v13 = *(a2 + 29);
          if (v13 <= i)
          {
            goto LABEL_51;
          }

          *(*(a2 + 30) + 8 * i) = 0;
        }
      }
    }

    v27 = re::internal::TimelineTreeInfo::currentTime(a2);
    re::AnimationManager::addAnimationEvent(v5, 4, a2, v3, v27);
    if (*(v5 + 504))
    {
      break;
    }

    re::AnimationManager::updateLookupTableForAllBuckets(v5);
    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = v30;
      v32 = v5 + 40 * v29 + 376;
      if (*(v32 + 16) >= 1)
      {
        break;
      }

LABEL_47:
      v30 = 0;
      v29 = 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v33 = v5 + 48 * v29 + 280;
    v3 = (*(v32 + 16) & 0x7FFFFFFFLL) - 1;
    while (*(v32 + 16) > v3)
    {
      v34 = *(*(v32 + 32) + 8 * v3);
      if (!v34[9])
      {
        (*(*v34 + 40))(*(*(v32 + 32) + 8 * v3));
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v33, v34[12]);
        v34[12] = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v32, v3);
        (**v34)(v34);
      }

      v35 = v3-- + 1;
      if (v35 <= 1)
      {
        goto LABEL_47;
      }
    }

    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    v7 = _os_crash_msg();
    __break(1u);
LABEL_53:
    v39 = *re::animationLogObjects(v7);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 6))
      {
        v40 = *(a2 + 7);
      }

      else
      {
        v40 = a2 + 49;
      }

      *buf = 134218242;
      *&buf[4] = a2;
      *&buf[12] = 2080;
      *&buf[14] = v40;
      _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "ANIM: Remove Timeline Tree %p %s\n", buf, 0x16u);
    }
  }

LABEL_48:
  v36 = v5 + 64 * *(a2 + 248);
  v37 = re::DataArray<re::internal::TimelineTreeInfo>::handle((v36 + 72), a2);
  re::DataArray<re::internal::TimelineTreeInfo>::destroy((v36 + 72), v37);
  return re::AnimationManager::updateScheduler(v5);
}

void re::AnimationManager::addAnimationEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v30[0] = 0;
  objc_copyWeak(v30, (a3 + 168));
  WeakRetained = objc_loadWeakRetained(v30);
  v11 = WeakRetained;
  v12 = WeakRetained - 8;
  if (WeakRetained)
  {
    v13 = WeakRetained - 8;
  }

  else
  {
    v13 = 0;
  }

  objc_destroyWeak(v30);
  if (v11)
  {
    v14 = re::DataArray<re::internal::TimelineTreeInfo>::handle(a1 + (*(a3 + 248) << 6) + 72, a3);
    v15 = *(a3 + 248);
    v30[0] = a1;
    v30[1] = (v14 & 0xFFFFFFFFFFFFFFLL | (v15 << 56));
    v17 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a3 + 80), v16);
    v18 = re::RelativeArray<re::AnimationClock>::operator[](v17, 0);
    (*(*v12 + 32))(v12, a2, v30, v18, a5);
    if (a4)
    {
      (*(*v12 + 48))(v12);
LABEL_21:

      return;
    }

    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
    v20 = v19 ^ (v19 >> 31);
    v21 = *(a1 + 480);
    if (v21)
    {
      v22 = v20 % v21;
      v23 = *(*(a1 + 464) + 4 * (v20 % v21));
      if (v23 != 0x7FFFFFFF)
      {
        v24 = *(a1 + 472);
        if (*(v24 + 24 * v23 + 16) == v12)
        {
          goto LABEL_21;
        }

        while (1)
        {
          LODWORD(v23) = *(v24 + 24 * v23 + 8) & 0x7FFFFFFF;
          if (v23 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v24 + 24 * v23 + 16) == v13)
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v25 = *(a1 + 492);
    if (v25 == 0x7FFFFFFF)
    {
      v25 = *(a1 + 488);
      v26 = v25;
      if (v25 == v21)
      {
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(a1 + 456, 2 * *(a1 + 484));
        LODWORD(v22) = v20 % *(a1 + 480);
        v26 = *(a1 + 488);
      }

      *(a1 + 488) = v26 + 1;
      v27 = *(a1 + 472);
      v28 = *(v27 + 24 * v25 + 8);
    }

    else
    {
      v27 = *(a1 + 472);
      v28 = *(v27 + 24 * v25 + 8);
      *(a1 + 492) = v28 & 0x7FFFFFFF;
    }

    *(v27 + 24 * v25 + 8) = v28 | 0x80000000;
    *(*(a1 + 472) + 24 * v25 + 8) = *(*(a1 + 472) + 24 * v25 + 8) & 0x80000000 | *(*(a1 + 464) + 4 * v22);
    *(*(a1 + 472) + 24 * v25) = v20;
    *(*(a1 + 472) + 24 * v25 + 16) = v13;
    v29 = v11;
    *(*(a1 + 464) + 4 * v22) = v25;
    ++*(a1 + 484);
    ++*(a1 + 496);
LABEL_20:
    v12 = v13;
    goto LABEL_21;
  }
}

Float64 re::internal::TimelineTreeInfo::currentTime(re::internal::TimelineTreeInfo *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    re::internal::TimelineTreeInfo::currentTime(v2);
    return v3 - *(this + 37);
  }

  else
  {
    CMTimebaseGetTime(&time, *(this + 34));
    return CMTimeGetSeconds(&time);
  }
}

uint64_t re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    *(*(result + 32) + 8 * a2) = *(*(result + 32) + 8 * v2 - 8);
  }

  *(result + 16) = v2 - 1;
  ++*(result + 24);
  return result;
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 32 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 32 * v13) = *(v6 + 32 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

void re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  *(*(a1 + 8) + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

double re::AnimationManager::removePending(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, const re::internal::AnimationHandoffBehavior *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v27 = 0x7FFFFFFFLL;
  v3 = *(a2 + 29);
  if (v3)
  {
    v7 = 0;
    v8 = a3 + 192;
    do
    {
      v9 = *(*(a2 + 30) + 8 * v7);
      if (v9)
      {
        v10 = *(v9 + 72) - 1;
        if ((v10 & 0x80000000) == 0)
        {
          do
          {
            v11 = v10;
            v12 = *(v9 + 72);
            if (v12 <= v10)
            {
              v28 = 0;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v37 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v29 = 136315906;
              v30 = "operator[]";
              v31 = 1024;
              v32 = 789;
              v33 = 2048;
              v34 = v11;
              v35 = 2048;
              v36 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v13 = *(a3 + 25);
            if (*(a3 + 184))
            {
              v13 = v8;
            }

            v14 = *(a3 + 22);
            if (v14)
            {
              v15 = (*(v9 + 88) + 24 * v10);
              v16 = 8 * v14;
              while (*v13 != *v15)
              {
                ++v13;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_14;
                }
              }

              re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v24, v15);
            }

LABEL_14:
            v10 = v11 - 1;
          }

          while (v11 > 0);
          v3 = *(a2 + 29);
        }
      }

      ++v7;
    }

    while (v3 > v7);
    v17 = v26;
    if (v26)
    {
      v18 = 0;
      v19 = v25;
      v20 = (v25 + 8);
      while (1)
      {
        v21 = *v20;
        v20 += 6;
        if (v21 < 0)
        {
          break;
        }

        if (v26 == ++v18)
        {
          LODWORD(v18) = v26;
          break;
        }
      }

      if (v26 != v18)
      {
        do
        {
          re::AnimationManager::remove(this, *(v19 + 24 * v18 + 16), 1);
          if (v17 <= v18 + 1)
          {
            v22 = v18 + 1;
          }

          else
          {
            v22 = v17;
          }

          while (v22 - 1 != v18)
          {
            LODWORD(v18) = v18 + 1;
            if ((*(v19 + 24 * v18 + 8) & 0x80000000) != 0)
            {
              goto LABEL_30;
            }
          }

          LODWORD(v18) = v22;
LABEL_30:
          ;
        }

        while (v18 != v17);
      }
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
}

void *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::AnimationManager::cleanUpHandoffBehaviors(_anonymous_namespace_ *a1, int a2)
{
  v4 = a1 + 40 * a2;
  v5 = *(v4 + 27);
  if (v5)
  {
    v6 = *(v4 + 29);
    v7 = &v6[v5];
    do
    {
      v8 = *v6;
      if (!**v6)
      {
        v9 = *(v4 + 29);
        v10 = *(v4 + 27);
        v11 = v9;
        if (v10)
        {
          v12 = 8 * v10;
          v11 = *(v4 + 29);
          while (*v11 != v8)
          {
            ++v11;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_14;
            }
          }
        }

        v13 = &v9[v10];
        if (v11 != v13)
        {
          v14 = v11 - v9;
          if (v10 <= v14 >> 3)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (v10 - 1 > v14 >> 3)
          {
            *(v9 + v14) = *(v13 - 1);
          }

          *(v4 + 27) = v10 - 1;
          ++*(v4 + 56);
          re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(v8);
        }
      }

LABEL_14:
      ++v6;
    }

    while (v6 != v7);
  }
}

void re::AnimationManager::update(re::AnimationManager *this, float a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v9, 1000, this);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v8);
  *(this + 504) = 1;
  if (*(this + 57) == 1)
  {
    if (a2 < 0.0)
    {
      goto LABEL_7;
    }

    v4 = *(this + 8);
    CMTimebaseGetTime(&lhs, v4);
    CMTimeMake(&rhs, (a2 * 18000.0 + 0.5), 18000);
    CMTimeAdd(&time, &lhs, &rhs);
    CMTimebaseSetTime(v4, &time);
  }

  if (*(this + 29))
  {
    re::AnimationManager::update(this, 0);
    re::AnimationManager::applyAnimations(this, 0);
    re::AnimationManager::update(this, 1);
  }

  *(this + 504) = 0;
LABEL_7:
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(v8);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v9);
}

re::AnimationManager *re::AnimationManager::update(re::AnimationManager *a1, int a2)
{
  v4 = a1 + 64 * a2 + 72;
  v5 = a1 + 40 * a2;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v16, v4, 0);
  if (v4 != v16 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      v7 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(&v16);
      re::AnimationManager::updateTime(a1, v7);
      re::AnimationManager::updateBlendFactors(v8, v7);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
    }

    while (v16 != v4 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
  }

  result = re::AnimationManager::updateHandoffBehaviors(a1, a2);
  v12 = *(v5 + 49);
  if (v12)
  {
    v13 = *(v5 + 51);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      result = (*(*v15 + 32))(v15);
      v14 -= 8;
    }

    while (v14);
  }

  return result;
}

double re::AnimationManager::applyAnimations(_anonymous_namespace_ *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a2;
  re::AnimationManager::updateLookupTableForAllBuckets(a1);
  if (*(v4 + 49) >= 1)
  {
    v5 = (*(v4 + 49) & 0x7FFFFFFFLL) - 1;
    do
    {
      if (*(v4 + 49) <= v5)
      {
        memset(v26, 0, sizeof(v26));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(*(v4 + 51) + 8 * v5);
      if (!*(v6 + 72))
      {
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 48 * a2 + 280, *(v6 + 96));
        *(v6 + 96) = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt((v4 + 376), v5);
        (**v6)(v6);
      }

      v7 = v5-- + 1;
    }

    while (v7 > 1);
  }

  if ((*(a1 + 506) & 1) == 0)
  {
    v8 = a1 + 64 * a2 + 72;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v26, v8, 0);
    if (v8 != *&v26[0] || DWORD2(v26[0]) != 0xFFFFFFFFLL)
    {
      do
      {
        v9 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(v26);
        v11 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(v9 + 20, v10);
        if (*re::RelativeArray<re::AnimationClock>::operator[](v11, 0) == 1)
        {
          re::AnimationManager::remove(a1, v9, 0);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v26);
      }

      while (*&v26[0] != v8 || WORD4(v26[0]) != 0xFFFF || WORD5(v26[0]) != 0xFFFF);
    }
  }

  v14 = *(v4 + 49);
  if (v14)
  {
    v15 = *(v4 + 51);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      (*(*v17 + 40))(v17);
      v16 -= 8;
    }

    while (v16);
  }

  if (*(a1 + 506))
  {
    v18 = a1 + 64 * a2 + 72;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v26, v18, 0);
    if (v18 != *&v26[0] || DWORD2(v26[0]) != 0xFFFFFFFFLL)
    {
      do
      {
        v20 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(v26);
        v22 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(v20 + 20, v21);
        if (*re::RelativeArray<re::AnimationClock>::operator[](v22, 0) == 1)
        {
          re::AnimationManager::remove(a1, v20, 0);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v26);
      }

      while (*&v26[0] != v18 || WORD4(v26[0]) != 0xFFFF || WORD5(v26[0]) != 0xFFFF);
    }
  }

  re::AnimationManager::cleanUpHandoffBehaviors(a1, a2);
  return re::AnimationManager::updateScheduler(a1);
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(unsigned __int16 *a1)
{
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 312 * a1[4];
}

void re::AnimationManager::updateTime(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v4 = *(a2 + 4);
  v5 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, a2);
  v6 = *re::RelativeArray<re::AnimationClock>::operator[](v5, 0);
  v8 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v7);
  v9 = *(re::RelativeArray<re::AnimationClock>::operator[](v8, 0) + 16);
  re::internal::TimelineTreeInfo::updateEffectiveSpeed(a2);
  v10 = (*(*a2 + 24))(a2);
  if (*(a2 + 33))
  {
    realitykit_willSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.time");
  }

  v11 = re::internal::TimelineTreeInfo::currentTime(a2);
  re::internal::TimelineTree::setTime(a2, v11, v10, v12);
  if (*(a2 + 33))
  {
    realitykit_didSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.time");
  }

  v14 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v13);
  if (!v14[1])
  {
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v16 = *v14;
  if (v16)
  {
    v17 = v14 + v16;
  }

  else
  {
    v17 = 0;
  }

  v17[32] = 0;
  to = 0;
  objc_copyWeak(&to, a2 + 21);
  v18 = objc_loadWeakRetained(&to);
  objc_destroyWeak(&to);
  if (!v18)
  {
    return;
  }

  v20 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v19);
  v21 = re::RelativeArray<re::AnimationClock>::operator[](v20, 0);
  v23 = *v21;
  v24 = *(v21 + 1);
  if (v6 != v23)
  {
    if (v23 != 3)
    {
      if ((v23 & 0xFFFFFFFB) == 1)
      {
        if (*(a2 + 33))
        {
          realitykit_willSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.isComplete");
        }

        re::AnimationManager::addAnimationEvent(this, 2, a2, 0, v24);
        if (*(a2 + 33))
        {
          realitykit_didSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.isComplete");
        }
      }

      goto LABEL_27;
    }

    v27 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v22);
    if (v27[1])
    {
      v29 = *v27;
      if (v29)
      {
        v30 = v27 + v29;
      }

      else
      {
        v30 = 0;
      }

      v30[32] = 1;
      v25 = this;
      v26 = 1;
      goto LABEL_21;
    }

LABEL_38:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    return;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v21 + 16) & 0x7FFFFFFFu) >= 0x7F800000 || floorf(v9) == floorf(*(v21 + 16)))
  {
    goto LABEL_27;
  }

  v25 = this;
  v26 = 3;
LABEL_21:
  re::AnimationManager::addAnimationEvent(v25, v26, a2, 0, v24);
LABEL_27:
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*(re::internal::TimelineTree::source(a2, i) + 8) == 49)
      {
        v32 = re::internal::TimelineTree::source(a2, i);
        if ((*(v32 + 96) & 1) == 0)
        {
          v34 = v32;
          v35 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v33);
          v36 = re::RelativeArray<re::AnimationClock>::operator[](v35, i);
          v39 = *v36;
          v40 = v36[16];
          if (v40 == 1)
          {
            v41 = *(v36 + 3);
          }

          v37 = *(v36 + 2);
          v38 = *(v36 + 3);
          v44 = *(v36 + 8);
          v42 = v37;
          v43 = v38;
          re::TypedEventTimelineInstance<float>::processEvents(v34, &v39, 0);
        }
      }
    }
  }
}

float re::AnimationManager::updateBlendFactors(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v2 = *(a2 + 23);
  if (!v2)
  {
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(a2 + 26);
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *(a2 + 4);
  v5 = *(a2 + 24);
  v6 = 4;
  if (*v5)
  {
    v6 = 8;
  }

  result = *&v5[v6];
  v8 = *(a2 + 27);
  *v8 = result;
  if (v4 >= 2)
  {
    v10 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = v5 + 12;
    v13 = 1;
    while (v11 != v13)
    {
      v14 = *(v10 + 4 * v13);
      if (v3 <= v14)
      {
        goto LABEL_20;
      }

      if (v2 == v13)
      {
        goto LABEL_21;
      }

      if (v3 == v13)
      {
        goto LABEL_22;
      }

      if (*v12)
      {
        v15 = 8;
      }

      else
      {
        v15 = 4;
      }

      result = v8[v14] * *&v12[v15];
      v8[v13++] = result;
      v12 += 12;
      if (v4 == v13)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v9);
    _os_crash();
    __break(1u);
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

re::AnimationManager *re::AnimationManager::updateHandoffBehaviors(re::AnimationManager *result, int a2)
{
  v2 = result + 40 * a2;
  v3 = *(v2 + 27);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 29);
    v6 = 8 * v3;
    do
    {
      v7 = *v5;
      if (**v5)
      {
        result = re::internal::AnimationHandoffBehavior::update(*v5, v4);
        if (result == 1)
        {
          *v7 = 0;
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void re::AnimationManager::applyAnimations(re::AnimationManager *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 1002, this);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v2);
  if (*(this + 29))
  {
    *(this + 505) = 1;
    re::AnimationManager::applyAnimations(this, 1);
    *(this + 505) = 0;
    re::AnimationManager::raiseAnimationEvents(this);
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(v2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

void re::AnimationManager::updateAndApplyAnimations(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *(this + 504) = 1;
  re::AnimationManager::updateTime(this, a2);
  re::AnimationManager::updateBlendFactors(v3, a2);
  v4 = *(a2 + 4);
  re::StackScratchAllocator::StackScratchAllocator(v25);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v24 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v21, v25, 3);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(a2 + 29);
      if (v6 <= i)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        v30 = 468;
        v31 = 2048;
        v32 = i;
        v33 = 2048;
        v34 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(a2 + 30) + 8 * i);
      if (!v7)
      {
        continue;
      }

      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v9 = v8 ^ (v8 >> 31);
      if (DWORD2(v22))
      {
        v10 = v9 % DWORD2(v22);
        v11 = *(*(&v21 + 1) + 4 * v10);
        if (v11 != 0x7FFFFFFF)
        {
          while (*(v22 + 24 * v11 + 16) != v7)
          {
            LODWORD(v11) = *(v22 + 24 * v11 + 8) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          continue;
        }

LABEL_9:
        v12 = v10;
        v13 = *(*(&v21 + 1) + 4 * v10);
        if (v13 != 0x7FFFFFFF)
        {
          while (*(v22 + 24 * v13 + 16) != v7)
          {
            LODWORD(v13) = *(v22 + 24 * v13 + 8) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_14:
      v14 = v24;
      if (v24 == 0x7FFFFFFF)
      {
        v14 = v23;
        v15 = v23;
        if (v23 == DWORD2(v22))
        {
          re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(&v21, 2 * HIDWORD(v22));
          v15 = v23;
          v12 = v9 % DWORD2(v22);
        }

        v23 = v15 + 1;
        v16 = v22;
        v17 = *(v22 + 24 * v14 + 8);
      }

      else
      {
        v16 = v22;
        v17 = *(v22 + 24 * v24 + 8);
        LODWORD(v24) = v17 & 0x7FFFFFFF;
      }

      v18 = v16 + 24 * v14;
      *(v18 + 8) = v17 | 0x80000000;
      v19 = *(&v21 + 1);
      *(v18 + 8) = *(*(&v21 + 1) + 4 * v12) | 0x80000000;
      *v18 = v9;
      *(v18 + 16) = v7;
      *(v19 + 4 * v12) = v14;
      ++HIDWORD(v22);
      ++HIDWORD(v24);
LABEL_20:
      (*(*v7 + 32))(v7);
      (*(*v7 + 40))(v7);
    }
  }

  *(this + 504) = 0;
  re::AnimationManager::raiseAnimationEvents(this);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v21);
  re::StackScratchAllocator::~StackScratchAllocator(v25);
}

void re::AnimationManager::blendFactorAsBindPoint(re::AnimationManager *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v10)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v11);
      v8 = &unk_1EE187000;
    }
  }

  *a4 = v8[40];
  *(a4 + 40) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  memset(v12, 0, sizeof(v12));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a4 + 8), v12);
  re::BindPoint::BindPointData::deinit(v12);
  v9 = *(a4 + 40) + 32 * *(a4 + 24);
  *(v9 - 32) = &unk_1F5CB02A0;
  *(v9 - 24) = this;
  *(v9 - 16) = a2;
  *(v9 - 8) = a3;
}

void re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::AnimationManager::isUpdating(re::AnimationManager *this)
{
  if (*(this + 504))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 505);
  }

  return v1 & 1;
}

double re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 24;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

re::internal::AriadneSignpostScopeGuard *re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return this;
}

void re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(void *a1)
{
  v3 = 312 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 16 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::internal::TimelineTree::~TimelineTree(re::internal::TimelineTree *this)
{
  re::internal::TimelineTree::~TimelineTree(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CB0398;
  objc_destroyWeak(this + 21);
  *(this + 21) = 0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  if (*(this + 120) == 1)
  {
    v3 = *(this + 17);
    if (v3)
    {
      free(v3);
      *(this + 17) = 0;
    }
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::DynamicString::deinit((this + 40));
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            v12 = *(a1 + 8);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t *re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(uint64_t *a1)
{
  *a1 = 0;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v3 = re::profilerThreadContext(isStatisticCollectionEnabled);
    *a1 = v3;
    if (*(v3 + 152))
    {
      a1[1] = mach_absolute_time();
    }
  }

  return a1;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[168].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[168].i64[0] = v5;
      v6 = v3[168].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[168].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[169] = vaddq_s64(v3[169], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::DynamicArray<re::BindPoint::BindPointData>::add(_anonymous_namespace_ *this, _OWORD *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  re::BindPoint::BindPointData::move(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
}

void *re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::internal::BindPointImpl<re::internal::BlendFactorBindPointImpl>::copyInto(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5CB02A0;
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

__n128 re::internal::BindPointImpl<re::internal::BlendFactorBindPointImpl>::moveInto(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5CB02A0;
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

uint64_t re::internal::BlendFactorBindPointImpl::hash(void *a1)
{
  v1 = 0xBF58476D1CE4E5B9 * (a1[1] ^ (a1[1] >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (a1[2] ^ (a1[2] >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = a1[3] ^ (a1[3] >> 30);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v5) ^ ((0xBF58476D1CE4E5B9 * v5) >> 27));
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + (((v6 ^ (v6 >> 31)) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4)) ^ v2;
}

uint64_t re::internal::BlendFactorBindPointImpl::targetIdentifier(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::baseValueUntyped(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::isOverridden(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    v2 = *BlendFactor;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

_BYTE *re::internal::BlendFactorBindPointImpl::setIsOverridden(re::internal::BlendFactorBindPointImpl *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (result)
  {
    *result = a5;
  }

  return result;
}

uint64_t re::internal::BlendFactorBindPointImpl::overrideValueUntyped(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::getBlendFactor(re::internal::BlendFactorBindPointImpl *this)
{
  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*(this + 1) + (*(this + 2) >> 56 << 6) + 72, *(this + 2));
  if (result)
  {
    v3 = *(this + 3);
    if (*(result + 184) <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(result + 192) + 12 * v3;
  }

  return result;
}

void re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v23, v4, a2);
      v5 = *a1;
      *a1 = *v23;
      v6 = *(a1 + 16);
      v7 = *&v23[8];
      *v23 = v5;
      *&v23[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 24);
      v8 = *&v23[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = v7;
        v13 = DWORD1(v9);
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(a1, (2 * v13));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 24 * v18 + 8) = *(*(a1 + 16) + 24 * v18 + 8) & 0x80000000 | *(v12 + 4 * v17);
            *(*(a1 + 16) + 24 * v18) = v15;
            *(*(a1 + 16) + 24 * v18 + 16) = *v14;
            *v14 = 0;
            *(v12 + 4 * v17) = v18;
            v13 = *(a1 + 28) + 1;
            *(a1 + 28) = v13;
            v10 = *&v23[32];
          }

          ++v11;
          v14 += 3;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v23);
    }
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 3;
    }
  }
}

re::DynamicString *re::RigGraphCompiler::getCurrentCompiledAssetInfo@<X0>(re::RigGraphCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::RigGraphAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::RigGraphCompiler::assetIntrospectionType(re::RigGraphCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigGraphAsset>(BOOL)::info = re::introspect_RigGraphAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 127);
}

uint64_t re::RigGraphCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v4 = "reriggraph";
  v3[0] = &v4;
  v3[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v3);
}

uint64_t *re::RigGraphCompiler::compile@<X0>(re::RigGraphCompiler *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 160, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *&v25 = &unk_1F5CB0448;
  *(&v26 + 1) = &v25;
  v30[3] = v30;
  v29 = v9;
  v30[0] = &unk_1F5CB0448;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](&v25);
  v10 = strrchr(a2, 46);
  if (!strcasecmp(v10 + 1, "reriggraph"))
  {
    v13 = v29;
    v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      v20 = v13;
      v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v13 = v20;
      if (v21)
      {
        re::introspect<re::RigGraphAsset>(BOOL)::info = re::introspect_RigGraphAsset(0);
        v14 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
        v13 = v20;
      }
    }

    re::AssetUtilities::readSourceJson(a2, v13, *(v14 + 127), a3, v22);
    if (v22[0])
    {
      v15 = v29;
      v29 = 0;
      *a4 = 1;
      *(a4 + 8) = v15;
    }

    else
    {
      *&v25 = 100;
      *(&v25 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v26, &v23);
      v16 = v26;
      *(a4 + 8) = v25;
      v17 = v27;
      v18 = v28;
      *a4 = 0;
      *(a4 + 24) = v16;
      *(a4 + 40) = v17;
      *(a4 + 48) = v18;
      if (v22[0] & 1) == 0 && v23 && (v24)
      {
        (*(*v23 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format("Invalid Asset Path: %s.", &v25, a2);
    v11 = v25;
    v12 = v26;
    *a4 = 0;
    *(a4 + 8) = 200;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v11;
    *(a4 + 40) = v12;
  }

  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v29);
}

re *re::internal::destroyPersistent<re::RigGraphAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::RigGraphNode>::deinit(a3 + 120);
    re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);
    re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::DynamicArray<char const*>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<float *>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<char const*>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

void *re::DynamicArray<char const*>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<float *>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[8 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 8 * v5), __src, 8 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 8 * v5), v12, 8 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::DynamicArray<re::RigGraphNode>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 200 * v4;
        do
        {
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v3 + 160);
          re::DynamicArray<re::StringID>::deinit(v3 + 120);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(v3 + 80);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3);
          v3 += 200;
          v5 -= 200;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshRigGraphIndex>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        v6 = (v3 + 40);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          re::StringID::destroyString((v6 - 32));
          v6 = (v6 + 64);
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 216 * v4;
        do
        {
          re::DynamicArray<re::RigGraphInputValue>::deinit(v3 + v5 + 176);
          re::DynamicArray<re::RigGraphConnection>::deinit((v3 + v5 + 136));
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v3 + v5 + 96);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v3 + v5 + 56);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v3 + v5 + 16);
          re::StringID::destroyString((v3 + v5));
          v5 += 216;
        }

        while (v6 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t std::__function::__func<re::RigGraphCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::RigGraphCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::RigGraphAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::RigGraphAsset *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::RigGraphAsset *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::solverTwoBoneIK(v4);
}

uint64_t re::solverTwoBoneIK(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    v136 = a11[2];
    v137 = *a11;
    v139 = a11[3];
    v140 = a11[1];
    if (a6)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v139 = 0;
  v140 = 0;
  v136 = 0;
  v137 = 0;
  if (!a6)
  {
    return 1;
  }

LABEL_3:
  v13 = 0;
  v14 = a10;
  LOBYTE(v15) = 1;
  v16 = 1.0;
  v138 = a6;
  while (v13 != a8)
  {
    v17 = *(a7 + 8 * v13);
    if (a4 <= v17)
    {
      goto LABEL_46;
    }

    v18 = *(a5 + 8 * v13);
    v19 = *(a3 + 4 * v17);
    v20 = v13;
    v21 = &re::solverTwoBoneIK(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *)::kDefaultUpPosition;
    if (a6 != v14)
    {
      v20 = 2 * v13;
      if (v14 <= 2 * v13)
      {
        goto LABEL_50;
      }

      v22 = v20 | 1;
      if (v14 <= (v20 | 1uLL))
      {
        goto LABEL_51;
      }

      v21 = (a9 + 16 * v22);
    }

    v23 = 0.0;
    if (v13 < v139)
    {
      v23 = *(v136 + 4 * v13) * 0.5;
    }

    v24 = 0.05;
    if (v13 < v140)
    {
      v24 = *(v137 + 4 * v13);
      if (v24 > v16)
      {
        v24 = v16;
      }

      if (v24 < 0.0)
      {
        v24 = 0.0;
      }
    }

    if (a2 <= v18)
    {
      goto LABEL_47;
    }

    if (a2 <= v19)
    {
      goto LABEL_48;
    }

    if (a2 <= v17)
    {
      goto LABEL_49;
    }

    v25 = (a1 + (v18 << 6));
    v26 = v25[3];
    v27 = (a1 + (v19 << 6));
    v28 = v27[3];
    v29 = (a1 + (v17 << 6));
    v30 = *(a9 + 16 * v20);
    v31 = vsubq_f32(v26, v30);
    v149 = vsubq_f32(v26, v28);
    v150 = vsubq_f32(v28, v29[3]);
    v32 = vmulq_f32(v150, v150);
    v33 = vmulq_f32(v149, v149);
    v34 = vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8));
    v37 = vextq_s8(v33, v33, 8uLL).u64[0];
    v35 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), v37), v34));
    v36 = vmulq_f32(v31, v31);
    *v37.i32 = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
    v38 = vaddv_f32(v35);
    v39 = v24 * v38;
    v40 = v38 - (v24 * v38);
    v151 = v26;
    v148 = v35;
    if (*v37.i32 >= v40)
    {
      v152 = v37;
      v154 = v31;
      v41 = expf(-(*v37.i32 - v40) / v39);
      v26 = v151;
      v42 = v40 + (v39 * (1.0 - v41));
      v30 = vsubq_f32(v151, vmulq_n_f32(vdivq_f32(v154, vdupq_lane_s32(v152, 0)), v42));
      v31 = vsubq_f32(v151, v30);
      v37 = __PAIR64__(v154.u32[1], LODWORD(v42));
    }

    v43 = vsubq_f32(v30, v26);
    v44 = vmulq_f32(v43, v43);
    v45 = v44.f32[2] + vaddv_f32(*v44.f32);
    v146 = v30;
    v153 = v37;
    v155 = v31;
    if (fabsf(v45) >= 1.0e-10)
    {
      v46 = v45;
      v47 = vrsqrte_f32(LODWORD(v45));
      v48 = vmul_f32(v47, vrsqrts_f32(LODWORD(v46), vmul_f32(v47, v47)));
      v43 = vmulq_n_f32(v43, vmul_f32(v48, vrsqrts_f32(LODWORD(v46), vmul_f32(v48, v48))).f32[0]);
    }

    v147 = v43;
    v50 = __sincosf_stret(v23);
    v51 = vmulq_n_f32(v147, v50.__sinval);
    v51.i32[2] = vmuls_lane_f32(v50.__sinval, v147, 2);
    v52 = v151;
    v53 = vsubq_f32(*v21, v151);
    v54 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
    v55 = vnegq_f32(v51);
    v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v55), v53, v54);
    v57 = vaddq_f32(v56, v56);
    v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL), v55), v58, v54);
    v60 = vaddq_f32(v151, vaddq_f32(vaddq_f32(v53, vmulq_n_f32(v58, v50.__cosval)), vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL)));
    if (*v153.i32 >= v38)
    {
      v72 = vdivq_f32(vnegq_f32(v155), vdupq_lane_s32(v153, 0));
      v71 = vdupq_lane_s32(v148, 1);
      v70 = vaddq_f32(v151, vmulq_lane_f32(v72, v148, 1));
      v64 = vaddq_f32(v151, vmulq_n_f32(v72, vadd_f32(vdup_lane_s32(v148, 1), v148).f32[0]));
    }

    else
    {
      v61 = vmul_f32(v148, v148);
      v62 = ((v61.f32[0] + (*v153.i32 * *v153.i32)) - v61.f32[1]) / (*v153.i32 + *v153.i32);
      v63 = vdivq_f32(v155, vdupq_lane_s32(v153, 0));
      v64 = v146;
      v65 = vaddq_f32(v146, vmulq_n_f32(v63, v62));
      v61.f32[0] = sqrtf(v61.f32[0] - (v62 * v62));
      v66 = vmulq_f32(v63, vsubq_f32(v60, v65));
      v67 = vsubq_f32(vsubq_f32(v60, vmulq_n_f32(v63, v66.f32[2] + vaddv_f32(*v66.f32))), v65);
      v68 = vmulq_f32(v67, v67);
      *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
      *v68.f32 = vrsqrte_f32(v69);
      *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
      v70 = vaddq_f32(v65, vmulq_n_f32(vmulq_n_f32(v67, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]), v61.f32[0]));
      v71 = vdupq_lane_s32(v148, 1);
    }

    v14 = a10;
    a6 = v138;
    v73 = vdupq_lane_s32(v148, 0);
    v74 = vdivq_f32(v150, v73);
    v75 = vdivq_f32(v149, v71);
    v76 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v77 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v78 = vnegq_f32(v74);
    v79 = vmlaq_f32(vmulq_f32(v77, v78), v75, v76);
    v80 = vmulq_f32(v79, v79);
    v80.f32[0] = sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0]));
    if (v80.f32[0] <= 0.01)
    {
      v82 = v27[2];
      v83 = vmulq_f32(v82, v82);
      *&v84 = v83.f32[2] + vaddv_f32(*v83.f32);
      *v83.f32 = vrsqrte_f32(v84);
      *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32)));
      v81 = vmulq_n_f32(v82, vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32))).f32[0]);
    }

    else
    {
      v81 = vdivq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vdupq_lane_s32(*v80.f32, 0));
    }

    v85 = 0;
    v86 = vsubq_f32(v60, v64);
    v87 = vsubq_f32(v151, v60);
    v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vnegq_f32(v86)), v87, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
    v89 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
    v90 = vmulq_f32(v88, v88);
    *&v91 = v90.f32[1] + (v90.f32[2] + v90.f32[0]);
    *v90.f32 = vrsqrte_f32(v91);
    *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
    v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
    v93 = vdivq_f32(vsubq_f32(v151, v70), v71);
    v94 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    v95 = vmlaq_f32(vmulq_f32(v94, vnegq_f32(v75)), v81, v77);
    v96 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
    v97 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v98 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v93)), v92, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
    v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    v100 = vzip1q_s32(v75, v96);
    v101 = vzip2q_s32(v75, v96);
    v102 = vzip1q_s32(v81, 0);
    v103 = vdupq_laneq_s32(v81, 2);
    v104 = vzip1q_s32(v100, v81);
    v156 = v104;
    v157 = vzip2q_s32(v100, v102);
    v158 = vzip1q_s32(v101, v103);
    do
    {
      v105 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v156 + v85))), v92, *&v156.i8[v85], 1), v99, *(&v156 + v85), 2);
      *(&v159 + v85) = v105;
      v85 += 16;
    }

    while (v85 != 48);
    v106 = 0;
    v107 = v159;
    v108 = v160;
    v109 = v161;
    v105.i64[0] = v25->i64[0];
    v104.i64[0] = v25[1].i64[0];
    v49.i64[0] = v25[2].i64[0];
    v105.i32[2] = v25->i32[2];
    v104.i32[2] = v25[1].i32[2];
    v49.i32[2] = v25[2].i32[2];
    v156 = v105;
    v157 = v104;
    v158 = v49;
    do
    {
      *(&v159 + v106) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, COERCE_FLOAT(*(&v156 + v106))), v108, *&v156.i8[v106], 1), v109, *(&v156 + v106), 2);
      v106 += 16;
    }

    while (v106 != 48);
    v110 = 0;
    v111 = v159;
    v112 = v160;
    v111.i32[3] = 0;
    v112.i32[3] = 0;
    v113 = v161;
    v113.i32[3] = 0;
    v16 = 1.0;
    v52.i32[3] = 1.0;
    *v25 = v111;
    v25[1] = v112;
    v25[2] = v113;
    v25[3] = v52;
    v114 = vdivq_f32(vsubq_f32(v70, v64), v73);
    v115 = vmlaq_f32(vmulq_f32(v94, v78), v81, v76);
    v116 = vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL);
    v117 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v114)), v92, vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL));
    v118 = vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL);
    v119 = vzip1q_s32(v74, v116);
    v120 = vzip2q_s32(v74, v116);
    v121 = vzip1q_s32(v119, v102);
    v122 = vzip2q_s32(v119, v102);
    v156 = v121;
    v157 = v122;
    v158 = vzip1q_s32(v120, v103);
    do
    {
      v123 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*(&v156 + v110))), v92, *&v156.i8[v110], 1), v118, *(&v156 + v110), 2);
      *(&v159 + v110) = v123;
      v110 += 16;
    }

    while (v110 != 48);
    v124 = 0;
    v125 = v159;
    v126 = v160;
    v127 = v161;
    v123.i64[0] = v27->i64[0];
    v122.i64[0] = v27[1].i64[0];
    v92.i64[0] = v27[2].i64[0];
    v123.i32[2] = v27->i32[2];
    v122.i32[2] = v27[1].i32[2];
    v92.i32[2] = v27[2].i32[2];
    v156 = v123;
    v157 = v122;
    v158 = v92;
    do
    {
      *(&v159 + v124) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v156 + v124))), v126, *&v156.i8[v124], 1), v127, *(&v156 + v124), 2);
      v124 += 16;
    }

    while (v124 != 48);
    v128 = 0;
    v129 = v159;
    v130 = v160;
    v129.i32[3] = 0;
    v130.i32[3] = 0;
    v131 = v161;
    v131.i32[3] = 0;
    v70.i32[3] = 1.0;
    *v27 = v129;
    v27[1] = v130;
    v27[2] = v131;
    v27[3] = v70;
    v70.i64[0] = v29->i64[0];
    v129.i64[0] = v29[1].i64[0];
    v130.i64[0] = v29[2].i64[0];
    v70.i32[2] = v29->i32[2];
    v129.i32[2] = v29[1].i32[2];
    v130.i32[2] = v29[2].i32[2];
    v156 = v70;
    v157 = v129;
    v158 = v130;
    do
    {
      *(&v159 + v128) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v156 + v128))), v126, *&v156.i8[v128], 1), v127, *(&v156 + v128), 2);
      v128 += 16;
    }

    while (v128 != 48);
    v132 = v159;
    v133 = v160;
    v132.i32[3] = 0;
    v133.i32[3] = 0;
    v134 = v161;
    v134.i32[3] = 0;
    v64.i32[3] = 1.0;
    *v29 = v132;
    v29[1] = v133;
    v29[2] = v134;
    v29[3] = v64;
    v15 = v15 & (*v153.i32 < v38);
    if (++v13 == v138)
    {
      return v15;
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a8, a8);
  _os_crash();
  __break(1u);
LABEL_46:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a4);
  _os_crash();
  __break(1u);
LABEL_47:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a2);
  _os_crash();
  __break(1u);
LABEL_48:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, a2);
  _os_crash();
  __break(1u);
LABEL_49:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a2);
  _os_crash();
  __break(1u);
LABEL_50:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v14);
  _os_crash();
  __break(1u);
LABEL_51:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v22, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::solverFABRIK(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a8;
  v15 = a7;
  v18 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (a11)
  {
    v20 = *a11;
    v57 = *(a11 + 4);
  }

  else
  {
    v57 = 32;
    v20 = 0.1;
  }

  if (a6)
  {
    v21 = 0;
    v22 = v20 * v20;
    LODWORD(result) = 1;
    while (1)
    {
      if (v21 == v14)
      {
        goto LABEL_67;
      }

      if (v21 == a10)
      {
        goto LABEL_68;
      }

      v24 = *(a5 + 8 * v21);
      if (v18 <= v24)
      {
        goto LABEL_69;
      }

      v25 = *(v15 + 8 * v21);
      v68 = *(a1 + (v24 << 6) + 48);
      v26 = 1;
      if (v25 != v24)
      {
        break;
      }

LABEL_13:
      v55 = v21;
      v56 = v25;
      v54 = result;
      v67 = 0;
      v66[0] = &unk_1F5CCF7F8;
      v66[1] = "Scratch Pad";
      v63 = 0;
      v64 = 0;
      v65 = 0;
      re::FixedArray<re::Vector3<float>>::init<>(&v63, v66, v26);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v58 = v26 - 1;
      re::FixedArray<int>::init<>(&v60, v66, v26 - 1);
      if (v26)
      {
        v13 = 0;
        v29 = v56;
        while (v18 > v29)
        {
          v11 = v64;
          if (v64 <= v13)
          {
            goto LABEL_57;
          }

          v65[v13] = *(a1 + (v29 << 6) + 48);
          if (v13)
          {
            v11 = v64;
            if (v64 <= v13)
            {
              goto LABEL_64;
            }

            v12 = v13 - 1;
            v11 = v61;
            if (v61 <= v13 - 1)
            {
              goto LABEL_65;
            }

            v30 = vsubq_f32(v65[v13], v65[v13 - 1]);
            v31 = vmulq_f32(v30, v30);
            *(v62 + 4 * v13 - 4) = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
          }

          if (a4 <= v29)
          {
            goto LABEL_58;
          }

          ++v13;
          v29 = *(a3 + 4 * v29);
          if (v26 == v13)
          {
            goto LABEL_23;
          }
        }

        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v18);
        _os_crash();
        __break(1u);
LABEL_57:
        v69 = 0;
        a4 = &v70;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        v73 = 468;
        v74 = 2048;
        v75 = v13;
        v76 = 2048;
        v77 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, a4);
        _os_crash();
        __break(1u);
LABEL_59:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v18);
        _os_crash();
        __break(1u);
LABEL_60:
        v69 = 0;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        v73 = 468;
        v74 = 2048;
        v75 = v11;
        v76 = 2048;
        v77 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v69 = 0;
        a4 = &v70;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        v73 = 468;
        v74 = 2048;
        v75 = v14;
        v76 = 2048;
        v77 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a4);
        _os_crash();
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, a4);
        _os_crash();
        __break(1u);
LABEL_64:
        v69 = 0;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        v73 = 468;
        v74 = 2048;
        v75 = v13;
        v76 = 2048;
        v77 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_65:
        v69 = 0;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        v73 = 468;
        v74 = 2048;
        v75 = v12;
        v76 = 2048;
        v77 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_66;
      }

LABEL_23:
      if (!v64)
      {
        goto LABEL_70;
      }

      v13 = 1;
      if (v57)
      {
        v26 = a9 + 16 * v55;
        v32 = vsubq_f32(*v65, *v26);
        v33 = vmulq_f32(v32, v32);
        v34 = v33.f32[2] + vaddv_f32(*v33.f32);
        if (v34 > v22)
        {
          LODWORD(v11) = 1;
          while (1)
          {
            if (!v64)
            {
              break;
            }

            v35 = vsubq_f32(*v65, *v26);
            v36 = vmulq_f32(v35, v35);
            v37 = v36.f32[2] + vaddv_f32(*v36.f32);
            v13 = (v34 - v37) > v20;
            v38 = (v34 - v37) <= v20 || v11 >= v57;
            v11 = (v11 + 1);
            v39 = !v38 && v37 > v22;
            v34 = v37;
            if (!v39)
            {
              goto LABEL_35;
            }
          }

LABEL_66:
          v69 = 0;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v78 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 468;
          v74 = 2048;
          v75 = 0;
          v76 = 2048;
          v77 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_67:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v14);
          _os_crash();
          __break(1u);
LABEL_68:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a10, a10);
          _os_crash();
          __break(1u);
LABEL_69:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v18);
          _os_crash();
          __break(1u);
LABEL_70:
          v69 = 0;
          a4 = &v70;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v78 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 468;
          v74 = 2048;
          v75 = 0;
          v76 = 2048;
          v77 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_71:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v40, a4);
          _os_crash();
          __break(1u);
LABEL_72:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v40, v18);
          _os_crash();
          __break(1u);
LABEL_73:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v18);
          _os_crash();
          __break(1u);
LABEL_74:
          v69 = 0;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v78 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v70 = 136315906;
          v71 = "operator[]";
          v72 = 1024;
          v73 = 468;
          v74 = 2048;
          v75 = 0;
          v76 = 2048;
          v77 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

LABEL_35:
      v40 = v56;
      if (a4 <= v56)
      {
        goto LABEL_71;
      }

      if (v18 <= v56)
      {
        goto LABEL_72;
      }

      v12 = *(a3 + 4 * v56);
      v53 = a1 + (v56 << 6);
      if (v58)
      {
        v14 = 0;
        v41 = *(a1 + (v56 << 6) + 48);
        v42 = 1;
        do
        {
          if (v18 <= v12)
          {
            goto LABEL_59;
          }

          v11 = v42;
          v26 = v64;
          if (v64 <= v42)
          {
            goto LABEL_60;
          }

          if (v64 <= v14)
          {
            goto LABEL_61;
          }

          v26 = a1 + (v12 << 6);
          v59 = *(v26 + 48);
          *v26 = v78;
          *(v26 + 16) = v79;
          *(v26 + 32) = v80;
          *(v26 + 48) = v81;
          if (a4 <= v12)
          {
            goto LABEL_62;
          }

          v12 = *(a3 + 4 * v12);
          ++v42;
          v41 = v59;
          v14 = v11;
        }

        while (v58 > v11);
        v12 = *(a3 + 4 * v56);
        v15 = a7;
        v14 = a8;
      }

      if (v18 <= v12)
      {
        goto LABEL_73;
      }

      v43 = (a1 + (v12 << 6));
      v44 = v43[3];
      v46 = *v43;
      v45 = v43[1];
      *(v53 + 32) = v43[2];
      *(v53 + 48) = v44;
      *v53 = v46;
      *(v53 + 16) = v45;
      if (!v64)
      {
        goto LABEL_74;
      }

      v47 = 0;
      v48 = *v65;
      v48.i32[3] = *(v53 + 60);
      *(v53 + 48) = v48;
      if (v60 && v61)
      {
        (*(*v60 + 40))();
        v47 = v64 == 0;
      }

      if (v63)
      {
        if (!v47)
        {
          (*(*v63 + 40))();
        }
      }

      re::Allocator::~Allocator(v66);
      result = v54 & v13;
      v21 = v55 + 1;
      if (v55 + 1 == a6)
      {
        return result;
      }
    }

    v27 = v25;
    while (a4 > v27)
    {
      ++v26;
      v27 = *(a3 + 4 * v27);
      if (v24 == v27)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_63;
  }

  return 1;
}

float re::getTwistAngle(uint64_t a1, float32x4_t a2)
{
  v2.i64[0] = *(a1 + 4);
  v3 = *a1;
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  if (fabsf(v5) >= 1.0e-10)
  {
    v6 = v5;
    v7 = vrsqrte_f32(LODWORD(v5));
    v8 = vmul_f32(v7, vrsqrts_f32(LODWORD(v6), vmul_f32(v7, v7)));
    v3 = vmulq_n_f32(v3, vmul_f32(v8, vrsqrts_f32(LODWORD(v6), vmul_f32(v8, v8))).f32[0]);
  }

  v9 = vmulq_f32(a2, a2);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (fabsf(v10) >= 1.0e-10)
  {
    v11 = v10;
    v12 = vrsqrte_f32(LODWORD(v10));
    v13 = vmul_f32(v12, vrsqrts_f32(LODWORD(v11), vmul_f32(v12, v12)));
    a2 = vmulq_n_f32(a2, vmul_f32(v13, vrsqrts_f32(LODWORD(v11), vmul_f32(v13, v13))).f32[0]);
  }

  v2.i32[2] = *a1;
  v14 = vmulq_f32(v3, a2);
  v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  if (v14.f32[0] == -1.0 || (v15 = ((fabsf(v14.f32[0]) + 1.0) + 1.0) * 0.00001, v14.f32[0] = v14.f32[0] + 1.0, fabsf(v14.f32[0]) < v15))
  {
    if (fabsf(v3.f32[2]) >= 0.00001)
    {
      v16.i32[0] = 0;
      v16.f32[1] = -v3.f32[2];
      v16.i64[1] = v3.u32[1];
    }

    else
    {
      v16 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v3.f32[1]), v3);
    }

    v17 = vmulq_f32(v16, v16);
    *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(v18);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
    v19 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v16.i64[0] = 0;
  }

  else
  {
    v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(v3)), a2, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
    v16 = vuzp1q_s32(v63, v63);
    v64 = vextq_s8(v16, v63, 0xCuLL);
    v14.f32[0] = sqrtf(v14.f32[0] + v14.f32[0]);
    v16.f32[0] = v14.f32[0] * 0.5;
    v19 = vdivq_f32(v64, vdupq_lane_s32(*v14.f32, 0));
  }

  v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v21 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v22 = vnegq_f32(v19);
  v23 = vmlaq_f32(vmulq_f32(v21, v22), v2, v20);
  v24 = vaddq_f32(v23, v23);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v20);
  v27 = vaddq_f32(vaddq_f32(v2, vmulq_n_f32(v25, v16.f32[0])), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
  v28 = vmulq_f32(v27, v27);
  v29 = v28.f32[2] + vaddv_f32(*v28.f32);
  if (fabsf(v29) >= 1.0e-10)
  {
    v30 = v29;
    v31 = vrsqrte_f32(LODWORD(v29));
    v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
    v27 = vmulq_n_f32(v27, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
  }

  v33 = vmulq_f32(v2, v2);
  v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  v35 = v2;
  if (fabsf(v34) >= 1.0e-10)
  {
    v36 = v34;
    v37 = vrsqrte_f32(LODWORD(v34));
    v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
    v35 = vmulq_n_f32(v2, vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
    v21 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v68 = v2;
  v39 = v19;
  v39.i32[3] = v16.i32[0];
  v40 = vdupq_lane_s32(*v16.f32, 0);
  v41 = vmulq_f32(v27, v35);
  v42 = v41.f32[2] + vaddv_f32(*v41.f32);
  if (v42 == -1.0 || (v43 = ((fabsf(v42) + 1.0) + 1.0) * 0.00001, v44 = v42 + 1.0, fabsf(v44) < v43))
  {
    if (fabsf(v27.f32[2]) >= 0.00001)
    {
      v45.i32[0] = 0;
      v45.f32[1] = -v27.f32[2];
      v45.i64[1] = v27.u32[1];
    }

    else
    {
      v45 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v27.f32[1]), v27);
    }

    v46 = vmulq_f32(v45, v45);
    *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
    *v46.f32 = vrsqrte_f32(v47);
    *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
    v48 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
    v49 = 0.0;
  }

  else
  {
    v65 = vmlaq_f32(vmulq_f32(v21, vnegq_f32(v27)), v35, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
    v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
    v35.f32[0] = sqrtf(v44 + v44);
    v49 = v35.f32[0] * 0.5;
    v48 = vdivq_f32(v66, vdupq_lane_s32(*v35.f32, 0));
  }

  v50 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v48)), v19, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL));
  v51 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), v19, v49), v48, v40);
  v52 = vmulq_f32(v39, v48);
  v53 = -((v52.f32[2] + vaddv_f32(*v52.f32)) - (v49 * v16.f32[0]));
  v54 = vmulq_f32(v51, v51);
  v55 = v54.f32[2] + vaddv_f32(*v54.f32);
  v56 = 0uLL;
  if (fabsf(v55) >= 1.0e-10)
  {
    v57 = v55;
    v58 = vrsqrte_f32(LODWORD(v55));
    v59 = vmul_f32(v58, vrsqrts_f32(LODWORD(v57), vmul_f32(v58, v58)));
    v56 = vmulq_n_f32(v51, vmul_f32(v59, vrsqrts_f32(LODWORD(v57), vmul_f32(v59, v59))).f32[0]);
  }

  v67 = v56;
  v60 = acosf(v53);
  v61 = vmulq_f32(v68, v67);
  return (v60 + v60) * (v61.f32[2] + vaddv_f32(*v61.f32));
}

uint64_t re::solverSplineIK(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6, unint64_t a7, uint64_t a8, _OWORD *a9, unint64_t a10, uint64_t a11)
{
  v17 = a10;
  v18 = a9;
  v169 = *MEMORY[0x1E69E9840];
  v19 = *a11;
  v20 = *(a11 + 64);
  if (*(a11 + 25) == 1)
  {
    v21 = a10 - 1;
    if (!a10)
    {
LABEL_149:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, 0);
      _os_crash();
      __break(1u);
      goto LABEL_150;
    }

    v20 = v20 + re::getTwistAngle(a11 + 48, a9[v21]);
  }

  else
  {
    v21 = a10;
  }

  TwistAngle = 0.0;
  if (*(a11 + 24) == 1)
  {
    if (a10 <= --v21)
    {
LABEL_150:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v17);
      _os_crash();
      __break(1u);
LABEL_151:
      v158 = 0;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v164 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v159 = 136315906;
      *&v159[4] = "operator[]";
      *&v159[12] = 1024;
      *&v159[14] = 468;
      v160 = 2048;
      v161 = a7;
      v162 = 2048;
      v163 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_152:
      v158 = 0;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v164 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v159 = 136315906;
      *&v159[4] = "operator[]";
      *&v159[12] = 1024;
      *&v159[14] = 468;
      v160 = 2048;
      v161 = a7;
      v162 = 2048;
      v163 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    TwistAngle = re::getTwistAngle(a11 + 32, a9[v21]);
  }

  v138[0] = 0;
  v138[1] = 0;
  v140 = 0;
  v139 = 0;
  v146 = 0;
  memset(v141, 0, sizeof(v141));
  v142 = 0;
  v143 = 0u;
  v144 = 0u;
  v145 = 0;
  v147 = 0x3F80000000000000;
  v148 = 1;
  v137 = &unk_1F5CB04D8;
  v23 = *(a11 + 16);
  v17 = (v23 - 5);
  v127 = a4;
  v129 = a7;
  if (v23 == 5)
  {
    v140 = 1;
    v149 = 0;
  }

  else
  {
    re::DynamicArray<re::Vector3<float>>::resize(v138, (3 * (v23 - 5) + 1));
    v149 = v23 - 5;
    if ((v148 & 1) == 0)
    {
      re::DynamicArray<float>::resize(v141 + 8, (v23 - 5) + 1);
    }
  }

  a7 = &v137;
  v137[11](&v137);
  v11 = (v23 - 2);
  if (v11 >= 3)
  {
    v27 = 2;
    while (1)
    {
      v28 = *(a11 + 16);
      if (v28 <= v27)
      {
        break;
      }

      (v137[13])(&v137, (v27 - 2), *(*(a11 + 8) + 4 * v27));
      if (v11 == ++v27)
      {
        goto LABEL_16;
      }
    }

LABEL_132:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v28);
    _os_crash();
    __break(1u);
LABEL_133:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v17;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_136:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v17;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v18;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v17;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_139;
  }

LABEL_16:
  if (!v21)
  {
    goto LABEL_142;
  }

  if (!v139)
  {
LABEL_143:
    v156[0] = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 789;
    v160 = 2048;
    v161 = 0;
    v162 = 2048;
    v163 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_145;
  }

  **&v141[0] = *a9;
  v27 = v127;
  if (v17)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v32 = 12;
    while (1)
    {
      v33 = v30 + 2;
      v34 = *(a11 + 16);
      if (v34 <= v30 + 2)
      {
        goto LABEL_123;
      }

      v35 = v30 + 3;
      if (v34 <= v30 + 3)
      {
        break;
      }

      if (v30 == v21)
      {
        goto LABEL_125;
      }

      v36 = 0;
      v37 = *(a11 + 8);
      v26.i32[0] = *(v37 + 4 * v33);
      LODWORD(v25) = *(v37 + 4 * v35);
      v38 = &a9[v30];
      v39 = v26;
      v39.i32[1] = v26.i32[0];
      v39.i32[2] = v25;
      *v159 = v39;
      v164 = *v38;
      v165 = v38[1];
      v166 = v38[2];
      v167 = v38[3];
      v40 = v37 + v29;
      v41 = 3;
      do
      {
        v42 = 0;
        v43 = *&v159[4 * v36];
        v44 = v164;
        v45 = &v165;
        do
        {
          v46 = (v43 - *(v40 + 4 * v42)) / (*(v37 + v32 + 4 * v42) - *(v40 + 4 * v42));
          ++v42;
          v47 = *v45;
          v45[-1] = vaddq_f32(vmulq_n_f32(*v45, v46), vmulq_n_f32(v44, 1.0 - v46));
          ++v45;
          v44 = v47;
        }

        while (v41 != v42);
        ++v36;
        --v41;
        v40 += 4;
      }

      while (v36 != 3);
      v48 = 0;
      v49 = v164;
      v26.i32[1] = v25;
      v26.i32[2] = v25;
      *v159 = v26;
      v164 = *v38;
      v165 = v38[1];
      v166 = v38[2];
      v167 = v38[3];
      v50 = v37 + v29;
      v51 = 3;
      do
      {
        v52 = 0;
        v53 = *&v159[4 * v48];
        v54 = v164;
        v55 = &v165;
        do
        {
          v56 = (v53 - *(v50 + 4 * v52)) / (*(v37 + v32 + 4 * v52) - *(v50 + 4 * v52));
          ++v52;
          v57 = *v55;
          v55[-1] = vaddq_f32(vmulq_n_f32(*v55, v56), vmulq_n_f32(v54, 1.0 - v56));
          ++v55;
          v54 = v57;
        }

        while (v51 != v52);
        ++v48;
        --v51;
        v50 += 4;
      }

      while (v48 != 3);
      v58 = 0;
      v59 = *(&v164 + 1);
      v24 = v164;
      *v159 = vdupq_lane_s32(*&v25, 0);
      v164 = *v38;
      v165 = v38[1];
      v166 = v38[2];
      v25 = v38[3];
      v167 = v25;
      v60 = v37 + v32;
      v61 = v37 + v29;
      v62 = 3;
      do
      {
        v63 = 0;
        v64 = *&v159[4 * v58];
        v26 = v164;
        v65 = &v165;
        do
        {
          v66 = (v64 - *(v61 + 4 * v63)) / (*(v60 + 4 * v63) - *(v61 + 4 * v63));
          ++v63;
          v67 = *v65;
          v65[-1] = vaddq_f32(vmulq_n_f32(*v65, v66), vmulq_n_f32(v26, 1.0 - v66));
          ++v65;
          v26 = v67;
        }

        while (v62 != v63);
        ++v58;
        --v62;
        v61 += 4;
      }

      while (v58 != 3);
      a7 = v31;
      v11 = v139;
      if (v139 <= v31)
      {
        goto LABEL_126;
      }

      v68 = v164;
      *(*&v141[0] + 16 * v31) = v49;
      a7 = (v31 + 1);
      v11 = v139;
      if (v139 <= a7)
      {
        goto LABEL_127;
      }

      v69 = (*&v141[0] + 16 * a7);
      *v69 = v24;
      v69[1] = v59;
      a7 = (v31 + 2);
      v11 = v139;
      if (v139 <= a7)
      {
        goto LABEL_128;
      }

      *(*&v141[0] + 16 * a7) = v68;
      v31 += 3;
      ++v30;
      v32 += 4;
      v29 += 4;
      if (v30 == v17)
      {
        goto LABEL_39;
      }
    }

LABEL_124:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v34);
    _os_crash();
    __break(1u);
LABEL_125:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v21);
    _os_crash();
    __break(1u);
LABEL_126:
    v156[0] = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 789;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v156[0] = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 789;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v156[0] = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 789;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_129;
  }

LABEL_39:
  if (!a6)
  {
    goto LABEL_144;
  }

  if (!a8)
  {
LABEL_145:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_146:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_147:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v104, v80);
    _os_crash();
    __break(1u);
    goto LABEL_148;
  }

  a7 = *a5;
  v126 = *v129;
  v157 = 0;
  v156[0] = &unk_1F5CCF7F8;
  v156[1] = "Scratch Pad";
  v21 = a2;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  re::FixedArray<re::Vector3<float>>::init<>(&v153, v156, a2);
  v150 = 0;
  v151 = 0;
  v152 = 0;
  re::FixedArray<int>::init<>(&v150, v156, a2);
  if (a2)
  {
    v17 = 0;
    v71 = v126;
    while (a2 > v71)
    {
      v11 = v154;
      if (v154 <= v17)
      {
        goto LABEL_130;
      }

      *(v155 + 16 * v17) = *(a1 + (v71 << 6) + 48);
      if (v17)
      {
        v11 = v154;
        if (v154 <= v17)
        {
          goto LABEL_136;
        }

        v18 = v17 - 1;
        if (v154 <= v17 - 1)
        {
          goto LABEL_137;
        }

        v11 = v151;
        if (v151 <= v17)
        {
          goto LABEL_138;
        }

        v72 = vsubq_f32(*(v155 + 16 * v17), *(v155 + 16 * v17 - 16));
        v73 = vmulq_f32(v72, v72);
        *(v152 + 4 * v17) = sqrtf(v73.f32[2] + vaddv_f32(*v73.f32));
      }

      if (v127 <= v71)
      {
        goto LABEL_131;
      }

      ++v17;
      v71 = *(a3 + 4 * v71);
      if (a2 == v17)
      {
        goto LABEL_52;
      }
    }

LABEL_129:
    re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v71, a2);
    _os_crash();
    __break(1u);
LABEL_130:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v17;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_131:
    re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v71, v27);
    _os_crash();
    __break(1u);
    goto LABEL_132;
  }

LABEL_52:
  v124 = TwistAngle;
  v125 = v20;
  v74 = (v137[7])(&v137, 0);
  v75 = (v137[6])(&v137);
  v76 = (v137[7])(&v137, (v75 - 1));
  v77 = (v137[15])(&v137, v74);
  v21 = v154;
  if (v154 <= a7)
  {
    goto LABEL_146;
  }

  v79 = (v155 + 16 * a7);
  *v79 = v77;
  v79[1] = v78;
  v18 = (a7 - 1);
  v80 = v127;
  if (a7 - 1 < 0)
  {
    goto LABEL_91;
  }

  v21 = &v137;
  v128 = v19;
  v130 = v76;
LABEL_55:
  v17 = v154;
  if (v154 <= a7)
  {
    goto LABEL_133;
  }

  v17 = v151;
  if (v151 <= a7)
  {
    goto LABEL_134;
  }

  v81 = 0;
  v82 = v155;
  v83 = *(v152 + 4 * a7) * *(v152 + 4 * a7);
  v84 = 15;
  v85 = 3.4028e38;
  v86 = v74;
  v87 = 3.4028e38;
  while (1)
  {
    v88 = (v86 + v76) * 0.5;
    v89.i64[0] = (v137[15])(&v137, v88);
    v89.i64[1] = v78;
    v90 = vsubq_f32(v89, *(v82 + 16 * a7));
    v91 = vmulq_f32(v90, v90);
    v92.n128_f32[0] = vaddv_f32(*v91.f32);
    v93 = (v91.f32[2] + v92.n128_f32[0]) - v83;
    v94 = vabds_f32(v91.f32[2] + v92.n128_f32[0], v83);
    if (v94 < 0.75)
    {
      if (v81 >= 1)
      {
        goto LABEL_72;
      }

      v81 = 1;
      v85 = v87;
      v76 = (v86 + v76) * 0.5;
      v86 = v74;
      goto LABEL_71;
    }

    if (v93 >= 0.0)
    {
      v76 = (v86 + v76) * 0.5;
      goto LABEL_71;
    }

    if (!v81 || v88 <= v85)
    {
      break;
    }

    v81 = 1;
    v86 = v76;
LABEL_71:
    if (!--v84)
    {
LABEL_72:
      if (v94 >= v128)
      {
        v132 = v89;
        v95 = v93 * v93;
        v96 = 5;
        v76 = v130;
        while (1)
        {
          v135 = v90;
          v97.i64[0] = (v137[16])(&v137, 1, v88);
          v97.i64[1] = v78;
          v92 = v135;
          v98 = vmulq_f32(v135, v97);
          v92.n128_f32[0] = vaddv_f32(*v98.f32);
          v99 = (v98.f32[2] + v92.n128_f32[0]) + (v98.f32[2] + v92.n128_f32[0]);
          v92.n128_f32[0] = fabsf(v99);
          if (v92.n128_f32[0] < 0.01)
          {
            goto LABEL_87;
          }

          v100 = v93 / v99;
          v101 = v88 - v100;
          v102 = (v88 - v100) >= v74 && v101 <= v130;
          if (!v102)
          {
            goto LABEL_87;
          }

          v103.i64[0] = (v137[15])(&v137, v88 - v100);
          v103.i64[1] = v78;
          v90 = vsubq_f32(v103, *(v82 + 16 * a7));
          v92 = vmulq_f32(v90, v90);
          v93 = (v92.n128_f32[2] + vaddv_f32(v92.n128_u64[0])) - v83;
          v92.n128_f32[0] = v93 * v93;
          if ((v93 * v93) >= v95)
          {
            goto LABEL_87;
          }

          if (fabsf(v93) < v128)
          {
            break;
          }

          v132 = v103;
          v88 = v101;
          v95 = v93 * v93;
          if (!--v96)
          {
            goto LABEL_87;
          }
        }

        v74 = v101;
        v89 = v103;
      }

      else
      {
        v74 = v88;
        v76 = v130;
      }

LABEL_88:
      v17 = v18;
      v11 = v154;
      if (v154 <= v18)
      {
        goto LABEL_135;
      }

      *(v155 + 16 * v18) = v89;
      --a7;
      v102 = v18 <= 0;
      v18 = (v18 - 1);
      if (v102)
      {
        goto LABEL_91;
      }

      goto LABEL_55;
    }
  }

  v87 = fminf(v88, v87);
  if (v81)
  {
    v81 = 1;
LABEL_70:
    v86 = (v86 + v76) * 0.5;
    goto LABEL_71;
  }

  v92.n128_f32[0] = v130 - v88;
  if ((v130 - v88) >= 0.01)
  {
    v81 = 0;
    goto LABEL_70;
  }

  v132 = 0u;
  v88 = 3.4028e38;
  v76 = v130;
LABEL_87:
  v74 = v88;
  v89 = v132;
  if (v88 <= v76)
  {
    goto LABEL_88;
  }

  v17 = (v137[16])(&v137, 1, v76, v92);
  v21 = v112;
  v113 = (v137[15])(&v137, v76);
  v11 = v154;
  if (v154 <= a7)
  {
    goto LABEL_151;
  }

  v11 = v151;
  v80 = v127;
  if (v151 <= a7)
  {
    goto LABEL_152;
  }

  v114.i64[0] = v17;
  v114.i64[1] = v21;
  v115 = vmulq_f32(v114, v114);
  *&v116 = v115.f32[2] + vaddv_f32(*v115.f32);
  *v115.f32 = vrsqrte_f32(v116);
  *v115.f32 = vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32)));
  v117 = vmulq_n_f32(v114, vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32))).f32[0]);
  v118.i64[0] = v113;
  v118.i64[1] = v78;
  v119 = vsubq_f32(v118, *(v155 + 16 * a7));
  v120 = vmulq_f32(v117, v119);
  v121 = v120.f32[2] + vaddv_f32(*v120.f32);
  v122 = vmulq_f32(v119, v119);
  v123 = -(((v122.f32[2] + vaddv_f32(*v122.f32)) - (*(v152 + 4 * a7) * *(v152 + 4 * a7))) - (v121 * v121));
  if (v123 < 0.0)
  {
    v109 = 0;
    v110 = 0;
    goto LABEL_103;
  }

  *(v155 + 16 * v18) = vaddq_f32(vmulq_n_f32(v117, sqrtf(v123) - v121), v118);
  if (v18)
  {
    while (1)
    {
      v21 = (a7 - 1);
      v17 = v154;
      if (v154 <= v21)
      {
        break;
      }

      v11 = v151;
      if (v151 <= v21)
      {
        goto LABEL_140;
      }

      a7 = (a7 - 2);
      if (v154 <= a7)
      {
        goto LABEL_141;
      }

      *(v155 + 16 * a7) = vaddq_f32(*(v155 + 16 * v21), vmulq_n_f32(v117, *(v152 + 4 * v21)));
      a7 = v21;
      if (v21 <= 1)
      {
        goto LABEL_91;
      }
    }

LABEL_139:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v21;
    v162 = 2048;
    v163 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_140:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = v21;
    v162 = 2048;
    v163 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_143;
  }

LABEL_91:
  v104 = v126;
  if (v80 <= v126)
  {
    goto LABEL_147;
  }

  if (a2 <= v126)
  {
LABEL_148:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v104, a2);
    _os_crash();
    __break(1u);
    goto LABEL_149;
  }

  v17 = *(a3 + 4 * v126);
  v105 = *(a1 + (v126 << 6) + 48);
  if (a2 >= 3)
  {
    v106 = v125;
    v107 = (v124 - v125) / (a2 - 2);
    v108 = a2 - 1;
LABEL_97:
    v11 = 0;
    v18 = -v108;
    a7 = 1;
    while (a2 > v17)
    {
      v21 = v154;
      if (v154 <= a7)
      {
        goto LABEL_121;
      }

      v21 = a1 + (v17 << 6);
      v136 = *(v21 + 48);
      *v21 = v164;
      *(v21 + 16) = v165;
      *(v21 + 32) = v166;
      *(v21 + 48) = v167;
      if (v80 <= v17)
      {
        goto LABEL_122;
      }

      v17 = *(a3 + 4 * v17);
      v106 = v107 + v106;
      v11 += 16;
      ++a7;
      v105 = v136;
      if (v18 + a7 == 1)
      {
        goto LABEL_102;
      }
    }

    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a2);
    _os_crash();
    __break(1u);
LABEL_121:
    v158 = 0;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v164 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v159 = 136315906;
    *&v159[4] = "operator[]";
    *&v159[12] = 1024;
    *&v159[14] = 468;
    v160 = 2048;
    v161 = a7;
    v162 = 2048;
    v163 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v80);
    _os_crash();
    __break(1u);
LABEL_123:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v34);
    _os_crash();
    __break(1u);
    goto LABEL_124;
  }

  v108 = a2 - 1;
  v106 = v125;
  if (a2 != 1)
  {
    v107 = 0.0;
    goto LABEL_97;
  }

LABEL_102:
  v109 = v151 == 0;
  v110 = 1;
LABEL_103:
  if (v150 && !v109)
  {
    (*(*v150 + 40))();
  }

  if (v153 && v154)
  {
    (*(*v153 + 40))();
  }

  re::Allocator::~Allocator(v156);
  re::Spline<re::Vector3<float>>::~Spline(&v137);
  return v110;
}

float32x4_t anonymous namespace::calculateFABRIKChain(float32x4_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (a3)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(a4 + 8);
  }

  if (v4 <= v5)
  {
    goto LABEL_21;
  }

  result = *a1;
  *(*(a4 + 16) + 16 * v5) = *a1;
  if (v5 + v6 != v7)
  {
    v9 = v5 + v6;
    v10 = ((a3 ^ 1u) << 63) >> 63;
    v11 = v7 - v6;
    while (*(a2 + 8) > v10 + v9)
    {
      v12 = *(a4 + 8);
      if (v12 <= v9)
      {
        goto LABEL_19;
      }

      if (v12 <= v5)
      {
        goto LABEL_20;
      }

      v13 = *(a4 + 16);
      v14 = *(v13 + 16 * v5);
      v15 = vsubq_f32(*(v13 + 16 * v9), v14);
      v16 = vmulq_f32(v15, v15);
      *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
      *v16.f32 = vrsqrte_f32(v17);
      *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
      result = vaddq_f32(v14, vmulq_n_f32(vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]), *(*(a2 + 16) + 4 * v10 + 4 * v9)));
      *(v13 + 16 * v9) = result;
      v9 += v6;
      v5 += v6;
      if (v11 == v5)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

__n128 anonymous namespace::lookAtTransformFromReference(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, int32x4_t a5, float32x4_t a6, float a7)
{
  v12 = vsubq_f32(a6, *(a2 + 48));
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL);
  v18 = vnegq_f32(v15);
  v19 = vmlaq_f32(vmulq_f32(v17, v18), a5, v16);
  v20 = vmulq_f32(v19, v19);
  v21 = v20.f32[1] + (v20.f32[2] + v20.f32[0]);
  if (v21 >= 0.0001)
  {
    v23 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  }

  else
  {
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v18), v17, v16);
    v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v17 = vmulq_f32(v22, v22);
    v21 = v17.f32[1] + (v17.f32[2] + v17.f32[0]);
  }

  v17.f32[0] = sqrtf(v21);
  v104.columns[2] = vdivq_f32(v23, vdupq_lane_s32(*v17.f32, 0));
  v94 = vextq_s8(vuzp1q_s32(v104.columns[2], v104.columns[2]), v104.columns[2], 0xCuLL);
  v95 = v104.columns[2];
  v24 = vmlaq_f32(vmulq_f32(v94, v18), v104.columns[2], v16);
  v104.columns[1] = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v92 = v15;
  v104.columns[0] = v15;
  v96 = v104.columns[1];
  v105 = __invert_f3(v104);
  v25 = 0;
  v26 = *(a2 + 16);
  v27 = *(a2 + 32);
  v98 = *a2;
  v99 = v26;
  v100 = v27;
  do
  {
    *(&v101 + v25 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105.columns[0], COERCE_FLOAT(*(&v98 + v25 * 8))), v105.columns[1], v98.n128_u64[v25], 1), v105.columns[2], *(&v98 + v25 * 8), 2);
    v25 += 2;
  }

  while (v25 != 6);
  v97 = *a3;
  v28 = vsubq_f32(*a4, *a3);
  v30 = vmulq_f32(v28, v28);
  v29 = vaddv_f32(*v30.f32);
  v30.i32[1] = 0;
  *&v31 = v30.f32[2] + v29;
  v32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v30.f32[2] + v29));
  v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
  v34 = vmulq_n_f32(v28, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
  v35 = v34;
  v36 = vmulq_f32(v34, v34);
  v37 = vaddv_f32(*v36.f32);
  v38 = fabsf(v36.f32[2] + v37);
  v88 = v34;
  if (v38 >= 1.0e-10)
  {
    v30.f32[0] = v36.f32[2] + v37;
    v39 = vrsqrte_f32(*v30.f32);
    v40 = vmul_f32(v39, vrsqrts_f32(*v30.f32, vmul_f32(v39, v39)));
    v35 = vmulq_n_f32(v34, vmul_f32(v40, vrsqrts_f32(*v30.f32, vmul_f32(v40, v40))).f32[0]);
  }

  v86 = v36.f32[2] + v37;
  v87 = v35;
  v93 = v34;
  v90 = v102;
  v91 = v101;
  v89 = v103;
  v41 = __sincosf_stret(a7 * 0.5);
  v42 = vmulq_n_f32(v87, v41.__sinval);
  v43 = vmuls_lane_f32(v41.__sinval, v87, 2);
  v44 = v92;
  v45 = vmulq_f32(v44, v44);
  v46 = v45.f32[2] + vaddv_f32(*v45.f32);
  if (fabsf(v46) >= 1.0e-10)
  {
    v47 = v46;
    v48 = vrsqrte_f32(LODWORD(v46));
    v49 = vmul_f32(v48, vrsqrts_f32(LODWORD(v47), vmul_f32(v48, v48)));
    v44 = vmulq_n_f32(v92, vmul_f32(v49, vrsqrts_f32(LODWORD(v47), vmul_f32(v49, v49))).f32[0]);
  }

  v42.f32[2] = v43;
  v50 = v88;
  if (v38 >= 1.0e-10)
  {
    v51 = vrsqrte_f32(LODWORD(v86));
    v52 = vmul_f32(v51, vrsqrts_f32(LODWORD(v86), vmul_f32(v51, v51)));
    v50 = vmulq_n_f32(v93, vmul_f32(v52, vrsqrts_f32(LODWORD(v86), vmul_f32(v52, v52))).f32[0]);
  }

  v53 = v42;
  v53.i32[3] = LODWORD(v41.__cosval);
  v54 = vmulq_f32(v44, v50);
  v55 = v54.f32[2] + vaddv_f32(*v54.f32);
  if (v55 == -1.0 || (v56 = ((fabsf(v55) + 1.0) + 1.0) * 0.00001, v57 = v55 + 1.0, fabsf(v57) < v56))
  {
    if (fabsf(v44.f32[2]) >= 0.00001)
    {
      v58.i32[0] = 0;
      v58.f32[1] = -v44.f32[2];
      v58.i64[1] = v44.u32[1];
    }

    else
    {
      v58 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v44.f32[1]), v44);
    }

    v59 = vmulq_f32(v58, v58);
    *&v60 = v59.f32[2] + vaddv_f32(*v59.f32);
    *v59.f32 = vrsqrte_f32(v60);
    *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32)));
    v61 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32))).f32[0]);
    v62 = 0.0;
  }

  else
  {
    v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v44)), v50, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
    v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
    *v84.i32 = sqrtf(v57 + v57);
    v62 = *v84.i32 * 0.5;
    v61 = vdivq_f32(v85, vdupq_lane_s32(*v84.i8, 0));
  }

  v63 = 0;
  v64 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), vnegq_f32(v42)), v61, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
  v65 = vmlaq_n_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v61, v53, 3), v42, v62);
  v66 = vmulq_f32(v53, v61);
  v67 = -((v66.f32[2] + vaddv_f32(*v66.f32)) - (v41.__cosval * v62));
  v68 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
  v69 = vnegq_f32(v65);
  v70 = vmlaq_f32(vmulq_f32(v94, v69), v95, v68);
  v71 = vaddq_f32(v70, v70);
  v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
  v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), v69), v72, v68);
  v74 = vaddq_f32(vaddq_f32(v95, vmulq_n_f32(v72, v67)), vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
  v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL), v69), v96, v68);
  v76 = vaddq_f32(v75, v75);
  v77 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
  v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v69), v77, v68);
  v79 = vaddq_f32(vaddq_f32(v96, vmulq_n_f32(v77, v67)), vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL));
  v98 = v91;
  v99 = v90;
  v100 = v89;
  do
  {
    *(&v101 + v63 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v98 + v63 * 8))), v79, v98.n128_u64[v63], 1), v74, *(&v98 + v63 * 8), 2);
    v63 += 2;
  }

  while (v63 != 6);
  result = v101;
  v80 = v102;
  result.n128_u32[3] = 0;
  v82 = v103;
  HIDWORD(v80) = 0;
  HIDWORD(v82) = 0;
  v83 = v97;
  v83.i32[3] = 1.0;
  *a1 = result;
  *(a1 + 16) = v80;
  *(a1 + 32) = v82;
  *(a1 + 48) = v83;
  return result;
}

void re::BezierSpline<re::Vector3<float>>::~BezierSpline(void *a1)
{
  re::Spline<re::Vector3<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<re::Vector3<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<re::Vector3<float>>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<re::Vector3<float>>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<re::Quaternion<float>>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::Spline<re::Vector3<float>>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<re::Vector3<float>>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else if (*(result + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::BezierSpline<re::Vector3<float>>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::Spline<re::Vector3<float>>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<re::Vector3<float>>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

double re::BezierSpline<re::Vector3<float>>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 128);
    if (v4 >= a3)
    {
      LOWORD(v5) = 0;
      v8 = 0;
    }

    else
    {
      v5 = *(a1 + 138);
      v6 = *(a1 + 132);
      if (v6 <= a3)
      {
        LOWORD(v5) = v5 - 1;
        v8 = 0x3F80000000000000;
      }

      else
      {
        v7 = ((a3 - v4) / (v6 - v4)) * v5;
        v5 = v7;
        v8 = COERCE_UNSIGNED_INT(v7 - v7) << 32;
      }
    }

    NonUniformSpan = v8 | v5;
  }

  else
  {
    v9 = *(a1 + 64) - 1;
    if (v9 >= 0x10000)
    {
      goto LABEL_19;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v11 = (3 * NonUniformSpan);
  v12 = *(a1 + 24);
  if (v12 <= v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v13 = (v11 + 1);
  if (v12 <= v13)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v14 = (v11 + 2);
  if (v12 <= v14)
  {
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v15 = (v11 + 3);
  if (v12 <= v15)
  {
LABEL_18:
    v18 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v19) = 136315906;
    *(&v19 + 4) = "operator[]";
    WORD6(v19) = 1024;
    HIWORD(v19) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v9, v18, v19);
    _os_crash();
    __break(1u);
  }

  v16 = *(a1 + 40);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v11), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmulq_n_f32(*(v16 + 16 * v13), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmulq_n_f32(*(v16 + 16 * v14), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmulq_n_f32(*(v16 + 16 * v15), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1))).u64[0];
  return result;
}

unint64_t re::BezierSpline<re::Vector3<float>>::evaluateDerivativeAt(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
LABEL_32:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  v14 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v35 = (3 * NonUniformSpan) + 2;
      v36 = *(a1 + 24);
      if (v36 > v35)
      {
        v37 = (3 * NonUniformSpan) + 3;
        if (v36 > v37)
        {
          v38 = *(a1 + 40);
          v20 = (v12 * 6.0) * v12;
          v39 = (v38 + 16 * v13);
          v22 = vaddq_f32(vmulq_n_f32(vaddq_f32(v39[1], vsubq_f32(*(v38 + 16 * v37), vaddq_f32(*(v38 + 16 * v35), *(v38 + 16 * v35)))), *(&NonUniformSpan + 1)), vmulq_n_f32(vaddq_f32(*v39, vsubq_f32(*(v38 + 16 * v35), vaddq_f32(v39[1], v39[1]))), 1.0 - *(&NonUniformSpan + 1)));
          return vmulq_n_f32(v22, v20).u64[0];
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v3 == 3)
    {
      v23 = (3 * NonUniformSpan) + 3;
      if (*(a1 + 24) <= v23)
      {
LABEL_33:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_34;
      }

      __asm { FMOV            V3.4S, #3.0 }

      return vmulq_n_f32(vsubq_f32(vaddq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v23), vmulq_f32(*(*(a1 + 40) + 16 * (3 * NonUniformSpan) + 32), _Q3)), vmulq_f32(*(*(a1 + 40) + 16 * (3 * NonUniformSpan) + 16), _Q3)), *(*(a1 + 40) + 16 * (3 * NonUniformSpan))), ((v12 * 6.0) * v12) * v12).u64[0];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v15 = (3 * NonUniformSpan);
      v16 = (v15 + 1);
      v17 = *(a1 + 24);
      if (v17 > v16)
      {
        v18 = (v15 + 2);
        if (v17 > v18)
        {
          v19 = (v15 + 3);
          if (v17 > v19)
          {
            v20 = v12 * 3.0;
            v21 = *(a1 + 40);
            v22 = vaddq_f32(vaddq_f32(vmulq_n_f32(vsubq_f32(*(v21 + 16 * v16), *(v21 + 16 * (3 * NonUniformSpan))), (1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))), vmulq_n_f32(vsubq_f32(*(v21 + 16 * v18), *(v21 + 16 * v16)), ((1.0 - *(&NonUniformSpan + 1)) + (1.0 - *(&NonUniformSpan + 1))) * *(&NonUniformSpan + 1))), vmulq_n_f32(vsubq_f32(*(v21 + 16 * v19), *(v21 + 16 * v18)), *(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
            return vmulq_n_f32(v22, v20).u64[0];
          }

          goto LABEL_39;
        }

        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v29 = *(a1 + 24);
    if (v29 <= v13)
    {
LABEL_34:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_37;
    }

    v30 = (3 * NonUniformSpan);
    v31 = (v30 + 1);
    if (v29 <= v31)
    {
LABEL_37:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

    v32 = (v30 + 2);
    if (v29 <= v32)
    {
LABEL_40:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v33 = (v30 + 3);
    if (v29 <= v33)
    {
      goto LABEL_41;
    }

    v34 = *(a1 + 40);
    return vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*(v34 + 16 * (3 * NonUniformSpan)), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmulq_n_f32(*(v34 + 16 * v31), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmulq_n_f32(*(v34 + 16 * v32), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmulq_n_f32(*(v34 + 16 * v33), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1))).u64[0];
  }

  return v14;
}

float re::BezierSpline<re::Vector3<float>>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 128);
    if (v5 >= a3)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      v6 = *(a1 + 138);
      v7 = *(a1 + 132);
      if (v7 <= a3)
      {
        LOWORD(v6) = v6 - 1;
      }

      else
      {
        v6 = (((a3 - v5) / (v7 - v5)) * v6);
      }
    }

    NonUniformSpan = v6;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    if (NonUniformSpan)
    {
      v10 = NonUniformSpan - 1;
      if (v9 > v10)
      {
        v11 = *(*(a1 + 120) + 4 * v10);
        goto LABEL_19;
      }

LABEL_23:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v19 = *v16;
    v20.i64[0] = (*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)));
    v20.i64[1] = v21;
    v22 = vmulq_f32(v20, v20);
    v17 = v17 + (v19 * sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<re::Vector3<float>>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = (3 * a2);
  if (*(a1 + 24) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v4 = (3 * a2);
  *a3 = *(*(a1 + 40) + 16 * v3);
  v5 = (v4 + 1);
  if (*(a1 + 24) <= v5)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  __asm { FMOV            V0.4S, #3.0 }

  *(a3 + 16) = vmulq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v5), *(*(a1 + 40) + 16 * v3)), _Q0);
  v11 = *(a1 + 24);
  if (v11 <= v3)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= v5)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v12 = (v4 + 2);
  if (v11 <= v12)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(a3 + 32) = vmulq_f32(vaddq_f32(*(*(a1 + 40) + 16 * v12), vsubq_f32(*(*(a1 + 40) + 16 * v3), vaddq_f32(*(*(a1 + 40) + 16 * v5), *(*(a1 + 40) + 16 * v5)))), _Q0);
  v13 = (v4 + 3);
  if (*(a1 + 24) <= v13)
  {
    goto LABEL_13;
  }

  *(a3 + 48) = vsubq_f32(vaddq_f32(*(*(a1 + 40) + 16 * v13), vmulq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v5), *(*(a1 + 40) + 16 * v12)), _Q0)), *(*(a1 + 40) + 16 * v3));
  return 4;
}

float re::BezierSpline<re::Vector3<float>>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v11 = *v8;
    v12.i64[0] = (*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)));
    v12.i64[1] = v13;
    v14 = vmulq_f32(v12, v12);
    v9 = v9 + (v11 * sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

void re::DynamicArray<re::Vector3<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

unint64_t re::internal::findNonUniformSpan(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  v4 = a2;
  v5 = *(a1 + 16);
  if (v5 <= a2)
  {
LABEL_25:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 4 * a2);
  if (v7 >= a4)
  {
    goto LABEL_14;
  }

  if (v5 <= a3)
  {
LABEL_26:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v8 = *(v6 + 4 * a3);
  if (v8 > a4)
  {
    v4 = (a3 + a2) >> 1;
    if (v5 > v4)
    {
      v9 = a3;
      while (1)
      {
        v10 = (v4 + 1);
        if (v5 <= v10)
        {
          break;
        }

        if (*(v6 + 4 * v4) <= a4)
        {
          v8 = *(v6 + 4 * v10);
          if (v8 >= a4)
          {
            goto LABEL_18;
          }

          a2 = (v4 + 1);
        }

        else
        {
          v9 = v4 - 1;
        }

        v4 = (a2 + v9) >> 1;
        if (v5 <= v4)
        {
          goto LABEL_13;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    if (v5 <= v4 + 1)
    {
LABEL_27:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v11 = 1.0 / (*(v6 + 4 * (v4 + 1)) - v7);
    v12 = v7 - v7;
    return v4 | (COERCE_UNSIGNED_INT(v12 * v11) << 32);
  }

  v4 = (a3 - 1);
  v10 = v4 + 1;
  if (v5 <= v4 + 1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    if (v4 == a3 - 1 || v8 > a4)
    {
      v14 = *(v6 + 4 * v4);
      v4 = v4;
      v11 = 1.0 / (v8 - v14);
      v12 = a4 - v14;
      return v4 | (COERCE_UNSIGNED_INT(v12 * v11) << 32);
    }

    v4 = v10;
    v10 = v4 + 1;
    if (v5 <= v4 + 1)
    {
      goto LABEL_28;
    }
  }

  v13 = *(v6 + 4 * v4);
  v11 = 1.0 / (*(v6 + 4 * v10) - v13);
  v12 = v8 - v13;
  return v4 | (COERCE_UNSIGNED_INT(v12 * v11) << 32);
}

uint64_t re::DynamicArray<float>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<float>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<int>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<float>::copy(a1, a2);
    }
  }

  return a1;
}

void **re::DynamicArray<float>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<int>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 4 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 4 * v5, (*(a2 + 32) + 4 * v5), 4 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 4 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::Spline<re::Vector3<float>>::~Spline(void *a1)
{
  *a1 = &unk_1F5CB05B0;
  v2 = (a1 + 1);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

uint64_t re::EvaluationDependencyMap::init@<X0>(void *a1@<X0>, uint64_t a2@<X1>, re::EvaluationTree *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v125 = *MEMORY[0x1E69E9840];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0;
  v86 = 0;
  v88 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v11 = v68;
  memset(v68, 0, sizeof(v68));
  re::EvaluationTree::resolveAliasRegisters(a3, a2, a4, &v89, &v86, &v74, &v71, v68);
  v63[0] = 1;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  memset(v108, 0, sizeof(v108));
  memset(v107, 0, sizeof(v107));
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, sizeof(v105));
  memset(v104, 0, sizeof(v104));
  memset(v103, 0, sizeof(v103));
  memset(v102, 0, sizeof(v102));
  v12 = *(a3 + 210);
  re::FixedArray<BOOL>::init<>(a1, v8, v12);
  re::FixedArray<BOOL>::init<>(v106, v8, v12);
  re::FixedArray<unsigned long>::init<>(v102, v8, v12);
  v13 = *(a3 + 215);
  re::FixedArray<BOOL>::init<>(a1 + 3, v8, v13);
  re::FixedArray<BOOL>::init<>(&v106[1] + 1, v8, v13);
  re::FixedArray<unsigned long>::init<>(&v102[1] + 1, v8, v13);
  v14 = *(a3 + 220);
  re::FixedArray<BOOL>::init<>(a1 + 6, v8, v14);
  re::FixedArray<BOOL>::init<>(v107, v8, v14);
  re::FixedArray<unsigned long>::init<>(v103, v8, v14);
  v15 = *(a3 + 225);
  re::FixedArray<BOOL>::init<>(a1 + 9, v8, v15);
  re::FixedArray<BOOL>::init<>(&v107[1] + 1, v8, v15);
  re::FixedArray<unsigned long>::init<>(&v103[1] + 1, v8, v15);
  v16 = *(a3 + 230);
  re::FixedArray<BOOL>::init<>(a1 + 12, v8, v16);
  re::FixedArray<BOOL>::init<>(v108, v8, v16);
  re::FixedArray<unsigned long>::init<>(v104, v8, v16);
  v17 = *(a3 + 235);
  re::FixedArray<BOOL>::init<>(a1 + 15, v8, v17);
  re::FixedArray<BOOL>::init<>(&v108[1] + 1, v8, v17);
  re::FixedArray<unsigned long>::init<>(&v104[1] + 1, v8, v17);
  v18 = *(a3 + 240);
  re::FixedArray<BOOL>::init<>(a1 + 18, v8, v18);
  re::FixedArray<BOOL>::init<>(&v109, v8, v18);
  re::FixedArray<unsigned long>::init<>(v105, v8, v18);
  v19 = *(a3 + 245);
  re::FixedArray<BOOL>::init<>(a1 + 21, v8, v19);
  re::FixedArray<BOOL>::init<>(&v110 + 1, v8, v19);
  re::FixedArray<unsigned long>::init<>(&v105[1] + 1, v8, v19);
  v62 = 0;
  v21 = v63[0];
  if ((v63[0] & 1) == 0)
  {
LABEL_44:
    *a6 = v21;
    *(a6 + 8) = v64;
    *(a6 + 24) = v65;
    *(a6 + 48) = v67;
    *(a6 + 32) = v66;
    goto LABEL_45;
  }

  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(&v70 + 1);
      if (*(&v70 + 1) <= v24)
      {
        break;
      }

      v26 = v70;
      v21 = v63[0];
      if ((v63[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v11 = v26 + v23;
      v21 = v63[0];
      if ((v63[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v21 = v63[0];
      if ((v63[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v24 = (v24 + 1);
      v23 += 24;
      if (v22 == v24)
      {
        goto LABEL_9;
      }
    }

LABEL_132:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v25);
    _os_crash();
    __break(1u);
    goto LABEL_133;
  }

LABEL_9:
  v60 = a6;
  if (a5)
  {
    v27 = *(a3 + 255);
    if (v27)
    {
      v28 = *(a3 + 257);
      v29 = 8 * v27;
      while (1)
      {
        v30 = v63[0];
        if ((v63[0] & 1) == 0)
        {
          break;
        }

        ++v28;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_14;
        }
      }

LABEL_129:
      *v60 = v30;
      *(v60 + 8) = v64;
      *(v60 + 24) = v65;
      *(v60 + 48) = v67;
      *(v60 + 32) = v66;
LABEL_45:
      v67 = 0;
      v65 = 0;
      v66 = 0uLL;
      goto LABEL_46;
    }
  }

LABEL_14:
  v11 = v62;
  a1[48] = v8;
  a1[49] = v11;
  v61 = a5;
  if (v11)
  {
    if (v11 >> 60)
    {
      goto LABEL_134;
    }

    v31 = (*(*v8 + 32))(v8, 16 * v11, 8);
    a1[50] = v31;
    if (!v31)
    {
LABEL_135:
      re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v32 = (v11 - 1);
    if (v11 != 1)
    {
      do
      {
        *v31 = -1;
        *(v31 + 8) = -1;
        v31 += 16;
        --v32;
      }

      while (v32);
    }

    *v31 = -1;
    *(v31 + 8) = -1;
  }

  v33 = 0;
  v24 = (a1 + 24);
  v11 = v102;
  do
  {
    v34 = *(v102 + v33 * 8 + 8);
    v35 = &a1[v33];
    v35[24] = v8;
    v35[25] = v34;
    if (v34)
    {
      if (v34 >> 60)
      {
        re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v34);
        _os_crash();
        __break(1u);
LABEL_131:
        re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_132;
      }

      v36 = (*(*v8 + 32))(v8, 16 * v34, 8);
      a1[v33 + 26] = v36;
      if (!v36)
      {
        goto LABEL_131;
      }

      v37 = v36;
      if (v34 != 1)
      {
        bzero(v36, 16 * v34 - 16);
        v37 += 2 * v34 - 2;
      }

      *v37 = 0;
      v37[1] = 0;
    }

    v33 += 3;
  }

  while (v33 != 24);
  v38 = 0;
  for (i = 0; i != 8; ++i)
  {
    v40 = v102 + 24 * i;
    v41 = *(v40 + 1);
    if (v41)
    {
      v42 = 0;
      v43 = 0;
      v44 = (v24 + 24 * i);
      while (1)
      {
        v45 = *(v40 + 1);
        if (v45 <= v43)
        {
          break;
        }

        v45 = v44[1];
        if (v45 <= v43)
        {
          goto LABEL_128;
        }

        v46 = *(*(v40 + 2) + 8 * v43);
        v47 = (v44[2] + v42);
        *v47 = a1[50] + 16 * v38;
        v47[1] = v46;
        v38 += v46;
        ++v43;
        v42 += 16;
        if (v41 == v43)
        {
          goto LABEL_34;
        }
      }

      v101 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v112 = 136315906;
      v113 = "operator[]";
      v114 = 1024;
      v115 = 468;
      v116 = 2048;
      v117 = v43;
      v118 = 2048;
      v119 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_128:
      v101 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v112 = 136315906;
      v113 = "operator[]";
      v114 = 1024;
      v115 = 468;
      v116 = 2048;
      v117 = v43;
      v118 = 2048;
      v119 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_129;
    }

LABEL_34:
    ;
  }

  v11 = v68;
  if (v22)
  {
    v49 = 0;
    v8 = 0;
    while (1)
    {
      v50 = *(&v70 + 1);
      if (*(&v70 + 1) <= v8)
      {
        break;
      }

      v11 = v70 + v49;
      v8 = (v8 + 1);
      v49 += 24;
      if (v22 == v8)
      {
        goto LABEL_39;
      }
    }

LABEL_133:
    re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v50);
    _os_crash();
    __break(1u);
LABEL_134:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v11);
    _os_crash();
    __break(1u);
    goto LABEL_135;
  }

LABEL_39:
  if (v61)
  {
    v51 = *(a3 + 255);
    if (v51)
    {
      v52 = *(a3 + 257);
      v53 = 8 * v51;
      do
      {
        v54 = *v52++;
        v53 -= 8;
      }

      while (v53);
    }
  }

  *v60 = 1;
LABEL_46:
  for (j = 168; j != -24; j -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((v102 + j));
  }

  for (k = 0; k != -192; k -= 24)
  {
    v57 = (v106 + k);
    v58 = *(&v110 + k + 8);
    if (v58)
    {
      if (v57[22])
      {
        (*(*v58 + 40))(v58, *(&v111 + k + 8));
        v57[22] = 0;
        v57[23] = 0;
      }

      v57[21] = 0;
    }
  }

  if (v63[0] & 1) == 0 && v65 && (v66)
  {
    (*(*v65 + 40))(v65, *(&v66 + 1));
  }

  if (v71 && v72)
  {
    (*(*v71 + 40))(v71, v73);
  }

  if (*(&v84 + 1))
  {
    if (v85)
    {
      (*(**(&v84 + 1) + 40))(*(&v84 + 1), *(&v85 + 1));
      v85 = 0uLL;
    }

    *(&v84 + 1) = 0;
  }

  if (v83)
  {
    if (*(&v83 + 1))
    {
      (*(*v83 + 40))(v83, v84);
      *(&v83 + 1) = 0;
      *&v84 = 0;
    }

    *&v83 = 0;
  }

  if (*(&v81 + 1))
  {
    if (v82)
    {
      (*(**(&v81 + 1) + 40))(*(&v81 + 1), *(&v82 + 1));
      v82 = 0uLL;
    }

    *(&v81 + 1) = 0;
  }

  if (v80)
  {
    if (*(&v80 + 1))
    {
      (*(*v80 + 40))(v80, v81);
      *(&v80 + 1) = 0;
      *&v81 = 0;
    }

    *&v80 = 0;
  }

  if (*(&v78 + 1))
  {
    if (v79)
    {
      (*(**(&v78 + 1) + 40))(*(&v78 + 1), *(&v79 + 1));
      v79 = 0uLL;
    }

    *(&v78 + 1) = 0;
  }

  if (v77)
  {
    if (*(&v77 + 1))
    {
      (*(*v77 + 40))(v77, v78);
      *(&v77 + 1) = 0;
      *&v78 = 0;
    }

    *&v77 = 0;
  }

  if (*(&v75 + 1))
  {
    if (v76)
    {
      (*(**(&v75 + 1) + 40))(*(&v75 + 1), *(&v76 + 1));
      v76 = 0uLL;
    }

    *(&v75 + 1) = 0;
  }

  if (v74 && *(&v74 + 1))
  {
    (*(*v74 + 40))(v74, v75);
  }

  if (v86 && v87)
  {
    (*(*v86 + 40))(v86, v88);
  }

  if (*(&v99 + 1))
  {
    if (v100)
    {
      (*(**(&v99 + 1) + 40))(*(&v99 + 1), *(&v100 + 1));
      v100 = 0uLL;
    }

    *(&v99 + 1) = 0;
  }

  if (v98)
  {
    if (*(&v98 + 1))
    {
      (*(*v98 + 40))(v98, v99);
      *(&v98 + 1) = 0;
      *&v99 = 0;
    }

    *&v98 = 0;
  }

  if (*(&v96 + 1))
  {
    if (v97)
    {
      (*(**(&v96 + 1) + 40))(*(&v96 + 1), *(&v97 + 1));
      v97 = 0uLL;
    }

    *(&v96 + 1) = 0;
  }

  if (v95)
  {
    if (*(&v95 + 1))
    {
      (*(*v95 + 40))(v95, v96);
      *(&v95 + 1) = 0;
      *&v96 = 0;
    }

    *&v95 = 0;
  }

  if (*(&v93 + 1))
  {
    if (v94)
    {
      (*(**(&v93 + 1) + 40))(*(&v93 + 1), *(&v94 + 1));
      v94 = 0uLL;
    }

    *(&v93 + 1) = 0;
  }

  if (v92)
  {
    if (*(&v92 + 1))
    {
      (*(*v92 + 40))(v92, v93);
      *(&v92 + 1) = 0;
      *&v93 = 0;
    }

    *&v92 = 0;
  }

  if (*(&v90 + 1))
  {
    if (v91)
    {
      (*(**(&v90 + 1) + 40))(*(&v90 + 1), *(&v91 + 1));
      v91 = 0uLL;
    }

    *(&v90 + 1) = 0;
  }

  result = v89;
  if (v89)
  {
    if (*(&v89 + 1))
    {
      return (*(*v89 + 40))(v89, v90);
    }
  }

  return result;
}

void re::anonymous namespace::countRegisterDependenciesForType<int>(re::Allocator *a1, re::EvaluationTree *a2, char a3, void *a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = a4[1];
  if (v8)
  {
    v17 = 0;
    while (1)
    {
      v18 = a4[1];
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<unsigned int>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 24);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 24);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<float>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 40);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 40);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<re::Matrix3x3<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 56);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 56);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<re::Matrix4x4<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 72);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 72);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<re::Quaternion<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 88);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 88);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<re::Vector2<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 104);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 104);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::countRegisterDependenciesForType<re::Vector3<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *(a4 + 120);
  if (v8)
  {
    v16 = result;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 120);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::countRegisterDependencies(re::Allocator *a1, re::EvaluationTree *a2, char a3, unsigned int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, char *a9)
{
  i = a5;
  v114 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    ++*a8;
    v16 = a7 + 24 * a4;
    v17 = *(v16 + 8);
    if (v17 <= a5)
    {
      goto LABEL_76;
    }

    v18 = a4;
    ++*(*(v16 + 16) + 8 * a5);
  }

  else
  {
    v18 = a4;
  }

  v19 = a6 + 24 * v18;
  v17 = *(v19 + 8);
  if (v17 <= a5)
  {
    goto LABEL_75;
  }

  v20 = *(v19 + 16);
  v21 = *(v20 + a5);
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      *v67 = a1;
      memset(&v67[8], 0, 24);
      re::DynamicString::setCapacity(v67, 0x80uLL);
      re::DynamicString::appendf(v67, "A circular dependency has been detected with register type %u, register id %zu.", a4, i);
      LOBYTE(v79) = 0;
      *(&v79 + 1) = 4000;
      v80[0] = &re::AnimationErrorCategory(void)::instance;
      *&v80[1] = *v67;
      v80[3] = *&v67[16];
      *&v81 = *&v67[24];
      re::Result<re::Unit,re::DetailedError>::operator=(a9, &v79);
      if (v79 & 1) == 0 && v80[1] && (v80[2])
      {
        (*(*v80[1] + 40))();
      }
    }

    else
    {
      v47 = a6 + 24 * v18;
      *(v20 + a5) = 1;
      re::EvaluationTree::getRegister(v54, a2, v18, a5);
      v22 = &(&re::kEvaluationCommandDescriptions)[2 * v54[0]];
      v49 = *(v22 + 9);
      if (*(v22 + 9))
      {
        v23 = 0;
        v50 = v22 + 10;
        v48 = i;
        do
        {
          v24 = v50[v23];
          v25 = *&v54[2 * v23 + 2];
          v51 = v23;
          if (v24 == 253)
          {
            v32 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2 + 1608, v25);
            v52 = *(v32 + 40);
            v53 = v32;
            if (v52)
            {
              for (i = 0; i != v52; ++i)
              {
                v33 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v53, i);
                v34 = v33[5];
                if (v34 != -1)
                {
                  v35 = v34 - 0x7FFFFFFFFFFFFFFFLL;
                  if (v34 - 0x7FFFFFFFFFFFFFFFLL >= 0)
                  {
                    v29 = *(a2 + 88);
                    while (v29 > v35)
                    {
                      v34 = *(*(a2 + 90) + 8 * v35);
                      v35 = v34 - 0x7FFFFFFFFFFFFFFFLL;
                      if (v34 - 0x7FFFFFFFFFFFFFFFLL < 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    *&v56 = 0;
                    v81 = 0u;
                    v82 = 0u;
                    memset(v80, 0, sizeof(v80));
                    v79 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v67 = 136315906;
                    *&v67[4] = "operator[]";
                    *&v67[12] = 1024;
                    *&v67[14] = 797;
                    *&v67[18] = 2048;
                    *&v67[20] = v35;
                    *&v67[28] = 2048;
                    *&v67[30] = v29;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_74:
                    v55 = 0;
                    v59 = 0u;
                    v60 = 0u;
                    v57 = 0u;
                    v58 = 0u;
                    v56 = 0u;
                    v17 = MEMORY[0x1E69E9C10];
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v106 = 136315906;
                    v107 = "operator[]";
                    v108 = 1024;
                    v109 = 468;
                    v110 = 2048;
                    v111 = i;
                    v112 = 2048;
                    v113 = v29;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_75:
                    *&v56 = 0;
                    v81 = 0u;
                    v82 = 0u;
                    memset(v80, 0, sizeof(v80));
                    v79 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v67 = 136315906;
                    *&v67[4] = "operator[]";
                    *&v67[12] = 1024;
                    *&v67[14] = 468;
                    *&v67[18] = 2048;
                    *&v67[20] = i;
                    *&v67[28] = 2048;
                    *&v67[30] = v17;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_76:
                    *&v56 = 0;
                    v81 = 0u;
                    v82 = 0u;
                    memset(v80, 0, sizeof(v80));
                    v79 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v67 = 136315906;
                    *&v67[4] = "operator[]";
                    *&v67[12] = 1024;
                    *&v67[14] = 468;
                    *&v67[18] = 2048;
                    *&v67[20] = i;
                    *&v67[28] = 2048;
                    *&v67[30] = v17;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_77:
                    *&v56 = 0;
                    v81 = 0u;
                    v82 = 0u;
                    memset(v80, 0, sizeof(v80));
                    v79 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v67 = 136315906;
                    *&v67[4] = "operator[]";
                    *&v67[12] = 1024;
                    *&v67[14] = 468;
                    *&v67[18] = 2048;
                    *&v67[20] = i;
                    *&v67[28] = 2048;
                    *&v67[30] = v17;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_32:
                  if (*a9 != 1)
                  {
                    return;
                  }
                }

                v36 = *v33;
                v37 = *(*v33 + 1304);
                *v67 = *(*v33 + 1320);
                *&v67[8] = v37;
                v38 = v36[168];
                *&v67[16] = v36[170];
                *&v67[24] = v38;
                v39 = v36[173];
                *&v67[32] = v36[175];
                v68 = v39;
                v40 = v36[178];
                v69 = v36[180];
                v70 = v40;
                v41 = v36[183];
                v71 = v36[185];
                v72 = v41;
                v42 = v36[188];
                v73 = v36[190];
                v74 = v42;
                v43 = v36[193];
                v75 = v36[195];
                v76 = v43;
                v44 = v36[200];
                v45 = v36[198];
                v77 = v44;
                v78 = v45;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                v81 = 0u;
                v79 = 0u;
                memset(v80, 0, sizeof(v80));
                re::EvaluationTree::resolveAliasRegisters(a2, a1, v67, &v79);
                *&v56 = v80[0];
                *(&v56 + 1) = *(&v79 + 1);
                *&v57 = v80[3];
                *(&v57 + 1) = v80[2];
                *&v58 = v82;
                *(&v58 + 1) = *(&v81 + 1);
                *&v59 = *(&v83 + 1);
                *(&v59 + 1) = v83;
                *&v60 = v85;
                *(&v60 + 1) = *(&v84 + 1);
                v61 = *(&v86 + 1);
                v62 = v86;
                v63 = v88;
                v64 = *(&v87 + 1);
                v65 = *(&v89 + 1);
                v66 = v89;
                v46 = *a9;
                if (*(&v88 + 1))
                {
                  if (v89)
                  {
                    (*(**(&v88 + 1) + 40))();
                    v89 = 0uLL;
                  }

                  *(&v88 + 1) = 0;
                }

                if (v87)
                {
                  if (*(&v87 + 1))
                  {
                    (*(*v87 + 40))();
                    *(&v87 + 1) = 0;
                    *&v88 = 0;
                  }

                  *&v87 = 0;
                }

                if (*(&v85 + 1))
                {
                  if (v86)
                  {
                    (*(**(&v85 + 1) + 40))();
                    v86 = 0uLL;
                  }

                  *(&v85 + 1) = 0;
                }

                if (v84)
                {
                  if (*(&v84 + 1))
                  {
                    (*(*v84 + 40))();
                    *(&v84 + 1) = 0;
                    *&v85 = 0;
                  }

                  *&v84 = 0;
                }

                if (*(&v82 + 1))
                {
                  if (v83)
                  {
                    (*(**(&v82 + 1) + 40))();
                    v83 = 0uLL;
                  }

                  *(&v82 + 1) = 0;
                }

                if (v81)
                {
                  if (*(&v81 + 1))
                  {
                    (*(*v81 + 40))();
                    *(&v81 + 1) = 0;
                    *&v82 = 0;
                  }

                  *&v81 = 0;
                }

                if (v80[1])
                {
                  if (v80[2])
                  {
                    (*(*v80[1] + 40))();
                    v80[2] = 0;
                    v80[3] = 0;
                  }

                  v80[1] = 0;
                }

                if (v79 && *(&v79 + 1))
                {
                  (*(*v79 + 40))();
                }

                if ((v46 & 1) == 0)
                {
                  return;
                }
              }
            }
          }

          else if (v24 == 254)
          {
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v81 = 0u;
            v79 = 0u;
            memset(v80, 0, sizeof(v80));
            CallbackData = re::EvaluationTree::getCallbackData(a2, v25);
            re::EvaluationTree::resolveAliasRegisters(a2, a1, CallbackData, &v79);
            *v67 = v80[1];
            *&v67[8] = v80[0];
            *&v67[16] = v81;
            *&v67[24] = v80[3];
            *&v67[32] = *(&v82 + 1);
            v68 = v82;
            v69 = v84;
            v70 = *(&v83 + 1);
            v71 = *(&v85 + 1);
            v72 = v85;
            v73 = v87;
            v74 = *(&v86 + 1);
            v75 = *(&v88 + 1);
            v76 = v88;
            v77 = v90;
            v78 = *(&v89 + 1);
            if (*a9 != 1)
            {
LABEL_71:
              re::EvaluationCallbackData::~EvaluationCallbackData(&v79);
              return;
            }

            v27 = v91;
            if (v91)
            {
              v28 = 0;
              i = 0;
              do
              {
                v29 = v91;
                if (v91 <= i)
                {
                  goto LABEL_74;
                }

                v30 = *(&v91 + 1);
                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                v31 = v30 + v28;
                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                ++i;
                v28 += 24;
              }

              while (v27 != i);
            }

            re::EvaluationCallbackData::~EvaluationCallbackData(&v79);
          }

          else
          {
            if (*a9 != 1)
            {
              return;
            }
          }

          v23 = v51 + 1;
          i = v48;
        }

        while (v51 + 1 != v49);
      }

      v17 = *(v47 + 8);
      if (v17 <= i)
      {
        goto LABEL_77;
      }

      *(*(v47 + 16) + i) = 2;
    }
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<int>(re::EvaluationTree *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a4[1];
  if (v7)
  {
    v15 = 0;
    while (1)
    {
      v16 = a4[1];
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<unsigned int>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 24);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<float>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 40);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 40);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<re::Matrix3x3<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 56);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 56);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<re::Matrix4x4<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 72);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 72);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<re::Quaternion<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 88);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 88);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::storeRegisterDependenciesForType<re::Vector2<float>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 104);
  if (v7)
  {
    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 104);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    result = _os_crash();
    __break(1u);
  }

  return result;
}