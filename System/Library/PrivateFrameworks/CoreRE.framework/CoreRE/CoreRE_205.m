__n128 re::Progress::Progress(re::Progress *this, const re::Progress *a2)
{
  v3 = re::DynamicArray<char const*>::DynamicArray(this, a2);
  v4 = *(a2 + 40);
  *(v3 + 56) = *(a2 + 7);
  *(v3 + 40) = v4;
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(v3 + 88) = result;
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 105) = *(a2 + 105);
  return result;
}

re::Message *re::Message::Message(re::Message *this, const re::Message *a2)
{
  v4 = re::DynamicArray<re::Entry>::DynamicArray(this, a2);
  re::DynamicArray<BOOL>::DynamicArray(v4 + 40, a2 + 5);
  re::DynamicArray<BOOL>::DynamicArray(this + 80, a2 + 10);
  re::DynamicArray<char const*>::DynamicArray(this + 120, a2 + 15);
  re::DynamicArray<char const*>::DynamicArray(this + 160, a2 + 20);
  re::DynamicArray<char const*>::DynamicArray(this + 200, a2 + 25);
  re::DynamicArray<char const*>::DynamicArray(this + 240, a2 + 30);
  v5 = *(a2 + 280);
  *(this + 37) = *(a2 + 37);
  *(this + 280) = v5;
  v7 = *(a2 + 21);
  v6 = *(a2 + 22);
  v8 = *(a2 + 20);
  *(this + 361) = *(a2 + 361);
  *(this + 21) = v7;
  *(this + 22) = v6;
  *(this + 20) = v8;
  *(this + 19) = *(a2 + 19);
  return this;
}

uint64_t re::ConfChange::ConfChange(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicArray<BOOL>::DynamicArray(a1, a2);
  re::DynamicArray<char const*>::DynamicArray(v4 + 40, (a2 + 40));
  re::DynamicArray<char const*>::DynamicArray(a1 + 80, (a2 + 80));
  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a1 + 120) = v5;
  return a1;
}

uint64_t re::DynamicArray<re::Entry>::deinit(uint64_t a1)
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
        v5 = 104 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 104;
          v5 -= 104;
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

uint64_t re::DynamicArray<re::Message>::deinit(uint64_t a1)
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
        v5 = 384 * v4;
        do
        {
          re::Snapshot::~Snapshot((v3 + 80));
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<re::Entry>::deinit(v3);
          v3 += 384;
          v5 -= 384;
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

uint64_t re::ProgressSet::operator=(uint64_t a1, uint64_t *a2)
{
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1, a2);
  re::DynamicArray<unsigned long long>::operator=(a1 + 48, (a2 + 6));
  re::Optional<re::Configuration>::operator=(a1 + 88, (a2 + 11));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1 + 192, a2 + 24);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1 + 240, a2 + 30);
  *(a1 + 288) = a2[36];
  *(a1 + 296) = a2[37];
  return a1;
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::Optional<re::Configuration>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1 + 8, (a2 + 8));
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1 + 56, (a2 + 56));
    }

    else
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a1 + 56));
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a1 + 8));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 8) = 0u;
    *(a1 + 44) = 0x7FFFFFFFLL;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 8), (a2 + 8));
    *(a1 + 56) = 0u;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 92) = 0x7FFFFFFFLL;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((a1 + 56), (a2 + 56));
  }

  return a1;
}

void re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
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
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 32);
        }

        v4 += 136;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    if (!*a1 || *a1 == *a2)
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(a1, a2);
    }

    else if (*a2)
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
      ++*(a1 + 40);
    }

    else
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
    }
  }

  return a1;
}

uint64_t re::ConfChange::operator=(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1, a2);
  re::DynamicArray<unsigned long long>::operator=(a1 + 40, a2 + 40);
  re::DynamicArray<unsigned long long>::operator=(a1 + 80, a2 + 80);
  v4 = *(a2 + 152);
  v5 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v5;
  *(a1 + 152) = v4;
  return a1;
}

__n128 re::ConfChange::ConfChange(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(a1 + 104);
  result = *(a2 + 120);
  v12 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v12;
  *(a1 + 120) = result;
  return result;
}

uint64_t re::Raft::Raft(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  re::Unstable::Unstable(a1 + 8, (a2 + 1));
  *(a1 + 288) = *(a2 + 18);
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 340) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 304), a2 + 38);
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  v5 = a2[45];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = v5;
  a2[44] = 0;
  a2[45] = 0;
  v6 = *(a1 + 368);
  *(a1 + 368) = a2[46];
  a2[46] = v6;
  v7 = *(a1 + 384);
  *(a1 + 384) = a2[48];
  a2[48] = v7;
  ++*(a2 + 94);
  ++*(a1 + 376);
  *(a1 + 424) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  v8 = a2[50];
  *(a1 + 392) = a2[49];
  *(a1 + 400) = v8;
  a2[49] = 0;
  a2[50] = 0;
  v9 = *(a1 + 408);
  *(a1 + 408) = a2[51];
  a2[51] = v9;
  v10 = *(a1 + 424);
  *(a1 + 424) = a2[53];
  a2[53] = v10;
  ++*(a2 + 104);
  ++*(a1 + 416);
  re::ReadOnly::ReadOnly(a1 + 432, (a2 + 54));
  *(a1 + 536) = *(a2 + 536);
  v11 = *(a2 + 544);
  *(a1 + 544) = v11;
  if (v11 == 1)
  {
    re::ProgressSet::ProgressSet(a1 + 552, (a2 + 69));
  }

  v12 = *(a2 + 856);
  *(a1 + 856) = v12;
  if (v12 == 1)
  {
    re::ConfChange::ConfChange(a1 + 864, (a2 + 108));
  }

  v13 = *(a2 + 1024);
  *(a1 + 1024) = v13;
  if (v13 == 1)
  {
    *(a1 + 1032) = a2[129];
  }

  v14 = *(a2 + 65);
  v15 = *(a2 + 66);
  v16 = *(a2 + 67);
  *(a1 + 1088) = *(a2 + 68);
  *(a1 + 1072) = v16;
  *(a1 + 1056) = v15;
  *(a1 + 1040) = v14;
  v17 = *(a2 + 69);
  v18 = *(a2 + 70);
  v19 = *(a2 + 71);
  *(a1 + 1149) = *(a2 + 1149);
  *(a1 + 1136) = v19;
  *(a1 + 1120) = v18;
  *(a1 + 1104) = v17;
  return a1;
}

uint64_t re::Unstable::Unstable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  LODWORD(v6) = *(a2 + 40);
  *(a1 + 40) = v6;
  if (v6 == 1)
  {
    re::DynamicArray<BOOL>::DynamicArray(a1 + 48, (a2 + 48));
    re::DynamicArray<char const*>::DynamicArray(a1 + 88, (a2 + 88));
    re::DynamicArray<char const*>::DynamicArray(a1 + 128, (a2 + 128));
    re::DynamicArray<char const*>::DynamicArray(a1 + 168, (a2 + 168));
    re::DynamicArray<char const*>::DynamicArray(a1 + 208, (a2 + 208));
    v7 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v7;
  }

  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t re::ReadOnly::ReadOnly(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v6;
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t re::DynamicArray<re::Entry>::DynamicArray(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    re::DynamicArray<re::Entry>::setCapacity(a1, a3);
    ++*(a1 + 24);
    re::DynamicArray<re::Entry>::copy(a1, 0, a2, a3);
  }

  return a1;
}

void *re::DynamicArray<re::Entry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Entry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 104 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          LODWORD(v16) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *v17;
          *(v13 + 6) = v16;
          v19 = *(v8 + v10 + 48);
          v13[5] = v18;
          *v17 = 0;
          v13[6] = v19;
          *(v12 + 48) = 0;
          v20 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v20;
          v21 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v21;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          v22 = *(v8 + v10 + 80);
          v13[12] = *(v8 + v10 + 96);
          *(v13 + 5) = v22;
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 104;
        }

        while (v12 + 104 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::Entry>::copy(void *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v17 = 0;
    memset(v19, 0, sizeof(v19));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v18) = 136315906;
    *(&v18 + 4) = "copy";
    WORD6(v18) = 1024;
    HIWORD(v18) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v17, v18);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_13;
  }

  if (v7 >= v8)
  {
    this = std::__copy_impl::operator()[abi:nn200100]<re::Entry const*,re::Entry const*,re::Entry*>(v19, a3, a3 + 104 * a4, this[4] + 104 * a2);
  }

  else
  {
    re::DynamicArray<re::Entry>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = a3 + 104 * (v10 - a2);
    this = std::__copy_impl::operator()[abi:nn200100]<re::Entry const*,re::Entry const*,re::Entry*>(v19, a3, v11, v6[4] + 104 * a2);
    if (v10 - a2 != v4)
    {
      v12 = 0;
      v13 = v6[4] + 104 * v6[2];
      v14 = 104 * a2 + 104 * v4 - 104 * v10;
      do
      {
        v15 = v13 + v12;
        re::DynamicArray<BOOL>::DynamicArray(v13 + v12, (v11 + v12));
        this = re::DynamicArray<BOOL>::DynamicArray(v13 + v12 + 40, (v11 + v12 + 40));
        v16 = *(v11 + v12 + 80);
        *(v15 + 96) = *(v11 + v12 + 96);
        *(v15 + 80) = v16;
        v12 += 104;
      }

      while (v14 != v12);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::DynamicArray<re::Entry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Entry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Entry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::Entry const*,re::Entry const*,re::Entry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<BOOL>::operator=(a4, v5);
    re::DynamicArray<BOOL>::operator=(a4 + 40, (v5 + 40));
    v7 = *(v5 + 96);
    *(a4 + 80) = *(v5 + 80);
    *(a4 + 96) = v7;
    a4 += 104;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 136 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 136 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 136 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 136 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::DynamicArray<re::Entry>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::Entry>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Entry>::copy(a1, a2);
  }

  return a1;
}

{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = a2[1];
  if (v3)
  {
    re::DynamicArray<re::Entry>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<re::Entry>::copy(a1, 0, *a2, a2[1]);
  }

  return a1;
}

uint64_t re::DynamicArray<re::Entry>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::Entry>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::Entry const*,re::Entry const*,re::Entry*>(&v17, *(a2 + 32), *(a2 + 32) + 104 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 104 * v9;
      v13 = 104 * v4;
      do
      {
        v14 = v11 + v12;
        re::DynamicArray<BOOL>::DynamicArray(v11 + v12, (v10 + v12));
        result = re::DynamicArray<BOOL>::DynamicArray(v11 + v12 + 40, (v10 + v12 + 40));
        v15 = *(v10 + v12 + 80);
        *(v14 + 96) = *(v10 + v12 + 96);
        *(v14 + 80) = v15;
        v13 -= 104;
        v10 += 104;
        v11 += 104;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::Entry const*,re::Entry const*,re::Entry*>(&v16, *(a2 + 32), *(a2 + 32) + 104 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 104 * v4;
      v8 = -104 * v4 + 104 * v6;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v7);
        v7 += 104;
        v8 -= 104;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::Message>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Message>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x180uLL))
        {
          v2 = 384 * a2;
          result = (*(*result + 32))(result, 384 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 384, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 384 * v9;
        v11 = v7;
        do
        {
          re::Message::Message(v11, v8);
          re::Snapshot::~Snapshot((v8 + 80));
          re::DynamicArray<unsigned long>::deinit(v8 + 40);
          re::DynamicArray<re::Entry>::deinit(v8);
          v8 += 384;
          v11 += 384;
          v10 -= 384;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<unsigned char>::DynamicArray(uint64_t a1, char *a2, unint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a3)
  {
    re::DynamicArray<BOOL>::setCapacity(a1, a3);
    ++*(a1 + 24);
    re::DynamicArray<REFrameAnalysisBottleneck>::copy(a1, 0, a2, a3);
  }

  return a1;
}

void *re::DynamicArray<re::ReadState>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ReadState>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7 + 3;
        do
        {
          v11[1] = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
          *(v11 - 3) = 0;
          *v11 = 0;
          v12 = *(v8 + 8);
          *(v11 - 3) = *v8;
          *(v11 - 2) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 1);
          *(v11 - 1) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = v11[1];
          v15 = *(v8 + 40);
          v11[1] = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*v11;
          v11[2] = v15;
          re::DynamicArray<unsigned long>::deinit(v8);
          v8 += 48;
          v11 += 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *re::Result<re::Optional<re::Progress>,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (a1[8] == 1)
    {
      re::DynamicArray<unsigned long>::deinit((a1 + 16));
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

uint64_t re::Progress::becomeProbe(uint64_t this)
{
  if (*(this + 64) == 2)
  {
    v1 = *(this + 88);
    *(this + 104) = 0;
    *(this + 88) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    if (*(this + 72) + 1 <= (v1 + 1))
    {
      v2 = v1 + 1;
    }

    else
    {
      v2 = *(this + 72) + 1;
    }
  }

  else
  {
    *(this + 104) = 0;
    *(this + 88) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    v2 = *(this + 72) + 1;
  }

  *(this + 64) = 0;
  *(this + 80) = v2;
  return this;
}

uint64_t re::Progress::maybeDecrementTo(re::Progress *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 64) != 1)
  {
    v5 = *(this + 10);
    if (v5)
    {
      if (!a4 && v5 - 1 != a2)
      {
        return 0;
      }

      if (!a4)
      {
        if (a3 + 1 < a2)
        {
          v6 = a3 + 1;
        }

        else
        {
          v6 = a2;
        }

        if (v6 <= 1)
        {
          v6 = 1;
        }

        *(this + 10) = v6;
LABEL_20:
        *(this + 104) = 0;
        return 1;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*(this + 12))
    {
      *(this + 12) = a4;
    }

    goto LABEL_20;
  }

  v4 = *(this + 9);
  if (v4 <= a2 && (a4 || v4 != a2))
  {
    if (a4)
    {
      *(this + 12) = a4;
    }

    else
    {
      *(this + 10) = v4 + 1;
    }

    return 1;
  }

  return 0;
}

void *re::Progress::updateState(void *this, uint64_t a2)
{
  v3 = *(this + 64);
  if (*(this + 64))
  {
    if (v3 == 1)
    {
      this[10] = a2 + 1;

      return re::Inflights::add(this, a2);
    }

    else if (v3 == 2)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) updating progress state in unhandled state: %hhu", "!Unreachable code", "updateState", 116, 2);
      this = _os_crash();
      __break(1u);
    }
  }

  else
  {
    *(this + 104) = 1;
  }

  return this;
}

_anonymous_namespace_ *re::Config::validate@<X0>(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  if (!*(this + 1))
  {
    v7 = "Invalid node ID";
LABEL_13:
    goto LABEL_14;
  }

  v3 = *(this + 7);
  if (!v3)
  {
    v7 = "Heartbeat must be greater than 0";
    goto LABEL_13;
  }

  v4 = *(this + 6);
  if (v4 <= v3)
  {
    v7 = "Election tick must be greater than heartbeat tick";
    goto LABEL_13;
  }

  v5 = *(this + 4);
  v6 = *(this + 5);
  if (!v5)
  {
    v5 = *(this + 6);
  }

  if (!v6)
  {
    v6 = 2 * v4;
  }

  if (v5 >= v4)
  {
    if (v5 >= v6)
    {
      this = re::DynamicString::format("Min election tick %zu should be less than max election tick %zu", &v11, v5, v6);
      goto LABEL_14;
    }

    if (*(this + 3))
    {
      *a2 = 1;
      return this;
    }

    v7 = "Max inflight messages must be greater than 0";
    goto LABEL_13;
  }

  this = re::DynamicString::format("Election tick %zu must be greater than heartbeat tick %zu", &v11, v5, v4);
LABEL_14:
  v8 = v11;
  v9 = v12;
  v10 = v13;
  *a2 = 0;
  *(a2 + 8) = 5;
  *(a2 + 16) = re::ConsensusErrorCategory(void)::instance;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  return this;
}

_BYTE *re::Optional<re::ConfState>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::DynamicArray<unsigned long long>::operator=((a1 + 8), (a2 + 8));
      re::DynamicArray<unsigned long long>::operator=((a1 + 48), (a2 + 48));
    }

    else
    {
      re::DynamicArray<unsigned long>::deinit((a1 + 48));
      re::DynamicArray<unsigned long>::deinit((a1 + 8));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::ConfState::ConfState((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::DynamicArray<re::Entry>::removeManyStableAt(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = result;
    v5 = a2 + a3 - 1;
    v6 = *(result + 16);
    if (v5 >= v6)
    {
      memset(v10, 0, sizeof(v10));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Entry *,re::Entry *,re::Entry *>(v10, *(result + 32) + 104 * a2 + 104 * a3, *(result + 32) + 104 * v6, *(result + 32) + 104 * a2);
    }

    v7 = -104;
    v8 = a3;
    do
    {
      v9 = *(v4 + 32) + 104 * *(v4 + 16) + v7;
      re::DynamicArray<unsigned long>::deinit(v9 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v9);
      v7 -= 104;
      --v8;
    }

    while (v8);
    *(v4 + 16) -= a3;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t MemStorageCore::setConfState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  re::DynamicArray<unsigned long long>::operator=(a1 + 128, a2);
  result = re::DynamicArray<unsigned long long>::operator=(a1 + 168, a2 + 5);
  if (*a3 == 1)
  {
    v8[0] = 1;
    re::DynamicArray<char const*>::DynamicArray(v9, (a3 + 8));
    re::DynamicArray<char const*>::DynamicArray(v10, (a3 + 48));
    result = re::Optional<re::ConfState>::operator=(a1, v8);
    if (v8[0] == 1)
    {
      if (v10[0])
      {
        if (v12)
        {
          (*(*v10[0] + 40))();
        }

        v12 = 0;
        memset(v10, 0, sizeof(v10));
        ++v11;
      }

      result = v9[0];
      if (v9[0] && v9[4])
      {
        result = (*(*v9[0] + 40))();
      }
    }

    v7 = *(a3 + 88);
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = v7;
  }

  return result;
}

void MemStorage::initialState(MemStorage *this@<X0>, uint64_t a2@<X8>)
{
  RaftState::RaftState(v5, (this + 8));
  *a2 = 1;
  v3 = v5[0];
  *(a2 + 8) = v5[0];
  if (v3 == 1)
  {
    re::ConfState::ConfState(a2 + 16, &v6);
  }

  v4 = v7;
  *(a2 + 96) = v7;
  if (v4 == 1)
  {
    *(a2 + 104) = v8;
  }

  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  re::ConfState::ConfState(a2 + 136, &v11);
  RaftState::~RaftState(v5);
}

void *MemStorage::firstIndex@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  if (this[29])
  {
    v2 = *(this[31] + 88);
  }

  else
  {
    v2 = this[53] + 1;
  }

  *a2 = 1;
  *(a2 + 8) = v2;
  return this;
}

void *MemStorage::lastIndex@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[29];
  if (v2)
  {
    v3 = (this[31] + 104 * v2 - 16);
  }

  else
  {
    v3 = this + 53;
  }

  v4 = *v3;
  *a2 = 1;
  *(a2 + 8) = v4;
  return this;
}

void *MemStorage::entries@<X0>(void *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = this[29];
  if (v5)
  {
    v6 = this[31];
    v7 = *(v6 + 88);
    if (v7 <= a2)
    {
      v8 = *(v6 + 104 * v5 - 16) + 1;
      if (v8 < a3)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

LABEL_6:
    *a4 = 0;
    *(a4 + 8) = 0;
    return this;
  }

  v8 = this[53] + 1;
  if (v8 > a2)
  {
    goto LABEL_6;
  }

  if (v8 < a3)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of bound (last: %llu, high: %llu)", "!Unreachable code", "entries", 202, v8, a3);
    this = _os_crash();
    __break(1u);
    return this;
  }

  v6 = this[31];
  v7 = *(v6 + 88);
LABEL_9:
  v9 = a2 - v7;
  v10 = v5 + 1;
  if (v5 + 1 <= a2 - v7)
  {
    v15[0] = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v16 = 136315906;
    *&v16[4] = "slice";
    *&v16[12] = 1024;
    *&v16[14] = 1119;
    *&v16[18] = 2048;
    *&v16[20] = v9;
    v17 = 2048;
    *v18 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v11 = a3 - a2;
  if (__CFADD__(v9, a3 - a2))
  {
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 1125, v9, v11, v5);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, v9, v11, v5);
    _os_crash();
    __break(1u);
  }

  if (v9 + a3 - a2 > v5)
  {
    goto LABEL_16;
  }

  v15[0] = v6 + 104 * v9;
  v15[1] = a3 - a2;
  re::DynamicArray<re::Entry>::DynamicArray(v16, v15);
  v12 = *v16;
  *v16 = 0;
  v13 = *&v18[2];
  *&v18[2] = 0;
  ++*&v16[24];
  *a4 = 1;
  *(a4 + 8) = v12;
  *&v19[0] = 0;
  v14 = *&v16[8];
  *&v16[8] = 0u;
  *(a4 + 16) = v14;
  *(v19 + 8) = 0u;
  *(a4 + 40) = v13;
  *&v20 = 0;
  DWORD2(v19[1]) = 2;
  *(a4 + 32) = 1;
  re::DynamicArray<re::Entry>::deinit(v19);
  return re::DynamicArray<re::Entry>::deinit(v16);
}

