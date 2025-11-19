uint64_t re::internal::GeomTypedAttribute<unsigned int>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned int>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = result[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + 4 * v11) = *(result[7] + 4 * v9);
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v12 = 0;
      v13 = v6[5];
      while (v13 != v12)
      {
        if (*(a2 + 40) <= v12)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + 4 * v12) = *(v6[7] + 4 * v12);
        if (result == ++v12)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_17:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
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
          }

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 4 * v7) = *(v8 + 4 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 4 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned int>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<unsigned int>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<float>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<float>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<float>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

float re::internal::GeomTypedAttribute<float>::copyValuesHelper(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  if (a4)
  {
    if (a3)
    {
      v7 = a1[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        result = *(a1[7] + 4 * v9);
        *(*(a2 + 56) + 4 * v11) = result;
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v13 = (*(*a1 + 16))(a1);
    if (v13)
    {
      v14 = 0;
      v15 = a1[5];
      while (v15 != v14)
      {
        if (*(a2 + 40) <= v14)
        {
          goto LABEL_17;
        }

        result = *(a1[7] + 4 * v14);
        *(*(a2 + 56) + 4 * v14++) = result;
        if (v13 == v14)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<float>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_17:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
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
          }

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 4 * v7) = *(v8 + 4 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 4 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<float>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 4 * v2 - 4;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = v7 == v8;
    v10 = v7 != v8 || v5 == 0;
    v5 -= 4;
  }

  while (!v10);
  return result;
}

BOOL re::internal::GeomTypedAttribute<float>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<float>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<float>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<double>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<double>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<double>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<double>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

double re::internal::GeomTypedAttribute<double>::copyValuesHelper(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  if (a4)
  {
    if (a3)
    {
      v7 = a1[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        result = *(a1[7] + 8 * v9);
        *(*(a2 + 56) + 8 * v11) = result;
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v13 = (*(*a1 + 16))(a1);
    if (v13)
    {
      v14 = 0;
      v15 = a1[5];
      while (v15 != v14)
      {
        if (*(a2 + 40) <= v14)
        {
          goto LABEL_17;
        }

        result = *(a1[7] + 8 * v14);
        *(*(a2 + 56) + 8 * v14++) = result;
        if (v13 == v14)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<double>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 8 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_17:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
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
          }

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 8 * v7) = *(v8 + 8 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 8 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<double>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = v7 == v8;
    v10 = v7 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

BOOL re::internal::GeomTypedAttribute<double>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 8 * a2) == *(*(a1 + 56) + 8 * a3);
}

void *re::internal::GeomTypedAttribute<double>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<float *>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<double>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector2<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<unsigned long>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<re::Vector2<float>>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        v9 = *a4++;
        v8 = v9;
        if (result[5] <= v9)
        {
          break;
        }

        v10 = *a5;
        if (*(a2 + 40) <= v10)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + 8 * v10) = *(result[7] + 8 * v8);
        ++a5;
        if (!--v7)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v11 = 0;
      while (v6[5] > v11)
      {
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + 8 * v11) = *(v6[7] + 8 * v11);
        if (result == ++v11)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_22;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        if (*(result + 40) <= v3)
        {
          goto LABEL_23;
        }

        v7 = *(*(result + 56) + 8 * v3);
        v8 = v4;
        v9 = v4;
        while (1)
        {
          v10 = *(v6 + 4 * v8);
          if (v4 == v10)
          {
            break;
          }

          v11 = *(result + 40);
          if (v11 <= v10)
          {
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
LABEL_22:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
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
            goto LABEL_25;
          }

          if (v11 <= v8)
          {
            goto LABEL_19;
          }

          *(*(result + 56) + 8 * v8) = *(*(result + 56) + 8 * v10);
          v12 = *(a2 + 16);
          if (v12 <= v8)
          {
            goto LABEL_20;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v8) = v9;
          v8 = v10;
          v9 = v10;
          if (v12 <= v10)
          {
            goto LABEL_21;
          }
        }

        if (*(result + 40) <= v8)
        {
          goto LABEL_24;
        }

        *(*(result + 56) + 8 * v8) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v8)
        {
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v8) = v9;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_f32(v7, v8);
    v9.i32[0] = vpmin_u32(v9, v9).u32[0];
    result = v9.i32[0] >> 31;
    if ((v9.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v11 = v5;
    v5 -= 8;
  }

  while (v11);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  v4 = vceq_f32(*(*(a1 + 56) + 8 * a2), *(*(a1 + 56) + 8 * a3));
  return vpmin_u32(v4, v4).u32[0] >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector2<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector3<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<re::Vector3<float>>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

__n128 re::internal::GeomTypedAttribute<re::Vector3<float>>::copyValuesHelper(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  if (a4)
  {
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        v9 = *a4++;
        v8 = v9;
        if (a1[5] <= v9)
        {
          break;
        }

        v10 = *a5;
        if (*(a2 + 40) <= v10)
        {
          goto LABEL_15;
        }

        result = *(a1[7] + 16 * v8);
        *(*(a2 + 56) + 16 * v10) = result;
        ++a5;
        if (!--v7)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v12 = (*(*a1 + 16))(a1);
    if (v12)
    {
      v13 = 0;
      while (a1[5] > v13)
      {
        if (*(a2 + 40) <= v13)
        {
          goto LABEL_17;
        }

        result = *(a1[7] + 16 * v13);
        *(*(a2 + 56) + 16 * v13++) = result;
        if (v13 == v12)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_22;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        if (*(result + 40) <= v3)
        {
          goto LABEL_23;
        }

        v12 = *(*(result + 56) + 16 * v3);
        v7 = v4;
        v8 = v4;
        while (1)
        {
          v9 = *(v6 + 4 * v7);
          if (v4 == v9)
          {
            break;
          }

          v10 = *(result + 40);
          if (v10 <= v9)
          {
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
LABEL_22:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
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
            goto LABEL_25;
          }

          if (v10 <= v7)
          {
            goto LABEL_19;
          }

          *(*(result + 56) + 16 * v7) = *(*(result + 56) + 16 * v9);
          v11 = *(a2 + 16);
          if (v11 <= v7)
          {
            goto LABEL_20;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v7) = v8;
          v7 = v9;
          v8 = v9;
          if (v11 <= v9)
          {
            goto LABEL_21;
          }
        }

        if (*(result + 40) <= v7)
        {
          goto LABEL_24;
        }

        *(*(result + 56) + 16 * v7) = v12;
        v5 = *(a2 + 16);
        if (v5 <= v7)
        {
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v7) = v8;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 16 * v2 - 16;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceqq_f32(v7, v8);
    v9.i32[3] = v9.i32[2];
    v9.i32[0] = vminvq_u32(v9);
    result = v9.i32[0] >> 31;
    if ((v9.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v11 = v5;
    v5 -= 16;
  }

  while (v11);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  v4 = vceqq_f32(*(*(a1 + 56) + 16 * a2), *(*(a1 + 56) + 16 * a3));
  v4.i32[3] = v4.i32[2];
  return vminvq_u32(v4) >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector3<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::Quaternion<float>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector4<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<re::Vector4<float>>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

__n128 re::internal::GeomTypedAttribute<re::Vector4<float>>::copyValuesHelper(void *a1, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  if (a4)
  {
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        v9 = *a4++;
        v8 = v9;
        if (a1[5] <= v9)
        {
          break;
        }

        v10 = *a5;
        if (*(a2 + 40) <= v10)
        {
          goto LABEL_15;
        }

        result = *(a1[7] + 16 * v8);
        *(*(a2 + 56) + 16 * v10) = result;
        ++a5;
        if (!--v7)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v12 = (*(*a1 + 16))(a1);
    if (v12)
    {
      v13 = 0;
      while (a1[5] > v13)
      {
        if (*(a2 + 40) <= v13)
        {
          goto LABEL_17;
        }

        result = *(a1[7] + 16 * v13);
        *(*(a2 + 56) + 16 * v13++) = result;
        if (v13 == v12)
        {
          return result;
        }
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_22;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        if (*(result + 40) <= v3)
        {
          goto LABEL_23;
        }

        v7 = *(*(result + 56) + 16 * v3);
        v8 = v4;
        v9 = v4;
        while (1)
        {
          v10 = *(v6 + 4 * v8);
          if (v4 == v10)
          {
            break;
          }

          v11 = *(result + 40);
          if (v11 <= v10)
          {
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
LABEL_22:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
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
            goto LABEL_25;
          }

          if (v11 <= v8)
          {
            goto LABEL_19;
          }

          *(*(result + 56) + 16 * v8) = *(*(result + 56) + 16 * v10);
          v12 = *(a2 + 16);
          if (v12 <= v8)
          {
            goto LABEL_20;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v8) = v9;
          v8 = v10;
          v9 = v10;
          if (v12 <= v10)
          {
            goto LABEL_21;
          }
        }

        if (*(result + 40) <= v8)
        {
          goto LABEL_24;
        }

        *(*(result + 56) + 16 * v8) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v8)
        {
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v8) = v9;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 16 * v2 - 16;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v7.i32[0] = vminvq_u32(vceqq_f32(v7, v8));
    result = v7.i32[0] >> 31;
    if ((v7.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v10 = v5;
    v5 -= 16;
  }

  while (v10);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return vminvq_u32(vceqq_f32(*(*(a1 + 56) + 16 * a2), *(*(a1 + 56) + 16 * a3))) >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector4<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::Vector4<float>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedFaceVaryingAttribute<signed char>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02918;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02918;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<signed char>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<signed char>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

uint64_t re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
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
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a2 + 32);
  ++*(a1 + 32);
  *a2 = 0;
  *(a2 + 24) = 0;
  ++*(a2 + 32);
  re::GeomIndexMap::GeomIndexMap(a1 + 48, a2 + 48);
  re::GeomIndexMap::GeomIndexMap(a1 + 128, a2 + 128);
  return a1;
}

uint64_t re::GeomIndexMap::operator==(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 != v3)
  {
    v5 = 0;
    v7 = v2 != 1 && v3 != 1;
    v8 = v3 == 2 || v2 == 2;
    if (!v8 || v7)
    {
      return v5;
    }

    if (v2 == 1)
    {
      v9 = a1 + 16;
    }

    else
    {
      v9 = a2 + 16;
    }

    if (v2 == 2)
    {
      v10 = (a1 + 16);
    }

    else
    {
      v10 = (a2 + 16);
    }

    v11 = *(v9 + 16);
    v22 = 0;
    if (v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = *(v9 + 16);
        if (v13 <= v12)
        {
          v23 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v20 = v12;
          v21 = v13;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v24 = 136315906;
          v25 = "operator[]";
          v26 = 1024;
          v27 = 797;
          v28 = 2048;
          v29 = v20;
          v30 = 2048;
          v31 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v14 = *(*(v9 + 32) + 4 * v12);
        v15 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v10, &v22);
        if (v15 == -1)
        {
          if (v14 != -1)
          {
            return 0;
          }
        }

        else if (v14 == -1 || *(v10[1] + 8 * v15 + 4) != v14)
        {
          return 0;
        }

        v12 = v22 + 1;
        v22 = v12;
        if (v12 >= v11)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v2 == 2)
  {
    v18 = a1 + 16;
    v19 = (a2 + 16);

    return re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::operator==(v18, v19);
  }

  if (v2 == 1)
  {
    v16 = *(a2 + 32);
    if (*(a1 + 32) == v16)
    {
      return memcmp(*(a1 + 48), *(a2 + 48), 4 * v16) == 0;
    }

    return 0;
  }

  if (!*(a1 + 12))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator==", 748);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DynamicArray<re::GeomCell4>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = *(a1 + 32);
    v4 = &v3[4 * v2];
    for (i = *(a2 + 32); *v3 == *i; i += 4)
    {
      v6 = 1;
      while (v6 != 4)
      {
        v7 = v3[v6];
        v8 = i[v6++];
        if (v7 != v8)
        {
          if ((v6 - 2) < 3)
          {
            return 0;
          }

          break;
        }
      }

      v3 += 4;
      if (v3 == v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::operator==(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  if (*(a1 + 40) == a2[5] && *(a1 + 48) == a2[6])
  {
    v15[0] = a1;
    v5 = *(a1 + 16);
    if (v5 < 0x10)
    {
      return 1;
    }

    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return 1;
      }
    }

    v11 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v12 = v11 - v6;
    v16 = v11 - v6;
    if (v11 + 1 == v6)
    {
      return 1;
    }

    while (1)
    {
      v14 = *(*(v15[0] + 8) + 8 * v12);
      v13 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2, &v14);
      if (v13 == -1 || *(a2[1] + 8 * v13 + 4) != HIDWORD(v14))
      {
        break;
      }

      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
      v12 = v16;
      if (v16 == -1)
      {
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *re::internal::GeomAttributeFaceVaryingSubmesh::operator=(_DWORD *a1, _DWORD *a2)
{
  v4 = (a2 + 32);
  *a1 = *a2;
  v5 = (a1 + 32);
  re::DynamicArray<re::GeomCell4>::operator=((a1 + 2), (a2 + 2));
  re::GeomIndexMap::operator=((a1 + 12), (a2 + 12));
  re::GeomIndexMap::operator=(v5, v4);
  return a1;
}

void re::internal::GeomTypedFaceVaryingAttribute<short>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D029A8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D029A8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<short>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 2 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<short>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<int>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02A38;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02A38;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<int>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 4 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<int>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02AC8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02AC8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02B58;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02B58;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 2 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02BE8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02BE8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 4 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<float>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02C78;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02C78;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<float>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 4 * v2;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      v7 -= 4;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<float>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<double>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02D08;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02D08;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<double>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 8 * v2;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<double>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02D98;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02D98;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 8 * v2;
    do
    {
      v8 = vceq_f32(*v5, *v6);
      if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0)
      {
        return 0;
      }

      ++v5;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02E28;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02E28;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 16 * v2;
    do
    {
      v8 = vceqq_f32(*v5, *v6);
      v8.i32[3] = v8.i32[2];
      if ((vminvq_u32(v8) & 0x80000000) == 0)
      {
        return 0;
      }

      ++v5;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02EB8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02EB8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 16 * v2;
    while ((vminvq_u32(vceqq_f32(*v5, *v6)) & 0x80000000) != 0)
    {
      ++v5;
      ++v6;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::updateSubmesh(_DWORD *a1, _DWORD *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 16, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

uint64_t re::buildTube(_anonymous_namespace_ *a1, unsigned __int16 *a2)
{
  v224 = *MEMORY[0x1E69E9840];
  v198 = 0;
  v202 = 0;
  v199[1] = 0;
  v200 = 0;
  v201 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v199, 1uLL);
  ++v201;
  re::internal::GeomAttributeManager::GeomAttributeManager(v203);
  v4 = *a2;
  if (v4 >= 3 && (v5 = a2[1]) != 0)
  {
    v167 = a1;
    v6 = v5 + 1;
    v198 = 2 * (v4 + 1) * (v5 + 1) + 4 * (v4 + 1);
    v204 = v198;
    if (v205)
    {
      v7 = v206;
      v8 = 8 * v205;
      do
      {
        v9 = *v7++;
        (*(*v9 + 80))(v9, v204);
        v8 -= 8;
      }

      while (v8);
    }

    v10 = 2 * v4 * v6;
    re::DynamicArray<re::GeomCell4>::resize(v199, v10);
    v207 = v10;
    if (v208)
    {
      v11 = v209;
      v12 = 8 * v208;
      do
      {
        v13 = *v11++;
        (*(*v13 + 80))(v13, v207);
        v12 -= 8;
      }

      while (v12);
    }

    re::internal::GeomAttributeManager::addAttribute(v203, "vertexPosition", 1, 7);
    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexUV", 1, 6);
      if (*(a2 + 17) == 1 && (a2[8] & 1) != 0)
      {
        re::internal::GeomAttributeManager::addAttribute(v203, "vertexTangent", 1, 7);
        re::internal::GeomAttributeManager::addAttribute(v203, "vertexBitangent", 1, 7);
      }
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexPosition");
    v173 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
    v174 = v17;
    if (*(a2 + 17) == 1)
    {
      v21 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexNormal");
      v172 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v21);
      v23 = v22;
    }

    else
    {
      v172 = 0;
      v23 = 0xFFFFFFFFLL;
    }

    v178 = v23;
    v25 = v14 + 1 + (v14 + 1) * v15;
    if (*(a2 + 16) == 1)
    {
      v26 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexUV");
      v171 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
      v175 = 0;
      v27 = 0;
      v29 = v28;
      if (a2[8] & 1) != 0 && (*(a2 + 17))
      {
        v30 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexTangent");
        v31 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexBitangent");
        v175 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v30);
        v33 = v32;
        v170 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v31);
        v190 = v34;
        v177 = v33;
        v27 = 1;
      }

      else
      {
        v177 = 0xFFFFFFFFLL;
        v190 = 0xFFFFFFFFLL;
        v170 = 0;
      }
    }

    else
    {
      v27 = 0;
      v170 = 0;
      v171 = 0;
      v175 = 0;
      v29 = 0xFFFFFFFFLL;
      v177 = 0xFFFFFFFFLL;
      v190 = 0xFFFFFFFFLL;
    }

    v35 = 0;
    v36 = 0;
    LOWORD(v37) = a2[1];
    v169 = v14;
    v38 = v14 + 1;
    v168 = v25;
    v39 = v25;
    do
    {
      v40 = 0;
      v176 = v36;
      v19.f32[0] = v37;
      v195 = v35;
      v37 = v39;
      v179 = v170 + 16 * v39;
      v180 = v175 + 16 * v39;
      v187 = v171 + 8 * v39;
      v186 = v172 + 16 * v39;
      v41 = v173 + 16 * v39;
      v182 = v170 + 16 * v35;
      if (v174 >= v35)
      {
        v42 = v174 - v35;
      }

      else
      {
        v42 = 0;
      }

      v43 = v174 >= v39;
      v44 = v174 - v39;
      if (v43)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v184 = v171 + 8 * v35;
      v185 = v175 + 16 * v35;
      v189 = v172 + 16 * v35;
      v46 = v173 + 16 * v35;
      *&v20 = v36 / v19.f32[0];
      v192 = v20;
      do
      {
        v19.i16[0] = *a2;
        v19.f32[0] = v40 / v19.u32[0];
        v18.i32[0] = *(a2 + 1);
        v196 = v18.i64[0];
        v197 = v19.i64[0];
        v47 = *(a2 + 3);
        v48 = __sincosf_stret(v19.f32[0] * 6.2832);
        v49 = *(a2 + 2);
        v54 = __sincosf_stret((1.0 - *&v197) * 6.2832);
        if (v42 == v40)
        {
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v211 = 136315906;
          v215 = 2048;
          v216 = (v195 + v40);
          v217 = 2048;
          v218 = v174;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_74:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v211 = 136315906;
          v215 = 2048;
          v216 = (v37 + v40);
          v217 = 2048;
          v218 = v174;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_75;
        }

        v55 = v47 - v47;
        v20 = v192;
        v56 = (*&v192 * *&v196) + *&v196 * -0.5;
        v57 = v47 + (*&v192 * (v47 - v47));
        *&v52 = v48.__cosval * v57;
        *(&v52 + 1) = v56;
        *(&v52 + 2) = -(v57 * v48.__sinval);
        *(v46 + 16 * v40) = v52;
        if (v45 == v40)
        {
          goto LABEL_74;
        }

        v58 = v37 + v40;
        v59 = v195 + v40;
        v60.i32[1] = 0;
        v60.i32[3] = 0;
        v60.f32[0] = -v48.__sinval;
        v60.f32[2] = -v48.__cosval;
        v51.f32[0] = v55 * v48.__cosval;
        v51.i32[1] = v196;
        v51.f32[2] = -(v48.__sinval * v55);
        v61 = vmulq_f32(v60, v60);
        *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
        *v61.f32 = vrsqrte_f32(v62);
        *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
        v63 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
        v64 = vmulq_f32(v51, v51);
        v60.f32[0] = v64.f32[2] + vaddv_f32(*v64.f32);
        *v64.f32 = vrsqrte_f32(v60.u32[0]);
        *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v60.u32[0], vmul_f32(*v64.f32, *v64.f32)));
        v65 = v49 + (*&v192 * (v49 - v49));
        *&v53 = v54.__cosval * v65;
        *(&v53 + 1) = (*&v192 * *&v196) + *&v196 * -0.5;
        *(&v53 + 2) = -(v65 * v54.__sinval);
        v66.i32[1] = 0;
        v66.i32[3] = 0;
        v66.f32[0] = -v54.__sinval;
        v66.f32[2] = -v54.__cosval;
        v50.f32[0] = v54.__cosval * (v49 - v49);
        v50.i32[1] = v196;
        v50.f32[2] = -(v54.__sinval * (v49 - v49));
        v18 = vmulq_n_f32(v51, vmul_f32(*v64.f32, vrsqrts_f32(v60.u32[0], vmul_f32(*v64.f32, *v64.f32))).f32[0]);
        v67 = vmulq_f32(v66, v66);
        *&v68 = v67.f32[2] + vaddv_f32(*v67.f32);
        *v67.f32 = vrsqrte_f32(v68);
        *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
        v69 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
        v70 = vmulq_f32(v50, v50);
        v64.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
        *v70.f32 = vrsqrte_f32(v64.u32[0]);
        *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v70.f32, *v70.f32)));
        v19 = vmulq_n_f32(v50, vmul_f32(*v70.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v70.f32, *v70.f32))).f32[0]);
        v71 = vnegq_f32(v69);
        *(v41 + 16 * v40) = v53;
        if (*(a2 + 17) == 1)
        {
          if (v178 <= v59)
          {
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v195 + v40;
            v217 = 2048;
            v218 = v178;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_82:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            v110 = v74;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v37 + v40;
            v217 = 2048;
            v218 = v110;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_83:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v37 + v40;
            v217 = 2048;
            v218 = v178;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_84:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            v111 = v75;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v195 + v40;
            v217 = 2048;
            v218 = v111;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            v112 = v74;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v195 + v40;
            v217 = 2048;
            v218 = v112;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_86:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v195 + v40;
            v217 = 2048;
            v218 = v190;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_87:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            a2 = v75;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v37 + v40;
            v217 = 2048;
            v218 = a2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_88:
            v210 = 0;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v219 = 0u;
            v97 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v211 = 136315906;
            v212 = "operator[]";
            v213 = 1024;
            v214 = 621;
            v215 = 2048;
            v216 = v37 + v40;
            v217 = 2048;
            v218 = v190;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

          v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v63)), v18, vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL));
          *(v189 + 16 * v40) = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
          if (v178 <= v58)
          {
            goto LABEL_83;
          }

          v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v71), v19, vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL));
          *(v186 + 16 * v40) = vnegq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
        }

        if (*(a2 + 16) == 1)
        {
          v74 = v29;
          if (v29 <= v58)
          {
            goto LABEL_82;
          }

          *(v187 + 8 * v40) = __PAIR64__(v192, v197);
          if (v29 <= v59)
          {
            goto LABEL_85;
          }

          *(v184 + 8 * v40) = __PAIR64__(v192, v197);
        }

        if (v27)
        {
          v75 = v177;
          if (v177 <= v59)
          {
            goto LABEL_84;
          }

          *(v185 + 16 * v40) = v63;
          if (v190 <= v59)
          {
            goto LABEL_86;
          }

          *(v182 + 16 * v40) = v18;
          if (v177 <= v58)
          {
            goto LABEL_87;
          }

          *(v180 + 16 * v40) = v71;
          if (v190 <= v58)
          {
            goto LABEL_88;
          }

          *(v179 + 16 * v40) = v19;
        }

        ++v40;
      }

      while (v38 != v40);
      v39 = v37 + v40;
      v35 = v195 + v40;
      v36 = v176 + 1;
      v37 = a2[1];
    }

    while (v176 < v37);
    v29 = *a2;
    v46 = &v198;
    v77 = v168;
    v76 = v169;
    if (!a2[1])
    {
      goto LABEL_71;
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = v29 * v37;
    v41 = v200;
    v82 = v169 + 1;
    v83 = v168 + v169;
    v84 = 8;
    do
    {
      if (!v29)
      {
        goto LABEL_70;
      }

      v85 = 0;
      v86 = v202;
      v87 = (v202 + v84);
      do
      {
        v42 = v79 + v85;
        if (v41 <= v79 + v85)
        {
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 789;
          v215 = 2048;
          v216 = v42;
          v217 = 2048;
          v218 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_160:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          LODWORD(v97) = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 789;
          v215 = 2048;
          v216 = v42;
          v217 = 2048;
          v218 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_161:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v211 = 136315906;
          v215 = 2048;
          v216 = (v97 + v37);
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_162:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v179;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_163:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v178;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_164:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v177;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_165:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v179;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_166:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v187;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_167:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v29;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_168:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v185;
          v217 = 2048;
          v218 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_169:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 789;
          v215 = 2048;
          v216 = v42;
          v217 = 2048;
          v218 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_170:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          v97 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 789;
          v215 = 2048;
          v216 = v42;
          v217 = 2048;
          v218 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_171:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v97 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_172:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v97 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_173:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v38 + v45;
          v217 = 2048;
          v218 = v196;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_174:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v97 + v45;
          v217 = 2048;
          v218 = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_175:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v38 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_176:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          v97 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v38 + v45;
          v217 = 2048;
          v218 = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_177:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          v166 = v136;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v97 + v45;
          v217 = 2048;
          v218 = v166;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_178:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v38 + v45;
          v217 = 2048;
          v218 = v197;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_179:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v37 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_180:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v37 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_181:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v195 + v45;
          v217 = 2048;
          v218 = v196;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_182:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v195 + v45;
          v217 = 2048;
          v218 = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_183:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v195 + v45;
          v217 = 2048;
          v218 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_184:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v37 + v45;
          v217 = 2048;
          v218 = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_185:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v195 + v45;
          v217 = 2048;
          v218 = v46;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_186:
          v210 = 0;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v219 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v211 = 136315906;
          v212 = "operator[]";
          v213 = 1024;
          v214 = 621;
          v215 = 2048;
          v216 = v37 + v45;
          v217 = 2048;
          v218 = v197;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v87 - 2) = v78 + v85;
        *(v87 - 1) = v78 + v85 + 1;
        *v87 = v76 + v85 + 2;
        v87[1] = v76 + v85 + 1;
        v42 = (v81 + v85);
        if (v41 <= v42)
        {
          goto LABEL_160;
        }

        v88 = (v86 + 16 * v42);
        *v88 = v77 + v85;
        v88[1] = v77 + v85 + 1;
        v88[2] = v83 + v85 + 2;
        v88[3] = v83 + v85++ + 1;
        v87 += 4;
      }

      while (v29 != v85);
      v81 += v85;
LABEL_70:
      ++v80;
      v79 += v29;
      v78 += v82;
      v84 += 16 * v29;
      v83 += v82;
      v77 += v82;
      v76 += v82;
    }

    while (v80 != v37);
LABEL_71:
    LODWORD(v38) = v29 + 1;
    v45 = (v38 + v38 * v37);
    v89 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexPosition");
    v41 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v89);
    v42 = v91;
    if (*(a2 + 17) == 1)
    {
      v92 = re::internal::GeomAttributeManager::attributeByName(v203, "vertexNormal");
      v93 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v92);
      v95 = v94;
      goto LABEL_76;
    }

LABEL_75:
    v93 = 0;
    v95 = 0xFFFFFFFFLL;
LABEL_76:
    v196 = v95;
    v96 = v45 + v38;
    v97 = (2 * v45);
    v184 = v45;
    v189 = v93;
    if (*(a2 + 16) == 1)
    {
      LODWORD(v195) = v45 + v38;
      v98 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexUV");
      v99 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v98);
      v100 = 0;
      v101 = 0;
      v40 = v102;
      v197 = 0xFFFFFFFFLL;
      if (a2[8] & 1) != 0 && (*(a2 + 17))
      {
        v188 = v99;
        v103 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexTangent");
        v104 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexBitangent");
        v105 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v103);
        v193 = v106;
        v107 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v104);
        v108 = v105;
        v99 = v188;
        v100 = v107;
        v197 = v109;
        v46 = v193;
        v101 = 1;
        goto LABEL_90;
      }

LABEL_89:
      v108 = v100;
      v46 = 0xFFFFFFFFLL;
LABEL_90:
      v93 = v189;
      v96 = v195;
    }

    else
    {
      v101 = 0;
      v99 = 0;
      v100 = 0;
      v108 = 0;
      v40 = 0xFFFFFFFFLL;
      v197 = 0xFFFFFFFFLL;
      v46 = 0xFFFFFFFFLL;
    }

    v45 = 0;
    v113 = v38;
    v38 = (v97 + v38);
    LODWORD(v185) = v113;
    v114 = (v113 * v37);
    if (v38 <= v42)
    {
      v115 = v42;
    }

    else
    {
      v115 = v38;
    }

    v195 = (2 * v96);
    if (v114 <= v42)
    {
      v116 = v42;
    }

    else
    {
      v116 = v114;
    }

    v186 = v42;
    v187 = v99;
    if (v97 <= v42)
    {
      v117 = v42;
    }

    else
    {
      v117 = v97;
    }

    v191 = v100 + 16 * v38;
    v194 = v108 + 16 * v38;
    v118 = v99 + 8 * v38;
    v119 = v93 + 16 * v38;
    v120 = (v41 + 16 * v38);
    v179 = v115;
    v181 = v108;
    v121 = v38 - v115;
    v183 = v100;
    v122 = v100 + 16 * v97;
    v123 = v108 + 16 * v97;
    v124 = v99 + 8 * v97;
    v177 = v117;
    v178 = v116;
    v125 = v97 - v117;
    v126 = v116 - v114;
    v127 = v93 + 16 * v97;
    v37 = 0xFFFFFFFFLL;
    v128 = (v41 + 16 * v97);
    v129 = (v41 + 16 * v114);
    v130 = v40;
    do
    {
      if (v97 + v37 >= v42)
      {
        goto LABEL_161;
      }

      if (!(v121 + v45))
      {
        goto LABEL_162;
      }

      LOWORD(v90) = *a2;
      *v120 = *(v41 + 16 * (v97 + v37));
      if (v126 == v45)
      {
        goto LABEL_163;
      }

      if (!(v125 + v45))
      {
        goto LABEL_164;
      }

      v131 = v38 + v45;
      v132 = v97 + v45;
      *v128 = *v129;
      if (*(a2 + 17) == 1)
      {
        v40 = v196;
        if (v196 <= v132)
        {
          goto LABEL_171;
        }

        v133 = (v127 + 16 * v45);
        *v133 = 0x3F80000000000000;
        v133[1] = 0;
        if (v196 <= v131)
        {
          goto LABEL_173;
        }

        v134 = (v119 + 16 * v45);
        *v134 = 0x3F80000000000000;
        v134[1] = 0;
        v40 = v130;
      }

      if (*(a2 + 16) == 1)
      {
        if (v40 <= v132)
        {
          goto LABEL_172;
        }

        *&v90 = v45 / v90;
        *(v124 + 8 * v45) = v90;
        if (v40 <= v131)
        {
          goto LABEL_175;
        }

        HIDWORD(v90) = 1.0;
        *(v118 + 8 * v45) = v90;
      }

      if (v101)
      {
        if (v46 <= v132)
        {
          goto LABEL_174;
        }

        *(v123 + 16 * v45) = xmmword_1E3047670;
        if (v46 <= v131)
        {
          goto LABEL_176;
        }

        *(v194 + 16 * v45) = xmmword_1E3047670;
        v135 = v197 > v132;
        v136 = v197;
        if (!v135)
        {
          goto LABEL_177;
        }

        *(v122 + 16 * v45) = xmmword_1E306DD20;
        if (v197 <= v131)
        {
          goto LABEL_178;
        }

        *(v191 + 16 * v45) = xmmword_1E306DD20;
      }

      ++v45;
      ++v120;
      ++v128;
      ++v129;
      --v37;
    }

    while (v29 + 1 != v45);
    v137 = 0;
    v45 = 0;
    v138 = (v41 + 16 * v184);
    if (v184 <= v42)
    {
      v139 = v42;
    }

    else
    {
      v139 = v184;
    }

    v179 = v139;
    v37 = (v195 + v185);
    if (v37 <= v42)
    {
      v140 = v42;
    }

    else
    {
      v140 = (v195 + v185);
    }

    if (v195 <= v42)
    {
      v141 = v42;
    }

    else
    {
      v141 = v195;
    }

    v142 = v187 + 8 * v195;
    v143 = (v41 + 16 * v195);
    v185 = v141;
    v144 = v195 - v141;
    v145 = v187 + 8 * v37;
    v187 = v140;
    v146 = v37 - v140;
    v147 = (v41 + 16 * v37);
    do
    {
      if (v139 - v184 == v45)
      {
        goto LABEL_165;
      }

      v38 = v146 + v45;
      if (!(v146 + v45))
      {
        goto LABEL_166;
      }

      LOWORD(v90) = *a2;
      *v147 = *v138;
      if (v29 >= v42)
      {
        goto LABEL_167;
      }

      v38 = v144 + v45;
      if (!(v144 + v45))
      {
        goto LABEL_168;
      }

      v38 = v195 + v45;
      v148 = v37 + v45;
      *v143 = *(v41 + 16 * (v29 + v137));
      if (*(a2 + 17) == 1)
      {
        v40 = v196;
        if (v196 <= v148)
        {
          goto LABEL_179;
        }

        v149 = (v189 + 16 * v37 + 16 * v45);
        *v149 = 0xBF80000000000000;
        v149[1] = 0;
        if (v196 <= v38)
        {
          goto LABEL_181;
        }

        v150 = (v189 + 16 * v195 + 16 * v45);
        *v150 = 0xBF80000000000000;
        v150[1] = 0;
        v40 = v130;
      }

      if (*(a2 + 16) == 1)
      {
        if (v40 <= v148)
        {
          goto LABEL_180;
        }

        *&v90 = v45 / v90;
        *(v145 + 8 * v45) = __PAIR64__(1.0, v90);
        if (v40 <= v38)
        {
          goto LABEL_183;
        }

        *(v142 + 8 * v45) = v90;
      }

      if (v101)
      {
        if (v46 <= v38)
        {
          goto LABEL_182;
        }

        *(v181 + 16 * v195 + 16 * v45) = xmmword_1E3047670;
        if (v46 <= v148)
        {
          goto LABEL_184;
        }

        v151 = v46;
        *(v181 + 16 * v37 + 16 * v45) = xmmword_1E3047670;
        v46 = v197;
        if (v197 <= v38)
        {
          goto LABEL_185;
        }

        v38 = v183 + 16 * v195;
        *(v38 + 16 * v45) = xmmword_1E30476A0;
        if (v197 <= v148)
        {
          goto LABEL_186;
        }

        *(v183 + 16 * v37 + 16 * v45) = xmmword_1E30476A0;
        v46 = v151;
      }

      ++v138;
      ++v45;
      ++v143;
      ++v147;
      --v137;
    }

    while (v29 + 1 != v45);
    v152 = *a2;
    v37 = &v198;
    if (*a2)
    {
      v153 = 0;
      v154 = 2 * v152 * a2[1];
      v41 = v200;
      v155 = v202;
      v156 = v29 + v97;
      do
      {
        v42 = (v154 + v153);
        if (v41 <= v42)
        {
          goto LABEL_169;
        }

        v157 = (v155 + 16 * v42);
        *v157 = v97 + v153;
        v157[1] = v97 + v153 + 1;
        v157[2] = v156 + v153 + 2;
        v157[3] = v156 + v153++ + 1;
      }

      while (v152 != v153);
      v158 = 0;
      v159 = v202;
      v160 = v97 + 2 * v29;
      v161 = v160 + v29;
      v162 = v154 + v153;
      do
      {
        v42 = (v162 + v158);
        if (v41 <= v42)
        {
          goto LABEL_170;
        }

        v163 = (v159 + 16 * v42);
        *v163 = v160 + v158 + 2;
        v163[1] = v160 + v158 + 3;
        v163[2] = v161 + v158 + 4;
        v163[3] = v161 + v158++ + 3;
      }

      while (v152 != v158);
    }

    v164 = re::GeomMesh::operator=(v167, &v198);
    if (*(a2 + 18) == 1)
    {
      re::internal::mergeVertexPositions(v164, v165);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v203, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v203, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v198);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v203);
  result = v199[0];
  if (v199[0])
  {
    if (v202)
    {
      return (*(*v199[0] + 40))(v199[0], v202);
    }
  }

  return result;
}