uint64_t MemStorage::initializeWithConfState(void *a1, uint64_t *a2)
{
  a1[53] = 1;
  a1[54] = 1;
  a1[16] = 1;
  a1[14] = 1;
  re::DynamicArray<unsigned long long>::operator=((a1 + 17), a2);

  return re::DynamicArray<unsigned long long>::operator=((a1 + 22), a2 + 5);
}

void *MemStorage::term@<X0>(void *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this[53];
  if (v3 == a2)
  {
    v4 = this[54];
LABEL_3:
    *a3 = 1;
    *(a3 + 8) = v4;
    return this;
  }

  v5 = this[29];
  if (v5)
  {
    v6 = *(this[31] + 88);
  }

  else
  {
    v6 = v3 + 1;
  }

  if (v6 <= a2)
  {
    v7 = this[31];
    v8 = a2 - *(v7 + 88);
    if (v8 < v5)
    {
      v4 = *(v7 + 104 * v8 + 96);
      goto LABEL_3;
    }

    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return this;
}

void MemStorage::snapshot(MemStorage *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
    *a3 = 0;
    *(a3 + 8) = 3;
  }

  else
  {
    *v18 = 0u;
    memset(v17, 0, sizeof(v17));
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, sizeof(v15));
    v6 = *(this + 14);
    *&v18[16] = *(this + 16);
    v19 = v6;
    re::DynamicArray<unsigned long long>::operator=(&v15[2] + 8, this + 17);
    re::DynamicArray<unsigned long long>::operator=(v16, this + 22);
    if (*(this + 8) == 1)
    {
      v7 = *(this + 13);
      re::DynamicArray<unsigned long long>::operator=(&v16[2] + 8, this + 2);
      re::DynamicArray<unsigned long long>::operator=(v17, this + 7);
      *&v18[8] = v7;
    }

    if (*&v18[16] < a2)
    {
      *&v18[16] = a2;
    }

    re::DynamicArray<BOOL>::DynamicArray(v8, v15);
    re::DynamicArray<char const*>::DynamicArray(v9, &v15[2] + 1);
    re::DynamicArray<char const*>::DynamicArray(v10, v16);
    re::DynamicArray<char const*>::DynamicArray(v11, &v16[2] + 1);
    re::DynamicArray<char const*>::DynamicArray(&v12, v17);
    v13 = *&v18[8];
    v14 = v19;
    *a3 = 1;
    re::DynamicArray<BOOL>::DynamicArray(a3 + 8, v8);
    re::DynamicArray<char const*>::DynamicArray(a3 + 48, v9);
    re::DynamicArray<char const*>::DynamicArray(a3 + 88, v10);
    re::DynamicArray<char const*>::DynamicArray(a3 + 128, v11);
    re::DynamicArray<char const*>::DynamicArray(a3 + 168, &v12);
    *(a3 + 208) = v13;
    *(a3 + 224) = v14;
    re::Snapshot::~Snapshot(v8);
    re::Snapshot::~Snapshot(v15);
  }
}

void MemStorage::append(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*(a2 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 32);
  v7 = a1[29];
  if (v7)
  {
    v8 = a1[31];
    v9 = *(v8 + 88);
    v10 = *(v6 + 88);
    if (v9 <= v10)
    {
      v11 = *(v8 + 104 * v7 - 16);
      v12 = v11 + 1;
      goto LABEL_7;
    }

LABEL_6:
    re::DynamicString::format("Overwrite compacted logs, compacted: %llu, append: %llu", &v16, v9 - 1, v10);
LABEL_9:
    if (v16 && (v17 & 1) != 0)
    {
      (*(*v16 + 40))();
    }

    goto LABEL_15;
  }

  v11 = a1[53];
  v9 = v11 + 1;
  v10 = *(v6 + 88);
  v12 = v11 + 1;
  if (v11 + 1 > v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v12 < v10)
  {
    re::DynamicString::format("Raft logs should be continuous. Last index: %llu, newly appended: %llu", &v16, v11, v10);
    goto LABEL_9;
  }

  re::DynamicArray<re::Entry>::removeManyStableAt((a1 + 27), v10 - v9, v7 - (v10 - v9));
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *(a2 + 32);
    v15 = 104 * v13;
    do
    {
      re::DynamicArray<re::Entry>::add((a1 + 27), v14);
      v14 = (v14 + 104);
      v15 -= 104;
    }

    while (v15);
  }

LABEL_15:
  *a3 = 1;
}

void *MemStorage::compact@<X0>(void *this@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = this[29];
  if (v4)
  {
    v5 = this[31];
    v6 = *(v5 + 88);
    if (a2 <= v6)
    {
      goto LABEL_9;
    }

    v7 = *(v5 + 104 * v4 - 16);
    if (v7 + 1 >= a2)
    {
      this = re::DynamicArray<re::Entry>::removeManyStableAt((this + 27), 0, a2 - v6);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = this[53];
    if (v7 + 1 >= a2)
    {
      goto LABEL_9;
    }
  }

  re::DynamicString::format("Compact not received raft logs: %llu, last index: %llu", &v8, a2, v7);
  this = v8;
  if (v8 && (v9 & 1) != 0)
  {
    this = (*(*v8 + 40))();
  }

LABEL_9:
  *a3 = 1;
  return this;
}

void *MemStorage::applySnapshot@<X0>(void *this@<X0>, const re::Snapshot *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = this;
  v6 = *(a2 + 26);
  if (this[29])
  {
    v7 = *(this[31] + 88);
  }

  else
  {
    v7 = this[53] + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(a2 + 27);
    re::DynamicArray<unsigned long long>::operator=((this + 32), a2 + 5);
    re::DynamicArray<unsigned long long>::operator=(v4 + 296, a2 + 10);
    re::DynamicArray<unsigned long long>::operator=(v4 + 336, a2 + 15);
    re::DynamicArray<unsigned long long>::operator=(v4 + 376, a2 + 20);
    v9 = *(a2 + 27);
    *(v4 + 416) = *(a2 + 200);
    *(v4 + 432) = v9;
    *(v4 + 112) = v8;
    *(v4 + 128) = v6;
    re::DynamicArray<re::Entry>::clear(v4 + 216);
    re::DynamicArray<unsigned long long>::operator=(v4 + 136, a2 + 5);
    this = re::DynamicArray<unsigned long long>::operator=(v4 + 176, a2 + 10);
    if (*(a2 + 25))
    {
      re::DynamicArray<char const*>::DynamicArray(v16, a2 + 15);
      re::DynamicArray<char const*>::DynamicArray(v17, a2 + 20);
      v10 = *(a2 + 25);
      v11[0] = 1;
      re::DynamicArray<char const*>::DynamicArray(v12, v16);
      re::DynamicArray<char const*>::DynamicArray(v13, v17);
      re::Optional<re::ConfState>::operator=((v4 + 8), v11);
      if (v11[0] == 1)
      {
        if (v13[0])
        {
          if (v15)
          {
            (*(*v13[0] + 40))();
          }

          v15 = 0;
          memset(v13, 0, sizeof(v13));
          ++v14;
        }

        if (v12[0] && v12[4])
        {
          (*(*v12[0] + 40))();
        }
      }

      if ((*(v4 + 96) & 1) == 0)
      {
        *(v4 + 96) = 1;
      }

      *(v4 + 104) = v10;
      if (v17[0])
      {
        if (v19)
        {
          (*(*v17[0] + 40))();
        }

        v19 = 0;
        memset(v17, 0, sizeof(v17));
        ++v18;
      }

      this = v16[0];
      if (v16[0])
      {
        if (v16[4])
        {
          this = (*(*v16[0] + 40))();
        }
      }
    }

    *a3 = 1;
  }

  else
  {
    *a3 = 512;
  }

  return this;
}

void MemStorage::~MemStorage(MemStorage *this)
{
  *this = &unk_1F5D0CB30;
  v2 = this + 216;
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<re::Entry>::deinit(v2);
  RaftState::~RaftState((this + 8));
}

{
  *this = &unk_1F5D0CB30;
  v2 = this + 216;
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<re::Entry>::deinit(v2);
  RaftState::~RaftState((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::ConfState::ConfState(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Entry *,re::Entry *,re::Entry *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a4, v5);
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a4 + 40, v5 + 40);
    v7 = *(v5 + 96);
    *(a4 + 80) = *(v5 + 80);
    *(a4 + 96) = v7;
    a4 += 104;
    v5 += 104;
  }

  while (v5 != v6);
  return v6;
}

uint64_t re::ReadOnly::addRequest(re::ReadOnly *this, uint64_t a2, const re::Message *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 2))
  {
    v18[0] = 0;
    memset(v25, 0, 32);
    memset(v24, 0, sizeof(v24));
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 797;
    v30 = 2048;
    v31 = 0;
    v32 = 2048;
    *v33 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<BOOL>::DynamicArray(v27, *(a3 + 4));
  v6 = re::Hash<re::DynamicArray<unsigned char>>::operator()(&v23, v27);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>(this, v27, v6, &v23);
  if (HIDWORD(v23) == 0x7FFFFFFF)
  {
    re::DynamicArray<BOOL>::DynamicArray(v18, v27);
    memset(v24, 0, sizeof(v24));
    v23 = 0u;
    DWORD1(v24[1]) = 0x7FFFFFFF;
    re::Message::Message(v25, a3);
    v26 = a2;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v8 = re::Hash<re::DynamicArray<unsigned char>>::operator()(&v22, v18);
    v9 = re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>(this, v18, v8, &v19);
    if (HIDWORD(v20) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::allocEntry(this, v20, v19);
      re::DynamicArray<BOOL>::DynamicArray(v10 + 8, v18);
      *(v10 + 88) = 0;
      *(v10 + 48) = v23;
      v23 = 0uLL;
      *(v10 + 64) = *&v24[0];
      *&v24[0] = 0;
      *(v10 + 72) = *(v24 + 8);
      *(v24 + 8) = xmmword_1E3058120;
      v9 = re::Message::Message(v10 + 96, v25);
      *(v10 + 480) = v26;
      ++*(this + 10);
    }

    v12 = (this + 64);
    v11 = *(this + 8);
    v13 = v11 + 1;
    v14 = *(this + 7);
    if (v11 + 1 >= v14)
    {
      if (v14 < v13)
      {
        if (*(this + 6))
        {
          v15 = 2 * v14;
          if (!v14)
          {
            v15 = 8;
          }

          if (v15 <= v13)
          {
            v16 = v13;
          }

          else
          {
            v16 = v15;
          }

          re::Queue<re::DynamicArray<unsigned char>>::setCapacity(this + 6, v16);
          v11 = *v12;
        }

        else
        {
          re::Queue<re::DynamicArray<unsigned char>>::setCapacity(this + 6, v13);
          v11 = 0;
          *v12 = 0;
          *(this + 9) = 0;
          *(this + 20) = 0;
        }
      }

      v14 = *(this + 7);
    }

    re::DynamicArray<BOOL>::DynamicArray(*(this + 11) + 40 * ((*(this + 9) + v11) % v14), v18);
    ++*(this + 8);
    ++*(this + 20);
    re::Message::~Message(v25);
    v7.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v23);
    if (v18[0] && v18[4])
    {
      (*(*v18[0] + 40))(v7.n128_f64[0]);
    }
  }

  result = *v27;
  if (*v27)
  {
    if (*&v33[2])
    {
      return (*(**v27 + 40))(*v27, v7);
    }
  }

  return result;
}

double re::ReadOnly::recvAck@<D0>(re::ReadOnly *this@<X0>, const re::Message *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::Hash<re::DynamicArray<unsigned char>>::operator()(v9, a2 + 40);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>(this, a2 + 40, v6, v9);
  if (HIDWORD(v9[0]) == 0x7FFFFFFF)
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 36) = 0x7FFFFFFF;
  }

  else
  {
    v8 = re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator[](this, a2 + 40);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v8, a2 + 40);
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
    DWORD1(v10) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v9, a2 + 39);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 36) = 0x7FFFFFFF;
    re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::unionSet(v8, v9, a3);
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v9);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicArray<unsigned char>>::operator()(v6, a2);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>(a1, a2, v4, v6);
  return *(a1 + 16) + 496 * v7 + 48;
}

void re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::unionSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a1 + 16);
    do
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a3, (v10 + 24 * v7 + 16));
      v11 = *(a1 + 32);
      v10 = *(a1 + 16);
      if (v11 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 24 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v12;
LABEL_16:
      ;
    }

    while (v7 != v11);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = (*(a2 + 16) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 6;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 != v13)
  {
    v17 = *(a2 + 16);
    do
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a3, (v17 + 24 * v14 + 16));
      v18 = *(a2 + 32);
      v17 = *(a2 + 16);
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = *(a2 + 32);
      }

      while (v19 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(v17 + 24 * v14 + 8) & 0x80000000) != 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v14) = v19;
LABEL_32:
      ;
    }

    while (v14 != v18);
  }
}

uint64_t re::ReadOnly::advance@<X0>(re::ReadOnly *this@<X0>, const re::Message *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = 0;
    v7 = *(this + 9);
    v8 = *(this + 7);
    v9 = *(this + 11);
    v10 = *(a2 + 7);
    v11 = *(a2 + 9);
    while (1)
    {
      v12 = v9 + 40 * ((v7 + v6) % v8);
      if (*(v12 + 16) == v10 && !memcmp(*(v12 + 32), v11, v10))
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }

    v13 = v6 + 1;
  }

  else
  {
    v13 = 1;
  }

  do
  {
    re::Queue<re::DynamicArray<unsigned char>>::dequeue(this + 48, a2, v19);
    v14 = re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator[](this, v19);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v17, v14);
    re::Message::Message(v18, (v14 + 48));
    v18[48] = *(v14 + 432);
    re::DynamicArray<re::ReadIndexStatus>::add(a3, v17);
    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::remove(this, v19);
    re::Message::~Message(v18);
    v15 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v17);
    result = v19[0];
    if (v19[0])
    {
      a2 = v20;
      if (v20)
      {
        result = (*(*v19[0] + 40))(v19[0], v15);
      }
    }

    --v13;
  }

  while (v13);
  return result;
}

uint64_t re::Queue<re::DynamicArray<unsigned char>>::dequeue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 40) + 40 * *(a1 + 24);
    *a3 = *v4;
    *(a3 + 8) = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(a3 + 32) = *(v4 + 32);
    *(v4 + 32) = 0;
    ++*(v4 + 24);
    *(a3 + 24) = 1;
    result = re::DynamicArray<unsigned long>::deinit(*(a1 + 40) + 40 * *(a1 + 24));
    v6 = *(a1 + 24);
    if ((v6 + 1) < *(a1 + 8))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    --*(a1 + 16);
    *(a1 + 24) = v7;
    ++*(a1 + 32);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

re::Message *re::DynamicArray<re::ReadIndexStatus>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ReadIndexStatus>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 440 * v4;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v5, a2);
  result = re::Message::Message((v5 + 48), (a2 + 48));
  *(v5 + 432) = *(a2 + 432);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicArray<unsigned char>>::operator()(v6, a2);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>(a1, a2, v4, v6);
  return re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::removeInternal(a1, v6);
}

void *re::ReadOnly::lastPendingRequestCtx@<X0>(void *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this[8];
  if (v2)
  {
    v3 = (this[11] + 40 * ((this[9] + v2) % this[7]));
    *a2 = 1;
    return re::DynamicArray<BOOL>::DynamicArray((a2 + 8), v3);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::findEntry<re::DynamicArray<unsigned char>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_9:
    v11 = 0x7FFFFFFF;
    goto LABEL_10;
  }

  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v6 = 0x7FFFFFFF;
  v11 = 0x7FFFFFFF;
  v12 = *(a2 + 32);
  while (1)
  {
    v13 = v8;
    v14 = v9 + 496 * v8;
    if (*(v14 + 24) == v10)
    {
      result = memcmp(*(v14 + 40), v12, v10);
      if (!result)
      {
        break;
      }
    }

    v8 = *(v9 + 496 * v13) & 0x7FFFFFFF;
    v11 = v13;
    if (v8 == 0x7FFFFFFF)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v6 = v13;
LABEL_10:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v11;
  return result;
}

unint64_t re::Hash<re::DynamicArray<unsigned char>>::operator()(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  MurmurHash3_x64_128(*(a2 + 32), v3, 0, v5);
  return (v5[1] + (v5[0] << 6) + (v5[0] >> 2) - 0x61C8864680B583E9) ^ v5[0];
}

void *re::DynamicArray<re::ReadIndexStatus>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ReadIndexStatus>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ReadIndexStatus>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ReadIndexStatus>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ReadIndexStatus>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1B8uLL))
        {
          v2 = 440 * a2;
          result = (*(*result + 32))(result, 440 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 440, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[55 * v9];
        v11 = (v7 + 6);
        do
        {
          *(v11 - 16) = 0;
          *(v11 - 32) = 0u;
          *(v11 - 48) = 0u;
          *(v11 - 12) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v11 - 48), v8);
          re::Message::Message(v11, (v8 + 6));
          *(v11 + 384) = v8[54];
          re::Message::~Message((v8 + 6));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v8);
          v8 += 55;
          v11 += 440;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

BOOL re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 496 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 496 * v5) = *(v6 + 496 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::EntryBase::free((v6 + 496 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 496 * v9) = *(*(a1 + 16) + 496 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double re::Configuration::validate@<D0>(re::Configuration *this@<X0>, uint64_t a2@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  DWORD1(v26) = 0x7FFFFFFF;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v24);
  v5 = *(this + 8);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 2) + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v5)
  {
    v9 = *(this + 2);
    do
    {
      v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 48, (v9 + 24 * v6 + 16));
      if (v4)
      {
        v4 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v24, (*(this + 2) + 24 * v6 + 16));
      }

      v10 = *(this + 8);
      v9 = *(this + 2);
      if (v10 <= v6 + 1)
      {
        v11 = v6 + 1;
      }

      else
      {
        v11 = *(this + 8);
      }

      while (v11 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v6) = v11;
LABEL_18:
      ;
    }

    while (v6 != v10);
  }

  if (HIDWORD(v25))
  {
    if (v26)
    {
      v12 = 0;
      v13 = (v25 + 8);
      while (1)
      {
        v14 = *v13;
        v13 += 6;
        if (v14 < 0)
        {
          break;
        }

        if (v26 == ++v12)
        {
          LODWORD(v12) = v26;
          break;
        }
      }

      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    re::DynamicString::format("There can be no overlap of voters and learners: %llu", &v21, *(v25 + 24 * v15 + 16));
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *a2 = 0;
    v19 = 6;
    goto LABEL_30;
  }

  if (!*(this + 7))
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *a2 = 0;
    v19 = 5;
LABEL_30:
    *(a2 + 8) = v19;
    *(a2 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a2 + 24) = v16;
    *(a2 + 40) = v17;
    *(a2 + 48) = v18;
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
  }

  *a2 = 1;
  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
}

BOOL re::Configuration::hasQuorum(uint64_t a1, uint64_t a2)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  DWORD1(v15) = 0x7FFFFFFF;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v13);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 16) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a1 + 16);
    do
    {
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a2, (v8 + 24 * v5 + 16)))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v13, (*(a1 + 16) + 24 * v5 + 16));
      }

      v9 = *(a1 + 32);
      v8 = *(a1 + 16);
      if (v9 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = *(a1 + 32);
      }

      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v10;
LABEL_18:
      ;
    }

    while (v5 != v9);
  }

  v11 = HIDWORD(v14) > *(a1 + 28) >> 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v13);
  return v11;
}

void re::ProgressSet::voterIds(re::ProgressSet *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 88) == 1)
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 36) = 0x7FFFFFFF;
    re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::unionSet(this + 192, this + 96, a2);
  }

  else
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(a2, this + 192);
  }
}

void re::ProgressSet::learnerIds(re::ProgressSet *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 88) == 1)
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 36) = 0x7FFFFFFF;
    re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::unionSet(this + 240, this + 144, a2);
  }

  else
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(a2, this + 240);
  }
}

double re::ProgressSet::assertProgressAndConfigurationConsistent(re::ProgressSet *this)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::unionSet(this + 192, this + 240, v9);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 2);
    while (1)
    {
      v5 = *v4;
      v4 += 34;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
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
    v8 = *(*(this + 2) + 136 * v3 + 8);
    if (*(this + 88) == 1 && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 144, &v8))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 96, &v8);
    }

    v6 = *(this + 8);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 2) + 136 * v3) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v3) = v6;
LABEL_17:
    ;
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v9);
}

__n128 re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *a2;
  v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a1 + 16);
      if (*(v11 + 40 * v10 + 8) == v6)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v10) = *(v11 + 40 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v11 + 40 * v10 + 8) == v6)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v12 = re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  *(v12 + 8) = *a2;
  result = *a3;
  *(v12 + 16) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  ++*(a1 + 40);
  return result;
}

uint64_t re::ProgressSet::restoreSnapshotMeta@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 240) = 0u;
  v8 = a4 + 240;
  *(a4 + 192) = 0u;
  v9 = a4 + 192;
  *(a4 + 36) = 0x7FFFFFFF;
  *(a4 + 80) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  *(a4 + 72) = 0;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 228) = 0x7FFFFFFF;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 276) = 0x7FFFFFFF;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a4 + 192, 0);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v8, 0);
  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = a3;
  re::DynamicArray<float *>::setCapacity(v35, a3);
  v41 = 0;
  v42 = 0;
  v43 = a2;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v10 = a1[2];
  if (v10)
  {
    v11 = a1[4];
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      v28 = v13;
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(a4, &v28, v35);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v9, &v28);
      v12 -= 8;
    }

    while (v12);
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = a1[9];
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      v28 = v17;
      re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(a4, &v28, v35);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v8, &v28);
      v16 -= 8;
    }

    while (v16);
  }

  if (a1[20])
  {
    memset(v31, 0, sizeof(v31));
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v34 = 0u;
    DWORD1(v32) = 0x7FFFFFFF;
    DWORD1(v34) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v31, 0);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v33, 0);
    v18 = a1[12];
    if (v18)
    {
      v19 = a1[14];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        v28 = v21;
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, &v28, v35);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v31, &v28);
        v20 -= 8;
      }

      while (v20);
    }

    v22 = a1[17];
    if (v22)
    {
      v23 = a1[19];
      v24 = 8 * v22;
      do
      {
        v25 = *v23++;
        v28 = v25;
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, &v28, v35);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v33, &v28);
        v24 -= 8;
      }

      while (v24);
    }

    LOBYTE(v28) = 1;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v29, v31);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v30, v33);
    re::Optional<re::Configuration>::operator=(a4 + 88, &v28);
    if (v28 == 1)
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v30);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v29);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v33);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v31);
  }

  v26 = re::ProgressSet::assertProgressAndConfigurationConsistent(a4);
  result = v35[0];
  if (v35[0])
  {
    if (v37)
    {
      return (*(*v35[0] + 40))(v35[0], v26);
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, const re::Progress *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
    *(v7 + 8) = *a2;
    re::Progress::Progress((v7 + 16), a3);
    ++*(a1 + 40);
  }
}

__n128 re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v14, v13);
    *(v8 + 8) = *a2;
    result.n128_u64[0] = re::Progress::Progress((v8 + 16), a3).n128_u64[0];
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 136 * v7;
    re::DynamicArray<unsigned long long>::operator=(v10 + 16, a3);
    v11 = *(a3 + 40);
    *(v10 + 72) = *(a3 + 56);
    *(v10 + 56) = v11;
    result = *(a3 + 90);
    v12 = *(a3 + 80);
    *(v10 + 80) = *(a3 + 64);
    *(v10 + 96) = v12;
    *(v10 + 106) = result;
  }

  return result;
}

double re::ProgressSet::insertVoter@<D0>(re::ProgressSet *this@<X0>, const re::Progress *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v22 = a3;
  re::ProgressSet::learnerIds(this, v21);
  if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v21, &v22))
  {
    re::ProgressSet::voterIds(this, &v18);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v18, &v22))
    {
      re::DynamicString::format("voters", &v15);
      v10 = v15;
      v11 = v16;
      v12 = v17;
      *a4 = 0;
      v13 = 6;
    }

    else
    {
      if (*(this + 88) != 1)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 192, &v22);
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(this, &v22, a2);
        re::ProgressSet::assertProgressAndConfigurationConsistent(this);
        *a4 = 1;
        goto LABEL_9;
      }

      re::DynamicString::format("There is a pending membership change", &v15);
      v10 = v15;
      v11 = v16;
      v12 = v17;
      *a4 = 0;
      v13 = 10;
    }

    *(a4 + 8) = v13;
    *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a4 + 24) = v10;
    *(a4 + 40) = v11;
    *(a4 + 48) = v12;
LABEL_9:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v18);
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21);
  }

  re::DynamicString::format("learners", &v18);
  v7 = v18;
  v8 = v19;
  v9 = v20;
  *a4 = 0;
  *(a4 + 8) = 6;
  *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
  *(a4 + 24) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21);
}

double re::ProgressSet::insertLearner@<D0>(re::ProgressSet *this@<X0>, const re::Progress *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v22 = a3;
  re::ProgressSet::learnerIds(this, v21);
  if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v21, &v22))
  {
    re::ProgressSet::voterIds(this, &v18);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v18, &v22))
    {
      re::DynamicString::format("voters", &v15);
      v10 = v15;
      v11 = v16;
      v12 = v17;
      *a4 = 0;
      v13 = 6;
    }

    else
    {
      if (*(this + 88) != 1)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 240, &v22);
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(this, &v22, a2);
        re::ProgressSet::assertProgressAndConfigurationConsistent(this);
        *a4 = 1;
        goto LABEL_9;
      }

      re::DynamicString::format("There is a pending membership change", &v15);
      v10 = v15;
      v11 = v16;
      v12 = v17;
      *a4 = 0;
      v13 = 10;
    }

    *(a4 + 8) = v13;
    *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a4 + 24) = v10;
    *(a4 + 40) = v11;
    *(a4 + 48) = v12;
LABEL_9:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v18);
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21);
  }

  re::DynamicString::format("learners", &v18);
  v7 = v18;
  v8 = v19;
  v9 = v20;
  *a4 = 0;
  *(a4 + 8) = 6;
  *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
  *(a4 + 24) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21);
}

void re::ProgressSet::remove(re::ProgressSet *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  if (*(this + 88) == 1)
  {
    re::DynamicString::format("There is a pending membership change", &v11);
    v4 = v11;
    v5 = v12;
    *a3 = 0;
    *(a3 + 8) = 10;
    *(a3 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a3 + 24) = v4;
    *(a3 + 40) = v5;
  }

  else
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 240, &v18);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 192, &v18);
    v7 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this, &v18);
    re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this, &v18);
    re::ProgressSet::assertProgressAndConfigurationConsistent(this);
    re::Progress::Progress((&v11 + 8), v7);
    v8 = *(&v11 + 1);
    v9 = v13;
    *(a3 + 56) = v14;
    *(a3 + 72) = v15;
    v10 = v17[0];
    *(a3 + 80) = v16;
    *(a3 + 96) = v10;
    *(a3 + 106) = *(v17 + 10);
    *(a3 + 16) = v8;
    *(a3 + 24) = v12;
    *(a3 + 48) = v9;
    *(a3 + 40) = 1;
    *a3 = 1;
    *(a3 + 8) = 1;
  }
}

int *re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v11);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 136 * v13) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
      v5 = v13;
    }

    else
    {
      *(v6 + 136 * v14) = *(v6 + 136 * v14) & 0x80000000 | v7;
    }

    result = (v6 + 136 * v5);
    v8 = *result;
    if (*result < 0)
    {
      *result = v8 & 0x7FFFFFFF;
      result = re::DynamicArray<unsigned long>::deinit((result + 4));
      v9 = v13;
      v6 = *(a1 + 16);
      v8 = *(v6 + 136 * v13);
      v5 = v13;
    }

    else
    {
      v9 = v5;
    }

    v10 = *(a1 + 40);
    *(v6 + 136 * v9) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v10 + 1;
  }

  return result;
}

void re::ProgressSet::promoteLearner(re::ProgressSet *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2;
  if (*(this + 88) == 1)
  {
    re::DynamicString::format("There is a pending membership change", &v9);
    v4 = v9;
    v5 = v10;
    v6 = v11;
    *a3 = 0;
    v7 = 10;
  }

  else if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 240, &v12))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 240, &v12);
    if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 192, &v12))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 192, &v12);
      re::ProgressSet::assertProgressAndConfigurationConsistent(this);
      *a3 = 1;
      return;
    }

    re::DynamicString::format("Already exists as voter, caller should know this was noop.", &v9);
    v4 = v9;
    v5 = v10;
    v6 = v11;
    *a3 = 0;
    v7 = 6;
  }

  else
  {
    re::DynamicString::format("Can't promote a learner which doesn't exist", &v9);
    v4 = v9;
    v5 = v10;
    v6 = v11;
    *a3 = 0;
    v7 = 7;
  }

  *(a3 + 8) = v7;
  *(a3 + 16) = re::ConsensusErrorCategory(void)::instance;
  *(a3 + 24) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
}

unint64_t re::ProgressSet::maximalCommittedIndex(re::ProgressSet *this)
{
  *(this + 8) = 0;
  ++*(this + 18);
  v2 = *(this + 56);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 26) + 8);
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
        LODWORD(v3) = *(this + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v7 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this, (*(this + 26) + 24 * v3 + 16));
      re::DynamicArray<re::TransitionCondition *>::add(this + 6, (v7 + 72));
      v8 = *(this + 56);
      if (v8 <= v3 + 1)
      {
        v8 = v3 + 1;
      }

      while (v8 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 26) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v3) = v8;
LABEL_15:
      ;
    }

    while (v3 != v2);
    v6 = *(this + 8);
  }

  v9 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>,false>(*(this + 10) + 8 * v6, (*(this + 10) + 8 * v6), *(this + 10), *(this + 10), v10, 1);
  v11 = *(this + 8);
  if (!v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v12 = *(this + 10);
  v13 = v12[v11 >> 1];
  if ((*(this + 88) & 1) == 0)
  {
    return v12[v11 >> 1];
  }

  *(this + 8) = 0;
  ++*(this + 18);
  v14 = *(this + 32);
  if (v14)
  {
    v15 = 0;
    v16 = (*(this + 14) + 8);
    while (1)
    {
      v17 = *v16;
      v16 += 6;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 == v14)
  {
    v19 = 0;
  }

  else
  {
    do
    {
      v20 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this, (*(this + 14) + 24 * v15 + 16));
      re::DynamicArray<re::TransitionCondition *>::add(this + 6, (v20 + 72));
      v21 = *(this + 32);
      if (v21 <= v15 + 1)
      {
        v21 = v15 + 1;
      }

      while (v21 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(*(this + 14) + 24 * v15 + 8) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v15) = v21;
LABEL_37:
      ;
    }

    while (v15 != v14);
    v12 = *(this + 10);
    v19 = *(this + 8);
  }

  v22 = 126 - 2 * __clz(v19);
  if (v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>,false>(&v12[v19], &v12[v19], v12, v12, v23, 1);
  v24 = *(this + 8);
  v25 = v24 >> 1;
  if (!v24)
  {
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(*(this + 10) + 8 * v25) >= v13)
  {
    return v13;
  }

  else
  {
    return *(*(this + 10) + 8 * v25);
  }
}

uint64_t re::ProgressSet::candidacyStatus(uint64_t a1, uint64_t a2)
{
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  DWORD1(v20) = 0x7FFFFFFF;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  DWORD1(v18) = 0x7FFFFFFF;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 16);
    do
    {
      v9 = v8 + 32 * v5;
      if (*(v9 + 16))
      {
        v10 = v19;
      }

      else
      {
        v10 = v17;
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v10, (v9 + 8));
      if (*(a2 + 32) <= (v5 + 1))
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 32 * v5) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v5) = v11;
LABEL_21:
      ;
    }

    while (v5 != v4);
  }

  if (*(a1 + 88))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v15, a1 + 96);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v16, a1 + 144);
    if (re::Configuration::hasQuorum(v15, v19) && re::Configuration::hasQuorum(a1 + 192, v19))
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v13 = !re::Configuration::hasQuorum(v15, v17) && !re::Configuration::hasQuorum(a1 + 192, v17);
      v12 = 2;
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v15);
    if (v13)
    {
      goto LABEL_35;
    }
  }

  else if (re::Configuration::hasQuorum(a1 + 192, v19))
  {
    v12 = 0;
  }

  else
  {
    if (!re::Configuration::hasQuorum(a1 + 192, v17))
    {
LABEL_35:
      v12 = 1;
      goto LABEL_36;
    }

    v12 = 2;
  }

LABEL_36:
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v17);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v19);
  return v12;
}

BOOL re::ProgressSet::quorumRecentlyActive(re::ProgressSet *this)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  DWORD1(v14) = 0x7FFFFFFF;
  re::ProgressSet::voterIds(this, v16);
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  DWORD1(v12) = 0x7FFFFFFF;
  if (v18)
  {
    v2 = 0;
    v3 = (v17 + 8);
    while (1)
    {
      v4 = *v3;
      v3 += 6;
      if (v4 < 0)
      {
        break;
      }

      if (v18 == ++v2)
      {
        LODWORD(v2) = v18;
        break;
      }
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (v2 != v18)
  {
    v15 = *(v17 + 24 * v2 + 16);
    re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this, &v15);
    operator new();
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
  re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v10);
  re::ProgressSet::learnerIds(this, v16);
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  DWORD1(v12) = 0x7FFFFFFF;
  if (v18)
  {
    v5 = 0;
    v6 = (v17 + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v18 == ++v5)
      {
        LODWORD(v5) = v18;
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v18)
  {
    v15 = *(v17 + 24 * v5 + 16);
    re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this, &v15);
    operator new();
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
  re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v10);
  if (re::Configuration::hasQuorum(this + 192, v13))
  {
    v8 = *(this + 88) != 1 || re::Configuration::hasQuorum(this + 96, v13);
  }

  else
  {
    v8 = 0;
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
  return v8;
}

double re::ProgressSet::beginMembershipChange@<D0>(re::ProgressSet *this@<X0>, const re::Configuration *a2@<X1>, re::Progress *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = re::Configuration::validate(a2, &v39);
  if (v39)
  {
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    DWORD1(v46) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v44);
    v9 = *(this + 56);
    if (v9)
    {
      v10 = 0;
      v11 = (*(this + 26) + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 6;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(this + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v16 = *(this + 26);
      do
      {
        if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a2 + 48, (v16 + 24 * v10 + 16)))
        {
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v44, (*(this + 26) + 24 * v10 + 16));
        }

        v17 = *(this + 56);
        v16 = *(this + 26);
        if (v17 <= v10 + 1)
        {
          v18 = v10 + 1;
        }

        else
        {
          v18 = *(this + 56);
        }

        while (v18 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v16 + 24 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v10) = v18;
LABEL_23:
        ;
      }

      while (v10 != v17);
    }

    if (HIDWORD(v45))
    {
      if (v46)
      {
        v19 = 0;
        v20 = (v45 + 8);
        while (1)
        {
          v21 = *v20;
          v20 += 6;
          if (v21 < 0)
          {
            break;
          }

          if (v46 == ++v19)
          {
            LODWORD(v19) = v46;
            break;
          }
        }

        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      re::DynamicString::format("Learners: %llu", &v39, *(v45 + 24 * v22 + 16));
      v27 = v39;
      v28 = v40;
      v29 = v41;
      *a4 = 0;
      *(a4 + 8) = 6;
      *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
      *(a4 + 24) = v27;
      *(a4 + 40) = v28;
      *(a4 + 48) = v29;
    }

    else
    {
      *(a3 + 52) = 256;
      v23 = *(a2 + 8);
      if (v23)
      {
        v24 = 0;
        v25 = (*(a2 + 2) + 8);
        while (1)
        {
          v26 = *v25;
          v25 += 6;
          if (v26 < 0)
          {
            break;
          }

          if (v23 == ++v24)
          {
            LODWORD(v24) = *(a2 + 8);
            break;
          }
        }
      }

      else
      {
        LODWORD(v24) = 0;
      }

      if (v24 != v23)
      {
        v30 = *(a2 + 2);
        do
        {
          *&v39 = *(v30 + 24 * v24 + 16);
          if (!re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, &v39))
          {
            re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this, &v39, a3);
          }

          v31 = *(a2 + 8);
          v30 = *(a2 + 2);
          if (v31 <= v24 + 1)
          {
            v31 = v24 + 1;
          }

          while (v31 - 1 != v24)
          {
            LODWORD(v24) = v24 + 1;
            if ((*(v30 + 24 * v24 + 8) & 0x80000000) != 0)
            {
              goto LABEL_49;
            }
          }

          LODWORD(v24) = v31;
LABEL_49:
          ;
        }

        while (v24 != v23);
      }

      v32 = *(a2 + 20);
      if (v32)
      {
        v33 = 0;
        v34 = (*(a2 + 8) + 8);
        while (1)
        {
          v35 = *v34;
          v34 += 6;
          if (v35 < 0)
          {
            break;
          }

          if (v32 == ++v33)
          {
            LODWORD(v33) = *(a2 + 20);
            break;
          }
        }
      }

      else
      {
        LODWORD(v33) = 0;
      }

      if (v33 != v32)
      {
        v36 = *(a2 + 8);
        do
        {
          *&v39 = *(v36 + 24 * v33 + 16);
          if (!re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, &v39))
          {
            re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this, &v39, a3);
          }

          v37 = *(a2 + 20);
          v36 = *(a2 + 8);
          if (v37 <= v33 + 1)
          {
            v37 = v33 + 1;
          }

          while (v37 - 1 != v33)
          {
            LODWORD(v33) = v33 + 1;
            if ((*(v36 + 24 * v33 + 8) & 0x80000000) != 0)
            {
              goto LABEL_66;
            }
          }

          LODWORD(v33) = v37;
LABEL_66:
          ;
        }

        while (v33 != v32);
      }

      LOBYTE(v39) = 1;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(&v39 + 8, a2);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v43, a2 + 48);
      re::Optional<re::Configuration>::operator=(this + 88, &v39);
      if (v39 == 1)
      {
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v43);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v39 + 1);
      }

      *a4 = 1;
    }

    *&v13 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v44);
  }

  else
  {
    if (v41 && (v42 & 1) != 0)
    {
      (*(*v41 + 40))(v8);
    }

    re::DynamicString::format("Invalid Configuration", &v39);
    v13 = v39;
    v14 = v40;
    v15 = v41;
    *a4 = 0;
    *(a4 + 8) = 5;
    *(a4 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a4 + 24) = v13;
    *(a4 + 40) = v14;
    *(a4 + 48) = v15;
  }

  return *&v13;
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 136 * v6 + 16;
  }
}