void re::buildTube(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v54 = *MEMORY[0x1E69E9840];
  if (*(a2 + 18) == 1)
  {
    v37 = *(a2 + 4);
    v36 = *a2;
    BYTE2(v37) = 0;
    re::buildTube(a1, &v36);
    return;
  }

  v4 = v44;
  re::GeomMesh::GeomMesh(&v36, 0);
  re::buildTube(&v36, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, 4uLL);
  v5 = v2[1];
  if (!v2[1] || (v6 = *v2, v6 < 3))
  {
    if (*(a1 + 16))
    {
      re::GeomMesh::copy(&v36, *(a1 + 32));
      v2 = *(a1 + 16);
      if (v2 > 1)
      {
        re::GeomMesh::copy(&v36, (*(a1 + 32) + 736));
        v2 = *(a1 + 16);
        if (v2 > 2)
        {
          re::GeomMesh::copy(&v36, (*(a1 + 32) + 1472));
          v2 = *(a1 + 16);
          if (v2 > 3)
          {
            re::GeomMesh::operator=((*(a1 + 32) + 2208), &v36);
            goto LABEL_32;
          }

LABEL_41:
          v33[0] = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v51[0] = 136315906;
          *(v4 + 52) = "operator[]";
          LOWORD(v51[3]) = 1024;
          *(v4 + 62) = 789;
          HIWORD(v51[4]) = 2048;
          *(v4 + 68) = 3;
          LOWORD(v51[7]) = 2048;
          *(v4 + 78) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_40:
        v33[0] = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v51[0] = 136315906;
        *(v4 + 52) = "operator[]";
        LOWORD(v51[3]) = 1024;
        *(v4 + 62) = 789;
        HIWORD(v51[4]) = 2048;
        *(v4 + 68) = 2;
        LOWORD(v51[7]) = 2048;
        *(v4 + 78) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      v33[0] = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51[0] = 136315906;
      *(v4 + 52) = "operator[]";
      LOWORD(v51[3]) = 1024;
      *(v4 + 62) = 789;
      HIWORD(v51[4]) = 2048;
      *(v4 + 68) = 1;
      LOWORD(v51[7]) = 2048;
      *(v4 + 78) = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    v33[0] = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51[0] = 136315906;
    *(v4 + 52) = "operator[]";
    LOWORD(v51[3]) = 1024;
    *(v4 + 62) = 789;
    HIWORD(v51[4]) = 2048;
    *(v4 + 68) = 0;
    LOWORD(v51[7]) = 2048;
    *(v4 + 78) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v35 = 0;
  v32 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v4 = v6 * v5;
  v28 = 0;
  re::DynamicArray<float>::resize(v26, v4);
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v8;
    v12 = v9;
    v13 = v27;
    v14 = v29;
    do
    {
      if (v13 == v10)
      {
        *v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v51[0] = 136315906;
        *&v51[1] = "operator[]";
        LOWORD(v51[3]) = 1024;
        *(&v51[3] + 2) = 789;
        HIWORD(v51[4]) = 2048;
        *&v51[5] = v13;
        LOWORD(v51[7]) = 2048;
        *(&v51[7] + 2) = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_35;
      }

      v14[v10] = v8 + v10;
      ++v10;
    }

    while (v4 != v10);
    v24 = v14;
    v25 = v13;
    v22 = 0;
    v23 = 0;
    re::makeMeshFromFaces(&v36, &v24, &v22, v33, v30, &v39);
    v13 = *(a1 + 16);
    if (v13 <= v7)
    {
      goto LABEL_36;
    }

    v13 = v11 + v10;
    re::GeomMesh::operator=((*(a1 + 32) + 736 * v7), &v39);
    re::GeomMesh::~GeomMesh(&v39);
    v9 = 0;
    v8 = (v11 + v10);
    v7 = 1;
  }

  while ((v12 & 1) != 0);
  v15 = *v2;
  re::DynamicArray<float>::resize(v26, v15);
  v16 = 0;
  v7 = (v11 + v10);
  v4 = 2;
  do
  {
    v17 = v16;
    v11 = v27;
    if (v15)
    {
      v18 = v29;
      v19 = v27;
      v20 = v15;
      v21 = v7;
      while (v19)
      {
        v7 = (v21 + 1);
        *v18++ = v21;
        --v19;
        ++v21;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

LABEL_35:
      *v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v51[0] = 136315906;
      *&v51[1] = "operator[]";
      LOWORD(v51[3]) = 1024;
      *(&v51[3] + 2) = 789;
      HIWORD(v51[4]) = 2048;
      *&v51[5] = v11;
      LOWORD(v51[7]) = 2048;
      *(&v51[7] + 2) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v38 = 0;
      v52 = 0u;
      v53 = 0u;
      memset(v51, 0, sizeof(v51));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 789;
      v47 = 2048;
      v48 = v7;
      v49 = 2048;
      v50 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v38 = 0;
      v2 = v44;
      v52 = 0u;
      v53 = 0u;
      memset(v51, 0, sizeof(v51));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 789;
      v47 = 2048;
      v48 = v4;
      v49 = 2048;
      v50 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_38;
    }

LABEL_16:
    v24 = v29;
    v25 = v11;
    v22 = 0;
    v23 = 0;
    re::makeMeshFromFaces(&v36, &v24, &v22, v33, v30, &v39);
    v13 = *(a1 + 16);
    if (v13 <= v4)
    {
      goto LABEL_37;
    }

    re::GeomMesh::operator=((*(a1 + 32) + 736 * v4), &v39);
    re::GeomMesh::~GeomMesh(&v39);
    v16 = 1;
    v4 = 3;
  }

  while ((v17 & 1) == 0);
  if (v26[0] && v29)
  {
    (*(*v26[0] + 40))();
  }

  if (v30[0] && v32)
  {
    (*(*v30[0] + 40))();
  }

  if (v33[0])
  {
    if (v35)
    {
      (*(*v33[0] + 40))();
    }
  }

LABEL_32:
  re::GeomMesh::~GeomMesh(&v36);
}

uint64_t re::internal::isPointInsidePolygon(simd_float2 *a1, simd_float2 **a2)
{
  v3 = a2[1];
  v4 = (v3 - 1);
  if (v3)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 12;
    while (1)
    {
      v11 = a2[1];
      if (v11 <= v8)
      {
        break;
      }

      v2 = v8 + 1;
      if (v11 <= v8 + 1)
      {
        goto LABEL_28;
      }

      v12 = *a2;
      v13 = &(*a2)[v8];
      v14 = (*a2 + v10);
      v15 = a1->f32[1];
      v16 = *v14;
      if (*(v14 - 2) <= v15)
      {
        if (v16 > v15 && _simd_orient_pf2(v12[v8], v13[1], *a1) > 0.0)
        {
          ++v9;
        }
      }

      else if (v16 <= v15)
      {
        v9 = (__PAIR64__(v9, 0.0) - COERCE_UNSIGNED_INT(_simd_orient_pf2(v13[1], v12[v8], *a1))) >> 32;
      }

      v10 += 8;
      v8 = v2;
      if (v4 == v2)
      {
        v17 = a2[1];
        if (v17)
        {
          v18 = **a2;
          v19 = vmvn_s8(vceq_f32((*a2)[v17 - 1], v18));
          if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
          {
            return v9 != 0;
          }

          if (v17 > v4)
          {
            v21 = &(*a2)[v4];
            v22 = a1->f32[1];
            if (v21->f32[1] <= v22)
            {
              if (v18.f32[1] > v22 && _simd_orient_pf2(*v21, **a2, *a1) > 0.0)
              {
                ++v9;
              }
            }

            else if (v18.f32[1] <= v22)
            {
              v9 = (__PAIR64__(v9, 0.0) - COERCE_UNSIGNED_INT(_simd_orient_pf2(**a2, *v21, *a1))) >> 32;
            }

            return v9 != 0;
          }

LABEL_30:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v17);
          result = _os_crash();
          __break(1u);
          return result;
        }

LABEL_29:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
        _os_crash();
        __break(1u);
        goto LABEL_30;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v11);
    _os_crash();
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v11);
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  return v9 != 0;
}

uint64_t re::internal::triangulatePolygonWithHoles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6)
{
  *&v64 = a3;
  *(&v64 + 1) = a4;
  v125 = *MEMORY[0x1E69E9840];
  v77 = 0uLL;
  v9 = *a5;
  v10 = vabsq_f32(*a5);
  v11 = 2;
  if (v10.f32[1] <= v10.f32[2])
  {
    v11 = 1;
  }

  if (v10.f32[0] <= v10.f32[2] && v10.f32[0] <= v10.f32[1])
  {
    v11 = 0;
  }

  *(&v77 | (4 * v11)) = 1065353216;
  v13 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), vnegq_f32(v9)), v77, v13);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v67 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v18 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v67)), v9, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
  v66 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v77 = v66;
  v70[0] = 0;
  v70[1] = 0;
  v72 = 0;
  v71 = 0;
  v76 = 0;
  v73 = 0u;
  v74 = 0u;
  v75 = 0;
  if (a2)
  {
    v20 = 0;
    v21 = v70;
    v22 = a1 - 4;
    while (1)
    {
      if (v20)
      {
        v23 = *(v22 + 4 * v20);
      }

      else
      {
        v23 = 0;
      }

      v24 = DWORD2(v74);
      if (*(&v74 + 1))
      {
        v24 = v76[*(&v74 + 1) - 1];
      }

      v25 = *(a1 + 4 * v20);
      LODWORD(v80) = v24;
      v26 = v25 - v23;
      if (v25 > v23)
      {
        break;
      }

LABEL_22:
      re::DynamicArray<int>::add(&v73 + 1, &v80);
      if (++v20 == a2)
      {
        v31 = v71;
        v32 = *(&v74 + 1);
        goto LABEL_25;
      }
    }

    if (*(&v64 + 1) <= v23)
    {
      v7 = v23;
    }

    else
    {
      v7 = *(&v64 + 1);
    }

    v8 = v24 + 1;
    v27 = (v64 + 16 * v23);
    v6 = v7 - v23;
    while (v6)
    {
      v28 = *v27++;
      v29 = vmulq_f32(v66, v28);
      v30 = vmulq_f32(v67, v28);
      *v104 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
      re::DynamicArray<unsigned long>::add(v70, v104);
      LODWORD(v80) = v8;
      v8 = (v8 + 1);
      --v6;
      if (!--v26)
      {
        goto LABEL_22;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, *(&v64 + 1));
    _os_crash();
    __break(1u);
LABEL_114:
    v68[0] = 0;
    v123 = 0u;
    v124 = 0u;
    memset(v122, 0, sizeof(v122));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    v116 = 1024;
    v117 = 797;
    v118 = 2048;
    v119 = v27;
    v120 = 2048;
    v121 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    __src[0] = 0;
    v123 = 0u;
    v124 = 0u;
    memset(v122, 0, sizeof(v122));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    v116 = 1024;
    v117 = 797;
    v118 = 2048;
    v119 = v21;
    v120 = 2048;
    v121 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    __src[0] = 0;
    v123 = 0u;
    v124 = 0u;
    memset(v122, 0, sizeof(v122));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    v116 = 1024;
    v117 = 797;
    v118 = 2048;
    v119 = v6;
    v120 = 2048;
    v121 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_117;
  }

  v32 = 0;
  v31 = 0;
LABEL_25:
  v99 = 0;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v97 = 0;
  v98 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v80 = 0;
  v81 = 0;
  LOBYTE(v83) = 0;
  v82 = 0;
  v84 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v85 = xmmword_1E30A0CA0;
  v86 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *v87 = 0u;
  *v88 = 0u;
  v89 = 0u;
  v104[0] = 0;
  memset(&v104[8], 0, 152);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v105 = 1065353216;
  v111 = 1065353216;
  v112 = 0u;
  memset(v113, 0, sizeof(v113));
  v114 = 1065353216;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v104, &v88[1]);
  std::vector<geo::math::Matrix<double,3,1>>::resize(&v93, v31);
  std::vector<std::vector<unsigned long>>::reserve(&v90, v32);
  if (v32)
  {
    v21 = 0;
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFF8;
    while (1)
    {
      v20 = *(&v74 + 1);
      if (v7)
      {
        v6 = (v7 - 1);
        if (*(&v74 + 1) <= v6)
        {
          goto LABEL_116;
        }

        v6 = v76[v6];
      }

      else
      {
        v6 = 0;
      }

      if (*(&v74 + 1) <= v21)
      {
        goto LABEL_115;
      }

      v21 = v76[v21];
      __src[0] = 0;
      __src[1] = 0;
      v79 = 0;
      std::vector<unsigned long>::reserve(__src, (v21 - v6));
      if (v21 > v6)
      {
        break;
      }

LABEL_48:
      std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&v90, __src);
      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      v21 = (v7 + 1);
      v7 = v21;
      if (v32 <= v21)
      {
        goto LABEL_51;
      }
    }

    v27 = v6;
    v20 = 24 * v6;
    while (1)
    {
      v6 = v71;
      if (v71 <= v27)
      {
        goto LABEL_114;
      }

      v33 = v93 + v20;
      *v33 = vcvtq_f64_f32(*(v73 + 8 * v27));
      *(v33 + 2) = 0;
      v34 = __src[1];
      if (__src[1] >= v79)
      {
        v35 = __src[0];
        v36 = __src[1] - __src[0];
        v37 = (__src[1] - __src[0]) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          goto LABEL_125;
        }

        v39 = v79 - __src[0];
        if ((v79 - __src[0]) >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(__src, v40);
        }

        *(8 * v37) = v27;
        v6 = 8 * v37 + 8;
        memcpy(0, v35, v36);
        v41 = __src[0];
        __src[0] = 0;
        __src[1] = v6;
        v79 = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *__src[1] = v27;
        v6 = v34 + 8;
      }

      __src[1] = v6;
      v27 = (v27 + 1);
      v20 += 24;
      if (v21 == v27)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_51:
  v104[0] = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v104, &v93);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v104);
  std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v113 + 1, v90, v91, 0xAAAAAAAAAAAAAAABLL * (v91 - v90));
  if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(v104) && geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(v104) && geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(v104, 0))
  {
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(v104, &v99, &__p);
    v21 = __p;
    v42 = v97;
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v97 - __p) >> 2);
    __src[1] = 0;
    v79 = 0;
    __src[0] = 0;
    std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(__src, v43);
    if (v42 != v21)
    {
      v44 = *(&v74 + 1);
      if (*(&v74 + 1))
      {
        v45 = 0;
        if (v43 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v43;
        }

        v47 = *(&v74 + 1) - 1;
        __asm { FMOV            V8.2S, #3.0 }

        do
        {
          v53 = (__p + 12 * v45);
          v8 = *v53;
          v20 = v71;
          if (v71 <= v8)
          {
            goto LABEL_121;
          }

          v7 = *(v53 + 1);
          if (v71 <= v7)
          {
            goto LABEL_122;
          }

          v21 = *(v53 + 2);
          if (v71 <= v21)
          {
            goto LABEL_123;
          }

          v102 = vdiv_f32(vadd_f32(vadd_f32(*(v73 + 8 * v8), *(v73 + 8 * v7)), *(v73 + 8 * v21)), _D8);
          if (!*(&v74 + 1))
          {
            goto LABEL_124;
          }

          v54 = *v76;
          *&v122[0] = v73;
          *(&v122[0] + 1) = v54;
          if (re::internal::isPointInsidePolygon(&v102, v122))
          {
            if (v44 >= 2)
            {
              v20 = 0;
              while (1)
              {
                v8 = *(&v74 + 1);
                if (*(&v74 + 1) <= v20)
                {
                  break;
                }

                if (*(&v74 + 1) <= v20 + 1)
                {
                  goto LABEL_118;
                }

                v6 = v71;
                v21 = v76[v20];
                if (v71 <= v21)
                {
                  goto LABEL_119;
                }

                v55 = v76[v20 + 1] - v21;
                *&v122[0] = v73 + 8 * v21;
                *(&v122[0] + 1) = v55;
                if (re::internal::isPointInsidePolygon(&v102, v122))
                {
                  goto LABEL_73;
                }

                if (v47 == ++v20)
                {
                  goto LABEL_72;
                }
              }

LABEL_117:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = v20;
              v120 = 2048;
              v121 = v8;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = (v20 + 1);
              v120 = 2048;
              v121 = v8;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_119:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = v21;
              v120 = 2048;
              v121 = v6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_120:
              *v115 = 0;
              memset(v104, 0, 80);
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v122[0]) = 136315906;
              *(v122 + 4) = "operator[]";
              WORD6(v122[0]) = 1024;
              *(v122 + 14) = 789;
              WORD1(v122[1]) = 2048;
              *(&v122[1] + 4) = v20;
              WORD6(v122[1]) = 2048;
              *(&v122[1] + 14) = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_121:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = v8;
              v120 = 2048;
              v121 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_122:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = v7;
              v120 = 2048;
              v121 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_123:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = v21;
              v120 = 2048;
              v121 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_124:
              v103 = 0;
              v123 = 0u;
              v124 = 0u;
              memset(v122, 0, sizeof(v122));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v115 = 136315906;
              *&v115[4] = "operator[]";
              v116 = 1024;
              v117 = 797;
              v118 = 2048;
              v119 = 0;
              v120 = 2048;
              v121 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_125:
              std::string::__throw_length_error[abi:nn200100]();
            }

LABEL_72:
            std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](__src, v53);
          }

LABEL_73:
          ++v45;
        }

        while (v45 != v46);
      }
    }

    if (__p)
    {
      v97 = __p;
      operator delete(__p);
    }

    *v68 = *__src;
    v69 = v79;
    p_p = &__p;
  }

  else
  {
    p_p = v68;
  }

  *p_p = 0;
  p_p[1] = 0;
  p_p[2] = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(v104);
  if (v88[1])
  {
    *&v89 = v88[1];
    operator delete(v88[1]);
  }

  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  *v104 = &v90;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v104);
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  v58 = v68[0];
  v57 = v68[1];
  v59 = v68[1] - v68[0];
  if (v68[1] == v68[0])
  {
    if (a2 == 1)
    {
      v84.i64[0] = 0;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      v83 = 0;
      v21 = *(&v64 + 1);
      re::DynamicArray<float>::resize(&v80, *(&v64 + 1));
      v20 = v82;
      if (DWORD2(v64))
      {
        v60 = 0;
        v61 = v84.i64[0];
        while (v20 != v60)
        {
          *(v61 + 4 * v60) = v60;
          if (DWORD2(v64) == ++v60)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_120;
      }

LABEL_100:
      *v104 = v64;
      *&v122[0] = v84.i64[0];
      *(&v122[0] + 1) = v20;
      re::triangulatePolygon(v104, v122, a6);
      if (v80 && v84.i64[0])
      {
        (*(*v80 + 40))();
      }
    }
  }

  else
  {
    *(a6 + 16) = 0;
    ++*(a6 + 24);
    if (*(a6 + 8) < (v59 >> 2))
    {
      re::DynamicArray<int>::setCapacity(a6, v59 >> 2);
    }

    do
    {
      re::DynamicArray<int>::add(a6, v58);
      re::DynamicArray<int>::add(a6, v58 + 1);
      re::DynamicArray<int>::add(a6, v58 + 2);
      v58 += 3;
    }

    while (v58 != v57);
    v58 = v68[0];
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (*(&v73 + 1))
  {
    if (v76)
    {
      (*(**(&v73 + 1) + 40))();
    }

    v76 = 0;
    v74 = 0uLL;
    *(&v73 + 1) = 0;
    ++v75;
  }

  if (v70[0] && v73)
  {
    (*(*v70[0] + 40))();
  }

  return 1;
}

void std::vector<geo::math::Matrix<double,3,1>>::resize(uint64_t a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__append(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + 24 * a2;
  }
}

void *std::vector<std::vector<unsigned long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(void *a1, char **a2)
{
  v3 = (a1 + 1);
  if (v3 != a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::vector<std::vector<unsigned long>>::resize(a1 + 35, 1uLL);
  std::vector<unsigned long>::resize(a1[35], 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3));
  v4 = a1[35];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = (v6 - v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v11 = xmmword_1E3049620;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v13.i8[0])
      {
        *(v5 + 8 * v7) = v7;
      }

      if (v13.i8[4])
      {
        *(v5 + 8 * v7 + 8) = v7 + 1;
      }

      v7 += 2;
      v11 = vaddq_s64(v11, v12);
    }

    while (v10 != v7);
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 32);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 35);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 38);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 41);

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this + 44);
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = (this + 8);
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
  if (v5 > 1)
  {
    v70 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    if (*this)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Start computing Delaunay triangulation ... \n", 44);
      v3 = *(this + 1);
      v4 = *(this + 2);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    }

    std::vector<unsigned int>::resize((this + 32), v5);
    v6 = *(this + 4);
    v7 = *(this + 5);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = (v7 - v6 - 4) >> 2;
      v10 = vdupq_n_s64(v9);
      v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v12 = v6 + 2;
      do
      {
        v13 = vdupq_n_s64(v8);
        v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1E3049620)));
        if (vuzp1_s16(v14, *v10.i8).u8[0])
        {
          *(v12 - 2) = v8;
        }

        if (vuzp1_s16(v14, *&v10).i8[2])
        {
          *(v12 - 1) = v8 + 1;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1E3049640)))).i32[1])
        {
          *v12 = v8 + 2;
          v12[1] = v8 + 3;
        }

        v8 += 4;
        v12 += 4;
      }

      while (v11 != v8);
    }

    v15 = 126 - 2 * __clz(v7 - v6);
    *__x = this;
    if (v7 == v6)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v6, v7, __x, v16, 1);
    v18 = *(this + 1);
    v19 = *(this + 2);
    v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
    *__x = geo::math::less<double,3,1>;
    if (v19 == v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(v18, v19, __x, v21, 1, v17);
    if (v5 >= 2)
    {
      v22 = 0;
      for (i = 1; i != v5; ++i)
      {
        v24 = *v2 + v22;
        v26 = *(v24 + 24);
        v25 = v24 + 24;
        if (v26 == *(*v2 + v22) && *(*v2 + v22 + 32) == *(*v2 + v22 + 8))
        {
          v27 = *(*(this + 4) + 4 * i);
          *__x = *v25;
          v73 = *(v25 + 16);
          v28 = *(this + 14);
          v29 = *(this + 15);
          if (v28 >= v29)
          {
            v31 = *(this + 13);
            v32 = (v28 - v31) >> 5;
            v33 = v32 + 1;
            if ((v32 + 1) >> 59)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v34 = v29 - v31;
            if (v34 >> 4 > v33)
            {
              v33 = v34 >> 4;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFE0)
            {
              v35 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>>(this + 104, v35);
            }

            v36 = 32 * v32;
            *v36 = v27;
            *(v36 + 8) = *__x;
            *(v36 + 24) = v73;
            v30 = 32 * v32 + 32;
            v37 = *(this + 13);
            v38 = *(this + 14) - v37;
            v39 = v36 - v38;
            memcpy((v36 - v38), v37, v38);
            v40 = *(this + 13);
            *(this + 13) = v39;
            *(this + 14) = v30;
            *(this + 15) = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            *v28 = v27;
            *(v28 + 8) = *__x;
            *(v28 + 24) = v73;
            v30 = v28 + 32;
          }

          *(this + 14) = v30;
        }

        v22 += 24;
      }
    }

    std::vector<unsigned int>::resize((this + 56), v5, &geo::math::kInvalidIndex);
    if (v4 != v3)
    {
      v41 = 0;
      v42 = *(this + 4);
      v43 = *(this + 7);
      do
      {
        *(v43 + 4 * *(v42 + 4 * v41)) = v41;
        ++v41;
      }

      while (v5 > v41);
    }

    memset(&v71, 0, sizeof(v71));
    __x[0] = 0;
    std::vector<unsigned int>::resize(&v71, v5, __x);
    if (v5 < 2)
    {
      v51 = 1;
    }

    else
    {
      v44 = 0;
      for (j = 1; j < v5; j = (j + 1))
      {
        v46 = *v2 + 24 * j;
        v47 = (*v2 + 24 * v44);
        if (*v46 != *v47 || *(v46 + 8) != v47[1])
        {
          v48 = v44 + 1;
          v44 = j;
          if (j != v48)
          {
            v49 = *v2 + 24 * v48;
            v50 = *v46;
            *(v49 + 16) = *(v46 + 16);
            *v49 = v50;
            *(*(this + 4) + 4 * v48) = *(*(this + 4) + 4 * j);
            v44 = v48;
          }
        }

        v71.__begin_[j] = v44;
      }

      v51 = v44 + 1;
    }

    if (v5 == v51)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
      if (!v5)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v55 = v51;
      std::vector<unsigned int>::resize((this + 80), v5);
      v56 = *(this + 7);
      if (v4 != v3)
      {
        begin = v71.__begin_;
        v58 = *(this + 10);
        if (v5 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v5;
        }

        v60 = *(this + 7);
        do
        {
          v61 = *v60++;
          *v58++ = begin[v61];
          --v59;
        }

        while (v59);
      }

      *(this + 8) = v56;
      std::vector<unsigned int>::resize((this + 56), v5, &geo::math::kInvalidIndex);
      std::vector<geo::math::Matrix<double,3,1>>::resize(v2, v55);
      std::vector<unsigned int>::resize((this + 32), v55);
      if (!v55)
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
        v5 = 0;
LABEL_68:
        std::vector<std::vector<unsigned long>>::resize(this + 21, v5);
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(this, 0, v5 - 1, __x);
        if (*this)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Finish computing Delaunay triangulation ... \n", 45);
        }

        v5 = v70;
        if (v71.__begin_)
        {
          v71.__end_ = v71.__begin_;
          operator delete(v71.__begin_);
        }

        return v5 > 1;
      }

      v62 = 0;
      v63 = *(this + 4);
      v64 = *(this + 7);
      do
      {
        *(v64 + 4 * *(v63 + 4 * v62)) = v62;
        ++v62;
      }

      while (v55 != v62);
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
      v5 = v55;
    }

    v65 = 0;
    for (k = 0; k != v5; ++k)
    {
      v67 = *v2 + v65;
      v68 = *(v67 + 16);
      *__x = *v67;
      v73 = v68;
      v74 = k;
      std::__hash_table<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::__unordered_map_hasher<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,std::equal_to<geo::math::Matrix<double,3,1>>,true>,std::__unordered_map_equal<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::equal_to<geo::math::Matrix<double,3,1>>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,true>,std::allocator<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>>>::__emplace_unique_key_args<geo::math::Matrix<double,3,1>,std::pair<geo::math::Matrix<double,3,1>,unsigned long>>(this + 16, __x);
      v65 += 24;
    }

    goto LABEL_68;
  }

  if (*this)
  {
    v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Only has ", 9);
    v53 = MEMORY[0x1E69060F0](v52, 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " input points, not enough to be triangulated!", 45);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, " Quitting!\n", 11);
  }

  return v5 > 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 32, this + 38);
  if (result)
  {

    return geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 35, this + 41);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, char a2)
{
  if (*this == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Start computing constrained Delaunay triangulation ... \n", 56);
  }

  v4 = *(this + 39) - *(this + 38);
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 1;
    do
    {
      v9 = *(*(this + 38) + 24 * v5 + 8) - *(*(this + 38) + 24 * v5);
      if (v9)
      {
        v10 = 0;
        v11 = v9 >> 3;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        do
        {
          v13 = (*(*(this + 38) + 24 * v5) + 8 * v10);
          v8 &= geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v13, v13[1]);
          ++v10;
        }

        while (v12 != v10);
      }

      ++v5;
    }

    while (v5 != v7);
  }

  else
  {
    v8 = 1;
  }

  v14 = *(this + 42) - *(this + 41);
  if (v14)
  {
    v15 = 0;
    v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    do
    {
      v18 = *(*(this + 41) + 24 * v15 + 8) - *(*(this + 41) + 24 * v15);
      if (v18)
      {
        v19 = 0;
        v20 = v18 >> 3;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          v22 = (*(*(this + 41) + 24 * v15) + 8 * v19);
          v8 &= geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v22, v22[1]);
          ++v19;
        }

        while (v21 != v19);
      }

      ++v15;
    }

    while (v15 != v17);
  }

  if (a2)
  {
    v23 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 38);
    LOBYTE(v8) = v23 & geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 41) & v8;
  }

  if (*this == 1)
  {
    if (v8)
    {
      v24 = "Finish computing constrained Delaunay triangulation ... \n";
    }

    else
    {
      v24 = "Failed computing constrained Delaunay triangulation ... \n";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v24, 57);
  }

  return v8 & 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, void *a2, char **a3)
{
  v4 = *(a1 + 21);
  v5 = *(a1 + 22) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    do
    {
      if (*(v4 + 24 * v6 + 8) - *(v4 + 24 * v6) >= 5uLL)
      {
        v9 = *(v4 + 24 * v6);
        v10 = *(v4 + 24 * v6 + 8);
        if (v10 != v9)
        {
          v11 = 0;
          v12 = (v10 - v9) >> 2;
          v13 = v6 << 32;
          do
          {
            v14 = *(v9 + 4 * v11);
            if (v10 == v9)
            {
              v17 = 0;
            }

            else
            {
              v15 = 0;
              v16 = 0;
              while (*(v9 + 4 * v15) != v14)
              {
                v15 = ++v16;
                if (v12 <= v16)
                {
                  v16 = -1;
                  break;
                }
              }

              v17 = v16 + 1;
            }

            v18 = *(v9 + 4 * (v17 % v12));
            v19 = *(a1 + 1);
            v20 = (v19 + 24 * v6);
            if ((*(v19 + 24 * v14) - *v20) * (*(v19 + 24 * v18 + 8) - v20[1]) - (*(v19 + 24 * v14 + 8) - v20[1]) * (*(v19 + 24 * v18) - *v20) > 0.0)
            {
              v21 = (v4 + 24 * v18);
              v22 = *v21;
              v23 = v21[1] - *v21;
              if (v23)
              {
                v24 = 0;
                v25 = v14;
                v26 = v23 >> 2;
                v27 = 1;
                while (*(v22 + 4 * v24) != v14)
                {
                  v24 = v27;
                  if (v26 <= v27++)
                  {
                    goto LABEL_97;
                  }
                }

                if (v27)
                {
                  if (v7 >= v14 || v7 >= v18)
                  {
                    if (v14 >= v7 || v14 >= v18)
                    {
                      LODWORD(v80) = v18;
                      v29 = v7;
                    }

                    else
                    {
                      LODWORD(v80) = v14;
                      v29 = v18;
                      v25 = v7;
                    }
                  }

                  else
                  {
                    LODWORD(v80) = v7;
                    v29 = v14;
                    v25 = v18;
                  }

                  HIDWORD(v80) = v29;
                  v81 = v25;
                  v30 = v13 | v14;
                  v31 = __ROR8__(v13 | v14, 32);
                  if (v7 < v14)
                  {
                    v30 = v31;
                  }

                  v79 = v30;
                  if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79))
                  {
                    goto LABEL_82;
                  }

                  v32 = v18 | (v14 << 32);
                  v33 = __ROR8__(v32, 32);
                  if (v14 < v18)
                  {
                    v32 = v33;
                  }

                  v79 = v32;
                  if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79))
                  {
                    goto LABEL_82;
                  }

                  v34 = v13 | v18;
                  v35 = __ROR8__(v13 | v18, 32);
                  if (v7 < v18)
                  {
                    v34 = v35;
                  }

                  v79 = v34;
                  if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(a1 + 44, &v79) && (v36 = *(a1 + 41), (v37 = *(a1 + 42) - v36) != 0))
                  {
                    v38 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
                    if (v38 <= 1)
                    {
                      v38 = 1;
                    }

                    v39 = (v36 + 8);
                    while (1)
                    {
                      v40 = *(v39 - 1);
                      if (*v39 - v40 == 24)
                      {
                        v41 = *v40;
                        v42 = *v40 == v18 || v41 == v7;
                        if (v42 || v41 == v14)
                        {
                          v44 = v40[2];
                          v45 = v44 == v18 || v44 == v7;
                          if (v45 || v44 == v14)
                          {
                            v47 = v40[4];
                            v48 = v47 == v18 || v47 == v7;
                            if (v48 || v47 == v14)
                            {
                              if (v41 >= v44 || v41 >= v47)
                              {
                                if (v44 >= v41 || v44 >= v47)
                                {
                                  LODWORD(v79) = v47;
                                  v52 = v41;
                                  v47 = v44;
                                }

                                else
                                {
                                  LODWORD(v79) = v44;
                                  v52 = v47;
                                  v47 = v41;
                                }
                              }

                              else
                              {
                                LODWORD(v79) = v41;
                                v52 = v44;
                              }

                              HIDWORD(v79) = v52;
                              if (v80 != v79 || v81 != v47)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      v39 += 3;
                      if (!--v38)
                      {
                        goto LABEL_82;
                      }
                    }
                  }

                  else
                  {
LABEL_82:
                    if (!std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(a1 + 27, &v80))
                    {
                      std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(a1 + 27, &v80);
                      v55 = *(a1 + 25);
                      v54 = *(a1 + 26);
                      if (v55 >= v54)
                      {
                        v58 = *(a1 + 24);
                        v59 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v58) >> 2);
                        v60 = v59 + 1;
                        if (v59 + 1 > 0x1555555555555555)
                        {
                          std::string::__throw_length_error[abi:nn200100]();
                        }

                        v61 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v58) >> 2);
                        if (2 * v61 > v60)
                        {
                          v60 = 2 * v61;
                        }

                        if (v61 >= 0xAAAAAAAAAAAAAAALL)
                        {
                          v62 = 0x1555555555555555;
                        }

                        else
                        {
                          v62 = v60;
                        }

                        if (v62)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1 + 192, v62);
                        }

                        v63 = 12 * v59;
                        v64 = v80;
                        *(v63 + 8) = v81;
                        *v63 = v64;
                        v57 = 12 * v59 + 12;
                        v65 = *(a1 + 24);
                        v66 = *(a1 + 25) - v65;
                        v67 = v63 - v66;
                        memcpy((v63 - v66), v65, v66);
                        v68 = *(a1 + 24);
                        *(a1 + 24) = v67;
                        *(a1 + 25) = v57;
                        *(a1 + 26) = 0;
                        if (v68)
                        {
                          operator delete(v68);
                        }
                      }

                      else
                      {
                        v56 = v80;
                        *(v55 + 8) = v81;
                        *v55 = v56;
                        v57 = v55 + 12;
                      }

                      *(a1 + 25) = v57;
                    }
                  }

                  v4 = *(a1 + 21);
                }
              }
            }