double re::ProgressSet::finalizeMembershipChange@<D0>(re::ProgressSet *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this + 88;
  if (*(this + 88))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v45, this + 96);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v46, this + 144);
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    DWORD1(v44) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v42);
    v5 = *(this + 56);
    if (v5)
    {
      v6 = 0;
      v7 = (*(this + 26) + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 6;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(this + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (v6 != v5)
    {
      v12 = *(this + 26);
      do
      {
        if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v45, (v12 + 24 * v6 + 16)))
        {
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v42, (*(this + 26) + 24 * v6 + 16));
        }

        v13 = *(this + 56);
        v12 = *(this + 26);
        if (v13 <= v6 + 1)
        {
          v14 = v6 + 1;
        }

        else
        {
          v14 = *(this + 56);
        }

        while (v14 - 1 != v6)
        {
          LODWORD(v6) = v6 + 1;
          if ((*(v12 + 24 * v6 + 8) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v6) = v14;
LABEL_20:
        ;
      }

      while (v6 != v13);
    }

    v41 = 0u;
    v39 = 0u;
    v40 = 0u;
    DWORD1(v41) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v39);
    v15 = *(this + 68);
    if (v15)
    {
      v16 = 0;
      v17 = (*(this + 32) + 8);
      while (1)
      {
        v18 = *v17;
        v17 += 6;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(this + 68);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (v16 != v15)
    {
      v19 = *(this + 32);
      do
      {
        if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v46, (v19 + 24 * v16 + 16)))
        {
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v39, (*(this + 32) + 24 * v16 + 16));
        }

        v20 = *(this + 68);
        v19 = *(this + 32);
        if (v20 <= v16 + 1)
        {
          v21 = v16 + 1;
        }

        else
        {
          v21 = *(this + 68);
        }

        while (v21 - 1 != v16)
        {
          LODWORD(v16) = v16 + 1;
          if ((*(v19 + 24 * v16 + 8) & 0x80000000) != 0)
          {
            goto LABEL_38;
          }
        }

        LODWORD(v16) = v21;
LABEL_38:
        ;
      }

      while (v16 != v20);
    }

    v22 = v44;
    if (v44)
    {
      v23 = 0;
      v24 = (v43 + 8);
      while (1)
      {
        v25 = *v24;
        v24 += 6;
        if (v25 < 0)
        {
          break;
        }

        if (v44 == ++v23)
        {
          LODWORD(v23) = v44;
          break;
        }
      }
    }

    else
    {
      LODWORD(v23) = 0;
    }

    if (v23 != v44)
    {
      v26 = v43;
      do
      {
        *&v35 = *(v26 + 24 * v23 + 16);
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this, &v35);
        v26 = v43;
        if (v44 <= v23 + 1)
        {
          v27 = v23 + 1;
        }

        else
        {
          v27 = v44;
        }

        while (v27 - 1 != v23)
        {
          LODWORD(v23) = v23 + 1;
          if ((*(v43 + 24 * v23 + 8) & 0x80000000) != 0)
          {
            goto LABEL_54;
          }
        }

        LODWORD(v23) = v27;
LABEL_54:
        ;
      }

      while (v23 != v22);
    }

    v28 = v41;
    if (v41)
    {
      v29 = 0;
      v30 = (v40 + 8);
      while (1)
      {
        v31 = *v30;
        v30 += 6;
        if (v31 < 0)
        {
          break;
        }

        if (v41 == ++v29)
        {
          LODWORD(v29) = v41;
          break;
        }
      }
    }

    else
    {
      LODWORD(v29) = 0;
    }

    if (v29 != v41)
    {
      v32 = v40;
      do
      {
        *&v35 = *(v32 + 24 * v29 + 16);
        re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this, &v35);
        v32 = v40;
        if (v41 <= v29 + 1)
        {
          v33 = v29 + 1;
        }

        else
        {
          v33 = v41;
        }

        while (v33 - 1 != v29)
        {
          LODWORD(v29) = v29 + 1;
          if ((*(v40 + 24 * v29 + 8) & 0x80000000) != 0)
          {
            goto LABEL_70;
          }
        }

        LODWORD(v29) = v33;
LABEL_70:
        ;
      }

      while (v29 != v28);
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(this + 192, v45);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(this + 240, v46);
    LOBYTE(v35) = 0;
    re::Optional<re::Configuration>::operator=(v3, &v35);
    if (v35 == 1)
    {
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v38);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v35 + 1);
    }

    *a2 = 1;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v39);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v42);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v46);
    *&v9 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v45);
  }

  else
  {
    v9 = v35;
    v10 = v36;
    v11 = v37;
    *a2 = 0;
    *(a2 + 8) = 9;
    *(a2 + 16) = re::ConsensusErrorCategory(void)::instance;
    *(a2 + 24) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v11;
  }

  return *&v9;
}

uint64_t re::ProgressSet::hasQuorum(uint64_t a1, uint64_t a2)
{
  result = re::Configuration::hasQuorum(a1 + 192, a2);
  if (result)
  {
    if (*(a1 + 88) == 1)
    {

      return re::Configuration::hasQuorum(a1 + 96, a2);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

double re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          v9 = *(v8 + 24);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
            v3 = *(a1 + 8);
          }
        }

        v4 += 40;
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

void std::__shared_ptr_emplace<re::Progress>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D0CBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 16) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
                *v17 = 0;
                *(v17 + 8) = 0;
              }

              v17 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,std::shared_ptr<re::Progress>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>,false>(unint64_t result, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, char a6)
{
  v10 = result;
  while (1)
  {
    v11 = a2 - a4;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v78 = *(a2 - 1);
        if (*a4 < v78)
        {
          *(a2 - 1) = *a4;
          *a4 = v78;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v71 = *(a2 - 1);
      v70 = a2 - 1;
      v69 = v71;
      v72 = v70 - 1;
      v73 = *(v70 - 1);
      v74 = v70 - 2;
      v75 = *(v70 - 2);
      if (v73 >= v71)
      {
        if (v75 >= v73)
        {
          goto LABEL_173;
        }

        *v72 = v75;
        *v74 = v73;
        v76 = v70;
        v77 = v70 - 1;
        result = v73;
        if (v75 < v69)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v76 = v70;
        v77 = v70 - 2;
        result = v69;
        if (v75 >= v73)
        {
          *v70 = v73;
          *v72 = v69;
          v76 = v70 - 1;
          v77 = v70 - 2;
          result = v69;
          if (v75 >= v69)
          {
LABEL_173:
            v73 = v75;
            goto LABEL_174;
          }
        }

LABEL_158:
        *v76 = v75;
        *v77 = v69;
        v73 = result;
      }

LABEL_174:
      if (*a4 < v73)
      {
        *v74 = *a4;
        *a4 = v73;
        v138 = *v74;
        v139 = *v72;
        if (*v74 < *v72)
        {
          *v72 = v138;
          *v74 = v139;
          v140 = *v70;
          if (v138 < *v70)
          {
            *v70 = v138;
            *v72 = v140;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v79 = a2 - 1;
      v80 = *(a2 - 1);
      v81 = a2 - 2;
      v82 = *(a2 - 2);
      v83 = a2 - 3;
      v84 = *(a2 - 3);
      if (v82 >= v80)
      {
        if (v84 >= v82)
        {
          v87 = *(a2 - 1);
          v80 = *(a2 - 2);
        }

        else
        {
          v85 = a2 - 1;
          v86 = a2 - 2;
          *v81 = v84;
          *v83 = v82;
          v87 = v84;
          result = v80;
          v88 = v82;
          if (v84 < v80)
          {
            goto LABEL_179;
          }

          v87 = v80;
          v80 = v84;
          v84 = v82;
        }
      }

      else
      {
        if (v84 < v82)
        {
          v85 = a2 - 1;
          v86 = a2 - 3;
          v87 = *(a2 - 3);
          result = *(a2 - 2);
          v88 = *(a2 - 1);
          goto LABEL_179;
        }

        v85 = a2 - 2;
        v86 = a2 - 3;
        *v79 = v82;
        *v81 = v80;
        v87 = v82;
        result = v84;
        v88 = v80;
        if (v84 >= v80)
        {
          v87 = v82;
        }

        else
        {
LABEL_179:
          *v85 = v84;
          *v86 = v80;
          v80 = result;
          v84 = v88;
        }
      }

      v141 = *(a2 - 4);
      if (v141 >= v84)
      {
        v84 = *(a2 - 4);
      }

      else
      {
        *(a2 - 4) = v84;
        *(a2 - 3) = v141;
        if (v141 < v80)
        {
          *v81 = v141;
          *v83 = v80;
          if (v141 < v87)
          {
            *v79 = v141;
            *v81 = v87;
          }
        }
      }

      if (*a4 < v84)
      {
        *(a2 - 4) = *a4;
        *a4 = v84;
        v142 = *(a2 - 4);
        v143 = *(a2 - 3);
        if (v142 < v143)
        {
          *(a2 - 4) = v143;
          *(a2 - 3) = v142;
          v144 = *(a2 - 2);
          if (v142 < v144)
          {
            *v81 = v142;
            *v83 = v144;
            v145 = *v79;
            if (v142 < *v79)
            {
              *v79 = v142;
              *v81 = v145;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v92 = a2 - 1;
      v94 = a2 == a4 || v92 == a4;
      if (a6)
      {
        if (!v94)
        {
          v95 = 0;
          v96 = a2 - 1;
          do
          {
            v98 = *--v96;
            v97 = v98;
            v99 = *v92;
            if (v98 < v99)
            {
              v100 = v95;
              v101 = a2;
              do
              {
                v102 = v101;
                *(v101 - 2) = v99;
                if (!v100)
                {
                  break;
                }

                ++v101;
                v99 = *v102;
                v100 -= 8;
              }

              while (v97 < *v102);
              *(v102 - 1) = v97;
            }

            --a2;
            v95 += 8;
            v92 = v96;
          }

          while (v96 != a4);
        }
      }

      else if (!v94)
      {
        v132 = a2 - 2;
        v133 = a2 - 1;
        do
        {
          v135 = *--v133;
          v134 = v135;
          v136 = *v92;
          if (v135 < v136)
          {
            v137 = v132;
            do
            {
              *v137 = v136;
              v136 = v137[2];
              ++v137;
            }

            while (v134 < v136);
            *v137 = v134;
          }

          --v132;
          v92 = v133;
        }

        while (v133 != a4);
      }

      return result;
    }

    if (!a5)
    {
      if (a2 != a4)
      {
        v103 = (v11 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          v106 = 8 * v104;
          if (v103 >= v106 >> 3)
          {
            v107 = v106 >> 2;
            v108 = (v106 >> 2) | 1;
            v109 = &a2[-v108];
            v110 = v107 + 2;
            if (v110 < v11 && *(v109 - 1) < *(v109 - 2))
            {
              --v109;
              v108 = v110;
            }

            v111 = &a2[-v105];
            v112 = *(v109 - 1);
            v113 = *(v111 - 1);
            if (v112 >= v113)
            {
              do
              {
                *(v111 - 1) = v112;
                v111 = v109;
                if (v103 < v108)
                {
                  break;
                }

                v114 = (2 * v108) | 1;
                v109 = &a2[-v114];
                v115 = 2 * v108 + 2;
                if (v115 < v11)
                {
                  result = *(v109 - 2);
                  if (*(v109 - 1) < result)
                  {
                    --v109;
                    v114 = v115;
                  }
                }

                v112 = *(v109 - 1);
                v108 = v114;
              }

              while (v112 >= v113);
              *(v111 - 1) = v113;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          if (v11 >= 2)
          {
            v116 = 0;
            v117 = *(a2 - 1);
            v118 = a2;
            do
            {
              v119 = &v118[~v116];
              v120 = (2 * v116) | 1;
              v121 = 2 * v116 + 2;
              if (v121 < v11 && *(v119 - 1) < *(v119 - 2))
              {
                --v119;
                v120 = v121;
              }

              *(v118 - 1) = *(v119 - 1);
              v118 = v119;
              v116 = v120;
            }

            while (v120 <= ((v11 - 2) >> 1));
            v122 = v119 - 1;
            if (v119 == a4 + 1)
            {
              *v122 = v117;
            }

            else
            {
              *v122 = *a4;
              *a4 = v117;
              v123 = a2 - v122;
              v124 = v123 < 2;
              v125 = v123 - 2;
              if (!v124)
              {
                v126 = v125 >> 1;
                v127 = &a2[-v126];
                v128 = *(v127 - 1);
                v129 = *v122;
                if (v128 < v129)
                {
                  do
                  {
                    *(v119 - 1) = v128;
                    v119 = v127;
                    if (!v126)
                    {
                      break;
                    }

                    v126 = (v126 - 1) >> 1;
                    v127 = &a2[-v126];
                    v128 = *(v127 - 1);
                  }

                  while (v128 < v129);
                  *(v119 - 1) = v129;
                }
              }
            }
          }

          ++a4;
          v124 = v11-- > 2;
        }

        while (v124);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &a2[-(v11 >> 1)];
    v14 = *a4;
    if (v11 >= 0x81)
    {
      v17 = *(v13 - 1);
      v15 = v13 - 1;
      v16 = v17;
      v18 = *(a2 - 1);
      if (v17 >= v18)
      {
        if (v14 < v16)
        {
          *v15 = v14;
          *a4 = v16;
          v21 = *(a2 - 1);
          if (*v15 < v21)
          {
            *(a2 - 1) = *v15;
            *v15 = v21;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          *(a2 - 1) = v14;
          goto LABEL_26;
        }

        *(a2 - 1) = v16;
        *v15 = v18;
        if (*a4 < v18)
        {
          *v15 = *a4;
LABEL_26:
          *a4 = v18;
        }
      }

      v24 = &a2[1 - v12];
      v27 = *(v24 - 1);
      v25 = v24 - 1;
      v26 = v27;
      v28 = *(a2 - 2);
      v29 = a4[1];
      if (v27 >= v28)
      {
        if (v29 < v26)
        {
          *v25 = v29;
          a4[1] = v26;
          v30 = *(a2 - 2);
          if (*v25 < v30)
          {
            *(a2 - 2) = *v25;
            *v25 = v30;
          }
        }
      }

      else
      {
        if (v29 < v26)
        {
          *(a2 - 2) = v29;
          goto LABEL_38;
        }

        *(a2 - 2) = v26;
        *v25 = v28;
        v31 = a4[1];
        if (v31 < v28)
        {
          *v25 = v31;
LABEL_38:
          a4[1] = v28;
        }
      }

      v32 = &a2[~v12];
      v35 = *(v32 - 1);
      v33 = v32 - 1;
      v34 = v35;
      v36 = *(a2 - 3);
      v37 = a4[2];
      if (v35 >= v36)
      {
        if (v37 < v34)
        {
          *v33 = v37;
          a4[2] = v34;
          v38 = *(a2 - 3);
          if (*v33 < v38)
          {
            *(a2 - 3) = *v33;
            *v33 = v38;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          *(a2 - 3) = v37;
          goto LABEL_47;
        }

        *(a2 - 3) = v34;
        *v33 = v36;
        v39 = a4[2];
        if (v39 < v36)
        {
          *v33 = v39;
LABEL_47:
          a4[2] = v36;
        }
      }

      v40 = *v15;
      v41 = *v25;
      v42 = *v33;
      if (*v15 < *v25)
      {
        if (v42 >= v40)
        {
          *v25 = v40;
          *v15 = v41;
          v25 = v15;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (v42 < v40)
      {
        *v15 = v42;
        *v33 = v40;
        v33 = v15;
LABEL_53:
        if (v42 < v41)
        {
LABEL_54:
          *v25 = v42;
          *v33 = v41;
        }
      }

      v43 = *(a2 - 1);
      *(a2 - 1) = *v15;
      *v15 = v43;
      goto LABEL_56;
    }

    v19 = *(a2 - 1);
    v20 = *(v13 - 1);
    if (v19 >= v20)
    {
      if (v14 < v19)
      {
        *(a2 - 1) = v14;
        *a4 = v19;
        v22 = *(a2 - 1);
        v23 = *(v13 - 1);
        if (v22 < v23)
        {
          *(v13 - 1) = v22;
          *(a2 - 1) = v23;
        }
      }
    }

    else
    {
      if (v14 >= v19)
      {
        *(v13 - 1) = v19;
        *(a2 - 1) = v20;
        if (*a4 >= v20)
        {
          goto LABEL_56;
        }

        *(a2 - 1) = *a4;
      }

      else
      {
        *(v13 - 1) = v14;
      }

      *a4 = v20;
    }

LABEL_56:
    --a5;
    v44 = a2 - 1;
    if (a6)
    {
      v45 = *v44;
      goto LABEL_59;
    }

    v45 = *(a2 - 1);
    if (*a2 >= v45)
    {
      v60 = a2 - 1;
      if (v45 >= *a4)
      {
        do
        {
          v62 = v60;
          if (v60 <= a4)
          {
            break;
          }

          --v60;
        }

        while (v45 >= *(v62 - 1));
      }

      else
      {
        v61 = a2;
        do
        {
          v62 = v61 - 1;
          v63 = *(v61 - 2);
          --v61;
        }

        while (v45 >= v63);
      }

      v64 = a4;
      if (v62 > a4)
      {
        v64 = a4;
        do
        {
          v65 = *v64++;
        }

        while (v45 < v65);
      }

      while (v62 > v64)
      {
        v66 = *(v62 - 1);
        *(v62 - 1) = *(v64 - 1);
        *(v64 - 1) = v66;
        do
        {
          v67 = *(v62 - 2);
          --v62;
        }

        while (v45 >= v67);
        do
        {
          v68 = *v64++;
        }

        while (v45 < v68);
      }

      if (v62 + 1 != a2)
      {
        *v44 = *v62;
      }

      a6 = 0;
      *v62 = v45;
      a2 = v62;
    }

    else
    {
LABEL_59:
      v46 = 0;
      v47 = v10;
      do
      {
        v48 = a2[v46 - 2];
        --v46;
      }

      while (v48 < v45);
      v49 = &a2[v46];
      v50 = a4;
      if (v46 == -1)
      {
        v50 = a4;
        do
        {
          if (v49 <= v50)
          {
            break;
          }

          v52 = *v50++;
        }

        while (v52 >= v45);
      }

      else
      {
        do
        {
          v51 = *v50++;
        }

        while (v51 >= v45);
      }

      v53 = &a2[v46];
      if (v49 > v50)
      {
        v54 = v50;
        do
        {
          v55 = *(v53 - 1);
          *(v53 - 1) = *(v54 - 1);
          *(v54 - 1) = v55;
          do
          {
            v56 = *(v53 - 2);
            --v53;
          }

          while (v56 < v45);
          do
          {
            v57 = *v54++;
          }

          while (v57 >= v45);
        }

        while (v53 > v54);
      }

      if (v53 + 1 != a2)
      {
        *v44 = *v53;
      }

      v58 = a2;
      *v53 = v45;
      if (v49 <= v50)
      {
        v59 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>>(v10, a2, (v53 + 1), v53 + 1);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>>(v53, v53, a3, a4);
        if (result)
        {
          a3 = (v53 + 1);
          a4 = v53 + 1;
          if (v59)
          {
            return result;
          }
        }

        else
        {
          v10 = (v53 + 1);
          a2 = v53;
          if ((v59 & 1) == 0)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>,false>(v47, v58, v53 + 1, v53 + 1, a5, a6 & 1);
        a6 = 0;
        v10 = (v53 + 1);
        a2 = v53;
      }
    }
  }

  v90 = *(a2 - 2);
  v89 = *(a2 - 1);
  v91 = *a4;
  if (v90 >= v89)
  {
    if (v91 < v90)
    {
      *(a2 - 2) = v91;
      *a4 = v90;
      v130 = *(a2 - 2);
      v131 = *(a2 - 1);
      if (v130 < v131)
      {
        *(a2 - 2) = v131;
        *(a2 - 1) = v130;
      }
    }
  }

  else
  {
    if (v91 >= v90)
    {
      *(a2 - 2) = v89;
      *(a2 - 1) = v90;
      if (*a4 >= v89)
      {
        return result;
      }

      *(a2 - 2) = *a4;
    }

    else
    {
      *(a2 - 1) = v91;
    }

    *a4 = v89;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<unsigned long long *>>(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a2 - a4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = *(a2 - 2);
      v19 = *(a2 - 1);
      v21 = *a4;
      if (v20 >= v19)
      {
        if (v21 < v20)
        {
          *(a2 - 2) = v21;
          *a4 = v20;
          v39 = *(a2 - 2);
          v40 = *(a2 - 1);
          if (v39 < v40)
          {
            *(a2 - 2) = v40;
            *(a2 - 1) = v39;
          }
        }

        goto LABEL_3;
      }

      if (v21 >= v20)
      {
        *(a2 - 2) = v19;
        *(a2 - 1) = v20;
        if (*a4 >= v19)
        {
          goto LABEL_3;
        }

        *(a2 - 2) = *a4;
      }

      else
      {
        *(a2 - 1) = v21;
      }

      *a4 = v19;
      goto LABEL_3;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v7 = a2 - 1;
      v8 = *(a2 - 1);
      v9 = a2 - 2;
      v10 = *(a2 - 2);
      v11 = a2 - 3;
      v12 = *(a2 - 3);
      if (v10 >= v8)
      {
        if (v12 >= v10)
        {
          v15 = *(a2 - 1);
          v8 = *(a2 - 2);
          goto LABEL_63;
        }

        v13 = a2 - 1;
        v14 = a2 - 2;
        *v9 = v12;
        *v11 = v10;
        v15 = v12;
        v16 = v8;
        v17 = v10;
        if (v12 >= v8)
        {
          v15 = v8;
          v8 = v12;
          v12 = v10;
LABEL_63:
          v52 = *(a2 - 4);
          if (v52 >= v12)
          {
            v12 = *(a2 - 4);
          }

          else
          {
            *(a2 - 4) = v12;
            *(a2 - 3) = v52;
            if (v52 < v8)
            {
              *v9 = v52;
              *v11 = v8;
              if (v52 < v15)
              {
                *v7 = v52;
                *v9 = v15;
              }
            }
          }

          if (*a4 < v12)
          {
            *(a2 - 4) = *a4;
            *a4 = v12;
            v53 = *(a2 - 4);
            v54 = *(a2 - 3);
            if (v53 < v54)
            {
              *(a2 - 4) = v54;
              *(a2 - 3) = v53;
              v55 = *(a2 - 2);
              if (v53 < v55)
              {
                *v9 = v53;
                *v11 = v55;
                v56 = *v7;
                if (v53 < *v7)
                {
                  *v7 = v53;
                  *v9 = v56;
                }
              }
            }
          }

          goto LABEL_3;
        }
      }

      else if (v12 >= v10)
      {
        v13 = a2 - 2;
        v14 = a2 - 3;
        *v7 = v10;
        *v9 = v8;
        v15 = v10;
        v16 = v12;
        v17 = v8;
        if (v12 >= v8)
        {
          v15 = v10;
          goto LABEL_63;
        }
      }

      else
      {
        v13 = a2 - 1;
        v14 = a2 - 3;
        v15 = *(a2 - 3);
        v16 = *(a2 - 2);
        v17 = *(a2 - 1);
      }

      *v13 = v12;
      *v14 = v8;
      v8 = v16;
      v12 = v17;
      goto LABEL_63;
    }

    v31 = *(a2 - 1);
    v29 = a2 - 1;
    v30 = v31;
    v32 = v29 - 1;
    v33 = *(v29 - 1);
    v34 = v29 - 2;
    v35 = *(v29 - 2);
    if (v33 >= v31)
    {
      if (v35 >= v33)
      {
LABEL_35:
        v33 = v35;
        goto LABEL_36;
      }

      *v32 = v35;
      *v34 = v33;
      v36 = v29;
      v37 = v29 - 1;
      v38 = v33;
      if (v35 >= v30)
      {
LABEL_36:
        if (*a4 < v33)
        {
          *v34 = *a4;
          *a4 = v33;
          v41 = *v34;
          v42 = *v32;
          if (*v34 < *v32)
          {
            *v32 = v41;
            *v34 = v42;
            v43 = *v29;
            if (v41 < *v29)
            {
              *v29 = v41;
              *v32 = v43;
            }
          }
        }

        goto LABEL_3;
      }
    }

    else
    {
      v36 = v29;
      v37 = v29 - 2;
      v38 = v30;
      if (v35 >= v33)
      {
        *v29 = v33;
        *v32 = v30;
        v36 = v29 - 1;
        v37 = v29 - 2;
        v38 = v30;
        if (v35 >= v30)
        {
          goto LABEL_35;
        }
      }
    }

    *v36 = v35;
    *v37 = v30;
    v33 = v38;
    goto LABEL_36;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 == 2)
  {
    v18 = *(a2 - 1);
    if (*a4 < v18)
    {
      *(a2 - 1) = *a4;
      *a4 = v18;
    }

    goto LABEL_3;
  }

LABEL_17:
  v22 = a2 - 2;
  v23 = *(a2 - 2);
  v25 = a2 - 1;
  v24 = *(a2 - 1);
  v26 = a2 - 3;
  v27 = *(a2 - 3);
  if (v23 >= v24)
  {
    if (v27 >= v23)
    {
      goto LABEL_46;
    }

    *v22 = v27;
    *v26 = v23;
    v28 = a2 - 2;
  }

  else
  {
    if (v27 < v23)
    {
      v28 = a2 - 3;
LABEL_45:
      *v25 = v27;
      *v28 = v24;
      goto LABEL_46;
    }

    *v25 = v23;
    *v22 = v24;
    v25 = a2 - 2;
    v28 = a2 - 3;
  }

  if (v27 < v24)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v26 == a4)
  {
LABEL_56:
    v51 = 1;
  }

  else
  {
    v44 = 0;
    v45 = a2 - 3;
    while (1)
    {
      v47 = *--v45;
      v46 = v47;
      if (v47 < *(v22 - 1))
      {
        v48 = v26;
        while (1)
        {
          *(v48 - 1) = *v48;
          if (v48 + 1 == a2)
          {
            break;
          }

          v49 = v48 + 1;
          v50 = v48[1];
          ++v48;
          if (v46 >= v50)
          {
            goto LABEL_54;
          }
        }

        v49 = a2;
LABEL_54:
        *(v49 - 1) = v46;
        if (++v44 == 8)
        {
          break;
        }
      }

      v22 = v26;
      v26 = v45;
      if (v45 == a4)
      {
        goto LABEL_56;
      }
    }

    v51 = 0;
    LOBYTE(v22) = v45 == a4;
  }

  v5 = v51 | v22;
  return v5 & 1;
}

void *re::Inflights::add(void *this, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v4 = this[6];
  v3 = this[7];
  if (v4 == v3)
  {
    goto LABEL_13;
  }

  v5 = this;
  if (this[1] != v3)
  {
    this = re::DynamicArray<float *>::setCapacity(this, v3);
    v4 = v5[6];
    v3 = v5[7];
  }

  v6 = v5[5] + v4;
  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 - v7;
  v9 = v5[2];
  if (v6 - v7 != v9)
  {
    if (v9 > v8)
    {
      *(v5[4] + 8 * v8) = a2;
      goto LABEL_11;
    }

    v11 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v12 = 136315906;
    *&v12[4] = "operator[]";
    *&v12[12] = 1024;
    *&v12[14] = 789;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Cannot add into a full inflights", "!Unreachable code", "add", 8, v10, v11, *v12);
    _os_crash();
    __break(1u);
  }

  this = re::DynamicArray<re::TransitionCondition *>::add(v5, &v10);
  v4 = v5[6];
LABEL_11:
  v5[6] = v4 + 1;
  return this;
}

void *re::Inflights::freeTo(void *this, unint64_t a2)
{
  v2 = this[6];
  if (!v2)
  {
    return this;
  }

  v3 = this[5];
  v4 = this[2];
  if (v4 <= v3)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = this[4];
  if (*(v5 + 8 * v3) > a2)
  {
    return this;
  }

  for (i = 0; i != v2; ++i)
  {
    if (v4 <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_14;
    }

    if (*(v5 + 8 * v3) > a2)
    {
      goto LABEL_11;
    }

    v7 = this[7];
    if (v3 + 1 < v7)
    {
      v7 = 0;
    }

    v3 = v3 + 1 - v7;
  }

  i = this[6];
LABEL_11:
  this[5] = v3;
  this[6] = v2 - i;
  return this;
}

void *re::Inflights::freeFirstOne(re::Inflights *this)
{
  v1 = *(this + 5);
  if (*(this + 2) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 4) + 8 * v1);

  return re::Inflights::freeTo(this, v2);
}

re::RaftLog *re::RaftLog::getTerm@<X0>(re::RaftLog *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  if (*(this + 48) == 1)
  {
    v6 = *(this + 33);
  }

  else
  {
    this = (*(**this + 32))(&v9);
    v6 = v10 - 1;
  }

  if (v6 <= a2 && (this = re::RaftLog::lastIndex(v4), this >= a2))
  {
    this = re::Unstable::maybeTerm(v4 + 8, a2, &v9);
    if (v9 == 1)
    {
      v7 = v10;
      *a3 = 1;
      *(a3 + 8) = v7;
    }

    else
    {
      this = (*(**v4 + 56))(*v4, a2);
      if ((*a3 & 1) == 0 && *(a3 + 8) >= 2u)
      {
        re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) unexpected error", "!Unreachable code", "getTerm", 25);
        this = _os_crash();
        __break(1u);
      }
    }
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = 0;
  }

  return this;
}

uint64_t re::RaftLog::lastIndex(re::RaftLog *this)
{
  v3 = *(this + 3);
  if (v3)
  {
    return v3 + *(this + 35) - 1;
  }

  if (*(this + 48) == 1)
  {
    return *(this + 33);
  }

  v5[2] = v1;
  v5[3] = v2;
  (*(**this + 40))(v5);
  return v5[1];
}

unint64_t re::RaftLog::findConflict(re::RaftLog *this, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (*(a2 + 32) + 88);
  v5 = 104 * v2;
  do
  {
    v6 = v4[1];
    re::RaftLog::getTerm(this, *v4, v9);
    if (v9[0] != 1 || v10 != v6)
    {
      re::RaftLog::lastIndex(this);
      return *v4;
    }

    v4 += 13;
    v5 -= 104;
  }

  while (v5);
  return 0;
}

uint64_t re::RaftLog::maybeAppend@<X0>(re::RaftLog *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a5 + 16);
  result = re::RaftLog::getTerm(a1, a2, v21);
  if (v21[0] != 1 || v22 != a3)
  {
    *a6 = 0;
    return result;
  }

  Conflict = re::RaftLog::findConflict(a1, a5);
  if (Conflict)
  {
    if (Conflict <= *(a1 + 36))
    {
      re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) %llu conflicts with committed entry %llu", "!Unreachable code", "maybeAppend", 80, Conflict, a4);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v20[0] = re::DynamicArray<re::Entry>::sliceRange(a5, Conflict + ~a2, *(a5 + 16));
    v20[1] = v17;
    re::DynamicArray<re::Entry>::DynamicArray(v21, v20);
    re::RaftLog::append(a1, v21);
    re::DynamicArray<re::Entry>::deinit(v21);
  }

  v18 = v12 + a2;
  if (v18 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v18;
  }

  result = re::RaftLog::commitTo(a1, v19);
  *a6 = 1;
  *(a6 + 8) = v18;
  return result;
}

uint64_t re::RaftLog::append(re::RaftLog *this, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = *(this + 36);
    if (*(*(a2 + 32) + 88) - 1 < v3)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) after %llu is out of range [committed %lli]", "!Unreachable code", "append", 110, *(*(a2 + 32) + 88) - 1, v3);
      result = _os_crash();
      __break(1u);
      return result;
    }

    re::Unstable::truncateAndAppend((this + 8), a2);
  }

  return re::RaftLog::lastIndex(this);
}

uint64_t re::DynamicArray<re::Entry>::sliceRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16) + 1;
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_6;
  }

  if (a3 + 1 <= a2)
  {
LABEL_6:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v3 <= a3)
  {
    goto LABEL_7;
  }

  return *(a1 + 32) + 104 * a2;
}

void *re::RaftLog::commitTo(void *this, unint64_t a2)
{
  if (this[36] < a2)
  {
    v3 = this;
    this = re::RaftLog::lastIndex(this);
    if (this < a2)
    {
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) is out of range", "!Unreachable code", "commitTo", 123);
      this = _os_crash();
      __break(1u);
    }

    else
    {
      v3[36] = a2;
    }
  }

  return this;
}

uint64_t re::RaftLog::maybeCommit(re::RaftLog *this, unint64_t a2, uint64_t a3)
{
  if (*(this + 36) >= a2)
  {
    return 0;
  }

  v12 = v3;
  v13 = v4;
  re::RaftLog::getTerm(this, a2, v10);
  if (v10[0])
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  if (v8 != a3)
  {
    return 0;
  }

  re::RaftLog::commitTo(this, a2);
  return 1;
}

uint64_t re::RaftLog::appliedTo(uint64_t this, unint64_t a2)
{
  if (a2)
  {
    v2 = *(this + 288);
    v3 = *(this + 296);
    if (v2 < a2 || v3 > a2)
    {
      re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) applied(%llu) is out of range [prevApplied(%llu), committed(%llu)]", "!Unreachable code", "appliedTo", 137, a2, v3, v2);
      this = _os_crash();
      __break(1u);
    }

    else
    {
      *(this + 296) = a2;
    }
  }

  return this;
}

re::RaftLog *re::RaftLog::entries@<X0>(re::RaftLog *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Index = re::RaftLog::lastIndex(this);
  if (Index >= a2)
  {

    return re::RaftLog::slice(this, a2, Index + 1, a3);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v9 = 0u;
    v10 = 1;
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0;
    v13 = 0u;
    *(a3 + 40) = 0;
    v15 = 0;
    v14 = 2;
    *(a3 + 32) = 1;
    re::DynamicArray<re::Entry>::deinit(&v12);
    return re::DynamicArray<re::Entry>::deinit(&v8);
  }
}

re::RaftLog *re::RaftLog::slice@<X0>(re::RaftLog *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 > a3)
  {
LABEL_47:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid slice", "!Unreachable code", "mustCheckOutOfBounds", 244);
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  v4 = a3;
  v6 = a2;
  v5 = this;
  if (*(this + 48) == 1)
  {
    v8 = *(this + 33) + 1;
  }

  else
  {
    this = (*(**this + 32))(&v25);
    v8 = v26;
  }

  if (v8 <= v6)
  {
    this = re::RaftLog::lastIndex(v5);
    if (this + 1 < v4)
    {
LABEL_48:
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Slice out of bound", "!Unreachable code", "mustCheckOutOfBounds", 253);
      _os_crash();
      __break(1u);
      goto LABEL_49;
    }

    v9 = &v43;
  }

  else
  {
    v43 = 1;
    v9 = &v42;
  }

  *v9 = 0;
  if (v43 == 1)
  {
    v11 = v42;
    *a4 = 0;
    *(a4 + 8) = v11;
    return this;
  }

  v41 = 0;
  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  v40 = 0;
  if (v6 == v4)
  {
    goto LABEL_37;
  }

  v12 = *(v5 + 35);
  if (v12 <= v6)
  {
LABEL_24:
    if (v12 < v4)
    {
      if (v12 > v6)
      {
        v6 = v12;
      }

      re::Unstable::mustCheckOutOfBounds(v5 + 8, v6, v4);
      v18 = re::DynamicArray<re::Entry>::sliceRange(v5 + 8, v6 - *(v5 + 35), v4 - *(v5 + 35));
      if (v19)
      {
        v20 = v18;
        v21 = v18 + 104 * v19;
        do
        {
          re::DynamicArray<BOOL>::DynamicArray(&v25, v20);
          re::DynamicArray<BOOL>::DynamicArray(v29, (v20 + 40));
          v22 = *(v20 + 80);
          v33 = *(v20 + 96);
          v32 = v22;
          v23 = re::DynamicArray<re::Entry>::add(v38, &v25);
          if (v29[0])
          {
            if (v31)
            {
              (*(*v29[0] + 40))(v23);
            }

            v31 = 0;
            memset(v29, 0, sizeof(v29));
            ++v30;
          }

          if (v25)
          {
            if (v28)
            {
              (*(*v25 + 40))(v23);
            }
          }

          v20 += 104;
        }

        while (v20 != v21);
      }
    }

LABEL_37:
    re::DynamicArray<re::Entry>::DynamicArray(&v25, v38);
    *a4 = 1;
    *(a4 + 8) = v25;
    *(a4 + 16) = v26;
    v25 = 0;
    v26 = 0uLL;
    *(a4 + 40) = v28;
    v28 = 0;
    ++v27;
    *(a4 + 32) = 1;
    v16 = &v25;
    goto LABEL_38;
  }

  (*(**v5 + 24))(&v25);
  if (v25)
  {
LABEL_14:
    re::DynamicArray<re::Entry>::operator=(v38, &v26);
    v12 = *(v5 + 35);
    if (v12 >= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = *(v5 + 35);
    }

    if (v39 < v14 - v6)
    {
      v15 = re::DynamicArray<re::Entry>::DynamicArray(&v34, v38);
      *a4 = 1;
      *(a4 + 8) = v34;
      *(a4 + 16) = v35;
      v34 = 0;
      v35 = 0uLL;
      *(a4 + 40) = v37;
      v37 = 0;
      ++v36;
      *(a4 + 32) = 1;
      re::DynamicArray<re::Entry>::deinit(v15);
      if (v25)
      {
        v16 = &v26;
LABEL_38:
        re::DynamicArray<re::Entry>::deinit(v16);
      }

      return re::DynamicArray<re::Entry>::deinit(v38);
    }

    if (v25 == 1)
    {
      re::DynamicArray<re::Entry>::deinit(&v26);
      v12 = *(v5 + 35);
    }

    goto LABEL_24;
  }

  v17 = v26;
  if (!v26)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    return re::DynamicArray<re::Entry>::deinit(v38);
  }

  if (v26 <= 2u)
  {
    if (v26 == 1)
    {
LABEL_49:
      v24 = *(v5 + 35);
      if (v24 >= v4)
      {
        v24 = v4;
      }

      re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) entries[%llu:%llu] is unavailable from storage", "!Unreachable code", "slice", 209, v6, v24);
      _os_crash();
      __break(1u);
      goto LABEL_52;
    }

    if (v26 != 2)
    {
      goto LABEL_14;
    }

    re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) Unexpected error %hhu", "!Unreachable code", "slice", 213, 2);
    _os_crash();
    __break(1u);
  }

  if (v17 != 3)
  {
    if (v17 != 4)
    {
      goto LABEL_14;
    }

    re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) Unexpected error %hhu", "!Unreachable code", "slice", 219, 4);
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

LABEL_52:
  re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) Unexpected error %hhu", "!Unreachable code", "slice", 216, 3);
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t re::RaftLog::lastTerm(re::RaftLog *this)
{
  Index = re::RaftLog::lastIndex(this);
  re::RaftLog::getTerm(this, Index, v5);
  if (v5[0] == 1)
  {
    return v6;
  }

  re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Unexpected error getting last term: %hhu", "!Unreachable code", "lastTerm", 271, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::RaftLog::isUpToDate(re::RaftLog *this, unint64_t a2, unint64_t a3)
{
  if (re::RaftLog::lastTerm(this) < a3)
  {
    return 1;
  }

  if (re::RaftLog::lastTerm(this) == a3)
  {
    return re::RaftLog::lastIndex(this) <= a2;
  }

  return 0;
}

re::RaftLog *re::RaftLog::nextEntriesSince@<X0>(re::RaftLog *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = this;
  v5 = a2 + 1;
  if (*(this + 48) == 1)
  {
    v6 = *(this + 33) + 1;
  }

  else
  {
    this = (*(**this + 32))(&v10);
    v6 = v11[0];
  }

  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v3 + 36) + 1;
  if (v8 <= v7)
  {
    *a3 = 0;
  }

  else
  {
    re::RaftLog::slice(v3, v7, v8, &v10);
    if (v10)
    {
      *a3 = 1;
      this = re::DynamicArray<re::Entry>::DynamicArray((a3 + 8), v11);
      if (v10 == 1)
      {
        return re::DynamicArray<re::Entry>::deinit(v11);
      }
    }

    else
    {
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) %hhu", "!Unreachable code", "nextEntriesSince", 303, LOBYTE(v11[0]));
      this = _os_crash();
      __break(1u);
    }
  }

  return this;
}