LABEL_97:
            ++v11;
            v9 = *(v4 + 24 * v6);
            v10 = *(v4 + 24 * v6 + 8);
            v12 = (v10 - v9) >> 2;
          }

          while (v11 < v12);
        }
      }

      v6 = ++v7;
    }

    while (v8 > v7);
  }

  if (*a1)
  {
    v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "The generated mesh contains ", 28);
    v70 = MEMORY[0x1E69060F0](v69, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - *(a1 + 1)) >> 3));
    v71 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v70, " vertices, ", 11);
    EdgeCount = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(a1);
    v73 = MEMORY[0x1E69060F0](v71, EdgeCount);
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, " edges, and ", 12);
    v75 = MEMORY[0x1E69060F0](v74, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 25) - *(a1 + 24)) >> 2));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, " triangles.\n", 12);
  }

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(a1, a2, a3);
}

void std::vector<geo::math::Matrix<double,3,1>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    a1[1] = &v5[24 * (24 * a2 / 0x18)];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + a2;
    if (v8 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v10);
    }

    v11 = 8 * (v7 >> 3) + 24 * (24 * a2 / 0x18);
    v12 = (8 * (v7 >> 3) - v7);
    memcpy(v12, v6, v7);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<unsigned long>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void *std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<std::vector<unsigned long>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<unsigned long>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<unsigned long>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