BOOL re::RaftLog::hasNextEntries(re::RaftLog *this)
{
  v2 = *(this + 37);
  if (*(this + 48) == 1)
  {
    v3 = *(this + 33) + 1;
  }

  else
  {
    (*(**this + 32))(v5);
    v3 = v5[1];
  }

  if (v2 + 1 > v3)
  {
    v3 = v2 + 1;
  }

  return *(this + 36) + 1 > v3;
}

BOOL re::RaftLog::hasNextEntriesSince(re::RaftLog *this, uint64_t a2)
{
  if (*(this + 48) == 1)
  {
    v4 = *(this + 33) + 1;
  }

  else
  {
    (*(**this + 32))(v6);
    v4 = v6[1];
  }

  if (a2 + 1 > v4)
  {
    v4 = a2 + 1;
  }

  return *(this + 36) + 1 > v4;
}

void re::RaftLog::snapshot(re::RaftLog *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *(this + 48);
  if (v20 != 1)
  {
    goto LABEL_5;
  }

  re::DynamicArray<BOOL>::DynamicArray(v21, this + 7);
  re::DynamicArray<char const*>::DynamicArray(v22, this + 12);
  re::DynamicArray<char const*>::DynamicArray(v23, this + 17);
  re::DynamicArray<char const*>::DynamicArray(v24, this + 22);
  re::DynamicArray<char const*>::DynamicArray(v25, this + 27);
  v26 = *(this + 16);
  v27 = *(this + 34);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  re::DynamicArray<BOOL>::DynamicArray(v13, v21);
  re::DynamicArray<char const*>::DynamicArray(v14, v22);
  re::DynamicArray<char const*>::DynamicArray(v15, v23);
  re::DynamicArray<char const*>::DynamicArray(v16, v24);
  re::DynamicArray<char const*>::DynamicArray(v17, v25);
  v18 = v26;
  v19 = v27;
  if (*(&v26 + 1) < a2)
  {
    re::Snapshot::~Snapshot(v13);
LABEL_5:
    (*(**this + 48))(*this, a2);
    goto LABEL_6;
  }

  re::DynamicArray<BOOL>::DynamicArray(v6, v13);
  re::DynamicArray<char const*>::DynamicArray(v7, v14);
  re::DynamicArray<char const*>::DynamicArray(v8, v15);
  re::DynamicArray<char const*>::DynamicArray(v9, v16);
  re::DynamicArray<char const*>::DynamicArray(&v10, v17);
  v11 = v18;
  v12 = v19;
  *a3 = 1;
  re::DynamicArray<BOOL>::DynamicArray(a3 + 8, v6);
  re::DynamicArray<char const*>::DynamicArray(a3 + 48, v7);
  re::DynamicArray<char const*>::DynamicArray(a3 + 88, v8);
  re::DynamicArray<char const*>::DynamicArray(a3 + 128, v9);
  re::DynamicArray<char const*>::DynamicArray(a3 + 168, &v10);
  *(a3 + 208) = v11;
  *(a3 + 224) = v12;
  re::Snapshot::~Snapshot(v6);
  re::Snapshot::~Snapshot(v13);
LABEL_6:
  if (v20 == 1)
  {
    re::Snapshot::~Snapshot(v21);
  }
}

void re::RawNode::init(int8x16_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  re::Raft::init(a1, a2, v45);
  if (v45[0] == 1)
  {
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    DWORD1(v14) = 0x7FFFFFFF;
    v17 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v29 = 0;
    v24 = 0u;
    v25 = 0;
    v22 = 0u;
    v23 = 0u;
    v30 = 0u;
    HIDWORD(v24) = 0x7FFFFFFF;
    v28 = 0;
    v27 = 0u;
    v26 = 0u;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    re::Raft::operator=(v10, v46);
    v43 = v35;
    v44 = v11;
    *&v42 = *(&v36 + 1);
    BYTE8(v42) = v31;
    re::Raft::Raft(v6, v10);
    v7 = v42;
    v8 = v43;
    v9 = v44;
    *a3 = 1;
    re::Raft::Raft(a3 + 8, v6);
    v4 = v8;
    *(a3 + 1168) = v7;
    *(a3 + 1184) = v4;
    *(a3 + 1200) = v9;
    re::Raft::~Raft(v6);
    re::Raft::~Raft(v10);
    if (v45[0])
    {
      re::Raft::~Raft(v46);
    }
  }

  else
  {
    v5 = v46[0];
    *a3 = 0;
    *(a3 + 8) = v5;
  }
}

uint64_t re::Raft::operator=(uint64_t a1, uint64_t a2)
{
  re::RaftLog::operator=(a1, a2);
  re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a1 + 304, a2 + 304);
  re::DynamicArray<re::ReadState>::operator=(a1 + 352, a2 + 352);
  re::DynamicArray<re::ReadState>::operator=(a1 + 392, a2 + 392);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(a1 + 432, a2 + 432);
  re::Queue<re::DynamicArray<unsigned char>>::operator=(a1 + 480, (a2 + 480));
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  re::Optional<re::ProgressSet>::operator=((a1 + 544), a2 + 544);
  re::Optional<re::ConfChange>::operator=((a1 + 856), (a2 + 856));
  if ((*(a1 + 1024) & 1) == 0)
  {
    if ((*(a2 + 1024) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 1024) = 1;
LABEL_6:
    *(a1 + 1032) = *(a2 + 1032);
    goto LABEL_7;
  }

  if (*(a2 + 1024))
  {
    goto LABEL_6;
  }

  *(a1 + 1024) = 0;
LABEL_7:
  v4 = *(a2 + 1040);
  v5 = *(a2 + 1056);
  v6 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1072) = v6;
  *(a1 + 1056) = v5;
  *(a1 + 1040) = v4;
  v7 = *(a2 + 1104);
  v8 = *(a2 + 1120);
  v9 = *(a2 + 1136);
  *(a1 + 1149) = *(a2 + 1149);
  *(a1 + 1136) = v9;
  *(a1 + 1120) = v8;
  *(a1 + 1104) = v7;
  return a1;
}

void re::RawNode::commitReady(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 392) == 1)
  {
    v4 = *(a2 + 400);
    *(a1 + 1168) = *(a2 + 408);
    *(a1 + 1160) = v4;
  }

  if (*(a2 + 416) == 1)
  {
    v5 = !*(a2 + 424) && *(a2 + 432) == 0;
    if (!v5 || *(a2 + 440) != 0)
    {
      v7 = *(a2 + 424);
      *(a1 + 1192) = *(a2 + 440);
      *(a1 + 1176) = v7;
    }
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    re::Unstable::stableTo((a1 + 8), *(*(a2 + 72) + 104 * v8 - 16), *(*(a2 + 72) + 104 * v8 - 8));
  }

  memset(v10, 0, sizeof(v10));
  if (*(a2 + 136))
  {
    re::Snapshot::~Snapshot(v10);
  }

  else
  {
    v9 = re::SnapshotMetadata::operator==((a2 + 160), &v10[2] + 1);
    re::Snapshot::~Snapshot(v10);
    if (v9)
    {
      goto LABEL_18;
    }
  }

  re::Unstable::stableSnapTo((a1 + 8), *(a2 + 328));
LABEL_18:
  if (*(a2 + 96))
  {
    re::DynamicArray<re::ReadState>::clear(a1 + 352);
  }
}

uint64_t re::DynamicArray<re::ReadState>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 48 * v2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::RawNode::hasReadySince(re::RaftLog *this, uint64_t a2)
{
  if (*(this + 51))
  {
    return 1;
  }

  if (*(this + 3))
  {
    v16 = 1;
    re::DynamicArray<re::Entry>::DynamicArray(v17, this + 1);
    re::DynamicArray<re::Entry>::deinit(v17);
    return 1;
  }

  if (*(this + 46))
  {
    return 1;
  }

  v16 = *(this + 48);
  if (v16 == 1)
  {
    re::DynamicArray<BOOL>::DynamicArray(v17, this + 7);
    re::DynamicArray<char const*>::DynamicArray(v18, this + 12);
    re::DynamicArray<char const*>::DynamicArray(v19, this + 17);
    re::DynamicArray<char const*>::DynamicArray(v20, this + 22);
    re::DynamicArray<char const*>::DynamicArray(v21, this + 27);
    v22 = *(this + 16);
    v23 = *(this + 34);
    if (v16)
    {
      re::DynamicArray<BOOL>::DynamicArray(v10, v17);
      re::DynamicArray<char const*>::DynamicArray(&v11, v18);
      re::DynamicArray<char const*>::DynamicArray(&v12, v19);
      re::DynamicArray<char const*>::DynamicArray(&v13, v20);
      re::DynamicArray<char const*>::DynamicArray(v14, v21);
      *&v14[40] = v22;
      v15 = v23;
      v6 = *(&v22 + 1);
      re::Snapshot::~Snapshot(v10);
      if (v6)
      {
        goto LABEL_24;
      }
    }
  }

  if (*a2 == 1)
  {
    if (re::RaftLog::hasNextEntriesSince(this, *(a2 + 8)))
    {
      goto LABEL_24;
    }
  }

  else if (re::RaftLog::hasNextEntries(this))
  {
    goto LABEL_24;
  }

  if (*(this + 133) == *(this + 145) && *(this + 536) == *(this + 1168))
  {
    if ((v7 = *(this + 130), v8 = *(this + 131), v9 = *(this + 36), !v7) && !v8 && !v9 || v7 == *(this + 147) && v8 == *(this + 148) && v9 == *(this + 149))
    {
      v4 = 0;
      goto LABEL_25;
    }
  }

LABEL_24:
  v4 = 1;
LABEL_25:
  if (v16 == 1)
  {
    re::Snapshot::~Snapshot(v17);
  }

  return v4;
}

void re::RawNode::advance(re::Raft *a1, uint64_t a2)
{
  re::RawNode::commitReady(a1, a2);
  v3 = *(a1 + 149);
  if (v3)
  {

    re::Raft::commitApply(a1, v3);
  }
}

uint64_t re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::ReadState>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

BOOL re::SnapshotMetadata::operator==(void *a1, void *a2)
{
  result = re::ConfState::operator==(a1, a2);
  if (result)
  {
    result = re::ConfState::operator==((a1 + 10), (a2 + 10));
    if (result)
    {
      return a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22];
    }
  }

  return result;
}

BOOL re::ConfState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!memcmp(*(a1 + 32), *(a2 + 32), 8 * v2))
  {
    v5 = *(a1 + 56);
    if (v5 == *(a2 + 56))
    {
      return memcmp(*(a1 + 72), *(a2 + 72), 8 * v5) == 0;
    }
  }

  return 0;
}

_anonymous_namespace_ *re::ConfState::ConfState(_anonymous_namespace_ *this, uint64_t a2, uint64_t a3)
{
  *(this + 6) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 9) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a2 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a2 + 16);
    do
    {
      v19 = *(v10 + 24 * v7 + 16);
      re::DynamicArray<re::TransitionCondition *>::add(this, &v19);
      v11 = *(a2 + 32);
      v10 = *(a2 + 16);
      if (v11 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      while (v11 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 24 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v7) = v11;
LABEL_15:
      ;
    }

    while (v7 != v6);
  }

  v12 = *(a3 + 32);
  if (v12)
  {
    v13 = 0;
    v14 = (*(a3 + 16) + 8);
    while (1)
    {
      v15 = *v14;
      v14 += 6;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v12)
  {
    v16 = *(a3 + 16);
    do
    {
      v19 = *(v16 + 24 * v13 + 16);
      re::DynamicArray<re::TransitionCondition *>::add(this + 5, &v19);
      v17 = *(a3 + 32);
      v16 = *(a3 + 16);
      if (v17 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      while (v17 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(v16 + 24 * v13 + 8) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v13) = v17;
LABEL_30:
      ;
    }

    while (v13 != v12);
  }

  return this;
}

uint64_t re::Ready::Ready(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  if (*(a2 + 24))
  {
    v36[0] = 1;
    re::DynamicArray<re::Entry>::DynamicArray(v37, (a2 + 8));
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v10 = v37;
  }

  else
  {
    v36[0] = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v10 = &v31;
    v34 = 0;
  }

  re::DynamicArray<re::Entry>::operator=(a1 + 40, v10);
  re::DynamicArray<re::Entry>::deinit(&v31);
  if (v36[0] == 1)
  {
    re::DynamicArray<re::Entry>::deinit(v37);
  }

  if (*(a2 + 408))
  {
    v11 = *(a2 + 392);
    *(a2 + 392) = *a1;
    *a1 = v11;
    v12 = *(a2 + 400);
    *(a2 + 400) = *(a1 + 8);
    *(a1 + 8) = v12;
    v13 = *(a2 + 408);
    *(a2 + 408) = *(a1 + 16);
    *(a1 + 16) = v13;
    v14 = *(a2 + 424);
    *(a2 + 424) = *(a1 + 32);
    *(a1 + 32) = v14;
    ++*(a1 + 24);
    ++*(a2 + 416);
  }

  if (*a5 == 1)
  {
    v15 = *(a5 + 8);
  }

  else
  {
    v15 = *(a2 + 296);
  }

  re::RaftLog::nextEntriesSince(a2, v15, &v31);
  v30 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (v31)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v28;
  }

  v36[0] = 1;
  re::DynamicArray<re::Entry>::DynamicArray(v37, v16);
  re::Optional<re::DynamicArray<re::Entry>>::operator=(a1 + 344, v36);
  if (v36[0] == 1)
  {
    re::DynamicArray<re::Entry>::deinit(v37);
  }

  re::DynamicArray<re::Entry>::deinit(v28);
  if (v31 == 1)
  {
    re::DynamicArray<re::Entry>::deinit(&v32);
  }

  v17 = *(a2 + 1064);
  v18 = *(a2 + 536);
  if (*a3 != v17 || *(a3 + 8) != v18)
  {
    if ((*(a1 + 392) & 1) == 0)
    {
      *(a1 + 392) = 1;
    }

    *(a1 + 400) = v17;
    *(a1 + 408) = v18;
  }

  v19 = *(a2 + 1040);
  v20 = *(a2 + 1048);
  v21 = *(a2 + 288);
  if (*a4 == v19 && a4[1] == v20)
  {
    if (a4[2] == v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(a1 + 448) = 1;
  }

  if ((*(a1 + 416) & 1) == 0)
  {
    *(a1 + 416) = 1;
  }

  *(a1 + 424) = v19;
  *(a1 + 432) = v20;
  *(a1 + 440) = v21;
LABEL_31:
  if (*(a2 + 48) == 1)
  {
    re::DynamicArray<BOOL>::operator=(a1 + 120, (a2 + 56));
    re::DynamicArray<unsigned long long>::operator=(a1 + 160, (a2 + 96));
    re::DynamicArray<unsigned long long>::operator=(a1 + 200, (a2 + 136));
    re::DynamicArray<unsigned long long>::operator=(a1 + 240, (a2 + 176));
    re::DynamicArray<unsigned long long>::operator=(a1 + 280, (a2 + 216));
    v22 = *(a2 + 272);
    *(a1 + 320) = *(a2 + 256);
    *(a1 + 336) = v22;
  }

  v23 = *(a2 + 368);
  if (v23)
  {
    v24 = (a2 + 352);
    if ((a1 + 80) != v24)
    {
      v25 = *v24;
      if (*(a1 + 80))
      {
        v26 = (a1 + 80);
        if (v25)
        {
          re::DynamicArray<re::ReadState>::copy(v26, v24);
          ++*(a1 + 104);
        }

        else
        {
          re::DynamicArray<re::ReadState>::clear(v26);
        }
      }

      else if (v25)
      {
        *(a1 + 80) = v25;
        re::DynamicArray<re::ReadState>::setCapacity((a1 + 80), v23);
        ++*(a1 + 104);
        re::DynamicArray<re::ReadState>::copy((a1 + 80), v24);
      }
    }
  }

  return a1;
}

uint64_t re::Optional<re::DynamicArray<re::Entry>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = a1 + 8;
    if (*a2)
    {
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v3, a2 + 8);
    }

    else
    {
      re::DynamicArray<re::Entry>::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v6;
    ++*(a2 + 32);
    ++*(a1 + 32);
  }

  return a1;
}

void *re::DynamicArray<re::ReadState>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::ReadState>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = &v11[6 * v12];
      do
      {
        result = re::DynamicArray<BOOL>::operator=(v13, v11);
        *(v13 + 40) = v11[5];
        v11 += 6;
        v13 += 48;
      }

      while (v11 != v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = &v11[2 * v15];
      result = (v13 + 16 * v15);
      v17 = 48 * v4 - 16 * v15;
      do
      {
        v18 = re::DynamicArray<BOOL>::DynamicArray(result, v16);
        *(v18 + 40) = v16[5];
        v16 += 6;
        result = (v18 + 48);
        v17 -= 48;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[6 * v4];
      do
      {
        result = re::DynamicArray<BOOL>::operator=(v6, v7);
        *(v6 + 40) = v7[5];
        v7 += 6;
        v6 += 48;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 48 * v4;
      v10 = 48 * v5 - 48 * v4;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 48;
        v10 -= 48;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void re::ConsensusErrorCategoryImpl::~ConsensusErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

_BYTE *re::ConsensusErrorCategoryImpl::message@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 & 0xF0) != 0)
  {
    v3 = "Unknown ConsensusError error";
  }

  else
  {
    v3 = off_1E8721668[a1 & 0xF];
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v3);
}

uint64_t re::Unstable::maybeTerm@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(this + 272);
  v7 = a2 - v6;
  if (a2 < v6)
  {
    if (*(this + 40))
    {
      re::DynamicArray<char const*>::DynamicArray(v13, (this + 88));
      re::DynamicArray<char const*>::DynamicArray(&v14 + 8, (v4 + 128));
      re::DynamicArray<char const*>::DynamicArray(v17, (v4 + 168));
      re::DynamicArray<char const*>::DynamicArray(v20, (v4 + 208));
      v23 = *(v4 + 248);
      v24 = *(v4 + 264);
      if (*(&v23 + 1) == a2)
      {
        *(a3 + 8) = v24;
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      *a3 = v8;
      if (v20[0])
      {
        if (v22)
        {
          (*(*v20[0] + 40))();
        }

        v22 = 0;
        memset(v20, 0, sizeof(v20));
        ++v21;
      }

      if (v17[0])
      {
        if (v19)
        {
          (*(*v17[0] + 40))();
        }

        v19 = 0;
        memset(v17, 0, sizeof(v17));
        ++v18;
      }

      if (*(&v14 + 1))
      {
        if (*(&v16 + 1))
        {
          (*(**(&v14 + 1) + 40))();
        }

        *(&v16 + 1) = 0;
        v15 = 0uLL;
        *(&v14 + 1) = 0;
        LODWORD(v16) = v16 + 1;
      }

      this = *&v13[0];
      if (*&v13[0])
      {
        if (v14)
        {
          return (*(**&v13[0] + 40))();
        }
      }

      return this;
    }

LABEL_10:
    *a3 = 0;
    return this;
  }

  v9 = *(this + 16);
  if (v9)
  {
    v10 = v6 + v9 - 1;
  }

  else
  {
    if (*(this + 40) != 1)
    {
      goto LABEL_10;
    }

    v10 = *(this + 256);
  }

  if (v10 < a2)
  {
    goto LABEL_10;
  }

  if (v9 <= v7)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v12 = v9;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(this + 32) + 104 * v7;
  *a3 = 1;
  *(a3 + 8) = *(v11 + 96);
  return this;
}

uint64_t re::Unstable::stableTo(re::Unstable *this, unint64_t a2, uint64_t a3)
{
  result = re::Unstable::maybeTerm(this, a2, v10);
  if (v10[0] == 1 && v11 == a3)
  {
    v8 = *(this + 34);
    if (v8 <= a2)
    {
      v9 = a2 + 1;
      result = re::DynamicArray<re::Entry>::removeManyStableAt(this, 0, v9 - v8);
      *(this + 34) = v9;
    }
  }

  return result;
}

_BYTE *re::Unstable::stableSnapTo(re::Unstable *this, uint64_t a2)
{
  v6 = *(this + 40);
  result = this + 40;
  if (v6 == 1 && *(this + 32) == a2)
  {
    v8 = v2;
    v9 = v3;
    v7[0] = 0;
    re::Optional<re::Snapshot>::operator=(result, v7);
    return re::Optional<re::Snapshot>::~Optional(v7);
  }

  return result;
}

_BYTE *re::Optional<re::Snapshot>::~Optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<unsigned long>::deinit((a1 + 168));
    re::DynamicArray<unsigned long>::deinit((a1 + 128));
    re::DynamicArray<unsigned long>::deinit((a1 + 88));
    re::DynamicArray<unsigned long>::deinit((a1 + 48));
    re::DynamicArray<unsigned long>::deinit((a1 + 8));
  }

  return a1;
}

_BYTE *re::Unstable::restore(re::Unstable *this, const re::Snapshot *a2)
{
  re::DynamicArray<re::Entry>::clear(this);
  *(this + 34) = *(a2 + 26) + 1;
  v5[0] = 1;
  re::DynamicArray<BOOL>::DynamicArray(&v6, a2);
  re::DynamicArray<char const*>::DynamicArray(&v7, a2 + 5);
  re::DynamicArray<char const*>::DynamicArray(&v8, a2 + 10);
  re::DynamicArray<char const*>::DynamicArray(&v9, a2 + 15);
  re::DynamicArray<char const*>::DynamicArray(v10, a2 + 20);
  *&v10[40] = *(a2 + 200);
  v11 = *(a2 + 27);
  re::Optional<re::Snapshot>::operator=(this + 40, v5);
  return re::Optional<re::Snapshot>::~Optional(v5);
}

uint64_t re::Unstable::mustCheckOutOfBounds(uint64_t this, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid unstable.slice %llu > %llu", "!Unreachable code", "mustCheckOutOfBounds", 90, a2, a3);
    _os_crash();
    __break(1u);
LABEL_9:
    re::internal::assertLog(8, a2, "assertion failure: '%s' (%s:line %i) unstable.slice[%llu, %llu] out of bound[%llu, %llu]", "!Unreachable code", "mustCheckOutOfBounds", 96, a2, a3, v3, v4);
    this = _os_crash();
    __break(1u);
    return this;
  }

  v3 = *(this + 272);
  v4 = *(this + 16) + v3;
  if (v3 > a2 || v4 < a3)
  {
    goto LABEL_9;
  }

  return this;
}

void *re::Unstable::truncateAndAppend(re::Unstable *this, uint64_t a2)
{
  v3 = this;
  v4 = *(a2 + 32);
  v5 = *(v4 + 88);
  v6 = *(this + 34);
  if (v5 == *(this + 2) + v6)
  {
    v7 = *(a2 + 16);
    v8 = *(this + 2);
    v9 = v4;
  }

  else
  {
    v10 = v5 - v6;
    if (v5 <= v6)
    {
      *(this + 34) = v5;
      re::DynamicArray<re::Entry>::clear(this);
      v9 = *(a2 + 32);
      v7 = *(a2 + 16);
      this = v3;
      v8 = 0;
    }

    else
    {
      re::Unstable::mustCheckOutOfBounds(this, v6, v5);
      re::DynamicArray<re::Entry>::resize(v3, v10);
      v8 = *(v3 + 2);
      v9 = *(a2 + 32);
      v7 = *(a2 + 16);
      this = v3;
    }
  }

  return re::DynamicArray<re::Entry>::copy(this, v8, v9, v7);
}

void *re::DynamicArray<re::Entry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 104;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Entry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 96) = 0;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        v6 += 104;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***a1, uint64_t a2)
{
  result = re::OPackWriter::writeArrayBegin(*a1, *(a2 + 16));
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = 104 * v5;
    do
    {
      result = re::ConsensusWriter::write(a1, v6);
      v6 += 104;
      v7 -= 104;
    }

    while (v7);
    if (*(a2 + 16) >= 0xFuLL)
    {
      v8 = *a1;
      v9 = 3;
      return re::zerocopy::writeAll(*v8, &v9, 1);
    }
  }

  return result;
}

{
  v4 = *a1;
  v13 = -27;
  re::zerocopy::writeAll(*v4, &v13, 1);
  v5 = *a1;
  v14 = 8;
  re::zerocopy::writeAll(*v5, &v14, 1);
  re::OPackWriter::writeData(*a1, *(a2 + 32), *(a2 + 16));
  v6 = *a1;
  v15 = 9;
  re::zerocopy::writeAll(*v6, &v15, 1);
  re::OPackWriter::writeData(*a1, *(a2 + 72), *(a2 + 56));
  v7 = *a1;
  v16 = 10;
  re::zerocopy::writeAll(*v7, &v16, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 80));
  v8 = *a1;
  v17 = 11;
  re::zerocopy::writeAll(*v8, &v17, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 88));
  v9 = *a1;
  v18 = 12;
  re::zerocopy::writeAll(*v9, &v18, 1);
  v10 = *a1;
  v11 = *(a2 + 96);

  return re::OPackWriter::writeInteger(v10, v11);
}

{
  v4 = *a1;
  v15 = -25;
  re::zerocopy::writeAll(*v4, &v15, 1);
  v5 = *a1;
  v16 = 8;
  re::zerocopy::writeAll(*v5, &v16, 1);
  re::OPackWriter::writeData(*a1, *(a2 + 32), *(a2 + 16));
  v6 = *a1;
  v17 = 9;
  re::zerocopy::writeAll(*v6, &v17, 1);
  re::ConsensusWriter::write(a1, (a2 + 40));
  v7 = *a1;
  v18 = 10;
  re::zerocopy::writeAll(*v7, &v18, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 120));
  v8 = *a1;
  v19 = 11;
  re::zerocopy::writeAll(*v8, &v19, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 128));
  v9 = *a1;
  v20 = 12;
  re::zerocopy::writeAll(*v9, &v20, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 136));
  v10 = *a1;
  v21 = 13;
  re::zerocopy::writeAll(*v10, &v21, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 144));
  v11 = *a1;
  v22 = 14;
  re::zerocopy::writeAll(*v11, &v22, 1);
  v12 = *a1;
  if (*(a2 + 152))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v23 = v13;
  return re::zerocopy::writeAll(*v12, &v23, 1);
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***a1, unint64_t *a2)
{
  v4 = *a1;
  v18 = -30;
  re::zerocopy::writeAll(*v4, &v18, 1);
  v5 = *a1;
  v19 = 8;
  re::zerocopy::writeAll(*v5, &v19, 1);
  re::OPackWriter::writeArrayBegin(*a1, a2[2]);
  v6 = a2[2];
  if (v6)
  {
    v7 = a2[4];
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      re::OPackWriter::writeInteger(*a1, v9);
      v8 -= 8;
    }

    while (v8);
    if (a2[2] >= 0xF)
    {
      v10 = *a1;
      v20 = 3;
      re::zerocopy::writeAll(*v10, &v20, 1);
    }
  }

  v11 = *a1;
  v21 = 9;
  re::zerocopy::writeAll(*v11, &v21, 1);
  result = re::OPackWriter::writeArrayBegin(*a1, a2[7]);
  v13 = a2[7];
  if (v13)
  {
    v14 = a2[9];
    v15 = 8 * v13;
    do
    {
      v16 = *v14++;
      result = re::OPackWriter::writeInteger(*a1, v16);
      v15 -= 8;
    }

    while (v15);
    if (a2[7] >= 0xF)
    {
      v17 = *a1;
      v22 = 3;
      return re::zerocopy::writeAll(*v17, &v22, 1);
    }
  }

  return result;
}

{
  v4 = *a1;
  v13 = -27;
  re::zerocopy::writeAll(*v4, &v13, 1);
  v5 = *a1;
  v14 = 8;
  re::zerocopy::writeAll(*v5, &v14, 1);
  re::ConsensusWriter::write(a1, a2);
  v6 = *a1;
  v15 = 9;
  re::zerocopy::writeAll(*v6, &v15, 1);
  re::ConsensusWriter::write(a1, a2 + 10);
  v7 = *a1;
  v16 = 10;
  re::zerocopy::writeAll(*v7, &v16, 1);
  re::OPackWriter::writeInteger(*a1, a2[20]);
  v8 = *a1;
  v17 = 11;
  re::zerocopy::writeAll(*v8, &v17, 1);
  re::OPackWriter::writeInteger(*a1, a2[21]);
  v9 = *a1;
  v18 = 12;
  re::zerocopy::writeAll(*v9, &v18, 1);
  v10 = *a1;
  v11 = a2[22];

  return re::OPackWriter::writeInteger(v10, v11);
}

uint64_t re::ConsensusReader::read(re::OPackReader **a1, void *a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v8 = re::OPackReader::next(*a1, v6);
      result = 1;
      if (v8)
      {
        while (1)
        {
          v9 = *a1;
          if (*(*a1 + 184) == 5)
          {
            break;
          }

          if (*(v9 + 196) != 6)
          {
            return 0;
          }

          if (*(v9 + 224) == 1)
          {
            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v9 + 196) != 12)
            {
              return 0;
            }

            if (re::OPackReader::next(*a1, v14))
            {
              do
              {
                v15 = *a1;
                if (*(*a1 + 184) == 3)
                {
                  break;
                }

                v18 = 0;
                *(v15 + 2) = 1;
                if (re::OPackReader::next(v15, v11) && *(v15 + 196) == 6)
                {
                  v18 = *(v15 + 28);
                }

                re::DynamicArray<re::TransitionCondition *>::add(a2 + 5, &v18);
              }

              while ((re::OPackReader::next(*a1, v16) & 1) != 0);
            }
          }

          else
          {
            if (*(v9 + 224))
            {
              return 0;
            }

            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v9 + 196) != 12)
            {
              return 0;
            }

            if (re::OPackReader::next(*a1, v10))
            {
              do
              {
                v12 = *a1;
                if (*(*a1 + 184) == 3)
                {
                  break;
                }

                *(v12 + 2) = 1;
                v18 = 0;
                if (re::OPackReader::next(v12, v11))
                {
                  if (*(v12 + 196) == 6)
                  {
                    v18 = *(v12 + 28);
                  }
                }

                re::DynamicArray<re::TransitionCondition *>::add(a2, &v18);
              }

              while ((re::OPackReader::next(*a1, v13) & 1) != 0);
            }
          }

          v17 = re::OPackReader::next(*a1, v11);
          result = 1;
          if ((v17 & 1) == 0)
          {
            return result;
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***this, const re::Message *a2)
{
  v4 = *this;
  v21 = -19;
  re::zerocopy::writeAll(*v4, &v21, 1);
  v5 = *this;
  v22 = 8;
  re::zerocopy::writeAll(*v5, &v22, 1);
  re::ConsensusWriter::write(this, a2);
  v6 = *this;
  v23 = 9;
  re::zerocopy::writeAll(*v6, &v23, 1);
  re::OPackWriter::writeData(*this, *(a2 + 9), *(a2 + 7));
  v7 = *this;
  v24 = 10;
  re::zerocopy::writeAll(*v7, &v24, 1);
  re::ConsensusWriter::write(this, (a2 + 80));
  v8 = *this;
  v25 = 11;
  re::zerocopy::writeAll(*v8, &v25, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 304));
  v9 = *this;
  v26 = 12;
  re::zerocopy::writeAll(*v9, &v26, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 39));
  v10 = *this;
  v27 = 13;
  re::zerocopy::writeAll(*v10, &v27, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 40));
  v11 = *this;
  v28 = 14;
  re::zerocopy::writeAll(*v11, &v28, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 41));
  v12 = *this;
  v29 = 15;
  re::zerocopy::writeAll(*v12, &v29, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 42));
  v13 = *this;
  v30 = 16;
  re::zerocopy::writeAll(*v13, &v30, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 43));
  v14 = *this;
  v31 = 17;
  re::zerocopy::writeAll(*v14, &v31, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 44));
  v15 = *this;
  v32 = 18;
  re::zerocopy::writeAll(*v15, &v32, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 45));
  v16 = *this;
  v33 = 19;
  re::zerocopy::writeAll(*v16, &v33, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 46));
  v17 = *this;
  v34 = 20;
  re::zerocopy::writeAll(*v17, &v34, 1);
  v18 = *this;
  if (*(a2 + 376))
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v35 = v19;
  return re::zerocopy::writeAll(*v18, &v35, 1);
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***this, const re::Snapshot *a2)
{
  v4 = *this;
  v8 = -30;
  re::zerocopy::writeAll(*v4, &v8, 1);
  v5 = *this;
  v9 = 8;
  re::zerocopy::writeAll(*v5, &v9, 1);
  re::OPackWriter::writeData(*this, *(a2 + 4), *(a2 + 2));
  v6 = *this;
  v10 = 9;
  re::zerocopy::writeAll(*v6, &v10, 1);

  return re::ConsensusWriter::write(this, a2 + 5);
}