void std::vector<std::vector<unsigned long>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t geo::math::less<double,3,1>(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 > *a2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v3 == 2)
    {
      break;
    }

    v5 = a1[v3 + 1];
    v6 = a2[v3 + 1];
    if (v5 < v6)
    {
      LOBYTE(v3) = 1;
      return (v4 < 2) & v3;
    }

    ++v3;
    if (v5 > v6)
    {
      LOBYTE(v3) = 0;
      return (v4 < 2) & v3;
    }
  }

  return (v4 < 2) & v3;
}

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = (this + 280);
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 36) - *(this + 35)) >> 3));
  v3 = *(this + 35);
  v4 = *(this + 36);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 24 * v5);
      if (*(v3 + 24 * v5 + 8) != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(v6 + v7);
          v10 = *(this + 7);
          if (v9 >= (*(this + 8) - v10) >> 2)
          {
            v11 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = *(v10 + 4 * v9);
          }

          if (v11 < (*(this + 5) - *(this + 4)) >> 2)
          {
            std::vector<unsigned long>::push_back[abi:nn200100](&v27[3 * v5], (v6 + v7));
            v3 = *v2;
          }

          ++v8;
          v6 = *(v3 + 24 * v5);
          v7 += 8;
        }

        while (v8 < (*(v3 + 24 * v5 + 8) - v6) >> 3);
        v4 = *(this + 36);
      }

      ++v5;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  if (v2 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v2, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  v13 = v27;
  v12 = v28;
  if (v28 != v27)
  {
    v14 = v28;
    do
    {
      v16 = *(v14 - 3);
      v14 -= 3;
      v15 = v16;
      if (v16)
      {
        *(v12 - 2) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
  }

  v28 = v13;
  v17 = (this + 256);
  std::vector<std::vector<unsigned long>>::resize(&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 33) - *(this + 32)) >> 3));
  v18 = *(this + 32);
  v19 = *(this + 33);
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[3 * v20];
      if (v18[3 * v20 + 1] != v21)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *&v21[v22];
          v25 = *(this + 7);
          if (v24 >= (*(this + 8) - v25) >> 2)
          {
            v26 = 0xFFFFFFFFLL;
          }

          else
          {
            v26 = *(v25 + 4 * v24);
          }

          if (v26 < (*(this + 5) - *(this + 4)) >> 2)
          {
            std::vector<unsigned long>::push_back[abi:nn200100](&v27[3 * v20], &v21[v22]);
            v18 = *v17;
          }

          ++v23;
          v21 = v18[3 * v20];
          v22 += 8;
        }

        while (v23 < (v18[3 * v20 + 1] - v21) >> 3);
        v19 = *(this + 33);
      }

      ++v20;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * (v19 - v18));
  }

  if (v17 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(this + 32, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, this + 32);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, v2);
  v29 = &v27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v29);
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a3 - a2;
  if (a3 - a2 + 1 < 4)
  {
    if (v6 == 1)
    {

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(a1, a2, a4);
    }

    else if (v6 == 2)
    {

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(a1, a2, a4);
    }
  }

  else
  {
    v7 = a3 + 1 - ((a3 - a2 + 1) >> 1);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(a1, v9, v7 - 1, &v8, v7, a4);
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E6906080](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E6906090](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(unsigned int *result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v99 = *(a2 - 1);
        v100 = *v9;
        v101 = *(*a3 + 8);
        v102 = (v101 + 24 * v99);
        v103 = (v101 + 24 * *v9);
        if (*v102 < *v103 || *v102 == *v103 && v102[1] < v103[1])
        {
          *v9 = v99;
          *(a2 - 1) = v100;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, v9 + 2, a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 8);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v9;
      v19 = (v16 + 24 * *v14);
      v20 = *v19;
      v21 = (v16 + 24 * *v9);
      v22 = *v21;
      if (*v19 < *v21 || *v19 == *v21 && v19[1] < v21[1])
      {
        v23 = *(a2 - 1);
        v24 = (v16 + 24 * v23);
        if (*v24 < v20 || *v24 == v20 && v24[1] < v19[1])
        {
          *v9 = v23;
          goto LABEL_47;
        }

        *v9 = v17;
        *v14 = v18;
        v43 = *(a2 - 1);
        v44 = (v16 + 24 * v43);
        if (*v44 < v22 || *v44 == v22 && v44[1] < v21[1])
        {
          *v14 = v43;
LABEL_47:
          *(a2 - 1) = v18;
        }
      }

      else
      {
        v33 = *(a2 - 1);
        v34 = (v16 + 24 * v33);
        if (*v34 < v20 || *v34 == v20 && v34[1] < v19[1])
        {
          *v14 = v33;
          *(a2 - 1) = v17;
          v35 = *v9;
          v36 = (v16 + 24 * *v14);
          v37 = (v16 + 24 * *v9);
          if (*v36 < *v37 || *v36 == *v37 && v36[1] < v37[1])
          {
            *v9 = *v14;
            *v14 = v35;
          }
        }
      }

      v45 = v13 - 1;
      v46 = v9[v45];
      v47 = v9[1];
      v48 = (v16 + 24 * v46);
      v49 = *v48;
      v50 = (v16 + 24 * v47);
      v51 = *v50;
      if (*v48 < *v50 || *v48 == *v50 && v48[1] < v50[1])
      {
        v52 = *(a2 - 2);
        v53 = (v16 + 24 * v52);
        if (*v53 < v49 || *v53 == v49 && v53[1] < v48[1])
        {
          v9[1] = v52;
          goto LABEL_73;
        }

        v9[1] = v46;
        v9[v45] = v47;
        v62 = *(a2 - 2);
        v63 = (v16 + 24 * v62);
        if (*v63 < v51 || *v63 == v51 && v63[1] < v50[1])
        {
          v9[v45] = v62;
LABEL_73:
          *(a2 - 2) = v47;
        }
      }

      else
      {
        v54 = *(a2 - 2);
        v55 = (v16 + 24 * v54);
        if (*v55 < v49 || *v55 == v49 && v55[1] < v48[1])
        {
          v9[v45] = v54;
          *(a2 - 2) = v46;
          v56 = v9[v45];
          v57 = v9[1];
          v58 = (v16 + 24 * v56);
          v59 = (v16 + 24 * v57);
          if (*v58 < *v59 || *v58 == *v59 && v58[1] < v59[1])
          {
            v9[1] = v56;
            v9[v45] = v57;
          }
        }
      }

      v66 = v14[1];
      v64 = v14 + 1;
      v65 = v66;
      v67 = v9[2];
      v68 = (v16 + 24 * v66);
      v69 = *v68;
      v70 = (v16 + 24 * v67);
      v71 = *v70;
      if (*v68 < *v70 || *v68 == *v70 && v68[1] < v70[1])
      {
        v72 = *(a2 - 3);
        v73 = (v16 + 24 * v72);
        if (*v73 < v69 || *v73 == v69 && v73[1] < v68[1])
        {
          v9[2] = v72;
          goto LABEL_92;
        }

        v9[2] = v65;
        *v64 = v67;
        v79 = *(a2 - 3);
        v80 = (v16 + 24 * v79);
        if (*v80 < v71 || *v80 == v71 && v80[1] < v70[1])
        {
          *v64 = v79;
LABEL_92:
          *(a2 - 3) = v67;
        }
      }

      else
      {
        v74 = *(a2 - 3);
        v75 = (v16 + 24 * v74);
        if (*v75 < v69 || *v75 == v69 && v75[1] < v68[1])
        {
          *v64 = v74;
          *(a2 - 3) = v65;
          v76 = v9[2];
          v77 = (v16 + 24 * *v64);
          v78 = (v16 + 24 * v76);
          if (*v77 < *v78 || *v77 == *v78 && v77[1] < v78[1])
          {
            v9[2] = *v64;
            *v64 = v76;
          }
        }
      }

      v81 = v9[v45];
      v82 = *v15;
      v83 = (v16 + 24 * *v15);
      v84 = *v83;
      v85 = (v16 + 24 * v81);
      v86 = *v85;
      if (*v83 < *v85 || *v83 == *v85 && v83[1] < v85[1])
      {
        v87 = *v64;
        v88 = (v16 + 24 * *v64);
        v89 = *v88;
        if (*v88 < v84 || *v88 == v84 && v88[1] < v83[1])
        {
          v9[v45] = v87;
          goto LABEL_111;
        }

        v9[v45] = v82;
        *v15 = v81;
        if (v89 < v86 || v89 == v86 && v88[1] < v85[1])
        {
          *v15 = v87;
          v82 = v87;
LABEL_111:
          *v64 = v81;
        }

        else
        {
          v82 = v81;
        }
      }

      else
      {
        v90 = *v64;
        v91 = (v16 + 24 * *v64);
        v92 = *v91;
        if (*v91 < v84 || *v91 == v84 && v91[1] < v83[1])
        {
          *v15 = v90;
          *v64 = v82;
          if (v92 < v86 || v92 == v86 && v91[1] < v85[1])
          {
            v9[v45] = v90;
            v64 = v15;
            v82 = v81;
            goto LABEL_111;
          }

          v82 = v90;
        }
      }

      v93 = *v9;
      *v9 = v82;
      *v15 = v93;
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v25 = *v9;
    v26 = *v15;
    v27 = (v16 + 24 * *v9);
    v28 = *v27;
    v29 = (v16 + 24 * *v15);
    v30 = *v29;
    if (*v27 < *v29 || *v27 == *v29 && v27[1] < v29[1])
    {
      v31 = *(a2 - 1);
      v32 = (v16 + 24 * v31);
      if (*v32 < v28 || *v32 == v28 && v32[1] < v27[1])
      {
        *v15 = v31;
        goto LABEL_66;
      }

      *v15 = v25;
      *v9 = v26;
      v60 = *(a2 - 1);
      v61 = (v16 + 24 * v60);
      if (*v61 < v30 || *v61 == v30 && v61[1] < v29[1])
      {
        *v9 = v60;
LABEL_66:
        *(a2 - 1) = v26;
      }

LABEL_67:
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v38 = *(a2 - 1);
    v39 = (v16 + 24 * v38);
    if (*v39 >= v28 && (*v39 != v28 || v39[1] >= v27[1]))
    {
      goto LABEL_67;
    }

    *v9 = v38;
    *(a2 - 1) = v25;
    v40 = *v15;
    v41 = (v16 + 24 * *v9);
    v42 = (v16 + 24 * *v15);
    if (*v41 >= *v42 && (*v41 != *v42 || v41[1] >= v42[1]))
    {
      goto LABEL_67;
    }

    *v15 = *v9;
    *v9 = v40;
    if (a5)
    {
      goto LABEL_116;
    }

LABEL_113:
    v94 = (v16 + 24 * *(v9 - 1));
    v95 = (v16 + 24 * *v9);
    if (*v94 >= *v95 && (*v94 != *v95 || v94[1] >= v95[1]))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_124;
    }

LABEL_116:
    v96 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
    if ((v97 & 1) == 0)
    {
      goto LABEL_122;
    }

    v98 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, v96, a3);
    v9 = v96 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v96 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v96;
      if (v98)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v98)
    {
LABEL_122:
      result = std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v8, v96, a3, -v11, a5 & 1);
      v9 = v96 + 1;