uint64_t re::ConsensusReader::read(re::OPackReader **this, re::Message *a2)
{
  v4 = *this;
  result = re::OPackReader::next(*this, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v8 = re::OPackReader::next(*this, v6);
      result = 1;
      if (v8)
      {
        while (1)
        {
          v9 = *this;
          if (*(*this + 184) == 5)
          {
            return 1;
          }

          if (*(v9 + 196) != 6)
          {
            return 0;
          }

          switch(*(v9 + 224))
          {
            case 0:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 12)
              {
                return 0;
              }

              if (!re::OPackReader::next(*this, v10))
              {
                goto LABEL_118;
              }

              do
              {
                if (*(*this + 184) == 3)
                {
                  break;
                }

                v42 = 0;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                memset(v37, 0, sizeof(v37));
                v13 = re::DynamicArray<re::Entry>::add(a2, v37);
                if (*(&v38 + 1))
                {
                  v12 = *(&v40 + 1);
                  if (*(&v40 + 1))
                  {
                    (*(**(&v38 + 1) + 40))(v13);
                  }

                  *(&v40 + 1) = 0;
                  v39 = 0uLL;
                  *(&v38 + 1) = 0;
                  LODWORD(v40) = v40 + 1;
                }

                if (v37[0].n128_u64[0])
                {
                  v12 = v38;
                  if (v38)
                  {
                    (*(*v37[0].n128_u64[0] + 40))(v13);
                  }
                }

                v14 = *this;
                *(v14 + 2) = 1;
                v15 = *(a2 + 4);
                v16 = *(a2 + 2);
                result = re::OPackReader::next(v14, v12);
                if (!result)
                {
                  return result;
                }

                if (*(v14 + 196) != 13)
                {
                  return 0;
                }

                if (re::OPackReader::next(*this, v17))
                {
                  v19 = v15 + 104 * v16;
                  do
                  {
                    v20 = *this;
                    if (*(*this + 184) == 5)
                    {
                      break;
                    }

                    if (*(v20 + 196) != 6)
                    {
                      return 0;
                    }

                    result = 0;
                    v21 = *(v20 + 224);
                    if (v21 <= 1)
                    {
                      if (*(v20 + 224))
                      {
                        if (v21 != 1)
                        {
                          return result;
                        }

                        result = re::OPackReader::next(*this, v18);
                        if (!result)
                        {
                          return result;
                        }

                        if (*(v20 + 196) != 11)
                        {
                          return 0;
                        }

                        re::DynamicArray<BOOL>::resize(v19 - 64, *(*this + 27));
                        v23 = *(*this + 26);
                        v24 = *(*this + 27);
                        v25 = (v19 - 64);
                      }

                      else
                      {
                        result = re::OPackReader::next(*this, v18);
                        if (!result)
                        {
                          return result;
                        }

                        if (*(v20 + 196) != 11)
                        {
                          return 0;
                        }

                        re::DynamicArray<BOOL>::resize(v19 - 104, *(*this + 27));
                        v23 = *(*this + 26);
                        v24 = *(*this + 27);
                        v25 = (v19 - 104);
                      }

                      re::DynamicArray<REFrameAnalysisBottleneck>::copy(v25, 0, v23, v24);
                    }

                    else
                    {
                      switch(v21)
                      {
                        case 2u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 24) = *(v20 + 28);
                          break;
                        case 3u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 16) = *(v20 + 28);
                          break;
                        case 4u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 8) = *(v20 + 28);
                          break;
                        default:
                          return result;
                      }
                    }
                  }

                  while ((re::OPackReader::next(*this, v22) & 1) != 0);
                }
              }

              while ((re::OPackReader::next(*this, v18) & 1) != 0);
              goto LABEL_118;
            case 1:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2 + 40, *(*this + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(a2 + 5, 0, *(*this + 26), *(*this + 27));
              goto LABEL_118;
            case 2:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 13)
              {
                return 0;
              }

              if (!re::OPackReader::next(*this, v26))
              {
                goto LABEL_118;
              }

              break;
            case 3:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 304) = *(v9 + 28);
              goto LABEL_118;
            case 4:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 39) = *(v9 + 28);
              goto LABEL_118;
            case 5:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 40) = *(v9 + 28);
              goto LABEL_118;
            case 6:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 41) = *(v9 + 28);
              goto LABEL_118;
            case 7:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 42) = *(v9 + 28);
              goto LABEL_118;
            case 8:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 43) = *(v9 + 28);
              goto LABEL_118;
            case 9:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 44) = *(v9 + 28);
              goto LABEL_118;
            case 0xA:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 45) = *(v9 + 28);
              goto LABEL_118;
            case 0xB:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 46) = *(v9 + 28);
              goto LABEL_118;
            case 0xC:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 2)
              {
                return 0;
              }

              *(a2 + 376) = *(*this + 224);
              goto LABEL_118;
            default:
              return 0;
          }

          do
          {
            v27 = *this;
            if (*(*this + 184) == 5)
            {
              break;
            }

            if (*(v27 + 196) != 6)
            {
              return 0;
            }

            if (*(v27 + 224) == 1)
            {
              result = re::OPackReader::next(*this, v11);
              if (!result)
              {
                return result;
              }

              if (*(v27 + 196) != 13)
              {
                return 0;
              }

              if (re::OPackReader::next(*this, v29))
              {
                do
                {
                  v30 = *this;
                  if (*(*this + 184) == 5)
                  {
                    break;
                  }

                  if (*(v30 + 196) != 6)
                  {
                    return 0;
                  }

                  result = 0;
                  v31 = *(v30 + 224);
                  if (v31 <= 1)
                  {
                    if (*(v30 + 224))
                    {
                      if (v31 != 1)
                      {
                        return result;
                      }

                      v35 = a2 + 200;
                    }

                    else
                    {
                      v35 = a2 + 120;
                    }

                    if ((re::ConsensusReader::read(this, v35) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    switch(v31)
                    {
                      case 2u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 280;
                        break;
                      case 3u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 288;
                        break;
                      case 4u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 296;
                        break;
                      default:
                        return result;
                    }

                    if (v33 != 6)
                    {
                      return 0;
                    }

                    *v34 = *(v30 + 28);
                  }
                }

                while ((re::OPackReader::next(*this, v32) & 1) != 0);
              }
            }

            else
            {
              if (*(v27 + 224))
              {
                return 0;
              }

              result = re::OPackReader::next(*this, v11);
              if (!result)
              {
                return result;
              }

              if (*(v27 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2 + 80, *(*this + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(a2 + 10, 0, *(*this + 26), *(*this + 27));
            }
          }

          while ((re::OPackReader::next(*this, v28) & 1) != 0);
LABEL_118:
          v36 = re::OPackReader::next(*this, v11);
          result = 1;
          if ((v36 & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::ConsensusReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      if (re::OPackReader::next(*a1, v6))
      {
        while (1)
        {
          v8 = *a1;
          if (*(*a1 + 184) == 5)
          {
            break;
          }

          if (*(v8 + 196) != 6)
          {
            return 0;
          }

          result = 0;
          v9 = *(v8 + 224);
          if (v9 <= 2)
          {
            if (*(v8 + 224))
            {
              if (v9 == 1)
              {
                if ((re::ConsensusReader::read(a1, (a2 + 40)) & 1) == 0)
                {
                  return 0;
                }
              }

              else
              {
                if (v9 != 2)
                {
                  return result;
                }

                result = re::OPackReader::next(*a1, v7);
                if (!result)
                {
                  return result;
                }

                if (*(v8 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 120) = *(v8 + 28);
              }
            }

            else
            {
              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2, *(*a1 + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(a2, 0, *(*a1 + 26), *(*a1 + 27));
            }
          }

          else if (*(v8 + 224) > 4u)
          {
            if (v9 == 5)
            {
              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 144) = *(v8 + 28);
            }

            else
            {
              if (v9 != 6)
              {
                return result;
              }

              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 2)
              {
                return 0;
              }

              *(a2 + 152) = *(*a1 + 224);
            }
          }

          else if (v9 == 3)
          {
            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v8 + 196) != 6)
            {
              return 0;
            }

            *(a2 + 128) = *(v8 + 28);
          }

          else
          {
            if (v9 != 4)
            {
              return result;
            }

            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v8 + 196) != 6)
            {
              return 0;
            }

            *(a2 + 136) = *(v8 + 28);
          }

          v11 = re::OPackReader::next(*a1, v10);
          result = 1;
          if ((v11 & 1) == 0)
          {
            return result;
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::Generic6DOFConstraint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  v4 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0CC80;
  __asm { FMOV            V0.2S, #1.0 }

  v10 = -_D0;
  *(a1 + 56) = v10;
  *(a1 + 64) = v10;
  *(a1 + 72) = v10;
  *(a1 + 80) = v10;
  *(a1 + 88) = v10;
  *(a1 + 96) = v10;
  do
  {
    v11 = a1 + v4;
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
    *(v11 + 132) = 0;
    v4 += 16;
  }

  while (v4 != 48);
  for (i = 0; i != 48; i += 16)
  {
    v13 = a1 + i;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
    *(v13 + 180) = 0;
  }

  for (j = 0; j != 60; j += 20)
  {
    v15 = a1 + j;
    *(v15 + 224) = 0;
    *(v15 + 240) = 0;
    *(v15 + 228) = 0;
    *(v15 + 236) = 0;
  }

  for (k = 0; k != 60; k += 20)
  {
    v17 = a1 + k;
    *(v17 + 284) = 0;
    *(v17 + 300) = 0;
    *(v17 + 288) = 0;
    *(v17 + 296) = 0;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

uint64_t re::Generic6DOFConstraint::setLinearLimit(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 8 * a2 + 56) = *a3;
    v5 = *(*a1 + 56);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularLimit(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 8 * a2 + 80) = *a3;
    v5 = *(*a1 + 56);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearRestitution(uint64_t a1, uint64_t a2, float a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 4 * a2 + 104) = a3;
    v5 = *(*a1 + 64);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularRestitution(uint64_t a1, uint64_t a2, float a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 4 * a2 + 116) = a3;
    v5 = *(*a1 + 64);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearSpring(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 16 * a2 + 128) = *a3;
    v5 = *(*a1 + 72);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularSpring(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 16 * a2 + 176) = *a3;
    v5 = *(*a1 + 72);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearMotor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = a1 + 20 * a2;
    v6 = *a3;
    *(v5 + 240) = *(a3 + 4);
    *(v5 + 224) = v6;
    v7 = *(*a1 + 80);

    return v7();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularMotor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = a1 + 20 * a2;
    v6 = *a3;
    *(v5 + 300) = *(a3 + 4);
    *(v5 + 284) = v6;
    v7 = *(*a1 + 80);

    return v7();
  }

  return result;
}

double re::HingeJoint::HingeJoint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0CD00;
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *(a1 + 56) = result;
  return result;
}

uint64_t re::HingeJoint::setAngularLimit(uint64_t a1, double a2, float a3)
{
  *(a1 + 56) = LODWORD(a2);
  *(a1 + 60) = a3;
  if (*&a2 <= a3)
  {
    *(&a2 + 1) = a3;
    v3 = vdup_n_s32(0x40C90FDBu);
    v4 = vbsl_s8(vcgt_f32(*&a2, v3), v3, *&a2);
    v5 = vdup_n_s32(0xC0C90FDB);
    *(a1 + 56) = vbsl_s8(vcgt_f32(v5, v4), v5, v4);
  }

  return (*(*a1 + 56))();
}

uint64_t re::Gravity::didEnable(float32x4_t *this)
{
  result = this->i64[1];
  if (result)
  {
    v3.i64[0] = (*(*result + 72))(result);
    v3.i64[1] = v4;
    v5 = vaddq_f32(this[2], v3);
    return (*(*this->i64[1] + 80))(this->i64[1], &v5);
  }

  return result;
}

uint64_t re::Gravity::didDisable(float32x4_t *this)
{
  result = this->i64[1];
  if (result)
  {
    v3.i64[0] = (*(*result + 72))(result);
    v3.i64[1] = v4;
    v5 = vsubq_f32(v3, this[2]);
    return (*(*this->i64[1] + 80))(this->i64[1], &v5);
  }

  return result;
}

uint64_t re::Gravity::didAddToSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = this;
    v4.i64[0] = (*(**(this + 8) + 72))(*(this + 8));
    v4.i64[1] = v5;
    v6 = vaddq_f32(*(v3 + 32), v4);
    return (*(**(v3 + 8) + 80))(*(v3 + 8), &v6);
  }

  return this;
}

uint64_t re::Gravity::willRemoveFromSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = this;
    v4.i64[0] = (*(**(this + 8) + 72))(*(this + 8));
    v4.i64[1] = v5;
    v6 = vsubq_f32(v4, *(v3 + 32));
    return (*(**(v3 + 8) + 80))(*(v3 + 8), &v6);
  }

  return this;
}

uint64_t re::Gravity::setAcceleration(uint64_t result, _OWORD *a2)
{
  v4 = *(result + 32);
  *(result + 32) = *a2;
  if (*(result + 16) == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = result;
    result = *(result + 8);
    if (result)
    {
      v8 = v4;
      v6.i64[0] = (*(*result + 72))(result);
      v6.i64[1] = v7;
      v9 = vaddq_f32(*(v5 + 32), vsubq_f32(v6, v8));
      return (*(**(v5 + 8) + 80))(*(v5 + 8), &v9);
    }
  }

  return result;
}

re::PhysXFixedJoint *re::PhysXFixedJoint::PhysXFixedJoint(re::PhysXFixedJoint *this, physx::PxFixedJoint *a2, uint64_t a3)
{
  *this = &unk_1F5D0CDC8;
  v6 = this + 56;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *(this + 4) = &str_67;
  *(this + 5) = v6;
  *this = &unk_1F5D0CDC8;
  *(this + 6) = 0;
  *(this + 7) = &unk_1F5D0DBF8;
  *(this + 8) = a2;
  *(a2 + 2) = this;
  (*(*a2 + 128))(a2, 16, 1);
  (*(**(this + 8) + 128))(*(this + 8), 8, a3);
  return this;
}

void re::PhysXFixedJoint::~PhysXFixedJoint(re::PhysXFixedJoint *this)
{
  *this = &unk_1F5D0CDC8;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0CDC8;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXSliderJoint::PhysXSliderJoint(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5D0CE40;
  v8 = re::SliderJoint::SliderJoint(a1, a1 + 64);
  *v9 = &unk_1F5D0CE40;
  v9[8] = &unk_1F5D0DBF8;
  v9[9] = a2;
  a2[2] = v9;
  (*(*a2 + 128))(a2, 16, 1, v8);
  (*(**(a1 + 72) + 128))(*(a1 + 72), 8, a4);
  *(a1 + 80) = a3;
  return a1;
}

uint64_t re::PhysXSliderJoint::updateLimits(re::PhysXSliderJoint *this)
{
  v2 = *(this + 9);
  result = (*(*v2 + 280))(v2, 2, *(this + 14) <= *(this + 15));
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v5 <= v4)
  {
    v6 = *(this + 10);
    v9[0] = 0;
    v9[1] = 0;
    v11 = v4;
    v12 = v5;
    v7 = *v6;
    v8 = (v5 * -0.49) + (v4 * 0.49);
    if ((*v6 * 0.01) < v8)
    {
      v8 = *v6 * 0.01;
    }

    v10 = v8;
    *(v9 + 1) = v7 + v7;
    return (*(*v2 + 256))(v2, v9);
  }

  return result;
}

void re::PhysXSliderJoint::~PhysXSliderJoint(re::PhysXSliderJoint *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::PhysicsJointCollection::~PhysicsJointCollection(_BOOL8 this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 32))
  {
    v2 = *re::physicsLogObjects(this);
    this = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      v3 = *(v1 + 32);
      v6 = 67109120;
      v7 = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "~PhysicsJointCollection(): %d joints left in the collection", &v6, 8u);
    }
  }

  if (*(v1 + 84))
  {
    v4 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 84);
      v6 = 67109120;
      v7 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "~PhysicsJointCollection(): %d deferred to be deleted joints left in the collection", &v6, 8u);
    }
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v1 + 56));
  re::DynamicArray<unsigned long>::deinit(v1 + 16);
}

void re::PhysicsJointCollection::~PhysicsJointCollection(re::PhysicsJointCollection *this)
{
  re::PhysicsJointCollection::~PhysicsJointCollection(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysicsJointCollection::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 48) + 8 * a2);
}

void re::PhysicsJointCollection::add(re::PhysicsJointCollection *this, re::Constraint *a2)
{
  v9 = a2;
  re::DynamicArray<re::TransitionCondition *>::add(this + 2, &v9);
  v3 = v9;
  *(v9 + 6) = *(this + 1);
  v4 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = physx::shdfnd::g_alwaysUseLocking | v4;
  (*(**(v3 + 5) + 64))(*(v3 + 5));
  v6 = (*(**(v9 + 5) + 16))(*(v9 + 5));
  if (v6)
  {
    re::RigidBody::setAttachedJointCount(v6, *(v6 + 77) + 1);
  }

  v7 = v5 & 1;
  v8 = (*(**(v9 + 5) + 24))(*(v9 + 5));
  if (v8)
  {
    re::RigidBody::setAttachedJointCount(v8, *(v8 + 77) + 1);
  }

  if (physx::shdfnd::g_isLockingEnabled != v7)
  {
    physx::shdfnd::g_isLockingEnabled = v7;
  }
}

void re::PhysicsJointCollection::deleteJoint(re::PhysicsJointCollection *this, re::Constraint *a2, int a3)
{
  v22 = a2;
  if (a2)
  {
    if (a3)
    {
      re::DynamicArray<unsigned long long>::remove(this + 16, &v22);
      v4 = v22;
      v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
      v6 = v5 ^ (v5 >> 31);
      v7 = *(this + 20);
      if (v7)
      {
        v8 = v6 % v7;
        v9 = *(*(this + 8) + 4 * (v6 % v7));
        if (v9 != 0x7FFFFFFF)
        {
          v10 = *(this + 9);
          if (*(v10 + 24 * v9 + 16) == v22)
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

            if (*(v10 + 24 * v9 + 16) == v22)
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

      v18 = *(this + 23);
      if (v18 == 0x7FFFFFFF)
      {
        v18 = *(this + 22);
        v19 = v18;
        if (v18 == v7)
        {
          re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::setCapacity(this + 56, 2 * *(this + 21));
          LODWORD(v8) = v6 % *(this + 20);
          v19 = *(this + 22);
          v4 = v22;
        }

        *(this + 22) = v19 + 1;
        v20 = *(this + 9);
        v21 = *(v20 + 24 * v18 + 8);
      }

      else
      {
        v20 = *(this + 9);
        v21 = *(v20 + 24 * v18 + 8);
        *(this + 23) = v21 & 0x7FFFFFFF;
      }

      *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
      *(*(this + 9) + 24 * v18 + 8) = *(*(this + 9) + 24 * v18 + 8) & 0x80000000 | *(*(this + 8) + 4 * v8);
      *(*(this + 9) + 24 * v18) = v6;
      *(*(this + 9) + 24 * v18 + 16) = v4;
      *(*(this + 8) + 4 * v8) = v18;
      ++*(this + 21);
      ++*(this + 24);
    }

    else
    {
      if (*(a2 + 6))
      {
        v23 = a2;
        re::DynamicArray<re::Allocator const*>::removeStable(this + 2, &v23);
      }

      v12 = physx::shdfnd::g_isLockingEnabled;
      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
      {
        physx::shdfnd::g_isLockingEnabled = 0;
      }

      v13 = physx::shdfnd::g_alwaysUseLocking | v12;
      (*(**(a2 + 5) + 72))(*(a2 + 5), *(this + 1));
      v14 = (*(**(a2 + 5) + 16))(*(a2 + 5));
      if (v14)
      {
        re::RigidBody::setAttachedJointCount(v14, *(v14 + 77) - 1);
      }

      v15 = v13 & 1;
      v16 = (*(**(a2 + 5) + 24))(*(a2 + 5));
      if (v16)
      {
        re::RigidBody::setAttachedJointCount(v16, *(v16 + 77) - 1);
      }

      v17 = re::globalAllocators(v16)[2];
      (**a2)(a2);
      (*(*v17 + 40))(v17, a2);
      if (physx::shdfnd::g_isLockingEnabled != v15)
      {
        physx::shdfnd::g_isLockingEnabled = v15;
      }
    }
  }
}