LABEL_124:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v105 = *v9;
  v104 = v9[1];
  v106 = *(*a3 + 8);
  v107 = (v106 + 24 * v104);
  v108 = *v107;
  v109 = (v106 + 24 * *v9);
  v110 = *v109;
  if (*v107 < *v109 || *v107 == *v109 && v107[1] < v109[1])
  {
    v111 = *(a2 - 1);
    v112 = (v106 + 24 * v111);
    if (*v112 < v108 || *v112 == v108 && v112[1] < v107[1])
    {
      *v9 = v111;
    }

    else
    {
      *v9 = v104;
      v9[1] = v105;
      v119 = *(a2 - 1);
      v120 = (v106 + 24 * v119);
      if (*v120 >= v110 && (*v120 != v110 || v120[1] >= v109[1]))
      {
        return result;
      }

      v9[1] = v119;
    }

    *(a2 - 1) = v105;
    return result;
  }

  v113 = *(a2 - 1);
  v114 = (v106 + 24 * v113);
  if (*v114 < v108 || *v114 == v108 && v114[1] < v107[1])
  {
    v9[1] = v113;
    *(a2 - 1) = v104;
    v116 = *v9;
    v115 = v9[1];
    v117 = (v106 + 24 * v115);
    v118 = (v106 + 24 * *v9);
    if (*v117 < *v118 || *v117 == *v118 && v117[1] < v118[1])
    {
      *v9 = v115;
      v9[1] = v116;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a5 + 8);
  v9 = (v8 + 24 * *a2);
  v10 = *v9;
  v11 = (v8 + 24 * *result);
  v12 = *v11;
  if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
  {
    v13 = (v8 + 24 * *a3);
    if (*v13 < v10 || *v13 == v10 && v13[1] < v9[1])
    {
      *result = *a3;
LABEL_19:
      *a3 = v7;
LABEL_20:
      v5 = v7;
      v6 = v7;
      goto LABEL_22;
    }

    *result = v6;
    *a2 = v7;
    v5 = *a3;
    v18 = (v8 + 24 * *a3);
    if (*v18 < v12 || *v18 == v12 && v18[1] < v11[1])
    {
      *a2 = v5;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *a3;
    v14 = (v8 + 24 * *a3);
    if (*v14 >= v10 && (*v14 != v10 || v14[1] >= v9[1]))
    {
      goto LABEL_20;
    }

    *a2 = v7;
    *a3 = v5;
    v15 = *result;
    v16 = (v8 + 24 * *a2);
    v17 = (v8 + 24 * *result);
    if (*v16 >= *v17 && (*v16 != *v17 || v16[1] >= v17[1]))
    {
      goto LABEL_22;
    }

    *result = *a2;
    *a2 = v15;
    v5 = *a3;
  }

  v6 = v5;
LABEL_22:
  v19 = (v8 + 24 * *a4);
  v20 = (v8 + 24 * v5);
  if (*v19 < *v20 || *v19 == *v20 && v19[1] < v20[1])
  {
    *a3 = *a4;
    *a4 = v6;
    v21 = *a2;
    v22 = (v8 + 24 * *a3);
    v23 = (v8 + 24 * *a2);
    if (*v22 < *v23 || *v22 == *v23 && v22[1] < v23[1])
    {
      *a2 = *a3;
      *a3 = v21;
      v24 = *result;
      v25 = (v8 + 24 * *a2);
      v26 = (v8 + 24 * *result);
      if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = *(*a6 + 8);
  v15 = (v14 + 24 * *a5);
  v16 = (v14 + 24 * *a4);
  if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
  {
    *a4 = *a5;
    *a5 = v13;
    v17 = *a3;
    v18 = (v14 + 24 * *a4);
    v19 = (v14 + 24 * *a3);
    if (*v18 < *v19 || *v18 == *v19 && v18[1] < v19[1])
    {
      *a3 = *a4;
      *a4 = v17;
      v20 = *a2;
      v21 = (v14 + 24 * *a3);
      v22 = (v14 + 24 * *a2);
      if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
      {
        *a2 = *a3;
        *a3 = v20;
        v23 = *a1;
        v24 = (v14 + 24 * *a2);
        v25 = (v14 + 24 * *a1);
        if (*v24 < *v25 || *v24 == *v25 && v24[1] < v25[1])
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *(*a3 + 8);
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[1];
        v9 = (v5 + 24 * v8);
        v10 = *v9;
        v11 = (v5 + 24 * *v7);
        if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
        {
          v7[1] = *v7;
          v12 = result;
          if (v7 != result)
          {
            v13 = v4;
            while (1)
            {
              v14 = *(result + v13 - 4);
              v15 = (v5 + 24 * v14);
              if (v10 >= *v15)
              {
                if (v10 != *v15)
                {
                  v12 = (result + v13);
                  goto LABEL_16;
                }

                if (v9[1] >= v15[1])
                {
                  break;
                }
              }

              --v7;
              *(result + v13) = v14;
              v13 -= 4;
              if (!v13)
              {
                v12 = result;
                goto LABEL_16;
              }
            }

            v12 = v7;
          }

LABEL_16:
          *v12 = v8;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 8);
      do
      {
        v5 = result;
        result = v3;
        v7 = *v5;
        v6 = v5[1];
        v8 = (v4 + 24 * v6);
        v9 = *v8;
        v10 = (v4 + 24 * *v5);
        if (*v8 < *v10 || *v8 == *v10 && v8[1] < v10[1])
        {
          do
          {
            do
            {
              v11 = v5;
              v12 = *--v5;
              v5[2] = v7;
              v7 = v12;
              v13 = (v4 + 24 * v12);
            }

            while (v9 < *v13);
          }

          while (v9 == *v13 && v8[1] < v13[1]);
          *v11 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = *(*a3 + 8);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  v8 = (v5 + 24 * v4);
  v9 = *v8;
  if (*v6 < *v8 || *v6 == *v8 && v6[1] < v8[1])
  {
    j = a1 + 1;
    v11 = a1[1];
    for (i = *(v5 + 24 * v11); v7 >= i; i = *(v5 + 24 * v13))
    {
      if (v7 == i && v6[1] < *(v5 + 24 * v11 + 8))
      {
        break;
      }

      v13 = j[1];
      ++j;
      v11 = v13;
    }
  }

  else
  {
    for (j = a1 + 1; j < a2; ++j)
    {
      v14 = (v5 + 24 * *j);
      if (v7 < *v14 || v7 == *v14 && v6[1] < v14[1])
      {
        break;
      }
    }
  }

  if (j < a2)
  {
    --a2;
    while (v7 < v9 || v7 == v9 && v6[1] < *(v5 + 24 * v4 + 8))
    {
      v15 = *--a2;
      v4 = v15;
      v9 = *(v5 + 24 * v15);
    }
  }

  if (j < a2)
  {
    LODWORD(v16) = *j;
    v17 = *a2;
    do
    {
      *j = v17;
      *a2 = v16;
      do
      {
        v18 = j[1];
        ++j;
        v16 = v18;
        v19 = *(v5 + 24 * v18);
      }

      while (v7 >= v19 && (v7 != v19 || v6[1] >= *(v5 + 24 * v16 + 8)));
      do
      {
        do
        {
          v20 = *--a2;
          v17 = v20;
          v21 = (v5 + 24 * v20);
        }

        while (v7 < *v21);
      }

      while (v7 == *v21 && v6[1] < v21[1]);
    }

    while (j < a2);
  }

  if (j - 1 != a1)
  {
    *a1 = *(j - 1);
  }

  *(j - 1) = v3;
  return j;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a3 + 8);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  while (1)
  {
    v8 = a1[v3 + 1];
    v9 = (v5 + 24 * v8);
    if (*v9 >= v7 && (*v9 != v7 || v9[1] >= v6[1]))
    {
      break;
    }

    ++v3;
  }

  v10 = &a1[v3];
  v11 = &a1[v3 + 1];
  if (v3 * 4)
  {
    v13 = *--a2;
    v12 = v13;
    for (i = *(v5 + 24 * v13); i >= v7; i = *(v5 + 24 * v15))
    {
      if (i == v7 && *(v5 + 24 * v12 + 8) < v6[1])
      {
        break;
      }

      v15 = *--a2;
      v12 = v15;
    }
  }

  else if (v11 < a2)
  {
    v17 = *--a2;
    v16 = v17;
    for (j = *(v5 + 24 * v17); j >= v7; j = *(v5 + 24 * v19))
    {
      if (j == v7)
      {
        if (v11 >= a2 || *(v5 + 24 * v16 + 8) < v6[1])
        {
          break;
        }
      }

      else if (v11 >= a2)
      {
        break;
      }

      v19 = *--a2;
      v16 = v19;
    }
  }

  if (v11 < a2)
  {
    LODWORD(v20) = *a2;
    v21 = v8;
    v22 = v11;
    v23 = a2;
    do
    {
      *v22++ = v20;
      *v23 = v21;
      while (1)
      {
        v21 = *v22;
        v24 = (v5 + 24 * *v22);
        if (*v24 >= v7 && (*v24 != v7 || v24[1] >= v6[1]))
        {
          break;
        }

        ++v22;
      }

      do
      {
        v25 = *--v23;
        v20 = v25;
        v26 = *(v5 + 24 * v25);
      }

      while (v26 >= v7 && (v26 != v7 || *(v5 + 24 * v20 + 8) >= v6[1]));
    }

    while (v22 < v23);
    v10 = v22 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v10 = *a1;
        v9 = a1[1];
        v11 = *(*a3 + 8);
        v12 = (v11 + 24 * v9);
        v13 = *v12;
        v14 = (v11 + 24 * *a1);
        v15 = *v14;
        if (*v12 >= *v14 && (*v12 != *v14 || v12[1] >= v14[1]))
        {
          v30 = *(a2 - 1);
          v31 = (v11 + 24 * v30);
          if (*v31 < v13 || *v31 == v13 && v31[1] < v12[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v9;
            v33 = *a1;
            v32 = a1[1];
            v34 = (v11 + 24 * v32);
            v35 = (v11 + 24 * *a1);
            if (*v34 < *v35 || *v34 == *v35 && v34[1] < v35[1])
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v16 = *(a2 - 1);
        v17 = (v11 + 24 * v16);
        if (*v17 < v13 || *v17 == v13 && v17[1] < v12[1])
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v9;
          a1[1] = v10;
          v39 = *(a2 - 1);
          v40 = (v11 + 24 * v39);
          if (*v40 >= v15 && (*v40 != v15 || v40[1] >= v14[1]))
          {
            return 1;
          }

          a1[1] = v39;
        }

        *(a2 - 1) = v10;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(*a3 + 8);
    v7 = (v6 + 24 * v4);
    v8 = (v6 + 24 * *a1);
    if (*v7 < *v8 || *v7 == *v8 && v7[1] < v8[1])
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_19:
  v18 = a1 + 2;
  v19 = *a1;
  v20 = a1 + 1;
  v21 = a1[1];
  v22 = *(*a3 + 8);
  v23 = (v22 + 24 * v21);
  v24 = *v23;
  v25 = (v22 + 24 * *a1);
  v26 = *v25;
  if (*v23 < *v25 || *v23 == *v25 && v23[1] < v25[1])
  {
    v27 = *v18;
    v28 = (v22 + 24 * *v18);
    v29 = *v28;
    if (*v28 < v24 || *v28 == v24 && v28[1] < v23[1])
    {
      *a1 = v27;
LABEL_50:
      v20 = a1 + 2;
      goto LABEL_51;
    }

    *a1 = v21;
    a1[1] = v19;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *v20 = v27;
      goto LABEL_50;
    }
  }

  else
  {
    v36 = *v18;
    v37 = (v22 + 24 * *v18);
    v38 = *v37;
    if (*v37 < v24 || *v37 == v24 && v37[1] < v23[1])
    {
      *v20 = v36;
      *v18 = v21;
      if (v38 < v26 || v38 == v26 && v37[1] < v25[1])
      {
        *a1 = v36;
LABEL_51:
        *v20 = v19;
      }
    }
  }

  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *v41;
    v45 = (v22 + 24 * *v41);
    v46 = *v45;
    v47 = (v22 + 24 * *v18);
    if (*v45 < *v47 || *v45 == *v47 && v45[1] < v47[1])
    {
      *v41 = *v18;
      v48 = v42;
      do
      {
        v49 = *(a1 + v48 + 4);
        v50 = (v22 + 24 * v49);
        if (v46 >= *v50)
        {
          if (v46 != *v50)
          {
            v18 = (a1 + v48 + 8);
            goto LABEL_64;
          }

          if (v45[1] >= v50[1])
          {
            goto LABEL_64;
          }
        }

        --v18;
        *(a1 + v48 + 8) = v49;
        v48 -= 4;
      }

      while (v48 != -8);
      v18 = a1;
LABEL_64:
      *v18 = v44;
      if (++v43 == 8)
      {
        return v41 + 1 == a2;
      }
    }

    v18 = v41;
    v42 += 4;
    if (++v41 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *(*a4 + 8);
        v15 = (v14 + 24 * *v12);
        v16 = (v14 + 24 * *a1);
        if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = *(v10 + 8);
        v12 = (v11 + 24 * *v8);
        v13 = (v11 + 24 * v8[1]);
        if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = (v11 + 24 * *v8);
      v16 = (v11 + 24 * *a4);
      v17 = *v16;
      if (*v15 >= *v16 && (*v15 != *v16 || v15[1] >= v16[1]))
      {
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v19 = 2 * v7;
            v7 = (2 * v7) | 1;
            v18 = (result + 4 * v7);
            v20 = v19 + 2;
            if (v20 < a3)
            {
              v21 = (v11 + 24 * *v18);
              v22 = (v11 + 24 * v18[1]);
              if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
              {
                ++v18;
                v7 = v20;
              }
            }

            v23 = (v11 + 24 * *v18);
            if (*v23 < v17 || *v23 == v17 && v23[1] < v16[1])
            {
              break;
            }

            *v8 = *v18;
            v8 = v18;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v8;
LABEL_14:
        *v18 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      v11 = *(v4 + 8);
      v12 = (v11 + 24 * *(v9 - 1));
      v13 = (v11 + 24 * v10);
      if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *(a2 - 4);
    v8 = *(*a3 + 8);
    v9 = (v8 + 24 * *v6);
    v10 = (v8 + 24 * v7);
    v11 = *v10;
    if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
    {
      *(a2 - 4) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v13 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v12 = (result + 4 * v5);
          v14 = (v8 + 24 * *v12);
          if (*v14 >= v11 && (*v14 != v11 || v14[1] >= v10[1]))
          {
            break;
          }

          *v6 = *v12;
          v6 = (result + 4 * v5);
          if (v13 <= 1)
          {
            goto LABEL_11;
          }
        }
      }

      v12 = v6;
LABEL_11:
      *v12 = v7;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = v9[1].n128_u64[0];
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          v9[1].n128_u64[0] = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = v9[1].n128_u64[0];
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        v9[1].n128_u64[0] = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = v9[1].n128_u64[0];
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        v9[1].n128_u64[0] = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 24 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 16);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 16) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 16);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 16) = v17[1].n128_u64[0];
        *a1 = v29;
        v17[1].n128_u64[0] = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = v17[1].n128_u64[0];
          v81 = *v17;
          v30 = *v9;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = v17[1].n128_u64[0];
        v83 = *v17;
        v25 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 16);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 16) = v17[1].n128_u64[0];
          *a1 = v26;
          v17[1].n128_u64[0] = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 40);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 40) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 40);
          v41 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v41;
          *(a1 + 24 * v16 - 8) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 24 * v16 - 8);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 24 * v16 - 8);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 40);
          v38 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v38;
          *(a1 + 24 * v16 - 8) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), (a1 + 48));
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 64);
          v47 = *(a1 + 48);
          v48 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = *(a1 + 48);
        v122 = *(a1 + 64);
        v51 = *(v43 + 40);
        *(a1 + 48) = *(v43 + 24);
        *(a1 + 64) = v51;
        *(v43 + 40) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 40);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 40);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), (a1 + 48)))
        {
          v94 = *(a1 + 48);
          v121 = *(a1 + 64);
          v50 = *(v43 + 40);
          *(a1 + 48) = *(v43 + 24);
          *(a1 + 64) = v50;
          *(v43 + 40) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = v17[1].n128_u64[0];
        v17[1].n128_u64[0] = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = v17[1].n128_u64[0];
          v97 = *v17;
          *v17 = *(v43 + 24);
          v17[1].n128_u64[0] = *(v43 + 40);
LABEL_56:
          *(v43 + 40) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = v17[1].n128_u64[0];
        v98 = *v17;
        *v17 = *(v43 + 24);
        v17[1].n128_u64[0] = *(v43 + 40);
        *(v43 + 40) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 16);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 16) = v17[1].n128_u64[0];
      *a1 = v55;
      v17[1].n128_u64[0] = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = v17[1].n128_u64[0];
        v82 = *v17;
        v24 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = v17[1].n128_u64[0];
      v90 = *v17;
      v39 = *a1;
      v17[1].n128_u64[0] = *(a1 + 16);
      *v17 = v39;
      *(a1 + 16) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 16);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 16) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 16);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 16) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = v17[1].n128_u64[0];
        v86 = *v17;
        v28 = *a1;
        v17[1].n128_u64[0] = *(a1 + 16);
        *v17 = v28;
        *(a1 + 16) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = v9[1].n128_u64[0];
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v17) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}