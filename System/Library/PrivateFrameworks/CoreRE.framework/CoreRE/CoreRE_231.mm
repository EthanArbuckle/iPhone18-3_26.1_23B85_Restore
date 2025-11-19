uint64_t re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x38E38E38E38E38FLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 72, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 72 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 64) = 0;
      result += 72;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t re::FixedArray<re::StringID>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 16 * a2;
}

void re::Scheduler::enqueueTaskWithDeadline(re::Scheduler *this, unint64_t a2, float a3)
{
  FirstBitSet = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(this + 5) <= a2)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid task handle: %zu", "task < m_taskNames.size()", "enqueueTaskWithDeadline", 301, a2);
    _os_crash();
    __break(1u);
    goto LABEL_58;
  }

  v8 = this;
  v4 = &v48;
  if (*(this + 210) >= a3)
  {
    v3 = *(this + 74);
    if (v3 <= a2)
    {
LABEL_60:
      v40 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v45 = 136315906;
      *&v45[4] = "operator[]";
      *&v45[12] = 1024;
      *&v45[14] = 468;
      *&v45[18] = 2048;
      *v46 = FirstBitSet;
      *&v46[8] = 2048;
      *&v46[10] = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_61;
    }

    v9 = *(*(this + 75) + 8 * a2);
    this = re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, a2);
    if (!this)
    {
      goto LABEL_18;
    }

    v10 = *(v8 + 106);
    if (v9 <= v10 && (v9 != v10 || *(v8 + 107) >= FirstBitSet))
    {
      goto LABEL_18;
    }

    *v45 = 0;
    *&v45[8] = 0;
    *&v45[16] = 1;
    *&v46[4] = 0;
    *&v46[12] = 0;
    v11 = *(v8 + 5);
    if ((v11 & 0x3F) != 0)
    {
      v12 = (v11 >> 6) + 1;
    }

    else
    {
      v12 = v11 >> 6;
    }

    v47 = *(v8 + 5);
    *buf = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize(v45, v12, buf);
    re::DynamicBitset<unsigned long long,64ul>::setBit(v45, FirstBitSet);
    re::Scheduler::resolveEnabledTaskSetDependencies(&v40, v8, v45);
    v13 = v43;
    if ((v42 & 1) == 0)
    {
      v13 = v43[1];
    }

    v14 = v41;
    if ((v41 & 0x3FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_49;
    }

    v15 = 0;
    while (1)
    {
      v17 = *v13++;
      v16 = v17;
      if (v17)
      {
        break;
      }

      v15 -= 64;
      if (!--v14)
      {
        goto LABEL_49;
      }
    }

    v35 = __clz(__rbit64(v16));
    if (v35 + 1 == v15)
    {
LABEL_49:
      if (v40 && (v42 & 1) == 0)
      {
        (*(*v40 + 40))();
      }

      if (*v45)
      {
        if ((v45[16] & 1) == 0)
        {
          (*(**v45 + 40))();
        }
      }

      return;
    }

    FirstBitSet = v35 - v15;
    while (1)
    {
      v3 = *(v8 + 74);
      if (v3 <= FirstBitSet)
      {
        break;
      }

      v3 = *(*(v8 + 75) + 8 * FirstBitSet);
      v5 = *(v8 + 96);
      if (v5 <= v3)
      {
        goto LABEL_59;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(*(v8 + 97) + 72 * v3, FirstBitSet);
      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v40, FirstBitSet + 1);
      if (FirstBitSet == -1)
      {
        goto LABEL_49;
      }
    }

LABEL_58:
    v44 = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    *(v4 + 1) = "operator[]";
    v49 = 1024;
    *(v4 + 14) = 468;
    v50 = 2048;
    *(v4 + 5) = FirstBitSet;
    v51 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v44 = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    *(v4 + 1) = "operator[]";
    v49 = 1024;
    *(v4 + 14) = 468;
    v50 = 2048;
    *(v4 + 5) = v3;
    v51 = 2048;
    *(v4 + 30) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

LABEL_18:
  v18 = *(v8 + 90);
  if (v18)
  {
    v19 = (*(v8 + 92) + 8);
    v20 = 16 * v18;
    while (*(v19 - 1) != FirstBitSet)
    {
      v19 += 4;
      v20 -= 16;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    if (!isDebugLoggingEnabled)
    {
      goto LABEL_37;
    }

    if (*v19 <= a3)
    {
      goto LABEL_37;
    }

    v31 = *re::foundationTimingLogObjects(isDebugLoggingEnabled);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    v37 = *(v8 + 5);
    if (v37 > FirstBitSet)
    {
      v38 = *(*(v8 + 6) + 16 * FirstBitSet + 8);
      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "Rescheduling task [%s] with deadline: %f", buf, 0x16u);
LABEL_37:
      v32 = fminf(*v19, a3);
      *v19 = v32;
      v33 = fminf(*(v8 + 188), v32);
LABEL_42:
      *(v8 + 188) = v33;
      return;
    }

LABEL_61:
    v40 = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v45 = 136315906;
    *&v45[4] = "operator[]";
    *&v45[12] = 1024;
    *&v45[14] = 468;
    *&v45[18] = 2048;
    *v46 = FirstBitSet;
    *&v46[8] = 2048;
    *&v46[10] = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_22:
  if (v21)
  {
    v22 = *re::foundationTimingLogObjects(v21);
    v21 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      v36 = *(re::FixedArray<re::StringID>::operator[](v8 + 32, FirstBitSet) + 8);
      *buf = 136315394;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "Scheduling task [%s] with deadline: %f", buf, 0x16u);
    }
  }

  v23 = *(v8 + 90);
  v24 = *(v8 + 89);
  if (v23 >= v24)
  {
    v25 = v23 + 1;
    if (v24 < v23 + 1)
    {
      if (*(v8 + 88))
      {
        v26 = 2 * v24;
        v27 = v24 == 0;
        v28 = 8;
        if (!v27)
        {
          v28 = v26;
        }

        if (v28 <= v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = v28;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8 + 88, v29);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8 + 88, v25);
        ++*(v8 + 182);
      }
    }

    v23 = *(v8 + 90);
  }

  v34 = *(v8 + 92) + 16 * v23;
  *v34 = FirstBitSet;
  *(v34 + 8) = a3;
  ++*(v8 + 90);
  ++*(v8 + 182);
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(v8 + 128, FirstBitSet))
  {
    v33 = fminf(*(v8 + 188), a3);
    goto LABEL_42;
  }
}

uint64_t re::Scheduler::ExecutionContext::deinit(re::Scheduler::ExecutionContext *this)
{
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 3);
  result = re::FixedArray<CoreIKTransform>::deinit(this + 6);
  *(this + 9) = 0;
  *(this + 84) = 0;
  return result;
}

void re::Scheduler::setEnabled(re::Scheduler *this, unint64_t a2, int a3)
{
  v3 = a3;
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, a2) != a3)
  {
    v6 = this + 128;
    if (v3)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v6, a2);
      re::Scheduler::recalculateNextScheduledDelta(this);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2))
      {
        re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);
      }

      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 344, a2))
      {

        re::Scheduler::resetTaskCurrentTime(this, a2);
      }
    }

    else
    {
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v6, a2);

      re::Scheduler::recalculateNextScheduledDelta(this);
    }
  }
}

uint64_t re::Scheduler::recalculateNextScheduledDelta(re::Scheduler *this)
{
  v41 = *MEMORY[0x1E69E9840];
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v24, this + 34);
  v27[5] = *(this + 42);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v24, this + 128);
  v2 = v27;
  if ((v26 & 1) == 0)
  {
    v2 = v27[1];
  }

  if (v25 >= 0xB)
  {
    v3 = 8 * v25;
    while (!*v2)
    {
      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (v25)
  {
    v4 = 0;
    v5 = 8 * v25;
    do
    {
      v6 = *v2++;
      v4 |= v6;
      v5 -= 8;
    }

    while (v5);
    if (v4)
    {
LABEL_12:
      *(this + 188) = 0;
      goto LABEL_32;
    }
  }

LABEL_13:
  *(this + 188) = *(this + 189);
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v20, this + 25);
  v23[5] = *(this + 33);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v20, this + 128);
  v7 = v23[1];
  if (v22)
  {
    v7 = v23;
  }

  v8 = v21;
  if ((v21 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 0;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (v11)
      {
        break;
      }

      v9 -= 64;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }

    v12 = __clz(__rbit64(v10));
    if (v12 + 1 != v9)
    {
      FirstBitSet = v12 - v9;
      v14 = *(this + 71);
      do
      {
        if (v14 <= FirstBitSet)
        {
          v27[6] = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v28 = 136315906;
          v29 = "operator[]";
          v30 = 1024;
          v31 = 468;
          v32 = 2048;
          v33 = FirstBitSet;
          v34 = 2048;
          v35 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v15 = *(*(this + 72) + 8 * FirstBitSet) - *(this + 93);
        *(this + 188) = fminf(*(this + 188), v15);
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v20, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_24:
  v16 = *(this + 90);
  if (v16)
  {
    v17 = 16 * v16;
    v18 = (*(this + 92) + 8);
    do
    {
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, *(v18 - 1)))
      {
        *(this + 188) = fminf(*(this + 188), *v18);
      }

      v18 += 4;
      v17 -= 16;
    }

    while (v17);
  }

  if (v20 && (v22 & 1) == 0)
  {
    (*(*v20 + 40))();
  }

LABEL_32:
  result = v24;
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

double re::Scheduler::recalculateNextUpdateIntervalUpdate(re::Scheduler *this, unint64_t a2)
{
  if (*(this + 68) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  if (*(this + 71) <= a2)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(this + 93);
  v3 = *(*(this + 69) + 4 * a2);
  v4 = (floor(v2 / v3 + 0.001) + 1.0) * v3;
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  *(*(this + 72) + 8 * a2) = v4;
  if (*(this + 83) <= a2)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = *(this + 93);
  *(*(this + 84) + 8 * a2) = result;
  return result;
}

double re::Scheduler::resetTaskCurrentTime(re::Scheduler *this, unint64_t a2)
{
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2))
  {

    return re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);
  }

  else
  {
    if (*(this + 83) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = *(this + 93);
    *(*(this + 84) + 8 * a2) = result;
  }

  return result;
}

uint64_t re::Scheduler::setEnabled(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  v6 = *(result + 136);
  if (v5 >= v6)
  {
    v7 = *(result + 136);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (!a3)
  {
    if (v7)
    {
      v15 = 0;
      v16 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v16 = *(a2 + 32);
      }

      v17 = 1;
      do
      {
        v18 = result + 152;
        if ((*(result + 144) & 1) == 0)
        {
          v18 = *(result + 160);
        }

        if ((*(v18 + 8 * v15) & *(v16 + 8 * v15)) != 0)
        {
          break;
        }

        v17 = ++v15 < v7;
      }

      while (v7 != v15);
      if (v17)
      {
        re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(result + 128, a2);

        return re::Scheduler::recalculateNextScheduledDelta(v4);
      }
    }

    return result;
  }

  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 32);
    if (*(a2 + 16))
    {
      v9 = a2 + 24;
    }

    LOBYTE(v10) = 1;
    while (1)
    {
      v11 = result + 152;
      if ((*(result + 144) & 1) == 0)
      {
        v11 = *(result + 160);
      }

      v12 = *(v11 + 8 * v8);
      v13 = *(v9 + 8 * v8);
      if ((v13 & ~v12) != 0)
      {
        goto LABEL_40;
      }

      v10 = (v12 == v13) & v10;
      if (v7 == ++v8)
      {
        if (v6 < v5)
        {
          v14 = v10 ^ 1;
          goto LABEL_29;
        }

        if (v10)
        {
          goto LABEL_40;
        }

        return result;
      }
    }
  }

  if (v6 >= v5)
  {
    goto LABEL_40;
  }

  v14 = 0;
LABEL_29:
  v19 = a2 + 24;
  if ((*(a2 + 16) & 1) == 0)
  {
    v19 = *(a2 + 32);
  }

  if (*(v19 + 8 * v6))
  {
    goto LABEL_40;
  }

  v20 = v19 + 8;
  while (v5 - 1 != v6)
  {
    if (*(v20 + 8 * v6++))
    {
      goto LABEL_39;
    }
  }

  v6 = *(a2 + 8);
LABEL_39:
  if (((v6 >= v5) & v14) == 0)
  {
LABEL_40:
    re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v40, (result + 200));
    v44 = *(v4 + 33);
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v40, a2);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(&v40, v4 + 128);
    re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v4 + 128, a2);
    re::Scheduler::recalculateNextScheduledDelta(v4);
    v22 = v43;
    if ((v42 & 1) == 0)
    {
      v22 = v43[1];
    }

    v23 = v41;
    if ((v41 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v24 = 0;
      while (1)
      {
        v26 = *v22++;
        v25 = v26;
        if (v26)
        {
          break;
        }

        v24 -= 64;
        if (!--v23)
        {
          goto LABEL_50;
        }
      }

      v27 = __clz(__rbit64(v25));
      if (v27 + 1 != v24)
      {
        FirstBitSet = v27 - v24;
        do
        {
          re::Scheduler::recalculateNextUpdateIntervalUpdate(v4, FirstBitSet);
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v40, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_50:
    re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v36, &v40);
    v39[5] = v44;
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, v4 + 344);
    v29 = v39;
    if ((v38 & 1) == 0)
    {
      v29 = v39[1];
    }

    v30 = v37;
    if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v31 = 0;
      while (1)
      {
        v33 = *v29++;
        v32 = v33;
        if (v33)
        {
          break;
        }

        v31 -= 64;
        if (!--v30)
        {
          goto LABEL_60;
        }
      }

      v34 = __clz(__rbit64(v32));
      if (v34 + 1 != v31)
      {
        v35 = v34 - v31;
        do
        {
          re::Scheduler::resetTaskCurrentTime(v4, v35);
          v35 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, v35 + 1);
        }

        while (v35 != -1);
      }
    }

LABEL_60:
    if (v36 && (v38 & 1) == 0)
    {
      (*(*v36 + 40))();
    }

    result = v40;
    if (v40)
    {
      if ((v42 & 1) == 0)
      {
        return (*(*v40 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::Scheduler::updateTaskSchedule(uint64_t result, unint64_t a2, int a3)
{
  v4 = *(result + 448);
  if (v4 <= a2)
  {
LABEL_53:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = result;
  v7 = *(*(result + 456) + a2);
  if (v7 != a3)
  {
    if (*(*(result + 456) + a2) <= 2u)
    {
      v9 = 0;
      if (v7 == 1)
      {
        v12 = 0;
LABEL_15:
        if (v4 <= a2)
        {
          goto LABEL_54;
        }

        *(*(v6 + 57) + a2) = a3;
        if (a3 > 2)
        {
          switch(a3)
          {
            case 3:
              re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 272, a2);
              v9 = 1;
              break;
            case 4:
              break;
            case 5:
LABEL_20:
              re::Scheduler::recalculateNextUpdateIntervalUpdate(v6, a2);
              result = re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 200, a2);
              v9 = 1;
              if (a3 == 5)
              {
                break;
              }

LABEL_25:
              if ((v12 & 1) == 0)
              {
LABEL_46:
                if (v9)
                {

                  return re::Scheduler::recalculateNextScheduledDelta(v6);
                }

                return result;
              }

LABEL_30:
              v13 = *(v6 + 53);
              if (v13)
              {
                v14 = *(v6 + 54);
                v15 = v14 + 72 * v13;
                do
                {
                  v16 = *(v14 + 16);
                  if (v16)
                  {
                    v17 = (v14 + 24);
                  }

                  else
                  {
                    v17 = *(v14 + 32);
                  }

                  v18 = *(v14 + 8);
                  while (1)
                  {
                    v19 = v14 + 24;
                    if ((v16 & 1) == 0)
                    {
                      v19 = *(v14 + 32);
                    }

                    if (v17 == (v19 + 8 * v18))
                    {
                      break;
                    }

                    *v17++ = 0;
                    v16 = *(v14 + 16);
                  }

                  v14 += 72;
                }

                while (v14 != v15);
              }

              result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v6 + 56, 0);
              if (result != -1)
              {
                v20 = result;
                while (*(v6 + 74) > v20)
                {
                  v21 = *(*(v6 + 75) + 8 * v20);
                  if (*(v6 + 53) <= v21)
                  {
                    goto LABEL_52;
                  }

                  re::DynamicBitset<unsigned long long,64ul>::setBit(*(v6 + 54) + 72 * v21, v20);
                  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v6 + 56, v20 + 1);
                  v20 = result;
                  if (result == -1)
                  {
                    goto LABEL_46;
                  }
                }

                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_52:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_53;
              }

              goto LABEL_46;
            default:
LABEL_24:
              re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected previous task schedule type.", "!Unreachable code", "updateTaskSchedule", 717);
              result = _os_crash();
              __break(1u);
              goto LABEL_25;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 56, a2);
          goto LABEL_30;
        }

        if (a3 == 1)
        {
          goto LABEL_25;
        }

        if (a3 == 2)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }

      if (v7 == 2)
      {
        v10 = 1;
        v11 = 200;
LABEL_14:
        v12 = v9;
        result = re::DynamicBitset<unsigned long long,64ul>::clearBit(v6 + v11, a2);
        v4 = *(v6 + 56);
        v9 = v10;
        goto LABEL_15;
      }
    }

    else
    {
      switch(v7)
      {
        case 5:
          v8 = result + 200;
          goto LABEL_12;
        case 4:
          v10 = 0;
          LOBYTE(v9) = 1;
          v11 = 56;
          goto LABEL_14;
        case 3:
          v8 = result + 272;
LABEL_12:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v8, a2);
          v10 = 1;
          v11 = 56;
          LOBYTE(v9) = 1;
          goto LABEL_14;
      }
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected previous task schedule type.", "!Unreachable code", "updateTaskSchedule", 675);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::Scheduler::setTaskUpdateInterval(re::Scheduler *this, unint64_t a2, float a3)
{
  if (*(this + 68) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 69) + 4 * a2) = a3;
  result = re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2);
  if (result)
  {
    re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);

    return re::Scheduler::recalculateNextScheduledDelta(this);
  }

  return result;
}

uint64_t re::Scheduler::resolveEnabledTaskSetDependencies(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  *(re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(a1, a3) + 64) = a3[8];
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v22, a3);
  v25[5] = a3[8];
  while (1)
  {
    v6 = v23;
    v7 = (v24 & 1) != 0 ? v25 : v25[1];
    if (v23 < 0xB)
    {
      break;
    }

    v8 = 8 * v23;
    v9 = v7;
    while (!*v9)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

LABEL_14:
    if ((v23 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 0;
      while (1)
      {
        v16 = *v7++;
        v15 = v16;
        if (v16)
        {
          break;
        }

        v14 -= 64;
        if (!--v6)
        {
          goto LABEL_23;
        }
      }

      v17 = __clz(__rbit64(v15));
      if (v17 + 1 != v14)
      {
        FirstBitSet = v17 - v14;
        do
        {
          v19 = *(a2 + 640);
          if (v19 <= FirstBitSet)
          {
            v25[6] = 0;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v26 = 136315906;
            v27 = "operator[]";
            v28 = 1024;
            v29 = 476;
            v30 = 2048;
            v31 = FirstBitSet;
            v32 = 2048;
            v33 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(&v22, *(a2 + 648) + 72 * FirstBitSet);
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v22, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_23:
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v22, a2 + 128);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(&v22, a1);
    re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(a1, &v22);
  }

  if (v23)
  {
    v10 = 0;
    v11 = 8 * v23;
    v12 = v7;
    do
    {
      v13 = *v12++;
      v10 |= v13;
      v11 -= 8;
    }

    while (v11);
    if (v10)
    {
      goto LABEL_14;
    }
  }

LABEL_24:
  result = v22;
  if (v22)
  {
    v21 = (v24 & 1) == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    return (*(*v22 + 40))();
  }

  return result;
}

uint64_t re::anonymous namespace::SchedulerUtil::isDebugLoggingEnabled(re::_anonymous_namespace_::SchedulerUtil *this)
{
  if ((atomic_load_explicit(&qword_1EE1C40C8, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    v8 = v2;
    if (__cxa_guard_acquire(&qword_1EE1C40C8))
    {
      re::Defaults::BOOLValue("enableSchedulerLogging", v4, v6);
      if (v6[0])
      {
        v5 = v6[1];
      }

      else
      {
        v5 = 0;
      }

      _MergedGlobals_566 = v5;
      __cxa_guard_release(&qword_1EE1C40C8);
    }
  }

  return _MergedGlobals_566;
}

float re::Scheduler::nextScheduledDelta(re::Scheduler *this)
{
  v1 = *(this + 106);
  v2 = *(this + 99);
  if (v1 >= v2)
  {
    return *(this + 188);
  }

  v3 = *(this + 100);
  v4 = v3 + 72 * v1;
  v5 = *(this + 107) + 1;
  if (v5 >= *(v4 + 64))
  {
    v8 = 0;
    goto LABEL_23;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 24);
  }

  else
  {
    v7 = *(v4 + 32);
  }

  v9 = 0;
  v10 = *(v4 + 8);
  v11 = v4 + 24;
  while (1)
  {
    v12 = v4 + 24;
    if ((v6 & 1) == 0)
    {
      v12 = *(v4 + 32);
    }

    if (v7 == (v12 + 8 * v10))
    {
      break;
    }

    v13 = *v7++;
    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    v9 += v14.u32[0];
  }

  v15 = v5 >> 6;
  if (v5 >= 0x40)
  {
    if (v10 <= v15 - 1)
    {
      goto LABEL_47;
    }

    v17 = 0;
    v16 = 0;
    do
    {
      v18 = v4 + 24;
      if ((v6 & 1) == 0)
      {
        v18 = *(v4 + 32);
      }

      v19 = vcnt_s8(*(v18 + v17));
      v19.i16[0] = vaddlv_u8(v19);
      v16 += v19.u32[0];
      v17 += 8;
    }

    while (8 * v15 != v17);
  }

  else
  {
    v16 = 0;
  }

  if (v10 <= v15)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v11 = *(v4 + 32);
  }

  v20 = vcnt_s8((*(v11 + 8 * v15) & ~(-1 << v5)));
  v20.i16[0] = vaddlv_u8(v20);
  v8 = v9 != v20.u32[0] + v16;
LABEL_23:
  v21 = v1 + 1;
  if (v21 < v2)
  {
    do
    {
      v22 = v3 + 72 * v21;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if (v23 >= 0xB)
      {
        if (v24)
        {
          v25 = (v22 + 24);
        }

        else
        {
          v25 = *(v22 + 32);
        }

        v27 = 8 * v23 - 8;
        do
        {
          v28 = *v25++;
          LOBYTE(v23) = v28 != 0;
          if (v28)
          {
            v29 = 1;
          }

          else
          {
            v29 = v27 == 0;
          }

          v27 -= 8;
        }

        while (!v29);
        goto LABEL_42;
      }

      if (v24)
      {
        v26 = (v22 + 24);
        if (v23)
        {
LABEL_39:
          v30 = 0;
          v31 = 8 * v23;
          do
          {
            v32 = *v26++;
            v30 |= v32;
            v31 -= 8;
          }

          while (v31);
          v23 = v30 != 0;
        }
      }

      else
      {
        v26 = *(v22 + 32);
        if (v23)
        {
          goto LABEL_39;
        }
      }

LABEL_42:
      v8 |= v23;
      ++v21;
    }

    while (v21 != v2);
  }

  result = 0.0;
  if ((v8 & 1) == 0)
  {
    return *(this + 188);
  }

  return result;
}

void *re::Scheduler::beginPhaseExecution(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = a2;
  v173 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 744) + a3;
  *(a1 + 744) = v12;
  v13 = *(a2 + 40);
  v14 = *(a1 + 16);
  if (v13)
  {
    if (v14 != v13)
    {
      v15 = (v14 & 0x3F) != 0 ? (v14 >> 6) + 1 : v14 >> 6;
      *(v8 + 40) = v14;
      *&v139 = 0;
      re::DynamicOverflowArray<unsigned long long,2ul>::resize(v8, v15, &v139);
      if (v14)
      {
        if (v13 > v14)
        {
          v16 = 63;
          v17 = *(v8 + 40) & 0x3FLL;
          if (v17)
          {
            v18 = v17 == 63;
            v19 = -1 << v17;
            if (!v18)
            {
              v16 = ~v19;
            }
          }

          if (*(v8 + 16))
          {
            v20 = v8 + 24;
          }

          else
          {
            v20 = *(v8 + 32);
          }

          *(v20 + 8 * *(v8 + 8) - 8) &= v16;
        }
      }
    }
  }

  else
  {
    if ((v14 & 0x3F) != 0)
    {
      v21 = (v14 >> 6) + 1;
    }

    else
    {
      v21 = v14 >> 6;
    }

    *(v8 + 40) = v14;
    *&v139 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v8, v21, &v139);
    v22 = *(v8 + 8);
    if (v22)
    {
      v23 = *(v8 + 16);
      if (v23)
      {
        v24 = (v8 + 24);
      }

      else
      {
        v24 = *(v8 + 32);
      }

      v25 = v8 + 24;
      while (1)
      {
        v26 = v8 + 24;
        if ((v23 & 1) == 0)
        {
          v26 = *(v8 + 32);
        }

        if (v24 == (v26 + 8 * v22 - 8))
        {
          break;
        }

        *v24++ = -1;
        v23 = *(v8 + 16);
      }

      v27 = 63;
      v28 = *(v8 + 40) & 0x3FLL;
      if (v28)
      {
        v18 = v28 == 63;
        v29 = -1 << v28;
        if (!v18)
        {
          v27 = ~v29;
        }
      }

      if ((v23 & 1) == 0)
      {
        v25 = *(v8 + 32);
      }

      *(v25 + 8 * v22 - 8) = v27;
    }
  }

  *&v143[13] = 0;
  v142 = 0u;
  *v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v139 = 0u;
  *&v144 = -1;
  *(&v144 + 1) = -1;
  *&v143[8] = *(a1 + 744);
  v30 = a4;
  v31 = (a1 + 416);
  *&v143[16] = v30;
  if (&v139 != (a1 + 416) && *v31)
  {
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(&v139, *v31, *(a1 + 424));
    if (*(&v139 + 1) != *(a1 + 424))
    {
LABEL_261:
      re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
      _os_crash();
      __break(1u);
LABEL_262:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_263:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_264:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_265:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_266:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_267:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_268:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_269:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_270:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_271:
      *v146 = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v149 = 136315906;
      *&v149[4] = "operator[]";
      *&v149[12] = 1024;
      *&v149[14] = 468;
      v150 = 2048;
      v151 = v14;
      v152 = 2048;
      *v153 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_272:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_273:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_274:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(&v139 + 1))
    {
      v33 = *(a1 + 432);
      v34 = v140;
      v35 = 72 * *(&v139 + 1);
      do
      {
        if (v33 != v34)
        {
          v36 = *v33;
          if (*v34)
          {
            if (v36)
            {
              re::DynamicOverflowArray<unsigned long long,5ul>::copy(v34, v33);
            }

            else
            {
              *(v34 + 8) = 0;
            }

            *(v34 + 16) += 2;
          }

          else if (v36)
          {
            v37 = v33[1];
            *v34 = v36;
            re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v34, v37);
            *(v34 + 16) += 2;
            re::DynamicOverflowArray<unsigned long long,5ul>::copy(v34, v33);
          }

          *(v34 + 64) = v33[8];
        }

        v33 += 9;
        v34 += 72;
        v35 -= 72;
      }

      while (v35);
    }
  }

  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(&v140 + 8, *a1, *(a1 + 16));
  if (v141)
  {
    v38 = *(&v141 + 1);
    v39 = 72 * v141;
    v4 = -1;
    do
    {
      v5 = *(a1 + 40);
      v6 = *(v38 + 64);
      if ((v5 & 0x3F) != 0)
      {
        v40 = (v5 >> 6) + 1;
      }

      else
      {
        v40 = v5 >> 6;
      }

      *(v38 + 64) = v5;
      *buf = 0;
      re::DynamicOverflowArray<unsigned long long,5ul>::resize(v38, v40, buf);
      if (v5)
      {
        v41 = v6 > v5;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v42 = *(v38 + 64) & 0x3FLL;
        if (v42)
        {
          v18 = v42 == 63;
          v43 = -1 << v42;
          if (v18)
          {
            v44 = 63;
          }

          else
          {
            v44 = ~v43;
          }
        }

        else
        {
          v44 = 63;
        }

        if (*(v38 + 16))
        {
          v45 = v38 + 24;
        }

        else
        {
          v45 = *(v38 + 32);
        }

        *(v45 + 8 * *(v38 + 8) - 8) &= v44;
      }

      v38 += 72;
      v39 -= 72;
    }

    while (v39);
  }

  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v8, 0);
  if (FirstBitSet != -1)
  {
    v14 = FirstBitSet;
    while (1)
    {
      v47 = *(&v139 + 1);
      if (*(&v139 + 1) <= v14)
      {
        break;
      }

      v47 = *(a1 + 688);
      if (v47 <= v14)
      {
        goto LABEL_245;
      }

      re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v140 + 72 * v14, *(a1 + 696) + 72 * v14);
      v47 = *(&v139 + 1);
      if (*(&v139 + 1) <= v14)
      {
        goto LABEL_246;
      }

      re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v140 + 72 * v14, a1 + 128);
      v47 = *(a1 + 688);
      if (v47 <= v14)
      {
        goto LABEL_247;
      }

      re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(*(a1 + 696) + 72 * v14, a1 + 128);
      v14 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v8, v14 + 1);
      if (v14 == -1)
      {
        goto LABEL_75;
      }
    }

    *v149 = 0;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 468;
    v156 = 2048;
    v157 = v14;
    v158 = 2048;
    *v159 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_245:
    *v149 = 0;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 468;
    v156 = 2048;
    v157 = v14;
    v158 = 2048;
    *v159 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_246:
    *v149 = 0;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 468;
    v156 = 2048;
    v157 = v14;
    v158 = 2048;
    *v159 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_247:
    *v149 = 0;
    v8 = v155;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 468;
    v156 = 2048;
    v157 = v14;
    v158 = 2048;
    *v159 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_248:
    v131[0] = 0;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    *&v146[12] = 1024;
    *&v146[14] = 468;
    *&v146[18] = 2048;
    *v147 = v14;
    *&v147[8] = 2048;
    *&v147[10] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_249;
  }

LABEL_75:
  *(a1 + 756) = 2139095039;
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(v155, (a1 + 272));
  v160 = *(a1 + 336);
  v48 = re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v155, a1 + 128);
  v49 = *&v159[2];
  if (v155[16])
  {
    v49 = (&v157 + 4);
  }

  if (*&v155[8] < 0xBuLL)
  {
    if (!*&v155[8])
    {
      goto LABEL_94;
    }

    v51 = 0;
    v52 = 8 * *&v155[8];
    do
    {
      v53 = *v49++;
      v51 |= v53;
      v52 -= 8;
    }

    while (v52);
    if (!v51)
    {
LABEL_94:
      v54 = 2139095039;
      goto LABEL_95;
    }
  }

  else
  {
    v50 = 8 * *&v155[8];
    while (!*v49)
    {
      ++v49;
      v50 -= 8;
      if (!v50)
      {
        goto LABEL_94;
      }
    }
  }

  v54 = 0;
  if (isDebugLoggingEnabled)
  {
    v56 = *&v159[2];
    if (v155[16])
    {
      v56 = (&v157 + 4);
    }

    v57 = *&v155[8];
    if ((*&v155[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v58 = 0;
      while (1)
      {
        v60 = *v56++;
        v59 = v60;
        if (v60)
        {
          break;
        }

        v58 -= 64;
        if (!--v57)
        {
          goto LABEL_95;
        }
      }

      v129 = __clz(__rbit64(v59));
      if (v129 + 1 != v58)
      {
        v14 = v129 - v58;
        do
        {
          v4 = *re::foundationTimingLogObjects(isDebugLoggingEnabled);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v5 = *(a1 + 40);
            if (v5 <= v14)
            {
              goto LABEL_271;
            }

            v130 = *(*(a1 + 48) + 16 * v14 + 8);
            *buf = 136315138;
            *&buf[4] = v130;
            _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Scheduling continuous task [%s]", buf, 0xCu);
          }

          isDebugLoggingEnabled = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v155, v14 + 1);
          v14 = isDebugLoggingEnabled;
        }

        while (isDebugLoggingEnabled != -1);
      }
    }
  }

LABEL_95:
  *(a1 + 752) = v54;
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(v149, (a1 + 200));
  v154 = *(a1 + 264);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v149, a1 + 128);
  v61 = *&v153[2];
  if (v149[16])
  {
    v61 = (&v151 + 4);
  }

  v62 = *&v149[8];
  if ((*&v149[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v63 = 0;
    v64 = v12 + a4;
    while (1)
    {
      v66 = *v61++;
      v65 = v66;
      if (v66)
      {
        break;
      }

      v63 -= 64;
      if (!--v62)
      {
        goto LABEL_103;
      }
    }

    v67 = __clz(__rbit64(v65));
    if (v67 + 1 != v63)
    {
      v14 = v67 - v63;
      v4 = 72;
      v5 = 2048;
      v13 = &dword_1E1C61000;
      while (1)
      {
        v6 = *(a1 + 592);
        if (v6 <= v14)
        {
          goto LABEL_252;
        }

        v6 = *(*(a1 + 600) + 8 * v14);
        if (re::DynamicBitset<unsigned long long,64ul>::getBit(v8, v6))
        {
          break;
        }

LABEL_229:
        v14 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v149, v14 + 1);
        if (v14 == -1)
        {
          goto LABEL_103;
        }
      }

      v7 = *(a1 + 568);
      if (v7 <= v14)
      {
        goto LABEL_256;
      }

      v107 = *(*(a1 + 576) + 8 * v14);
      if (v107 > v64)
      {
LABEL_228:
        v124 = v107 - *(a1 + 744);
        *(a1 + 752) = fminf(*(a1 + 752), v124);
        goto LABEL_229;
      }

      v7 = *(&v139 + 1);
      if (*(&v139 + 1) <= v6)
      {
        goto LABEL_257;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v140 + 72 * v6, v14);
      v7 = v141;
      if (v141 <= v6)
      {
        goto LABEL_258;
      }

      v108 = re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v141 + 1) + 72 * v6, v14);
      v6 = *(a1 + 544);
      if (v6 <= v14)
      {
        goto LABEL_259;
      }

      v6 = *(a1 + 472);
      if (v6 <= v14)
      {
        goto LABEL_260;
      }

      v110 = *(*(a1 + 552) + 4 * v14);
      v111 = *(*(a1 + 480) + v14);
      switch(v111)
      {
        case 3:
          if (v117)
          {
            v118 = *re::foundationTimingLogObjects(v117);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_272;
              }

              v127 = *(*(a1 + 48) + 16 * v14 + 8);
              *buf = 136315394;
              *&buf[4] = v127;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              _os_log_debug_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_DEBUG, "Scheduling substep interval task [%s] with interval: %f", buf, 0x16u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_264;
          }

          v119 = *(*(a1 + 576) + 8 * v14);
          v6 = *(&v142 + 1);
          if (!*(&v142 + 1))
          {
            re::FixedArray<unsigned long>::init<>(&v142, *a1, *(a1 + 40));
            v6 = *(&v142 + 1);
          }

          if (v6 <= v14)
          {
            goto LABEL_265;
          }

          v120 = floor(v64 / v110 + 0.001);
          v121 = (v120 + 0.5 + 1.0) - (v119 / v110 + 0.5);
          v122 = *v143;
          *(*v143 + 8 * v14) = v121;
          v6 = *(a1 + 496);
          if (v6 <= v14)
          {
            goto LABEL_266;
          }

          v123 = *(*(a1 + 504) + v14);
          if (*(*(a1 + 504) + v14))
          {
            v6 = *(a1 + 664);
            if (v6 <= v14)
            {
              goto LABEL_268;
            }

            if (*(*(a1 + 672) + 8 * v14) != 0.0 || (++v123, (v123 & 0x100) == 0))
            {
              v6 = *(&v142 + 1);
              if (*(&v142 + 1) <= v14)
              {
                goto LABEL_269;
              }

              if (v121 > v123)
              {
                *(v122 + 8 * v14) = v123;
              }
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_267;
          }

          v107 = (v120 + 1.0) * v110;
          break;
        case 2:
          v107 = (floor(v64 / v110 + 0.001) + 1.0) * v110;
          if (v115)
          {
            v116 = *re::foundationTimingLogObjects(v115);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_274;
              }

              v125 = *(*(a1 + 48) + 16 * v14 + 8);
              v126 = v107 - *(a1 + 744);
              *buf = 136315650;
              *&buf[4] = v125;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              *&buf[22] = 2048;
              *&buf[24] = v126;
              _os_log_debug_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_DEBUG, "Scheduling combined interval task [%s] with interval: %f (deadline: %f)", buf, 0x20u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_262;
          }

          break;
        case 1:
          if (v112)
          {
            v113 = *re::foundationTimingLogObjects(v112);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_273;
              }

              v128 = *(*(a1 + 48) + 16 * v14 + 8);
              *buf = 136315394;
              *&buf[4] = v128;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              _os_log_debug_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_DEBUG, "Scheduling continuous interval task [%s] with interval: %f", buf, 0x16u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_263;
          }

          v114 = *(a1 + 576);
          v107 = *(v114 + 8 * v14) + v110;
          goto LABEL_227;
        default:
          re::internal::assertLog(4, v109, "assertion failure: '%s' (%s:line %i) Unknown over schedule strategy.", "!Unreachable code", "beginPhaseExecution", 529);
          result = _os_crash();
          __break(1u);
          return result;
      }

      v114 = *(a1 + 576);
LABEL_227:
      *(v114 + 8 * v14) = v107;
      goto LABEL_228;
    }
  }

LABEL_103:
  if (*(a1 + 720))
  {
    v6 = 0;
    v7 = 72;
    while (1)
    {
      v5 = *(a1 + 736) + 16 * v6;
      v14 = *v5;
      v4 = *(a1 + 592);
      if (v4 <= *v5)
      {
        goto LABEL_248;
      }

      v4 = *(*(a1 + 600) + 8 * v14);
      v68 = *(v5 + 8) - a3;
      *(v5 + 8) = v68;
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 128, v14) & 1) == 0)
      {
        goto LABEL_119;
      }

      v69 = *(v5 + 8);
      if (v69 > a4)
      {
        goto LABEL_118;
      }

      Bit = re::DynamicBitset<unsigned long long,64ul>::getBit(v8, v4);
      if ((Bit & 1) == 0)
      {
        break;
      }

      if (v71)
      {
        v5 = *re::foundationTimingLogObjects(v71);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          if (v13 <= v14)
          {
            goto LABEL_270;
          }

          v77 = *(*(a1 + 48) + 16 * v14 + 8);
          *buf = 136315138;
          *&buf[4] = v77;
          _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "Scheduling enqueued task [%s]", buf, 0xCu);
        }
      }

      v13 = *(&v139 + 1);
      if (*(&v139 + 1) <= v4)
      {
        goto LABEL_253;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v140 + 72 * v4, v14);
      v13 = v141;
      if (v141 <= v4)
      {
        goto LABEL_254;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v141 + 1) + 72 * v4, v14);
      v14 = *(a1 + 720);
      if (v14 <= v6)
      {
        goto LABEL_255;
      }

      v72 = v14 - 1;
      if (v14 - 1 > v6)
      {
        v73 = *(a1 + 736);
        v74 = v73 + 16 * v14;
        v75 = v73 + 16 * v6;
        v76 = *(v74 - 16);
        *(v75 + 8) = *(v74 - 8);
        *v75 = v76;
        v72 = *(a1 + 720) - 1;
      }

      *(a1 + 720) = v72;
      ++*(a1 + 728);
LABEL_120:
      if (v6 >= *(a1 + 720))
      {
        goto LABEL_124;
      }
    }

    v69 = *(v5 + 8);
LABEL_118:
    *(a1 + 752) = fminf(*(a1 + 752), v69);
LABEL_119:
    ++v6;
    goto LABEL_120;
  }

LABEL_124:
  re::DynamicOverflowArray<unsigned long long,2ul>::DynamicOverflowArray(&v133, v8);
  v78 = *(v8 + 40);
  v138 = v78;
  v79 = v134;
  if (v134)
  {
    v80 = (v135 & 1) == 0;
    v81 = &v136;
    v82 = v137;
    if (v135)
    {
      v83 = &v136;
    }

    else
    {
      v83 = v137;
    }

    for (i = &v83[v134]; v83 != i - 1; i = &v85[v79])
    {
      *v83 = ~*v83;
      ++v83;
      v80 = (v135 & 1) == 0;
      v82 = v137;
      if (v135)
      {
        v85 = &v136;
      }

      else
      {
        v85 = v137;
      }
    }

    v86 = 63;
    v87 = v78 & 0x3F;
    if (v87)
    {
      v18 = v87 == 63;
      v88 = -1 << v87;
      if (!v18)
      {
        v86 = ~v88;
      }
    }

    if (v80)
    {
      v81 = v82;
    }

    v81[v79 - 1] ^= v86;
  }

  v89 = &v136;
  if ((v135 & 1) == 0)
  {
    v89 = v137;
  }

  if ((v79 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v90 = 0;
    while (1)
    {
      v92 = *v89++;
      v91 = v92;
      if (v92)
      {
        break;
      }

      v90 -= 64;
      if (!--v79)
      {
        goto LABEL_159;
      }
    }

    v93 = __clz(__rbit64(v91));
    if (v93 + 1 != v90)
    {
      v94 = v93 - v90;
      v14 = 72;
      while (1)
      {
        v13 = *(&v139 + 1);
        if (*(&v139 + 1) <= v94)
        {
          break;
        }

        v95 = v140 + 72 * v94;
        v96 = *(v95 + 16);
        if (v96)
        {
          v97 = (v95 + 24);
        }

        else
        {
          v97 = *(v95 + 32);
        }

        v98 = *(v95 + 8);
        while (1)
        {
          v99 = v95 + 24;
          if ((v96 & 1) == 0)
          {
            v99 = *(v95 + 32);
          }

          if (v97 == (v99 + 8 * v98))
          {
            break;
          }

          *v97++ = 0;
          v96 = *(v95 + 16);
        }

        v94 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v133, v94 + 1);
        if (v94 == -1)
        {
          goto LABEL_159;
        }
      }

LABEL_251:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v94;
      *&v147[8] = 2048;
      *&v147[10] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_252:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_253:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v4;
      *&v147[8] = 2048;
      *&v147[10] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_254:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v4;
      *&v147[8] = 2048;
      *&v147[10] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_255:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "removeAt";
      *&v146[12] = 1024;
      *&v146[14] = 931;
      *&v146[18] = 2048;
      *v147 = v6;
      *&v147[8] = 2048;
      *&v147[10] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_256:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v6;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_258:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v6;
      *&v147[8] = 2048;
      *&v147[10] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_259:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_260:
      v131[0] = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      *&v146[12] = 1024;
      *&v146[14] = 468;
      *&v146[18] = 2048;
      *v147 = v14;
      *&v147[8] = 2048;
      *&v147[10] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_261;
    }
  }

LABEL_159:
  *v146 = 0;
  *&v146[8] = 0;
  *&v146[16] = 1;
  *&v147[4] = 0;
  *&v147[12] = 0;
  v100 = *(a1 + 40);
  if ((v100 & 0x3F) != 0)
  {
    v101 = (v100 >> 6) + 1;
  }

  else
  {
    v101 = v100 >> 6;
  }

  v148 = *(a1 + 40);
  *buf = 0;
  re::DynamicOverflowArray<unsigned long long,5ul>::resize(v146, v101, buf);
  if (*(&v139 + 1))
  {
    v102 = v140;
    v103 = 72 * *(&v139 + 1);
    do
    {
      re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v146, v102);
      v102 += 72;
      v103 -= 72;
    }

    while (v103);
  }

  re::Scheduler::resolveEnabledTaskSetDependencies(v131, a1, v146);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v131, v146);
  v104 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v131, 0);
  if (v104 != -1)
  {
    v8 = v104;
    while (1)
    {
      v14 = *(a1 + 592);
      if (v14 <= v8)
      {
        break;
      }

      v14 = *(*(a1 + 600) + 8 * v8);
      v13 = *(&v139 + 1);
      if (*(&v139 + 1) <= v14)
      {
        goto LABEL_250;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v140 + 72 * v14, v8);
      v8 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v131, v8 + 1);
      if (v8 == -1)
      {
        goto LABEL_170;
      }
    }

LABEL_249:
    v145 = 0;
    v13 = v155;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v161 = 136315906;
    v162 = "operator[]";
    v163 = 1024;
    v164 = 468;
    v165 = 2048;
    v166 = v8;
    v167 = 2048;
    v168 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_250:
    v145 = 0;
    v94 = v155;
    v171 = 0u;
    v172 = 0u;
    v170 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v161 = 136315906;
    v162 = "operator[]";
    v163 = 1024;
    v164 = 468;
    v165 = 2048;
    v166 = v14;
    v167 = 2048;
    v168 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_251;
  }

LABEL_170:
  re::Scheduler::ExecutionContext::deinit((a1 + 760));
  re::FixedArray<float>::operator=((a1 + 760), &v139);
  re::FixedArray<float>::operator=((a1 + 784), &v140 + 1);
  re::FixedArray<unsigned long>::operator=((a1 + 808), &v142);
  v105 = v144;
  *(a1 + 832) = *&v143[8];
  *(a1 + 848) = v105;
  if (v131[0] && (v132 & 1) == 0)
  {
    (*(*v131[0] + 40))();
  }

  if (*v146 && (v146[16] & 1) == 0)
  {
    (*(**v146 + 40))();
  }

  if (v133 && (v135 & 1) == 0)
  {
    (*(*v133 + 40))();
  }

  if (*v149 && (v149[16] & 1) == 0)
  {
    (*(**v149 + 40))();
  }

  if (*v155 && (v155[16] & 1) == 0)
  {
    (*(**v155 + 40))();
  }

  if (v142)
  {
    if (*(&v142 + 1))
    {
      (*(*v142 + 40))();
      *(&v142 + 1) = 0;
      *v143 = 0;
    }

    *&v142 = 0;
  }

  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(&v140 + 1);
  return re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(&v139);
}

unint64_t re::Scheduler::executePhase(re::Scheduler *this, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 844) = 1;
  *(this + 106) = a2;
  if (*(this + 96) <= a2)
  {
    goto LABEL_42;
  }

  v3 = *(this + 97) + 72 * a2;
  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3, 0);
  if (result != -1)
  {
    v5 = result;
    while (1)
    {
      *(this + 107) = v5;
      if (*(this + 56) <= v5)
      {
        goto LABEL_34;
      }

      v6 = *(*(this + 57) + v5);
      if (v6 == 5 || v6 == 2)
      {
        if (*(this + 59) <= v5)
        {
          goto LABEL_35;
        }

        if (*(*(this + 60) + v5) == 3)
        {
          break;
        }
      }

      if (*(this + 83) <= v5)
      {
        goto LABEL_36;
      }

      v16 = *(this + 104);
      v17 = *(this + 84);
      v18 = *(v17 + 8 * v5);
      *(v17 + 8 * v5) = v16;
      if (*(this + 65) <= v5)
      {
        goto LABEL_37;
      }

      v19 = v16 - v18;
      v20 = *(this + 66);
      *&v21 = v19;
      (*(**(v20 + 40 * v5 + 32) + 16))(*(v20 + 40 * v5 + 32), &v21);
LABEL_31:
      result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3, v5 + 1);
      v5 = result;
      if (result == -1)
      {
        goto LABEL_32;
      }
    }

    if (*(this + 68) > v5)
    {
      if (*(this + 102) <= v5)
      {
LABEL_39:
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(this + 83);
      if (v8 <= v5)
      {
LABEL_40:
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

      v9 = *(*(this + 103) + 8 * v5);
      if (!v9)
      {
        goto LABEL_26;
      }

      v10 = 0;
      v11 = *(*(this + 69) + 4 * v5);
      v12 = *(*(this + 84) + 8 * v5);
      while (*(this + 65) > v5)
      {
        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12 == 0.0;
        }

        if (v13)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v11;
        }

        v15 = *(this + 66);
        *&v21 = v14;
        (*(**(v15 + 40 * v5 + 32) + 16))(*(v15 + 40 * v5 + 32), &v21);
        if (v9 == ++v10)
        {
          v8 = *(this + 83);
LABEL_26:
          if (v8 > v5)
          {
            *(*(this + 84) + 8 * v5) = *(this + 104);
            goto LABEL_31;
          }

LABEL_41:
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_42:
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

LABEL_32:
  *(this + 844) = 0;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<unsigned long long,5ul>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned long long,5ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

re::ManualClock *re::ManualClock::ManualClock(re::ManualClock *this)
{
  *this = &unk_1F5D19AB0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x7F80000000000000;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 5, 0);
  ++*(this + 16);
  re::Defaults::floatValue(re::SimulationClock::kDefaultMaxDeltaTimeKey, v2, v4);
  if (v4[0] == 1 && v5 > 0.0)
  {
    *(this + 9) = v5;
  }

  return this;
}

uint64_t re::ManualClock::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void re::ManualClock::resetDeltaTime(re::ManualClock *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ManualClock does not support resetDeltaTime.", "!Unreachable code", "resetDeltaTime", 39);
  _os_crash();
  __break(1u);
}

uint64_t re::ManualClock::update(uint64_t this, float a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != 1)
  {
    return this;
  }

  v3 = a2;
  if (a2 < 0.0)
  {
    re::internal::assertLog(5, a3, "assertion failure: '%s' (%s:line %i) Negative time step: %g s", "deltaTime >= 0.0f", "update", 49, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(5, a3, "assertion failure: '%s' (%s:line %i) Time step exceeds 10 years: %g s", "deltaTime < 10 * 365 * 24 * 3600.0f", "update", 50, v3);
    _os_crash();
    __break(1u);
  }

  if (a2 >= 315360000.0)
  {
    goto LABEL_14;
  }

  v4 = this;
  if (a2 > 3600.0)
  {
    v5 = *re::foundationTimingLogObjects(this);
    this = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      buf = 134217984;
      *buf_4 = v3;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Large time step: %g s", &buf, 0xCu);
    }
  }

  v6 = v3;
  v7 = *(v4 + 16) + v3;
  *(v4 + 16) = v7;
  if (*(v4 + 36) < v3)
  {
    v8 = *re::foundationTimingLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v4 + 36);
      buf = 134218240;
      *buf_4 = v3;
      *&buf_4[8] = 2048;
      *&buf_4[10] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Clamping time step %g s to %g s", &buf, 0x16u);
    }

    v3 = *(v4 + 36);
    v7 = *(v4 + 16);
    v6 = v3;
  }

  v10 = v6 + *(v4 + 24);
  *(v4 + 24) = v10;
  *(v4 + 32) = v3;
  *buf_4 = 0;
  buf = LODWORD(v3);
  *&buf_4[4] = v10;
  *&buf_4[12] = v7;
  return (*(*v4 + 96))(v4, &buf);
}

void re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {

    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void re::ManualClock::~ManualClock(re::ManualClock *this)
{
  *this = &unk_1F5D19AB0;
  re::Event<re::GeometricObjectBase>::~Event(this + 5);
}

{
  *this = &unk_1F5D19AB0;
  re::Event<re::GeometricObjectBase>::~Event(this + 5);

  JUMPOUT(0x1E6906520);
}

void re::DisplayLinkClock::update(re::DisplayLinkClock *this)
{
  v2 = CACurrentMediaTime();
  v3 = *(this + 20);
  *(this + 20) = v2;
  if (*(this + 9) == 1)
  {
    v4 = v2 - v3;
    v5 = *(this + 3);
    v6 = *(this + 2) + v4;
    if (*(this + 9) < v4)
    {
      v4 = *(this + 9);
    }

    *(this + 2) = v6;
    *(this + 3) = v5 + v4;
    *(this + 8) = v4;
    v7[0] = LODWORD(v4);
    *&v7[1] = v5 + v4;
    *&v7[2] = v6;
    (*(*this + 96))(this, v7);
  }
}

uint64_t re::DisplayLinkClock::DisplayLinkClock(uint64_t a1, id *a2)
{
  *a1 = &unk_1F5D19B50;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0x427000007F800000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 48), 0);
  ++*(a1 + 72);
  *(a1 + 136) = *a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void re::DisplayLinkClock::~DisplayLinkClock(re::DisplayLinkClock *this)
{
  *this = &unk_1F5D19B50;
  if (*(this + 8) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      [v2 invalidate];
      *(this + 19) = 0;
    }

    v3 = *(this + 18);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(this + 18);
      *(this + 18) = 0;
    }

    *(this + 8) = 0;
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 6);
}

{
  re::DisplayLinkClock::~DisplayLinkClock(this);

  JUMPOUT(0x1E6906520);
}

void re::DisplayLinkClock::init(re::DisplayLinkClock *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    re::DisplayLinkClock::initDisplayLink(this);
    *(this + 8) = 1;
    re::Defaults::floatValue(re::SimulationClock::kDefaultMaxDeltaTimeKey, v2, v3);
    if (v3[0] == 1 && v4 > 0.0)
    {
      *(this + 9) = v4;
    }
  }
}

void re::DisplayLinkClock::initDisplayLink(re::DisplayLinkClock *this)
{
  v2 = [[REDisplayLinkTarget alloc] initWithClock:this];
  v8 = v2;
  if (*(this + 17) == MEMORY[0x1E69E96A0])
  {
    v3 = &selRef_update;
  }

  else
  {
    v3 = &selRef_updateOnQueue;
  }

  v4 = [MEMORY[0x1E6979338] displayLinkWithTarget:v2 selector:*v3];
  v5 = *(this + 18);
  *(this + 18) = v4;

  *(this + 19) = v8;
  [*(this + 18) setPreferredFramesPerSecond:llroundf(*(this + 10))];
  v6 = *(this + 18);
  v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];
}

CFTimeInterval *re::DisplayLinkClock::start(CFTimeInterval *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    v1 = this;
    re::DisplayLinkClock::init(this);
    v1[20] = CACurrentMediaTime();
    this = *(v1 + 18);
    if (this)
    {
      this = [(CFTimeInterval *)this setPaused:0];
    }

    *(v1 + 9) = 1;
  }

  return this;
}

uint64_t re::DisplayLinkClock::stop(uint64_t this)
{
  if (*(this + 9) == 1)
  {
    v1 = this;
    this = *(this + 144);
    if (this)
    {
      this = [this setPaused:1];
    }

    *(v1 + 9) = 0;
  }

  return this;
}

void re::DisplayLinkClock::reset(re::DisplayLinkClock *this)
{
  if (*(this + 9) == 1)
  {
    v2 = *(this + 18);
    if (v2)
    {
      [v2 setPaused:1];
    }

    *(this + 9) = 0;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 20) = CACurrentMediaTime();
}

re::VariableStepTimer *re::VariableStepTimer::VariableStepTimer(re::VariableStepTimer *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5D19BE0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 7) = 1065353216;
  *(this + 16) = 2139095040;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  v2 = re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 9, 0);
  ++*(this + 24);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 20, 0);
  ++*(this + 46);
  return this;
}

void re::VariableStepTimer::~VariableStepTimer(re::VariableStepTimer *this)
{
  re::VariableStepTimer::setClock(this, 0);
  re::Event<re::GeometricObjectBase>::~Event(this + 20);
  re::Event<re::GeometricObjectBase>::~Event(this + 9);
}

{
  re::VariableStepTimer::~VariableStepTimer(this);

  JUMPOUT(0x1E6906520);
}

double re::VariableStepTimer::setClock(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 != a2)
  {
    if (v3)
    {
      v5 = (*(*v3 + 56))(v3);
      *&v8 = a1;
      *(&v8 + 1) = re::VariableStepTimer::onClockDidChange;
      *&v9 = 0;
      *(&v9 + 1) = re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke;
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v5, &v8, v10);
      if (v10[0] == 1)
      {
        if (*(v5 + 80))
        {
          v10[0] = 0;
          v11 = v8;
          v12 = v9;
          *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v5 + 40, v10).n128_u64[0];
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(v5, &v8);
        }
      }
    }

    *(a1 + 8) = a2;
    if (a2)
    {
      v7 = (*(*a2 + 56))(a2);
      *&v8 = a1;
      *(&v8 + 1) = re::VariableStepTimer::onClockDidChange;
      *&v9 = 0;
      *(&v9 + 1) = re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke;
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v7, &v8, v10);
      if ((v10[0] & 1) == 0)
      {
        if (*(v7 + 20))
        {
          v10[0] = 1;
          v11 = v8;
          v12 = v9;
          *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v7 + 40, v10).n128_u64[0];
        }

        else
        {
          *&result = re::DynamicArray<re::EvaluationRegister>::add(v7, &v8).n128_u64[0];
        }
      }
    }
  }

  return result;
}

uint64_t re::VariableStepTimer::onClockDidChange(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 52) + (*a3 * *(a1 + 56));
    *(a1 + 52) = v4;
    v5 = fabsf(v4);
    v6 = *(a1 + 60);
    if (v5 >= v6)
    {
      ++*(a1 + 16);
      v8 = *(a1 + 64);
      v9 = v5 - v8;
      v10 = -v8;
      if (v4 >= 0.0)
      {
        v10 = *(a1 + 64);
      }

      v11 = v5 <= v8;
      v12 = 0.0;
      if (!v11)
      {
        v12 = v9;
        v4 = v10;
      }

      *(a1 + 48) = v12;
      *(a1 + 40) = v4;
      *(a1 + 52) = 0;
      *(a1 + 44) = 0;
      *(a1 + 32) = *(a1 + 32) + v4;
      v7 = a1 + 160;
    }

    else
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 44) = v6 - v5;
      v7 = a1 + 72;
    }

    re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::raise(v7, a1);
  }

  return 0;
}

uint64_t re::VariableStepTimer::stop(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t re::VariableStepTimer::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

void re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::raise(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v23, 0, sizeof(v23));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v13[0] = *v10;
        v13[1] = v12;
        v14 = v11;
        if (LOBYTE(v13[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if ((v23[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v13 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v13 + 1);
        }

        v7 += 40;
      }
    }
  }
}

uint64_t re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

id ManualClockLog(void)
{
  if (qword_1EE1C40E8 != -1)
  {
    dispatch_once(&qword_1EE1C40E8, &__block_literal_global_53);
  }

  v1 = _MergedGlobals_567;

  return v1;
}

void ___Z14ManualClockLogv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "ManualClock");
  v1 = _MergedGlobals_567;
  _MergedGlobals_567 = v0;
}

uint64_t re::ManualCMClockCreateWithReference(re *this, OpaqueCMClock *a2, OpaqueCMClock **a3)
{
  if (!this)
  {
    return 4294954543;
  }

  result = FigDerivedClockCreateWithGetTimeCallback();
  if (!result)
  {
    CFRetain(this);
    DerivedStorage = FigDerivedClockGetDerivedStorage();
    result = 0;
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = this;
    *(DerivedStorage + 16) = 0x3FF0000000000000;
    v6 = MEMORY[0x1E6960CC0];
    v7 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 24) = *MEMORY[0x1E6960CC0];
    v8 = *(v6 + 16);
    *(DerivedStorage + 40) = v8;
    *(DerivedStorage + 48) = v7;
    *(DerivedStorage + 64) = v8;
  }

  return result;
}

void re::ManualCMClockUpdateRateAndAnchor(re *this, CMTime *a2, double a3, CMTime *a4, CMTime *a5)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  if (*(DerivedStorage + 16) != a3 || (time1 = *a2, v11 = v13, CMTimeCompare(&time1, &v11)))
  {
    os_unfair_lock_lock(DerivedStorage);
    *(DerivedStorage + 16) = a3;
    v9 = *&a2->value;
    *(DerivedStorage + 40) = a2->epoch;
    *(DerivedStorage + 24) = v9;
    v10 = *&a4->value;
    *(DerivedStorage + 64) = a4->epoch;
    *(DerivedStorage + 48) = v10;
    os_unfair_lock_unlock(DerivedStorage);
  }
}

CMTime *anonymous namespace::REManualCMClock_ConvertReferenceTimeToLocalTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v6 = *(a1 + 48);
  CMTimeSubtract(&time, &lhs, &v6);
  CMTimeMultiplyByFloat64(&v9, &time, *(a1 + 16));
  time = *(a1 + 24);
  lhs = v9;
  return CMTimeAdd(a3, &time, &lhs);
}

uint64_t re::ProxyAudioClockCreate(re *this, OpaqueCMClock **a2)
{
  HostTimeClock = CMClockGetHostTimeClock();
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
  if (!TimeCallback)
  {
    CFRetain(HostTimeClock);
    DerivedStorage = FigDerivedClockGetDerivedStorage();
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = HostTimeClock;
    v6 = [REProxyAudioClockManager sharedInstance:v8];
    [v6 addClock:*this];
  }

  return TimeCallback;
}

CFStringRef anonymous namespace::REManualCMClock_CopyDebugDesc(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage);
  v4 = CFGetAllocator(this);
  time = *(DerivedStorage + 24);
  v5 = CMTimeCopyDescription(v4, &time);
  v6 = CFGetAllocator(this);
  time = *(DerivedStorage + 48);
  v7 = CMTimeCopyDescription(v6, &time);
  v8 = *(DerivedStorage + 16);
  os_unfair_lock_unlock(DerivedStorage);
  v9 = CFGetAllocator(this);
  v10 = CFStringCreateWithFormat(v9, 0, @"REManualCMClock rate %0.2f, own anchor %@, reference anchor %@", v8, v5, v7);
  CFRelease(v5);
  CFRelease(v7);
  return v10;
}

void anonymous namespace::REManualCMClock_Finalize(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  v2 = *(FigDerivedClockGetDerivedStorage() + 8);

  CFRelease(v2);
}

double anonymous namespace::REManualCMClock_GetRate(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage);
  v3 = *(DerivedStorage + 16);
  os_unfair_lock_unlock(DerivedStorage);
  return v3;
}

uint64_t anonymous namespace::REManualCMClock_GetAnchorTime(_anonymous_namespace_ *this, CMTime *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v9, 0, sizeof(v9));
  CMClockGetTime(&v9, *(DerivedStorage + 8));
  if (a2)
  {
    os_unfair_lock_lock(DerivedStorage);
    *a2 = v8;
    os_unfair_lock_unlock(DerivedStorage);
  }

  if (a3)
  {
    *a3 = v9;
  }

  return 0;
}

void anonymous namespace::REProxyAudioClock_Finalize(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  v3 = +[REProxyAudioClockManager sharedInstance];
  [v3 removeClock:this];

  v4 = *(FigDerivedClockGetDerivedStorage() + 8);

  CFRelease(v4);
}

BOOL anonymous namespace::REProxyAudioClock_MightDrift(_anonymous_namespace_ *this, OpaqueCMClock *a2, OpaqueCMClock *a3)
{
  if (this == a2)
  {
    return 0;
  }

  return !FigDerivedClockVerifyCallbacksMatch() || !FigDerivedClockVerifyCallbacksMatch();
}

void *re::allocInfo_SimulationTimer(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_568))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4108, "SimulationTimer");
    __cxa_guard_release(&_MergedGlobals_568);
  }

  return &unk_1EE1C4108;
}

void re::initInfo_SimulationTimer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4256CCBB6638AABCLL;
  v6[1] = "SimulationTimer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_SimulationTimer(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::introspect_ClockOrTimebaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C41A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C41A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41A8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C42D0, "ClockOrTimebaseType", 4, 4, 1, 1);
      qword_1EE1C42D0 = &unk_1F5D0C658;
      qword_1EE1C4310 = &re::introspect_ClockOrTimebaseType(BOOL)::enumTable;
      dword_1EE1C42E0 = 9;
      __cxa_guard_release(&qword_1EE1C41A8);
    }

    if (_MergedGlobals_569)
    {
      break;
    }

    _MergedGlobals_569 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C42D0, a2);
    v39 = 0x5C6F678444E6A912;
    v40 = "ClockOrTimebaseType";
    v43 = 208862;
    v44 = "int";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C4310;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1C42F0 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1C41A0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Timebase";
      qword_1EE1C4250 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "AudioClock";
      qword_1EE1C4258 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "HostClock";
      qword_1EE1C4260 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "SharedClock";
      qword_1EE1C4268 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "CustomClock";
      qword_1EE1C4270 = v38;
      __cxa_guard_release(&qword_1EE1C41A0);
    }
  }
}

void *re::allocInfo_ClockOrTimebase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C43C8, "ClockOrTimebase");
    __cxa_guard_release(&qword_1EE1C41B0);
  }

  return &unk_1EE1C43C8;
}

void re::initInfo_ClockOrTimebase(re *this, re::IntrospectionBase *a2)
{
  v49[0] = 0x3BDE3B02BE92815ELL;
  v49[1] = "ClockOrTimebase";
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  *(this + 2) = v50;
  if ((atomic_load_explicit(&qword_1EE1C41B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C41B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_ClockOrTimebaseType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE1C42D0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C4368 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "identifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C4370 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "locallyControlled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C4378 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint64_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "master";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C4380 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_double(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "rate";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1C4388 = v24;
      v25 = re::introspectionAllocator(v24);
      v26 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v26 = allocInfo_CMTime();
        qword_1EE1C4200 = v26;
        initInfo_CMTime(v26);
      }

      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "ownTime";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2800000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1C4390 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v29 = allocInfo_CMTime();
        qword_1EE1C4200 = v29;
        initInfo_CMTime(v29);
      }

      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "masterTime";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x4000000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1C4398 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_double(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "rateToTOD";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x5800000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1C43A0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v36 = allocInfo_CMTime();
        qword_1EE1C4200 = v36;
        initInfo_CMTime(v36);
      }

      v37 = (*(*v35 + 32))(v35, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "ownTimeToTOD";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x6000000009;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1C43A8 = v37;
      v38 = re::introspectionAllocator(v37);
      v39 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v39 = allocInfo_CMTime();
        qword_1EE1C4200 = v39;
        initInfo_CMTime(v39);
      }

      v40 = (*(*v38 + 32))(v38, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "masterTimeToTOD";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x780000000ALL;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1C43B0 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_BOOL(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "ignoreClockSourceAnchor";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x900000000BLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1C43B8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v46 = allocInfo_CMTime();
        qword_1EE1C4200 = v46;
        initInfo_CMTime(v46);
      }

      v47 = (*(*v45 + 32))(v45, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "latestSeekTarget";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x940000000CLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1C43C0 = v47;
      __cxa_guard_release(&qword_1EE1C41B8);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE1C4368;
  *(this + 9) = re::internal::defaultConstruct<re::ClockOrTimebase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ClockOrTimebase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ClockOrTimebase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ClockOrTimebase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v48 = v50;
}

__n128 re::internal::defaultConstruct<re::ClockOrTimebase>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0x3FF0000000000000;
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a3 + 40) = *MEMORY[0x1E6960CC0];
  v5 = *(v3 + 16);
  *(a3 + 56) = v5;
  *(a3 + 64) = result;
  *(a3 + 80) = v5;
  *(a3 + 88) = 0x3FF0000000000000;
  *(a3 + 112) = v5;
  *(a3 + 96) = result;
  *(a3 + 120) = result;
  *(a3 + 136) = v5;
  *(a3 + 144) = 0;
  *(a3 + 164) = v5;
  *(a3 + 148) = result;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ClockOrTimebase>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x3FF0000000000000;
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 40) = *MEMORY[0x1E6960CC0];
  v3 = *(v1 + 16);
  *(a1 + 56) = v3;
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0x3FF0000000000000;
  *(a1 + 112) = v3;
  *(a1 + 96) = result;
  *(a1 + 120) = result;
  *(a1 + 136) = v3;
  *(a1 + 144) = 0;
  *(a1 + 164) = v3;
  *(a1 + 148) = result;
  return result;
}

void *re::allocInfo_TimebaseTree(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4458, "TimebaseTree");
    __cxa_guard_release(&qword_1EE1C41C8);
  }

  return &unk_1EE1C4458;
}

void re::initInfo_TimebaseTree(re *this, re::IntrospectionBase *a2)
{
  v28[0] = 0x3DB5CEF367814FF8;
  v28[1] = "TimebaseTree";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1C41D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C41D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "nodes";
      *(v8 + 16) = &qword_1EE1C4318;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C42A0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "masterID";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C42A8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint64_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "timeSyncClockGrandmasterID";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x7000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C42B0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_double(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "currentAbsoluteTime";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x6800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C42B8 = v20;
      v21 = re::introspectionAllocator(v20);
      v22 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v22 = allocInfo_CMTime();
        qword_1EE1C4200 = v22;
        initInfo_CMTime(v22);
      }

      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "masterAnchor";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x3800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1C42C0 = v23;
      v24 = re::introspectionAllocator(v23);
      v25 = qword_1EE1C4200;
      if (!qword_1EE1C4200)
      {
        v25 = allocInfo_CMTime();
        qword_1EE1C4200 = v25;
        initInfo_CMTime(v25);
      }

      v26 = (*(*v24 + 32))(v24, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "ownTimeForSourceAnchor";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x5000000006;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1C42C8 = v26;
      __cxa_guard_release(&qword_1EE1C41D0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1C42A0;
  *(this + 9) = re::internal::defaultConstruct<re::TimebaseTree>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimebaseTree>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimebaseTree>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimebaseTree>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v27 = v29;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C4228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4228))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C4318);
    qword_1EE1C4318 = &unk_1F5D19E90;
    __cxa_guard_release(&qword_1EE1C4228);
  }

  if ((byte_1EE1C4199 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE1C41C0;
    if (!qword_1EE1C41C0)
    {
      v4 = re::allocInfo_ClockOrTimebase(v2);
      qword_1EE1C41C0 = v4;
      re::initInfo_ClockOrTimebase(v4, v5);
    }

    if ((byte_1EE1C4199 & 1) == 0)
    {
      byte_1EE1C4199 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C4318, 0);
      qword_1EE1C4328 = 0x3000000007;
      dword_1EE1C4330 = v6;
      word_1EE1C4334 = 0;
      *&xmmword_1EE1C4338 = 0;
      *(&xmmword_1EE1C4338 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C4348 = v3;
      unk_1EE1C4350 = 0;
      qword_1EE1C4358 = v4;
      unk_1EE1C4360 = 0;
      qword_1EE1C4318 = &unk_1F5D19E90;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1C4318, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C4338 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

__n128 re::internal::defaultConstruct<re::TimebaseTree>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  *(a3 + 48) = 0;
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a3 + 56) = *MEMORY[0x1E6960CC0];
  v5 = *(v3 + 16);
  *(a3 + 72) = v5;
  *(a3 + 80) = result;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = v5;
  *(a3 + 120) = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::TimebaseTree>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0;
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 56) = *MEMORY[0x1E6960CC0];
  v3 = *(v1 + 16);
  *(a1 + 72) = v3;
  *(a1 + 80) = result;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = v3;
  *(a1 + 120) = 0;
  return result;
}

void *re::allocInfo_TimebaseService(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C44E8, "TimebaseService");
    __cxa_guard_release(&qword_1EE1C41D8);
  }

  return &unk_1EE1C44E8;
}

void re::initInfo_TimebaseService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x483E17396C8F9B2ELL;
  v6[1] = "TimebaseService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::TimebaseService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::TimebaseService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_TimebaseService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

id re::TimebaseLog(re *this)
{
  if (qword_1EE1C41E8 != -1)
  {
    dispatch_once(&qword_1EE1C41E8, &__block_literal_global_54);
  }

  v2 = qword_1EE1C41E0;

  return v2;
}

void ___ZN2re11TimebaseLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "Timebase");
  v1 = qword_1EE1C41E0;
  qword_1EE1C41E0 = v0;
}

void *allocInfo_CMTime(void)
{
  if ((atomic_load_explicit(&qword_1EE1C41F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4578, "CMTime");
    __cxa_guard_release(&qword_1EE1C41F0);
  }

  return &unk_1EE1C4578;
}

void initInfo_CMTime(re::IntrospectionBase *a1)
{
  v22[0] = 3983742126;
  v22[1] = "CMTime";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(a1 + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1C41F8, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE1C41F8);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v7 = re::introspect_int64_t(1, v6);
      v8 = (*(*v5 + 32))(v5, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "value";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C4230 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_int(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "timescale";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C4238 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "flags";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C4240 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_int64_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "epoch";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1C4248 = v20;
      __cxa_guard_release(&qword_1EE1C41F8);
    }
  }

  *(a1 + 2) = 0x1800000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 4;
  *(a1 + 8) = &qword_1EE1C4230;
  *(a1 + 9) = re::internal::defaultConstruct<CMTime>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<CMTime>;
  *(a1 + 13) = re::internal::defaultConstructV2<CMTime>;
  *(a1 + 14) = re::internal::defaultDestructV2<CMTime>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v21 = v23;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 200 * v6 + 16;
  }
}

uint64_t re::TimebaseTree::rootID(re::TimebaseTree *this)
{
  if (!*(this + 7))
  {
    return 0;
  }

  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 2);
    while (1)
    {
      v5 = *v4;
      v4 += 50;
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

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v10 = *(*(this + 2) + 200 * v6 + 8);
  if (v10)
  {
    v8 = -1;
    while (++v8 < *(this + 7))
    {
      result = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, &v10);
      if (result)
      {
        v9 = result;
        result = v10;
        v10 = *(v9 + 24);
        if (v10)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

re *re::TimebaseService::CreateAudioClock(re::TimebaseService *this, OpaqueCMClock **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  HostTimeClock = 0;
  v2 = re::ProxyAudioClockCreate(&HostTimeClock, a2);
  if (v2)
  {
    v3 = v2;
    v4 = re::TimebaseLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "CreateAudioClock";
      v10 = 1024;
      v11 = 160;
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
    }
  }

  result = HostTimeClock;
  if (!HostTimeClock)
  {
    v6 = re::TimebaseLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AudioClock is unavailable! Falling back to host clock.", buf, 2u);
    }

    HostTimeClock = CMClockGetHostTimeClock();
    CFRetain(HostTimeClock);
    return HostTimeClock;
  }

  return result;
}

uint64_t re::TimebaseManager::TimebaseManager(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D19DB0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = a2;
  *(a1 + 248) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 324) = 0x7FFFFFFFLL;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  if (a2)
  {
    v4 = (*(*a2 + 64))(a2);
    *&v9 = a1;
    *(&v9 + 1) = re::TimebaseManager::didChangeSharedClocks;
    *&v10 = 0;
    *(&v10 + 1) = re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::createSubscription<re::TimebaseManager>(re::TimebaseManager *,REEventHandlerResult (re::TimebaseManager::*)(re::SharedClockService*,OpaqueCMClock *,OpaqueCMClock *,unsigned long long))::{lambda(re::SharedClockService*,re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::Subscription const&,OpaqueCMClock *&&,OpaqueCMClock *&,unsigned long long &&)#1}::__invoke;
    re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v4, &v9, v11);
    if ((v11[0] & 1) == 0)
    {
      if (*(v4 + 20))
      {
        v11[0] = 1;
        v12 = v9;
        v13 = v10;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v4 + 40, v11);
      }

      else
      {
        re::DynamicArray<re::EvaluationRegister>::add(v4, &v9);
      }
    }

    v5 = *(a1 + 64);
  }

  else
  {
    v5 = 1.0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 32, vcvtps_u32_f32(64.0 / v5));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 72, vcvtps_u32_f32(64.0 / *(a1 + 104)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 112, vcvtps_u32_f32(64.0 / *(a1 + 144)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 152, vcvtps_u32_f32(64.0 / *(a1 + 184)));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(a1 + 192, vcvtps_u32_f32(64.0 / *(a1 + 224)));
  v6 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v6, HostTimeClock, (a1 + 232));
  return a1;
}

uint64_t re::TimebaseManager::didChangeSharedClocks(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  os_unfair_lock_lock((a1 + 24));
  v11 = *(a1 + 272);
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 272) = v12;
  v13 = *(a1 + 264);
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 264) = v14;
  v15 = *(a1 + 280);
  if (!v15)
  {
    re::TimebaseManager::updatePrimarySharedClock(a1, v9, v10);
    v15 = *(a1 + 280);
  }

  re::TimebaseManager::updatePrimarySharedClock(a1, v9, v10);
  v16 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((a1 + 72), v15);
  if (v16)
  {
    v17 = v16;
    v61 = (a1 + 72);
    v18 = v16[3];
    *&v62 = v18;
    if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 112), v18))
    {
      v19 = CFRetain(*(a1 + 280));
      *&v65 = &v62;
      std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 112), v18)[3] = v19;
      CFRelease(v15);
    }

    v60 = v15;
    v20 = *(a1 + 280);
    v21 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v21 >> 47) ^ v21);
    v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
    v24 = *(a1 + 80);
    if (!*&v24)
    {
      goto LABEL_29;
    }

    v25 = vcnt_s8(v24);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
      if (v23 >= *&v24)
      {
        v26 = v23 % *&v24;
      }
    }

    else
    {
      v26 = v23 & (*&v24 - 1);
    }

    v27 = *(*v61 + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v23)
      {
        if (v28[2] == v20)
        {
          v15 = v60;
          v30 = v28[4];
          v28[3] = v17[3];
          v28[4] = 0;
          v31 = v17[4];
          v17[4] = 0;
          v32 = v28[4];
          v28[4] = v31;
          if (v32)
          {
            operator delete(v32);
          }

          v33 = v17[4];
          v17[4] = v30;
          if (v33)
          {
            operator delete(v33);
          }

          v34 = v28[6];
          v35 = v28[5];
          v36 = v17[6];
          v28[5] = v17[5];
          v17[5] = v35;
          v28[6] = v36;
          v17[6] = v34;
          v37 = v28[7];
          v28[7] = v17[7];
          v17[7] = v37;
          v38 = *(v28 + 16);
          *(v28 + 16) = *(v17 + 16);
          *(v17 + 16) = v38;
          if (v28[7])
          {
            v39 = v28[5];
            v40 = *(v28[6] + 8);
            if ((v39 & (v39 - 1)) != 0)
            {
              if (v40 >= v39)
              {
                v40 %= v39;
              }
            }

            else
            {
              v40 &= v39 - 1;
            }

            *(v28[4] + 8 * v40) = v28 + 6;
          }

          if (v37)
          {
            v41 = v17[5];
            v42 = *(v17[6] + 8);
            if ((v41 & (v41 - 1)) != 0)
            {
              if (v42 >= v41)
              {
                v42 %= v41;
              }
            }

            else
            {
              v42 &= v41 - 1;
            }

            *(v17[4] + 8 * v42) = v17 + 6;
          }

          std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(v61, v60);
          break;
        }
      }

      else
      {
        if (v25.u32[0] > 1uLL)
        {
          if (v29 >= *&v24)
          {
            v29 %= *&v24;
          }
        }

        else
        {
          v29 &= *&v24 - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_29;
        }
      }

      v28 = *v28;
      if (!v28)
      {
        goto LABEL_29;
      }
    }
  }

  for (i = *(a1 + 88); i; i = *i)
  {
    for (j = i[6]; j; j = *j)
    {
      v45 = j[2];
      *(v45 + 112) = a5;
      v46 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 288, v45);
      if (v46)
      {
        (*(*v46 + 16))();
      }
    }
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v47 = *(a1 + 128);
  if (v47)
  {
    while (1)
    {
      v48 = CFGetTypeID(v47[3]);
      if (v48 == CMTimebaseGetTypeID())
      {
        break;
      }

LABEL_70:
      v47 = *v47;
      if (!v47)
      {
        goto LABEL_71;
      }
    }

    v49 = CMTimebaseCopySource(v47[3]);
    v50 = v49;
    if (*(a1 + 264) && (v49 != v11 ? (v51 = v49 == v13) : (v51 = 1), v51 || re::TimebaseManager::matchesAudioClock(a1, v49)))
    {
      v52 = CFRetain(v47[3]);
      v53 = &v62;
    }

    else
    {
      if (v50 != v11 && v50 != v13)
      {
        goto LABEL_69;
      }

      v52 = CFRetain(v47[3]);
      v53 = &v65;
    }

    std::__hash_table<OpaqueCMTimebase *,std::hash<OpaqueCMTimebase *>,std::equal_to<OpaqueCMTimebase *>,std::allocator<OpaqueCMTimebase *>>::__emplace_unique_key_args<OpaqueCMTimebase *,OpaqueCMTimebase *>(v53, v52);
LABEL_69:
    CFRelease(v50);
    goto LABEL_70;
  }

LABEL_71:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  os_unfair_lock_unlock((a1 + 24));
  for (k = v66; k; k = *k)
  {
    v56 = *(a1 + 272);
    if (!v56)
    {
      v56 = *(a1 + 280);
    }

    CMTimebaseSetSourceClock(k[2], v56);
    CFRelease(k[2]);
  }

  for (m = v63; m; m = *m)
  {
    v58 = *(a1 + 264);
    if (!v58)
    {
      v58 = *(a1 + 280);
    }

    CMTimebaseSetSourceClock(m[2], v58);
    CFRelease(m[2]);
  }

  re::TimebaseManager::_beforeFrameUpdate(a1);
  re::TimebaseManager::_afterFrameUpdate(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v62);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v65);
  return 0;
}

void re::TimebaseManager::~TimebaseManager(re::TimebaseManager *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 30);
  if (v2)
  {
    v3 = (*(*v2 + 64))(v2);
    if (*(v3 + 16))
    {
      v4 = v3;
      v5 = 0;
      do
      {
        v6 = (*(v4 + 32) + 32 * v5);
        if (*v6 == this)
        {
          if (!*(v4 + 80))
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v4, v5);
            continue;
          }

          v27[0] = 0;
          v7 = *(v6 + 1);
          v28 = *v6;
          v29 = v7;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v4 + 40, v27);
        }

        ++v5;
      }

      while (v5 < *(v4 + 16));
    }
  }

  v8 = *(this + 34);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 35);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    CFRelease(v11);
  }

  for (i = *(this + 6); i; i = *i)
  {
    re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(this, i[2]);
  }

  for (j = *(this + 16); j; j = *j)
  {
    CFRelease(j[3]);
  }

  for (k = *(this + 21); k; k = *k)
  {
    CFRelease(k[3]);
  }

  CFRelease(*(this + 29));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  v15 = *(this + 26);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(this + 24);
  *(this + 24) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 21);
  if (v18)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = *(this + 19);
  *(this + 19) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(this + 16);
  if (v21)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = *(this + 14);
  *(this + 14) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    do
    {
      v25 = *v24;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((v24 + 4));
      operator delete(v24);
      v24 = v25;
    }

    while (v25);
  }

  v26 = *(this + 9);
  *(this + 9) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TimebaseManager::~TimebaseManager(this);

  JUMPOUT(0x1E6906520);
}

void re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(re::TimebaseManager *this, OpaqueCMTimebase *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, this, *MEMORY[0x1E6960CE8], a2);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v5, this, *MEMORY[0x1E6960CD0], a2);
  v6 = CFNotificationCenterGetLocalCenter();
  v7 = *MEMORY[0x1E6960CE0];

  CFNotificationCenterRemoveObserver(v6, this, v7, a2);
}

re *re::TimebaseManager::audioClock(re::TimebaseManager *this, OpaqueCMClock **a2)
{
  result = *(this + 32);
  if (!result)
  {
    result = re::TimebaseService::CreateAudioClock(0, a2);
    *(this + 32) = result;
  }

  return result;
}

CMClockRef re::TimebaseManager::hostClock(re::TimebaseManager *this)
{
  result = *(this + 31);
  if (!result)
  {
    result = CMClockGetHostTimeClock();
    *(this + 31) = result;
  }

  return result;
}

void re::TimebaseManager::updatePrimarySharedClock(re::TimebaseManager *this, uint64_t a2, OpaqueCMClock **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(this + 33);
  if (v4 || (v4 = *(this + 34)) != 0)
  {
    *(this + 35) = CFRetain(v4);
  }

  else
  {
    HostTimeClock = *(this + 31);
    if (!HostTimeClock)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      *(this + 31) = HostTimeClock;
    }

    v6 = re::ManualCMClockCreateWithReference(HostTimeClock, (this + 280), a3);
    if (v6)
    {
      v7 = v6;
      v8 = re::TimebaseLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        v10 = "updatePrimarySharedClock";
        v11 = 1024;
        v12 = 284;
        v13 = 1024;
        v14 = v7;
        _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v9, 0x18u);
      }
    }
  }
}

BOOL re::TimebaseManager::matchesAudioClock(re::TimebaseManager *this, CMClockOrTimebaseRef clockOrTimebase1)
{
  AudioClock = *(this + 32);
  if (!AudioClock)
  {
    AudioClock = re::TimebaseService::CreateAudioClock(this, 0);
    *(this + 32) = AudioClock;
  }

  if (!CMSyncMightDrift(clockOrTimebase1, AudioClock))
  {
    return 1;
  }

  if (*(this + 336))
  {
    return 0;
  }

  v5 = +[REProxyAudioClockManager sharedInstance];
  v6 = [v5 copyAudioClock];

  if (!v6)
  {
    return 0;
  }

  v7 = CMSyncMightDrift(clockOrTimebase1, v6) == 0;
  CFRelease(v6);
  return v7;
}

void re::TimebaseManager::_beforeFrameUpdate(os_unfair_lock_s *this)
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  v2 = *&this[22]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = MEMORY[0x1E6960CC0];
    do
    {
      v4 = CFGetTypeID(v2[2]);
      if (v4 == CMClockGetTypeID())
      {
        v7 = v2[2];
        v8 = *&this[70]._os_unfair_lock_opaque;
        if (!v8)
        {
          re::TimebaseManager::updatePrimarySharedClock(this, v5, v6);
          v8 = *&this[70]._os_unfair_lock_opaque;
        }

        if (v7 == v8)
        {
          memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
          CMSyncGetTime(&outOfClockOrTimebaseAnchorTime, v2[2]);
          for (i = v2[6]; i; i = *i)
          {
            v28 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(i[2], v2 + 3);
            if (v28)
            {
              *(v28 + 40) = outOfClockOrTimebaseAnchorTime;
            }

            else
            {
              v29 = re::TimebaseLog(0);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                LOWORD(outRelativeToClockOrTimebaseAnchorTime.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Didn't find expected shared clock in TimebaseTree during beforeFrameUpdate", &outRelativeToClockOrTimebaseAnchorTime, 2u);
              }
            }
          }
        }

        else
        {
          v36 = 0.0;
          outRelativeRate = 0.0;
          v9 = *&this[66]._os_unfair_lock_opaque;
          if (v9)
          {
            RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v2[2], v9, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
            if (RelativeRateAndAnchorTime)
            {
              v11 = RelativeRateAndAnchorTime;
              v12 = re::TimebaseLog(RelativeRateAndAnchorTime);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v40.value) = 136315650;
                *(&v40.value + 4) = "_beforeFrameUpdate";
                LOWORD(v40.flags) = 1024;
                *(&v40.flags + 2) = 471;
                WORD1(v40.epoch) = 1024;
                HIDWORD(v40.epoch) = v11;
                _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v40, 0x18u);
              }
            }
          }

          else
          {
            outRelativeRate = 1.0;
            outOfClockOrTimebaseAnchorTime = *v3;
            outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
          }

          v14 = *&this[68]._os_unfair_lock_opaque;
          if (v14)
          {
            v15 = CMSyncGetRelativeRateAndAnchorTime(v2[2], v14, &v36, &v40, &v34);
            if (v15)
            {
              v16 = v15;
              v17 = re::TimebaseLog(v15);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.value) = 136315650;
                *(&buf.value + 4) = "_beforeFrameUpdate";
                LOWORD(buf.flags) = 1024;
                *(&buf.flags + 2) = 481;
                WORD1(buf.epoch) = 1024;
                HIDWORD(buf.epoch) = v16;
                _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &buf, 0x18u);
              }
            }
          }

          else
          {
            v36 = 1.0;
            v40 = *v3;
            v34 = v40;
          }

          for (j = v2[6]; j; j = *j)
          {
            v19 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(j[2], v2 + 3);
            if (v19)
            {
              v20 = v19;
              *(j[2] + 104) = CFAbsoluteTimeGetCurrent();
              v21 = *&this[68]._os_unfair_lock_opaque;
              if (v21)
              {
                time = *(v20 + 96);
                CMSyncConvertTime(&buf, &time, v2[2], v21);
              }

              else
              {
                buf = *v3;
              }

              v23 = *&this[66]._os_unfair_lock_opaque;
              if (v23)
              {
                v32 = *(v20 + 40);
                CMSyncConvertTime(&time, &v32, v2[2], v23);
              }

              else
              {
                time = *v3;
              }

              lhs = buf;
              rhs = *(v20 + 120);
              CMTimeSubtract(&v32, &lhs, &rhs);
              Seconds = CMTimeGetSeconds(&v32);
              lhs = time;
              rhs = *(v20 + 64);
              CMTimeSubtract(&v32, &lhs, &rhs);
              v25 = CMTimeGetSeconds(&v32);
              if (qword_1EE1C4210 != -1)
              {
                dispatch_once(&qword_1EE1C4210, &__block_literal_global_54_2);
              }

              if (fabs(Seconds) > *&qword_1EE1C4208 || fabs(v25) > *&qword_1EE1C4208)
              {
                *(v20 + 32) = outRelativeRate;
                *(v20 + 40) = outOfClockOrTimebaseAnchorTime;
                *(v20 + 64) = outRelativeToClockOrTimebaseAnchorTime;
                *(v20 + 88) = v36;
                *(v20 + 96) = v40;
                v26 = *&v34.value;
                *(v20 + 136) = v34.epoch;
                *(v20 + 120) = v26;
                v27 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], j[2]);
                if (v27)
                {
                  (*(*v27 + 16))();
                }
              }
            }

            else
            {
              v22 = re::TimebaseLog(0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.value) = 0;
                _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Didn't find expected clock in TimebaseTree during beforeFrameUpdate", &buf, 2u);
              }
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  os_unfair_lock_unlock(this + 6);
}

void re::TimebaseManager::_afterFrameUpdate(os_unfair_lock_s *this)
{
  v1 = this;
  v179 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  if (*&v1[54]._os_unfair_lock_opaque)
  {
    re::StackScratchAllocator::StackScratchAllocator(v163);
    v161 = 0;
    v159 = 0u;
    v160 = 0u;
    v162 = 0x7FFFFFFFLL;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v159, v163, 3);
    v4 = *&v1[52]._os_unfair_lock_opaque;
    if (v4)
    {
      v144 = 0;
      v145 = v1 + 66;
      v150 = v1 + 68;
      allocator = *MEMORY[0x1E695E480];
      v148 = v1;
      while (1)
      {
        if (!*&v145->_os_unfair_lock_opaque || (v5 = *&v1[60]._os_unfair_lock_opaque) == 0 || (v6 = (*(*v5 + 56))(v5), v7 = v145, v6 != *(v4[2] + 112)))
        {
          v7 = v150;
        }

        newSourceClock = *v7;
        if (!*v7)
        {
          newSourceClock = *&v1[70]._os_unfair_lock_opaque;
          if (!newSourceClock)
          {
            re::TimebaseManager::updatePrimarySharedClock(v1, v2, v3);
            newSourceClock = *&v1[70]._os_unfair_lock_opaque;
          }
        }

        v8 = v4[2];
        v152 = v4;
        if (*(v8 + 120) == 2)
        {
          v9 = re::TimebaseTree::rootID(v8);
          v10 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v9);
          if (newSourceClock)
          {
            if (v9)
            {
              if (v10)
              {
                v11 = v10[3];
                if (v11 != newSourceClock)
                {
                  v12 = v4[2];
                  timebaseOut.value = v9;
                  if (std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v9))
                  {
                    v13 = *(v12 + 32);
                    if (v13)
                    {
                      v14 = 0;
                      v15 = *(v12 + 16);
                      while (1)
                      {
                        v16 = *v15;
                        v15 += 50;
                        if (v16 < 0)
                        {
                          break;
                        }

                        if (v13 == ++v14)
                        {
                          LODWORD(v14) = *(v12 + 32);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v14) = 0;
                    }

LABEL_26:
                    while (v14 != v13)
                    {
                      v18 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, *(*(v12 + 16) + 200 * v14 + 8));
                      if (v18)
                      {
                        v19 = v18;
                        v20 = CFGetTypeID(v18[3]);
                        if (v20 == CMTimebaseGetTypeID())
                        {
                          v21 = v19[3];
                          v22 = CMTimebaseCopySource(v21);
                          if (v22 == v11)
                          {
                            v23 = CMTimebaseSetSourceClock(v21, newSourceClock);
                            if (v23)
                            {
                              v24 = v23;
                              v25 = re::TimebaseLog(v23);
                              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315650;
                                *&buf[4] = "changeSharedClock";
                                *&buf[12] = 1024;
                                *&buf[14] = 894;
                                *&buf[18] = 1024;
                                *&buf[20] = v24;
                                _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
                              }
                            }
                          }

                          CFRelease(v22);
                        }
                      }

                      v26 = *(v12 + 32);
                      if (v26 <= v14 + 1)
                      {
                        v26 = v14 + 1;
                      }

                      while (v26 - 1 != v14)
                      {
                        LODWORD(v14) = v14 + 1;
                        if ((*(*(v12 + 16) + 200 * v14) & 0x80000000) != 0)
                        {
                          goto LABEL_26;
                        }
                      }

                      LODWORD(v14) = v26;
                    }

                    v27 = CFRetain(newSourceClock);
                    *buf = &timebaseOut;
                    std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v1[38]._os_unfair_lock_opaque, v9)[3] = v27;
                    CFRelease(v11);
                    v4 = v152;
                  }

                  else
                  {
                    v17 = re::TimebaseLog(0);
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot change unknown shared clock", buf, 2u);
                    }
                  }

                  v144 = 1;
                }
              }
            }
          }

          v8 = v4[2];
        }

        v153 = *(v8 + 32);
        if (v153)
        {
          v28 = 0;
          v29 = *(v8 + 16);
          do
          {
            v30 = *v29;
            v29 += 50;
            if (v30 < 0)
            {
              goto LABEL_50;
            }

            ++v28;
          }

          while (v153 != v28);
          LODWORD(v28) = *(v8 + 32);
        }

        else
        {
          LODWORD(v28) = 0;
        }

LABEL_50:
        if (v28 != v153)
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_244;
        }
      }

      v31 = *(v8 + 16) + 200 * v28;
      v158 = 0;
      v157 = *(v31 + 8);
      if (!v157)
      {
        goto LABEL_220;
      }

      v32 = 0;
      v33 = 0;
      value = 0;
      while (1)
      {
        v35 = value;
        v36 = v33;
        if (DWORD2(v160))
        {
          v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) >> 27));
          v38 = *(*(&v159 + 1) + 4 * ((v37 ^ (v37 >> 31)) % DWORD2(v160)));
          if (v38 != 0x7FFFFFFF)
          {
            while (*(v160 + 24 * v38 + 16) != v32)
            {
              LODWORD(v38) = *(v160 + 24 * v38 + 8) & 0x7FFFFFFF;
              if (v38 == 0x7FFFFFFF)
              {
                goto LABEL_57;
              }
            }

LABEL_220:
            v124 = *(v8 + 32);
            if (v124 <= v28 + 1)
            {
              v124 = v28 + 1;
            }

            while (v124 - 1 != v28)
            {
              LODWORD(v28) = v28 + 1;
              if ((*(*(v8 + 16) + 200 * v28) & 0x80000000) != 0)
              {
                goto LABEL_50;
              }
            }

            LODWORD(v28) = v124;
            goto LABEL_50;
          }
        }

LABEL_57:
        v39 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4[2], &v157);
        if (!v39)
        {
          v123 = re::TimebaseLog(0);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v123, OS_LOG_TYPE_ERROR, "Failed to find expected ID", buf, 2u);
          }

          goto LABEL_219;
        }

        v33 = v39;
        v40 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, v157);
        v154 = v36;
        if (!v40)
        {
          break;
        }

        value = v40[3];
LABEL_85:
        *(v40 + 56) = 1;
        if (!*(v33 + 24) && *(v4[2] + 48))
        {
          v53 = CMTimebaseCopySource(value);
          if (!v53)
          {
            v123 = re::TimebaseLog(0);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v123, OS_LOG_TYPE_ERROR, "root timebase with external source does not have valid source", buf, 2u);
            }

LABEL_219:

            goto LABEL_220;
          }

          v54 = v53;
          memset(&time1, 0, sizeof(time1));
          v55 = v4[2];
          *buf = *(v55 + 80);
          *&buf[16] = *(v55 + 96);
          CMSyncConvertTime(&time1, buf, value, v53);
          if ((time1.flags & 1) == 0 || (timebaseOut = time1, rhs = *(v4[2] + 56), CMTimeSubtract(buf, &timebaseOut, &rhs), fabs(CMTimeGetSeconds(buf)) > 0.001))
          {
            v56 = v4[2];
            *buf = *(v56 + 80);
            *&buf[16] = *(v56 + 96);
            timebaseOut = *(v4[2] + 56);
            v57 = CMTimebaseSetRateAndAnchorTime(value, 1.0, buf, &timebaseOut);
            if (v57)
            {
              v58 = v57;
              v59 = re::TimebaseLog(v57);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "_afterFrameUpdate";
                *&buf[12] = 1024;
                *&buf[14] = 704;
                *&buf[18] = 1024;
                *&buf[20] = v58;
                _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
              }

              v4 = v152;
            }

            snprintf(buf, 0x64uLL, "re-anchoring tree %p with root ID %llu", v4[2], *(v33 + 8));
            v60 = strlen(buf);
            if (v60 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v61 = v60;
            if (v60 >= 0x17)
            {
              operator new();
            }

            HIBYTE(rhs.epoch) = v60;
            if (v60)
            {
              memcpy(&rhs, buf, v60);
            }

            *(&rhs.value + v61) = 0;
            if ((atomic_load_explicit(&qword_1EE1C4218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4218))
            {
              xmmword_1EE1C4278 = 0u;
              *&qword_1EE1C4288 = 0u;
              dword_1EE1C4298 = 1065353216;
              __cxa_guard_release(&qword_1EE1C4218);
            }

            if ((atomic_load_explicit(&qword_1EE1C4220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4220))
            {
              dword_1EE1C419C = 0;
              __cxa_guard_release(&qword_1EE1C4220);
            }

            os_unfair_lock_lock(&dword_1EE1C419C);
            v63 = re::foundationTimingLogObjects(v62);
            if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEFAULT) && ((Current = CFAbsoluteTimeGetCurrent(), (v65 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(&xmmword_1EE1C4278, &rhs)) == 0) || Current - *(v65 + 5) >= 2.0))
            {
              timebaseOut.value = &rhs;
              *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&xmmword_1EE1C4278, &rhs) + 5) = Current;
              if (qword_1EE1C4290 == 100)
              {
                *&timebaseOut.timescale = 0;
                timebaseOut.epoch = 0;
                timebaseOut.value = &timebaseOut.timescale;
                for (i = qword_1EE1C4288; i; i = *i)
                {
                  lhs.value = i + 40;
                  v68 = std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&timebaseOut, (i + 40));
                  std::string::operator=((v68 + 5), (i + 16));
                }

                std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::clear(&xmmword_1EE1C4278);
                if (&timebaseOut.timescale != timebaseOut.value)
                {
                  v69 = 10;
                  p_timescale = &timebaseOut.timescale;
                  do
                  {
                    v71 = *p_timescale;
                    v72 = p_timescale;
                    if (*p_timescale)
                    {
                      do
                      {
                        v73 = v71;
                        v71 = v71[1];
                      }

                      while (v71);
                    }

                    else
                    {
                      do
                      {
                        v73 = *(v72 + 2);
                        v43 = *v73 == v72;
                        v72 = v73;
                      }

                      while (v43);
                    }

                    v74 = *(v73 + 4);
                    if (Current - v74 >= 2.0)
                    {
                      break;
                    }

                    lhs.value = (v73 + 5);
                    *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&xmmword_1EE1C4278, v73 + 5) + 5) = v74;
                    v75 = *p_timescale;
                    if (*p_timescale)
                    {
                      do
                      {
                        v76 = v75;
                        v75 = v75[1];
                      }

                      while (v75);
                    }

                    else
                    {
                      do
                      {
                        v76 = *(p_timescale + 2);
                        v43 = *v76 == p_timescale;
                        p_timescale = v76;
                      }

                      while (v43);
                    }

                    if (!--v69)
                    {
                      break;
                    }

                    p_timescale = v76;
                  }

                  while (v76 != timebaseOut.value);
                }

                std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::destroy(&timebaseOut, *&timebaseOut.timescale);
              }

              v66 = 1;
            }

            else
            {
              v66 = 0;
            }

            os_unfair_lock_unlock(&dword_1EE1C419C);
            if (SHIBYTE(rhs.epoch) < 0)
            {
              operator delete(rhs.value);
              if (!v66)
              {
                goto LABEL_131;
              }
            }

            else if (!v66)
            {
              goto LABEL_131;
            }

            v78 = *re::foundationTimingLogObjects(v77);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = v152[2];
              v146 = *(v33 + 8);
              v147 = *(v79 + 48);
              timebaseOut = *(v79 + 80);
              Seconds = CMTimeGetSeconds(&timebaseOut);
              timebaseOut = *(v152[2] + 56);
              v81 = CMTimeGetSeconds(&timebaseOut);
              LODWORD(timebaseOut.value) = 134219520;
              *(&timebaseOut.value + 4) = v79;
              LOWORD(timebaseOut.flags) = 2048;
              *(&timebaseOut.flags + 2) = v146;
              v1 = v148;
              HIWORD(timebaseOut.epoch) = 2048;
              v166 = value;
              v167 = 2048;
              v168 = v147;
              v169 = 2048;
              v170 = v54;
              v171 = 2048;
              v172 = Seconds;
              v173 = 2048;
              v174 = v81;
              _os_log_impl(&dword_1E1C61000, v78, OS_LOG_TYPE_DEFAULT, "re-anchoring tree %p with root ID %llu (timebase %p) to source %llu (timebase %p) ownTime=%0.2f, sourceTime=%0.2f", &timebaseOut, 0x48u);
            }

LABEL_131:
            v4 = v152;
          }

          CFRelease(v54);
        }

        if (!v35)
        {
          goto LABEL_174;
        }

        v82 = CFGetTypeID(v35);
        if (v82 != CMTimebaseGetTypeID())
        {
          goto LABEL_174;
        }

        v83 = CMTimebaseCopySource(v35);
        CFRelease(v83);
        if (v83 != value)
        {
          v84 = CFGetTypeID(value);
          if (v84 == CMTimebaseGetTypeID())
          {
            v85 = CMTimebaseSetSourceTimebase(v35, value);
            if (v85)
            {
              v86 = v85;
              v87 = re::TimebaseLog(v85);
              if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
LABEL_142:

                goto LABEL_143;
              }

              *buf = 136315650;
              *&buf[4] = "_afterFrameUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 733;
              *&buf[18] = 1024;
              *&buf[20] = v86;
              v88 = v87;
LABEL_210:
              _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
              goto LABEL_142;
            }
          }

          else
          {
            v89 = CMTimebaseSetSourceClock(v35, value);
            if (v89)
            {
              v90 = v89;
              v87 = re::TimebaseLog(v89);
              if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_142;
              }

              *buf = 136315650;
              *&buf[4] = "_afterFrameUpdate";
              *&buf[12] = 1024;
              *&buf[14] = 736;
              *&buf[18] = 1024;
              *&buf[20] = v90;
              v88 = v87;
              goto LABEL_210;
            }
          }
        }

LABEL_143:
        v91 = 32;
        if (value == *&v150->_os_unfair_lock_opaque)
        {
          v91 = 88;
        }

        v92 = 40;
        if (value == *&v150->_os_unfair_lock_opaque)
        {
          v92 = 96;
        }

        v93 = *(v154 + v91);
        v94 = 64;
        if (value == *&v150->_os_unfair_lock_opaque)
        {
          v94 = 120;
        }

        v95 = v154 + v92;
        *buf = *v95;
        *&buf[16] = *(v95 + 16);
        timebaseOut = *(v154 + v94);
        v96 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&v1[38]._os_unfair_lock_opaque, *(v154 + 8));
        v97 = v96;
        if (*(v154 + 144) != 1 || !*v33)
        {
          if (v93 == 0.0)
          {
            if (CMTimebaseGetRate(v35) != 0.0)
            {
              v102 = CMTimebaseSetRate(v35, 0.0);
              if (v102)
              {
                v103 = v102;
                v104 = re::TimebaseLog(v102);
                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(time1.value) = 136315650;
                  *(&time1.value + 4) = "_afterFrameUpdate";
                  LOWORD(time1.flags) = 1024;
                  *(&time1.flags + 2) = 789;
                  WORD1(time1.epoch) = 1024;
                  HIDWORD(time1.epoch) = v103;
                  _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
                }

                v4 = v152;
              }
            }

            CMTimebaseGetTime(&time1, v35);
            rhs = *buf;
            if (CMTimeCompare(&time1, &rhs))
            {
              time1 = *buf;
              v105 = CMTimebaseSetTime(v35, &time1);
              if (v105)
              {
                v106 = v105;
                v107 = re::TimebaseLog(v105);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(time1.value) = 136315650;
                  *(&time1.value + 4) = "_afterFrameUpdate";
                  LOWORD(time1.flags) = 1024;
                  *(&time1.flags + 2) = 793;
                  WORD1(time1.epoch) = 1024;
                  HIDWORD(time1.epoch) = v106;
                  p_time1 = &time1;
                  v109 = v107;
                  goto LABEL_212;
                }

                goto LABEL_171;
              }
            }
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
            rhs = *buf;
            CMSyncConvertTime(&time1, &rhs, v35, value);
            memset(&rhs, 0, sizeof(rhs));
            lhs = time1;
            immediateSourceTime = timebaseOut;
            CMTimeSubtract(&rhs, &lhs, &immediateSourceTime);
            if (CMTimebaseGetRate(v35) != v93 || (lhs = rhs, fabs(CMTimeGetSeconds(&lhs)) > 0.001))
            {
              lhs = *buf;
              immediateSourceTime = timebaseOut;
              v110 = CMTimebaseSetRateAndAnchorTime(v35, v93, &lhs, &immediateSourceTime);
              if (v110)
              {
                v111 = v110;
                v107 = re::TimebaseLog(v110);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(lhs.value) = 136315650;
                  *(&lhs.value + 4) = "_afterFrameUpdate";
                  LOWORD(lhs.flags) = 1024;
                  *(&lhs.flags + 2) = 816;
                  WORD1(lhs.epoch) = 1024;
                  HIDWORD(lhs.epoch) = v111;
                  p_time1 = &lhs;
                  v109 = v107;
LABEL_212:
                  _os_log_error_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_ERROR, "%s:%d error: %d", p_time1, 0x18u);
                }

LABEL_171:
              }
            }
          }

          if (v97)
          {
            v112 = MEMORY[0x1E6960C70];
            *(v97 + 2) = *MEMORY[0x1E6960C70];
            v97[6] = *(v112 + 16);
          }

          goto LABEL_174;
        }

        time1 = *(v154 + 148);
        rhs = *(v96 + 4);
        if (CMTimeCompare(&time1, &rhs))
        {
          time1 = *(v154 + 148);
          CMSyncGetTime(&rhs, value);
          v98 = CMTimebaseSetRateAndAnchorTime(v35, v93, &time1, &rhs);
          if (v98)
          {
            v99 = v98;
            v100 = re::TimebaseLog(v98);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time1.value) = 136315650;
              *(&time1.value + 4) = "_afterFrameUpdate";
              LOWORD(time1.flags) = 1024;
              *(&time1.flags + 2) = 767;
              WORD1(time1.epoch) = 1024;
              HIDWORD(time1.epoch) = v99;
              _os_log_error_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
            }
          }

          v101 = *(v154 + 148);
          v97[6] = *(v154 + 164);
          *(v97 + 2) = v101;
        }

        else if (CMTimebaseGetRate(v35) != v93)
        {
          v120 = CMTimebaseSetRate(v35, v93);
          if (v120)
          {
            v121 = v120;
            v122 = re::TimebaseLog(v120);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              LODWORD(time1.value) = 136315650;
              *(&time1.value + 4) = "_afterFrameUpdate";
              LOWORD(time1.flags) = 1024;
              *(&time1.flags + 2) = 783;
              WORD1(time1.epoch) = 1024;
              HIDWORD(time1.epoch) = v121;
              _os_log_error_impl(&dword_1E1C61000, v122, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &time1, 0x18u);
            }
          }
        }

LABEL_174:
        if (v158)
        {
          if (HIDWORD(v160) == 1000)
          {
            v176 = 0;
            memset(buf, 0, sizeof(buf));
            v177 = 0x7FFFFFFFLL;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(buf, 0x3E9u);
            v113 = v161;
            if (v161)
            {
              v114 = 0;
              v115 = (v160 + 8);
              while (1)
              {
                v116 = *v115;
                v115 += 6;
                if (v116 < 0)
                {
                  break;
                }

                if (v161 == ++v114)
                {
                  LODWORD(v114) = v161;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v114) = 0;
            }

            if (v114 != v161)
            {
              v117 = v160;
              do
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(buf, (v117 + 24 * v114 + 16));
                v117 = v160;
                if (v161 <= v114 + 1)
                {
                  v118 = v114 + 1;
                }

                else
                {
                  v118 = v161;
                }

                while (v118 - 1 != v114)
                {
                  LODWORD(v114) = v114 + 1;
                  if ((*(v160 + 24 * v114 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_191;
                  }
                }

                LODWORD(v114) = v118;
LABEL_191:
                ;
              }

              while (v114 != v113);
            }

            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(&v159, buf);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v159, &v158);
        }

        v32 = v157;
        v157 = *(v33 + 24);
        v158 = v32;
        if (!v157)
        {
          goto LABEL_220;
        }
      }

      v41 = *v33;
      if (*v33)
      {
        v42 = v4[2];
        v43 = v41 != 3 && *(v42 + 120) == 2;
        v44 = v43;
        if (v41 != 4 && !v44 && !*(v42 + 48))
        {
          if (v41 == 1)
          {
            AudioClock = *&v1[64]._os_unfair_lock_opaque;
            if (!AudioClock)
            {
              AudioClock = re::TimebaseService::CreateAudioClock(0, v2);
              *&v1[64]._os_unfair_lock_opaque = AudioClock;
            }
          }

          else if (v41 == 3)
          {
            AudioClock = newSourceClock;
          }

          else
          {
            AudioClock = *&v1[62]._os_unfair_lock_opaque;
            if (!AudioClock)
            {
              AudioClock = CMClockGetHostTimeClock();
              *&v1[62]._os_unfair_lock_opaque = AudioClock;
            }
          }

          value = CFRetain(AudioClock);
          goto LABEL_84;
        }
      }

      timebaseOut.value = 0;
      if (*(v33 + 24) || (v49 = *(v4[2] + 48)) == 0)
      {
        v45 = CMTimebaseCreateWithSourceClock(allocator, newSourceClock, &timebaseOut);
        if (!v45)
        {
LABEL_81:
          value = timebaseOut.value;
          v52 = re::TimebaseLog(v45);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v157;
            _os_log_debug_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEBUG, "Creating externally controlled timebase with ID %llu", buf, 0xCu);
          }

LABEL_84:
          *buf = &v157;
          v40 = std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v1[38]._os_unfair_lock_opaque, v157);
          v40[3] = value;
          goto LABEL_85;
        }

        v46 = v45;
        v47 = re::TimebaseLog(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
LABEL_80:

          goto LABEL_81;
        }

        *buf = 136315650;
        *&buf[4] = "_afterFrameUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 652;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        v48 = v47;
      }

      else
      {
        ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(v1, v49);
        if (!ClockOrTimebaseForID)
        {
          v125 = re::TimebaseLog(0);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            v126 = *(v4[2] + 48);
            *buf = 134217984;
            *&buf[4] = v126;
            _os_log_error_impl(&dword_1E1C61000, v125, OS_LOG_TYPE_ERROR, "Could not find manual timebase with ID %llu", buf, 0xCu);
          }

          goto LABEL_220;
        }

        v45 = CMTimebaseCreateWithSourceTimebase(allocator, ClockOrTimebaseForID, &timebaseOut);
        if (!v45)
        {
          goto LABEL_81;
        }

        v51 = v45;
        v47 = re::TimebaseLog(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_80;
        }

        *buf = 136315650;
        *&buf[4] = "_afterFrameUpdate";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 1024;
        *&buf[20] = v51;
        v48 = v47;
      }

      _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
      goto LABEL_80;
    }

    v144 = 0;
LABEL_244:
    v132 = *&v1[42]._os_unfair_lock_opaque;
    if (v132)
    {
      while ((v144 & 1) != 0 || LOBYTE(v132[14]._os_unfair_lock_opaque) == 1)
      {
        LOBYTE(v132[14]._os_unfair_lock_opaque) = 0;
        v133 = *&v132->_os_unfair_lock_opaque;
LABEL_276:
        v132 = v133;
        if (!v133)
        {
          goto LABEL_277;
        }
      }

      CFRelease(*&v132[6]._os_unfair_lock_opaque);
      v134 = *&v1[40]._os_unfair_lock_opaque;
      v135 = *&v132[2]._os_unfair_lock_opaque;
      v136 = vcnt_s8(v134);
      v136.i16[0] = vaddlv_u8(v136);
      if (v136.u32[0] > 1uLL)
      {
        if (v135 >= *&v134)
        {
          v135 %= *&v134;
        }
      }

      else
      {
        v135 &= *&v134 - 1;
      }

      v133 = *&v132->_os_unfair_lock_opaque;
      v137 = *&v1[38]._os_unfair_lock_opaque;
      v138 = *(v137 + 8 * v135);
      do
      {
        v139 = v138;
        v138 = *&v138->_os_unfair_lock_opaque;
      }

      while (v138 != v132);
      if (v139 == &v1[42])
      {
        goto LABEL_282;
      }

      v140 = *&v139[2]._os_unfair_lock_opaque;
      if (v136.u32[0] > 1uLL)
      {
        if (v140 >= *&v134)
        {
          v140 %= *&v134;
        }
      }

      else
      {
        v140 &= *&v134 - 1;
      }

      v141 = *&v132->_os_unfair_lock_opaque;
      if (v140 != v135)
      {
LABEL_282:
        if (v133)
        {
          v142 = *&v133[2]._os_unfair_lock_opaque;
          if (v136.u32[0] > 1uLL)
          {
            v143 = *&v133[2]._os_unfair_lock_opaque;
            if (v142 >= *&v134)
            {
              v143 = v142 % *&v134;
            }
          }

          else
          {
            v143 = v142 & (*&v134 - 1);
          }

          v141 = *&v132->_os_unfair_lock_opaque;
          if (v143 == v135)
          {
            goto LABEL_269;
          }
        }

        *(v137 + 8 * v135) = 0;
        v141 = *&v132->_os_unfair_lock_opaque;
      }

      if (!v141)
      {
LABEL_275:
        *&v139->_os_unfair_lock_opaque = v141;
        *&v132->_os_unfair_lock_opaque = 0;
        --*&v1[44]._os_unfair_lock_opaque;
        operator delete(v132);
        goto LABEL_276;
      }

      v142 = *(v141 + 8);
LABEL_269:
      if (v136.u32[0] > 1uLL)
      {
        if (v142 >= *&v134)
        {
          v142 %= *&v134;
        }
      }

      else
      {
        v142 &= *&v134 - 1;
      }

      if (v142 != v135)
      {
        *(*&v1[38]._os_unfair_lock_opaque + 8 * v142) = v139;
        v141 = *&v132->_os_unfair_lock_opaque;
      }

      goto LABEL_275;
    }

LABEL_277:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v159);
    re::StackScratchAllocator::~StackScratchAllocator(v163);
  }

  else
  {
    for (j = *&v1[42]._os_unfair_lock_opaque; j; j = *j)
    {
      CFRelease(j[3]);
    }

    if (*&v1[44]._os_unfair_lock_opaque)
    {
      v128 = *&v1[42]._os_unfair_lock_opaque;
      if (v128)
      {
        do
        {
          v129 = *v128;
          operator delete(v128);
          v128 = v129;
        }

        while (v129);
      }

      *&v1[42]._os_unfair_lock_opaque = 0;
      v130 = *&v1[40]._os_unfair_lock_opaque;
      if (v130)
      {
        for (k = 0; k != v130; ++k)
        {
          *(*&v1[38]._os_unfair_lock_opaque + 8 * k) = 0;
        }
      }

      *&v1[44]._os_unfair_lock_opaque = 0;
    }
  }

  os_unfair_lock_unlock(v1 + 6);
}

void re::TimebaseManager::setTreeDidChangeCallback(uint64_t a1, unint64_t a2, void *a3)
{
  aBlock = a3;
  os_unfair_lock_lock((a1 + 24));
  if (!aBlock)
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v10 ^ (v10 >> 31));
    v11 = HIDWORD(v21);
    if (HIDWORD(v21) == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 304);
    v13 = (v12 + 32 * HIDWORD(v21));
    v14 = *v13 & 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      *(*(a1 + 296) + 4 * v21) = v14;
    }

    else
    {
      *(v12 + 32 * v22) = *(v12 + 32 * v22) & 0x80000000 | v14;
    }

    v18 = *v13;
    if (*v13 < 0)
    {
      *v13 = v18 & 0x7FFFFFFF;

      v12 = *(a1 + 304);
      v18 = *(v12 + 32 * v11);
    }

    *(v12 + 32 * v11) = *(a1 + 324) | v18 & 0x80000000;
    *(a1 + 324) = v11;
    --*(a1 + 316);
    goto LABEL_17;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(a1 + 288) || (v7 = *(*(a1 + 296) + 4 * (v6 % *(a1 + 312))), v7 == 0x7FFFFFFF))
  {
LABEL_7:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v6);
    if (HIDWORD(v21) != 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    v9 = re::HashTable<re::ecs2::VideoComponent *,AVPlayer * {__strong},re::Hash<re::ecs2::VideoComponent *>,re::EqualTo<re::ecs2::VideoComponent *>,true,false>::allocEntry(a1 + 288, v21, v20);
    *(v9 + 8) = a2;
    *(v9 + 16) = _Block_copy(aBlock);
LABEL_17:
    ++*(a1 + 328);
    goto LABEL_18;
  }

  v8 = *(a1 + 304);
  while (*(v8 + 32 * v7 + 8) != a2)
  {
    v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_7;
    }
  }

  v15 = _Block_copy(aBlock);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 288, a2, v6);
  v16 = *(a1 + 304) + 32 * HIDWORD(v21);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;

LABEL_18:
  os_unfair_lock_unlock((a1 + 24));
}

void re::TimebaseManager::beforeFrameUpdate(re::TimebaseManager *this, float a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v8, 2516, this);
  if (a2 > 0.0)
  {
    v4 = *(this + 29);
    CMTimebaseGetTime(&lhs, v4);
    CMTimeMake(&rhs, (a2 * 18000.0 + 0.5), 18000);
    CMTimeAdd(&time, &lhs, &rhs);
    CMTimebaseSetTime(v4, &time);
  }

  re::TimebaseManager::_beforeFrameUpdate(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v8);
}

void re::TimebaseManager::afterFrameUpdate(os_unfair_lock_s *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v2, 2518, this);
  re::TimebaseManager::_afterFrameUpdate(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v2);
}

void *re::TimebaseManager::findClockOrTimebaseForID(re::TimebaseManager *this, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 19, a2);
  if (result)
  {
    return result[3];
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(this + 14, a2);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t re::TimebaseManager::clockOrTimebaseTypeFromRef(re::TimebaseManager *this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CMTimebaseGetTypeID())
  {
    return 0;
  }

  HostTimeClock = *(this + 31);
  if (!HostTimeClock)
  {
    HostTimeClock = CMClockGetHostTimeClock();
    *(this + 31) = HostTimeClock;
  }

  if (CFEqual(HostTimeClock, cf))
  {
    return 2;
  }

  v9 = *(this + 33);
  if (v9 && !CMSyncMightDrift(v9, cf))
  {
    return 3;
  }

  v10 = *(this + 34);
  if (v10)
  {
    if (!CMSyncMightDrift(v10, cf))
    {
      return 3;
    }
  }

  v11 = *(this + 35);
  if (!v11)
  {
    re::TimebaseManager::updatePrimarySharedClock(this, v7, v8);
    v11 = *(this + 35);
  }

  if (!CMSyncMightDrift(v11, cf))
  {
    return 3;
  }

  if (re::TimebaseManager::matchesAudioClock(this, cf))
  {
    return 1;
  }

  return 4;
}

unint64_t re::TimebaseManager::addLocallyControlledTimebaseToTree(os_unfair_lock_s *this, OpaqueCMTimebase *a2, re::TimebaseTree *a3, int a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v84 = a3;
  os_unfair_lock_lock(this + 6);
  v82 = 0;
  v83 = 0;
  v81 = a2;
  if (!a2)
  {
    goto LABEL_80;
  }

  v6 = 0;
  v7 = 0;
  v68 = 0;
  name = *MEMORY[0x1E6960CE8];
  v63 = *MEMORY[0x1E6960CE0];
  v64 = *MEMORY[0x1E6960CD0];
  v8 = a2;
  timebase = a2;
  do
  {
    v80 = 0;
    v9 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
    if (v9)
    {
      v10 = v9;
      v80 = v9[3];
      v11 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v9 + 4, v84) != 0;
      if (v6)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v12 = arc4random();
    v80 = arc4random() | (v12 << 32);
    memset(&v88[8], 0, 32);
    v89 = 1065353216;
    *v88 = v80;
    v85 = &v84;
    std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(&v88[8], v84)[3] = 1;
    CFRetain(v8);
    v13 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ HIDWORD(v8));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v13 >> 47) ^ v13);
    v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
    v16 = *&this[20]._os_unfair_lock_opaque;
    if (!*&v16)
    {
      goto LABEL_22;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & v15;
    }

    v19 = *(*&this[18]._os_unfair_lock_opaque + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == v15)
      {
        break;
      }

      if (v17.u32[0] > 1uLL)
      {
        if (v21 >= *&v16)
        {
          v21 %= *&v16;
        }
      }

      else
      {
        v21 &= *&v16 - 1;
      }

      if (v21 != v18)
      {
        goto LABEL_22;
      }

LABEL_21:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    if (v20[2] != v8)
    {
      goto LABEL_21;
    }

    a2 = timebase;
    v20[3] = *v88;
    if (v20 + 3 != v88)
    {
      *(v20 + 16) = v89;
      v22 = *&v88[24];
      v23 = v20[5];
      if (!v23)
      {
        goto LABEL_30;
      }

      for (i = 0; i != v23; ++i)
      {
        *(v20[4] + 8 * i) = 0;
      }

      v25 = v20[6];
      v20[6] = 0;
      v20[7] = 0;
      if (v25)
      {
        while (v22)
        {
          v25[2] = v22[2];
          v25[3] = v22[3];
          v26 = *v25;
          std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__node_insert_multi((v20 + 4), v25);
          v22 = *v22;
          v25 = v26;
          if (!v26)
          {
            goto LABEL_30;
          }
        }

        do
        {
          v27 = *v25;
          operator delete(v25);
          v25 = v27;
        }

        while (v27);
      }

      else
      {
LABEL_30:
        if (v22)
        {
          operator new();
        }
      }
    }

    v8 = v81;
    v85 = &v80;
    std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&this[28]._os_unfair_lock_opaque, v80)[3] = v8;
    v10 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v88[8]);
    v11 = 0;
    if (v82)
    {
LABEL_34:
      if (!*(re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v84, &v82) + 24))
      {
        v28 = v80;
        *(re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v84, &v82) + 24) = v28;
      }
    }

LABEL_36:
    v29 = CFEqual(v8, a2);
    if (v29)
    {
      v83 = v80;
      if (!std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[8]._os_unfair_lock_opaque, v8))
      {
        std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(&this[8]._os_unfair_lock_opaque, v8);
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, this, re::TimebaseManager::LeafTimebaseNeedsUpdating, name, v8, CFNotificationSuspensionBehaviorDrop);
        v31 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(v31, this, re::TimebaseManager::LeafTimebaseNeedsUpdating, v64, v8, CFNotificationSuspensionBehaviorDrop);
        v32 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(v32, this, re::TimebaseManager::LeafMasterDidChange, v63, v8, CFNotificationSuspensionBehaviorDrop);
      }
    }

    v35 = re::TimebaseManager::clockOrTimebaseTypeFromRef(this, v8);
    if ((v68 & (v7 != 0)) == 1)
    {
      CFRelease(v7);
      v68 = 0;
    }

    if (v35 == 3)
    {
      v8 = 0;
      if (v11)
      {
        goto LABEL_49;
      }

LABEL_51:
      outRelativeRate = 1.0;
      outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
      outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      v75 = **&MEMORY[0x1E6960CC0];
      v76 = 1.0;
      v74 = **&MEMORY[0x1E6960CC0];
      if (v8)
      {
        v38 = v81;
        RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v81, v8, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
        if (CMSyncGetRelativeRate(v38, v8) == 0.0 || RelativeRateAndAnchorTime == -12755)
        {
          CMSyncGetTime(v88, v38);
          outOfClockOrTimebaseAnchorTime = *v88;
          outRelativeToClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
        }

        else if (RelativeRateAndAnchorTime)
        {
          v41 = re::TimebaseLog(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *v88 = 67109120;
            *&v88[4] = RelativeRateAndAnchorTime;
            _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Failed to calculate relative rate and anchor: %d", v88, 8u);
          }
        }

        v42 = *&this[68]._os_unfair_lock_opaque;
        if (v8 == *&this[66]._os_unfair_lock_opaque && v42)
        {
          v43 = CMSyncGetRelativeRateAndAnchorTime(v38, v42, &v76, &v75, &v74);
          if (v43)
          {
            v44 = v43;
            v45 = re::TimebaseLog(v43);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *v88 = 136315650;
              *&v88[4] = "addLocallyControlledTimebaseToTree";
              *&v88[12] = 1024;
              *&v88[14] = 1042;
              *&v88[18] = 1024;
              *&v88[20] = v44;
              _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v88, 0x18u);
            }
          }
        }

        else if (v8 == v42)
        {
          v76 = outRelativeRate;
          v75 = outOfClockOrTimebaseAnchorTime;
          v74 = outRelativeToClockOrTimebaseAnchorTime;
          outRelativeRate = 1.0;
          outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960CC0];
          outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
        }
      }

      v73 = **&MEMORY[0x1E6960CC0];
      if (v29)
      {
        v46 = a4;
      }

      else
      {
        v46 = 0;
      }

      if (v46 == 1)
      {
        if (CMTimebaseGetEffectiveRate(timebase) == 0.0)
        {
          CMTimebaseGetTime(&v73, timebase);
        }

        else
        {
          v48 = re::TimebaseLog(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *v88 = 0;
            _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "new locally-controlled timebase has non-zero rate so initial seek target is undefined", v88, 2u);
          }
        }
      }

      v49 = v84;
      v50 = v80;
      v51 = outRelativeRate;
      v72 = outOfClockOrTimebaseAnchorTime;
      v71 = outRelativeToClockOrTimebaseAnchorTime;
      v52 = v76;
      v70 = v75;
      v69 = v74;
      *&v88[3] = v73;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v84, &v80, v53 ^ (v53 >> 31), &v85);
      if (HIDWORD(v86) == 0x7FFFFFFF)
      {
        v54 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v49, v86, v85);
        *(v54 + 8) = v80;
        *(v54 + 16) = v35;
        *(v54 + 24) = v50;
        *(v54 + 32) = 1;
        *(v54 + 40) = 0;
        *(v54 + 48) = v51;
        *(v54 + 56) = v72;
        *(v54 + 80) = v71;
        *(v54 + 104) = v52;
        *(v54 + 112) = v70;
        *(v54 + 136) = v69;
        *(v54 + 160) = v46;
        *(v54 + 161) = *v88;
        *(v54 + 172) = *&v88[11];
        ++*(v49 + 10);
      }

      *v88 = &v84;
      v36 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v84);
      v37 = 1;
    }

    else
    {
      if (v35)
      {
        v8 = *&this[70]._os_unfair_lock_opaque;
        if (v8)
        {
          if (!v11)
          {
            goto LABEL_51;
          }
        }

        else
        {
          re::TimebaseManager::updatePrimarySharedClock(this, v33, v34);
          v8 = *&this[70]._os_unfair_lock_opaque;
          if (!v11)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v8 = CMTimebaseCopySource(v81);
        v68 = 1;
        if (!v11)
        {
          goto LABEL_51;
        }
      }

LABEL_49:
      *v88 = &v84;
      v36 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v84);
      v37 = v36[3] + 1;
    }

    v36[3] = v37;
    v6 = v80;
    v81 = v8;
    v82 = v80;
    v7 = v8;
    a2 = timebase;
  }

  while (v8);
LABEL_80:
  v55 = *&this[60]._os_unfair_lock_opaque;
  if (v55)
  {
    v55 = (*(*v55 + 56))(v55);
  }

  v56 = v84;
  *(v84 + 14) = v55;
  v57 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], v56);
  if (v57)
  {
    (*(*v57 + 16))();
  }

  v58 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v84, &v83);
  v59 = v58;
  if (!v58 || v58[144] != a4)
  {
    v60 = re::TimebaseLog(v58);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *v88 = 134218496;
      *&v88[4] = v83;
      *&v88[12] = 2048;
      *&v88[14] = v59;
      *&v88[22] = 1024;
      *&v88[24] = a4;
      _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "timebase %llu node %p has unexpected prioritizeContinuity state (expected %d)", v88, 0x1Cu);
    }
  }

  v61 = v83;
  os_unfair_lock_unlock(this + 6);
  return v61;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 200 * v6 + 16;
}

void re::TimebaseManager::LeafTimebaseNeedsUpdating(re::TimebaseManager *this, __CFNotificationCenter *a2, const __CFString *a3, __CFString *a4, CFDictionaryRef theDict, const __CFDictionary *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960CC8]);
  if (Value)
  {
    memset(&v38, 0, sizeof(v38));
    CMTimeMakeFromDictionary(&v38, Value);
  }

  else
  {
    v10 = re::TimebaseLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(outOfClockOrTimebaseAnchorTime.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "leaf timebase update does not have event time", &outOfClockOrTimebaseAnchorTime, 2u);
    }

    v38 = **&MEMORY[0x1E6960C70];
  }

  v45 = v38.value;
  flags = v38.flags;
  timescale = v38.timescale;
  epoch = v38.epoch;
  os_unfair_lock_lock(a2 + 6);
  if (a4)
  {
    v12 = 0;
    v13 = *MEMORY[0x1E6960CE8];
    v14 = MEMORY[0x1E6960CC0];
    while (1)
    {
      v15 = a4;
      v16 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(a2 + 9, a4);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v20 = re::TimebaseManager::clockOrTimebaseTypeFromRef(a2, a4);
      if (v12)
      {
        CFRelease(v15);
      }

      if (v20)
      {
        if (v20 == 3)
        {
          goto LABEL_51;
        }

        a4 = *(a2 + 35);
        if (a4)
        {
          v36 = 0;
        }

        else
        {
          re::TimebaseManager::updatePrimarySharedClock(a2, v18, v19);
          v36 = 0;
          a4 = *(a2 + 35);
        }
      }

      else
      {
        a4 = CMTimebaseCopySource(v15);
        v36 = 1;
      }

      outRelativeRate = 1.0;
      outOfClockOrTimebaseAnchorTime = *v14;
      outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      v40 = *v14;
      v41 = 1.0;
      v39 = *v14;
      RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v15, a4, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
      if (CMSyncGetRelativeRate(v15, a4) == 0.0 || RelativeRateAndAnchorTime)
      {
        outRelativeRate = 0.0;
        Time = CMSyncGetTime(&v47, v15);
        outOfClockOrTimebaseAnchorTime = v47;
        outRelativeToClockOrTimebaseAnchorTime = *v14;
        if (RelativeRateAndAnchorTime != -12755)
        {
          if (RelativeRateAndAnchorTime)
          {
            v23 = re::TimebaseLog(Time);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v47.value) = 67109120;
              HIDWORD(v47.value) = RelativeRateAndAnchorTime;
              _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Failed to calculate relative rate and anchor: %d", &v47, 8u);
            }
          }
        }
      }

      v24 = *(a2 + 34);
      if (a4 == *(a2 + 33) && v24)
      {
        v25 = CMSyncGetRelativeRateAndAnchorTime(v15, v24, &v41, &v40, &v39);
        if (v25)
        {
          v26 = v25;
          v27 = re::TimebaseLog(v25);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v47.value) = 136315650;
            *(&v47.value + 4) = "updateEffectiveRateOrAnchorThroughTimebase";
            LOWORD(v47.flags) = 1024;
            *(&v47.flags + 2) = 1265;
            WORD1(v47.epoch) = 1024;
            HIDWORD(v47.epoch) = v26;
            _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v47, 0x18u);
          }
        }
      }

      else if (a4 == v24)
      {
        v41 = outRelativeRate;
        v40 = outOfClockOrTimebaseAnchorTime;
        v39 = outRelativeToClockOrTimebaseAnchorTime;
        outRelativeRate = 1.0;
        outOfClockOrTimebaseAnchorTime = *v14;
        outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
      }

      for (i = v17[6]; i; i = *i)
      {
        v29 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(i[2], v17 + 3);
        if (v29)
        {
          v30 = v29;
          if (CFStringCompare(a3, v13, 0) == kCFCompareEqualTo && *(v30 + 144) == 1 && (flags & 1) != 0)
          {
            *(v30 + 148) = v45;
            *(v30 + 156) = timescale;
            *(v30 + 160) = flags;
            *(v30 + 164) = epoch;
            *(v30 + 164) = atomic_fetch_add(a2 + 43, 1uLL) + 1;
          }

          *(v30 + 32) = outRelativeRate;
          *(v30 + 40) = outOfClockOrTimebaseAnchorTime;
          *(v30 + 64) = outRelativeToClockOrTimebaseAnchorTime;
          *(v30 + 88) = v41;
          *(v30 + 96) = v40;
          v32 = *&v39.value;
          *(v30 + 136) = v39.epoch;
          *(v30 + 120) = v32;
          v33 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a2 + 288, i[2]);
          if (v33)
          {
            (*(*v33 + 16))();
          }
        }

        else
        {
          v34 = re::TimebaseLog(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v47.value) = 0;
            _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Trying to update unknown struct in tree", &v47, 2u);
          }
        }
      }

      v12 = v36;
      if (!a4)
      {
        goto LABEL_51;
      }
    }

    v35 = re::TimebaseLog(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(outOfClockOrTimebaseAnchorTime.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Trying to update unknown clock or timebase", &outOfClockOrTimebaseAnchorTime, 2u);
    }
  }

LABEL_51:
  os_unfair_lock_unlock(a2 + 6);
}

void re::TimebaseManager::LeafMasterDidChange(re::TimebaseManager *this, os_unfair_lock_s *a2, void *a3, __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  os_unfair_lock_lock(a2 + 6);
  v8 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&a2[18]._os_unfair_lock_opaque, a4);
  if (v8)
  {
    v9 = v8;
    *buf = 0u;
    v23 = 0u;
    v24 = *(v8 + 16);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(buf, v8[5]);
    v10 = v9[6];
    if (!v10)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v11 = v10[2];
      v12 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
      v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
      v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
      if (!*&buf[8])
      {
        goto LABEL_19;
      }

      v15 = vcnt_s8(*&buf[8]);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
        if (v14 >= *&buf[8])
        {
          v16 = v14 % *&buf[8];
        }
      }

      else
      {
        v16 = v14 & (*&buf[8] - 1);
      }

      v17 = *(*buf + 8 * v16);
      if (!v17 || (v18 = *v17) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v19 = v18[1];
        if (v19 == v14)
        {
          break;
        }

        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&buf[8])
          {
            v19 %= *&buf[8];
          }
        }

        else
        {
          v19 &= *&buf[8] - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_19;
        }

LABEL_18:
        v18 = *v18;
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      if (v18[2] != v11)
      {
        goto LABEL_18;
      }

      v10 = *v10;
      if (!v10)
      {
LABEL_21:
        os_unfair_lock_unlock(a2 + 6);
        for (i = v23; i; i = *i)
        {
          re::TimebaseManager::removeLocallyControlledTimebaseFromTree(a2, a4, i[2], 0);
          re::TimebaseManager::addLocallyControlledTimebaseToTree(a2, a4, i[2], 0);
        }

        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(buf);
        return;
      }
    }
  }

  v21 = re::TimebaseLog(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Received update for unknown timebase", buf, 2u);
  }

  os_unfair_lock_unlock(a2 + 6);
}

void re::TimebaseManager::removeLocallyControlledTimebaseFromTree(os_unfair_lock_s *this, OpaqueCMTimebase *a2, re::TimebaseTree *a3, int a4)
{
  v5 = a3;
  v61 = a3;
  os_unfair_lock_lock(this + 6);
  v59 = 0;
  v60 = 0;
  if (a2)
  {
    v8 = a2;
    while (1)
    {
      v9 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[18]._os_unfair_lock_opaque, v8);
      v5 = v61;
      if (!v9)
      {
        goto LABEL_115;
      }

      v10 = v9;
      if (!std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v9 + 4, v61))
      {
        goto LABEL_115;
      }

      v59 = v10[3];
      v62 = &v61;
      v11 = std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(v10 + 4, v5);
      v12 = v11[3];
      v13 = v12 - 1;
      v11[3] = v12 - 1;
      if (v12 != 1)
      {
        goto LABEL_99;
      }

      v14 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(v10 + 4, v61);
      if (v14)
      {
        break;
      }

LABEL_35:
      if (v8 == a2)
      {
        v25 = a4;
      }

      else
      {
        v25 = 1;
      }

      if (!v10[7] && v25)
      {
        std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(&this[18]._os_unfair_lock_opaque, v8);
        v26 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, v59);
        if (v26)
        {
          v27 = *&this[30]._os_unfair_lock_opaque;
          v28 = *&v26[2]._os_unfair_lock_opaque;
          v29 = vcnt_s8(v27);
          v29.i16[0] = vaddlv_u8(v29);
          if (v29.u32[0] > 1uLL)
          {
            if (v28 >= *&v27)
            {
              v28 %= *&v27;
            }
          }

          else
          {
            v28 &= *&v27 - 1;
          }

          v30 = *&v26->_os_unfair_lock_opaque;
          v31 = *&this[28]._os_unfair_lock_opaque;
          v32 = *(v31 + 8 * v28);
          do
          {
            v33 = v32;
            v32 = *&v32->_os_unfair_lock_opaque;
          }

          while (v32 != v26);
          if (v33 == &this[32])
          {
            goto LABEL_58;
          }

          v34 = *&v33[2]._os_unfair_lock_opaque;
          if (v29.u32[0] > 1uLL)
          {
            if (v34 >= *&v27)
            {
              v34 %= *&v27;
            }
          }

          else
          {
            v34 &= *&v27 - 1;
          }

          if (v34 == v28)
          {
LABEL_60:
            if (v30)
            {
              v35 = *(v30 + 8);
              goto LABEL_62;
            }
          }

          else
          {
LABEL_58:
            if (!v30)
            {
              goto LABEL_59;
            }

            v35 = *(v30 + 8);
            if (v29.u32[0] > 1uLL)
            {
              v36 = *(v30 + 8);
              if (v35 >= *&v27)
              {
                v36 = v35 % *&v27;
              }
            }

            else
            {
              v36 = v35 & (*&v27 - 1);
            }

            if (v36 != v28)
            {
LABEL_59:
              *(v31 + 8 * v28) = 0;
              v30 = *&v26->_os_unfair_lock_opaque;
              goto LABEL_60;
            }

LABEL_62:
            if (v29.u32[0] > 1uLL)
            {
              if (v35 >= *&v27)
              {
                v35 %= *&v27;
              }
            }

            else
            {
              v35 &= *&v27 - 1;
            }

            if (v35 != v28)
            {
              *(*&this[28]._os_unfair_lock_opaque + 8 * v35) = v33;
              v30 = *&v26->_os_unfair_lock_opaque;
            }
          }

          *&v33->_os_unfair_lock_opaque = v30;
          *&v26->_os_unfair_lock_opaque = 0;
          --*&this[34]._os_unfair_lock_opaque;
          operator delete(v26);
        }

        v37 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[8]._os_unfair_lock_opaque, v8);
        if (v37)
        {
          v38 = *&this[10]._os_unfair_lock_opaque;
          v39 = *&v37[2]._os_unfair_lock_opaque;
          v40 = vcnt_s8(v38);
          v40.i16[0] = vaddlv_u8(v40);
          if (v40.u32[0] > 1uLL)
          {
            if (v39 >= *&v38)
            {
              v39 %= *&v38;
            }
          }

          else
          {
            v39 &= *&v38 - 1;
          }

          v41 = *&v37->_os_unfair_lock_opaque;
          v42 = *&this[8]._os_unfair_lock_opaque;
          v43 = *(v42 + 8 * v39);
          do
          {
            v44 = v43;
            v43 = *&v43->_os_unfair_lock_opaque;
          }

          while (v43 != v37);
          if (v44 == &this[12])
          {
            goto LABEL_87;
          }

          v45 = *&v44[2]._os_unfair_lock_opaque;
          if (v40.u32[0] > 1uLL)
          {
            if (v45 >= *&v38)
            {
              v45 %= *&v38;
            }
          }

          else
          {
            v45 &= *&v38 - 1;
          }

          if (v45 == v39)
          {
LABEL_89:
            if (v41)
            {
              v46 = *(v41 + 8);
              goto LABEL_91;
            }
          }

          else
          {
LABEL_87:
            if (!v41)
            {
              goto LABEL_88;
            }

            v46 = *(v41 + 8);
            if (v40.u32[0] > 1uLL)
            {
              v47 = *(v41 + 8);
              if (v46 >= *&v38)
              {
                v47 = v46 % *&v38;
              }
            }

            else
            {
              v47 = v46 & (*&v38 - 1);
            }

            if (v47 != v39)
            {
LABEL_88:
              *(v42 + 8 * v39) = 0;
              v41 = *&v37->_os_unfair_lock_opaque;
              goto LABEL_89;
            }

LABEL_91:
            if (v40.u32[0] > 1uLL)
            {
              if (v46 >= *&v38)
              {
                v46 %= *&v38;
              }
            }

            else
            {
              v46 &= *&v38 - 1;
            }

            if (v46 != v39)
            {
              *(*&this[8]._os_unfair_lock_opaque + 8 * v46) = v44;
              v41 = *&v37->_os_unfair_lock_opaque;
            }
          }

          *&v44->_os_unfair_lock_opaque = v41;
          *&v37->_os_unfair_lock_opaque = 0;
          --*&this[14]._os_unfair_lock_opaque;
          operator delete(v37);
          re::TimebaseManager::cleanUpLeafLocallyControlledTimebase(this, v8);
        }

        CFRelease(v8);
      }

LABEL_99:
      v48 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v61, &v59);
      if (v48 && (v49 = *(v48 + 24)) != 0 && (v50 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, v49)) != 0)
      {
        v8 = v50[3];
        if (!v13)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v8 = 0;
        if (!v13)
        {
LABEL_105:
          v51 = v61;
          v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v61, &v59, v52 ^ (v52 >> 31), &v62);
          v53 = v64;
          if (v64 != 0x7FFFFFFF)
          {
            v54 = *(v51 + 2);
            v55 = *(v54 + 200 * v64) & 0x7FFFFFFF;
            if (v65 == 0x7FFFFFFF)
            {
              *(*(v51 + 1) + 4 * v63) = v55;
              v53 = v64;
            }

            else
            {
              *(v54 + 200 * v65) = *(v54 + 200 * v65) & 0x80000000 | v55;
            }

            *(v54 + 200 * v53) = *(v51 + 9);
            --*(v51 + 7);
            v56 = *(v51 + 10) + 1;
            *(v51 + 9) = v53;
            *(v51 + 10) = v56;
          }

          if (v60)
          {
            v57 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v61, &v60);
            if (v57)
            {
              *(v57 + 24) = 0;
            }
          }
        }
      }

      v60 = v59;
      if (!v8)
      {
        v5 = v61;
        goto LABEL_115;
      }
    }

    v15 = v10[5];
    v16 = v14[1];
    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      if (v16 >= *&v15)
      {
        v16 %= *&v15;
      }
    }

    else
    {
      v16 &= *&v15 - 1;
    }

    v18 = *v14;
    v19 = v10[4];
    v20 = *(v19 + 8 * v16);
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20 != v14);
    if (v21 == v10 + 6)
    {
      goto LABEL_24;
    }

    v22 = v21[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v22 >= *&v15)
      {
        v22 %= *&v15;
      }
    }

    else
    {
      v22 &= *&v15 - 1;
    }

    if (v22 != v16)
    {
LABEL_24:
      if (v18)
      {
        v23 = *(v18 + 8);
        if (v17.u32[0] > 1uLL)
        {
          v24 = *(v18 + 8);
          if (v23 >= *&v15)
          {
            v24 = v23 % *&v15;
          }
        }

        else
        {
          v24 = v23 & (*&v15 - 1);
        }

        if (v24 == v16)
        {
          goto LABEL_28;
        }
      }

      *(v19 + 8 * v16) = 0;
      v18 = *v14;
    }

    if (!v18)
    {
LABEL_34:
      *v21 = v18;
      *v14 = 0;
      --v10[7];
      operator delete(v14);
      goto LABEL_35;
    }

    v23 = *(v18 + 8);
LABEL_28:
    if (v17.u32[0] > 1uLL)
    {
      if (v23 >= *&v15)
      {
        v23 %= *&v15;
      }
    }

    else
    {
      v23 &= *&v15 - 1;
    }

    if (v23 != v16)
    {
      *(v10[4] + 8 * v23) = v21;
      v18 = *v14;
    }

    goto LABEL_34;
  }

LABEL_115:
  v58 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&this[72], v5);
  if (v58)
  {
    (*(*v58 + 16))();
  }

  os_unfair_lock_unlock(this + 6);
}

uint64_t re::TimebaseManager::addExternallyControlledTree(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  if (std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[48]._os_unfair_lock_opaque, a2) || (v5 = *(a2 + 48)) != 0 && ((ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, v5)) == 0 || (v7 = CFGetTypeID(ClockOrTimebaseForID), v7 != CMTimebaseGetTypeID())))
  {
    os_unfair_lock_unlock(this + 6);
    return 0;
  }

  v8 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = *&this[50]._os_unfair_lock_opaque;
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*&this[48]._os_unfair_lock_opaque + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (v15[2] != a2)
  {
    goto LABEL_22;
  }

  os_unfair_lock_unlock(this + 6);
  re::TimebaseManager::_afterFrameUpdate(this);
  return 1;
}

uint64_t re::TimebaseManager::removeTimebaseTree(os_unfair_lock_s *this, re::TimebaseTree *a2)
{
  os_unfair_lock_lock(this + 6);
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 2);
    while (1)
    {
      v7 = *v6;
      v6 += 50;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
    goto LABEL_34;
  }

  v8 = *(a2 + 8);
  do
  {
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, *(*(a2 + 2) + 200 * v5 + 8));
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *&this[10]._os_unfair_lock_opaque;
    if (!*&v10)
    {
      goto LABEL_26;
    }

    v11 = v9[3];
    v12 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
    v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
    v15 = vcnt_s8(v10);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v14;
      if (v14 >= *&v10)
      {
        v16 = v14 % *&v10;
      }
    }

    else
    {
      v16 = v14 & (*&v10 - 1);
    }

    v17 = *(*&this[8]._os_unfair_lock_opaque + 8 * v16);
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    if (!v18)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v19 = v18[1];
      if (v14 == v19)
      {
        break;
      }

      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= *&v10)
        {
          v19 %= *&v10;
        }
      }

      else
      {
        v19 &= *&v10 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_26;
      }

LABEL_25:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (v18[2] != v11)
    {
      goto LABEL_25;
    }

    std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(&v34, v11);
    v8 = *(a2 + 8);
LABEL_26:
    if (v8 <= v5 + 1)
    {
      v20 = v5 + 1;
    }

    else
    {
      v20 = v8;
    }

    while (v20 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a2 + 2) + 200 * v5) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v5) = v20;
LABEL_33:
    ;
  }

  while (v5 != v4);
LABEL_34:
  v21 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(&this[48]._os_unfair_lock_opaque, a2);
  if (v21)
  {
    v22 = *&this[50]._os_unfair_lock_opaque;
    v23 = *&v21->_os_unfair_lock_opaque;
    v24 = *&v21[2]._os_unfair_lock_opaque;
    v25 = vcnt_s8(v22);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      if (v24 >= *&v22)
      {
        v24 %= *&v22;
      }
    }

    else
    {
      v24 &= *&v22 - 1;
    }

    v26 = *&this[48]._os_unfair_lock_opaque;
    v27 = *(v26 + 8 * v24);
    do
    {
      v28 = v27;
      v27 = *&v27->_os_unfair_lock_opaque;
    }

    while (v27 != v21);
    if (v28 == &this[52])
    {
      goto LABEL_52;
    }

    v29 = *&v28[2]._os_unfair_lock_opaque;
    if (v25.u32[0] > 1uLL)
    {
      if (v29 >= *&v22)
      {
        v29 %= *&v22;
      }
    }

    else
    {
      v29 &= *&v22 - 1;
    }

    if (v29 == v24)
    {
LABEL_54:
      if (v23)
      {
        v30 = *(v23 + 8);
        goto LABEL_56;
      }
    }

    else
    {
LABEL_52:
      if (!v23)
      {
        goto LABEL_53;
      }

      v30 = *(v23 + 8);
      if (v25.u32[0] > 1uLL)
      {
        v31 = *(v23 + 8);
        if (v30 >= *&v22)
        {
          v31 = v30 % *&v22;
        }
      }

      else
      {
        v31 = v30 & (*&v22 - 1);
      }

      if (v31 != v24)
      {
LABEL_53:
        *(v26 + 8 * v24) = 0;
        v23 = *&v21->_os_unfair_lock_opaque;
        goto LABEL_54;
      }

LABEL_56:
      if (v25.u32[0] > 1uLL)
      {
        if (v30 >= *&v22)
        {
          v30 %= *&v22;
        }
      }

      else
      {
        v30 &= *&v22 - 1;
      }

      if (v30 != v24)
      {
        *(*&this[48]._os_unfair_lock_opaque + 8 * v30) = v28;
        v23 = *&v21->_os_unfair_lock_opaque;
      }
    }

    *&v28->_os_unfair_lock_opaque = v23;
    *&v21->_os_unfair_lock_opaque = 0;
    --*&this[54]._os_unfair_lock_opaque;
    operator delete(v21);
  }

  os_unfair_lock_unlock(this + 6);
  for (i = v35; i; i = *i)
  {
    re::TimebaseManager::removeLocallyControlledTimebaseFromTree(this, i[2], a2, 1);
  }

  re::TimebaseManager::_afterFrameUpdate(this);
  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v34);
}

void *re::TimebaseManager::copyReadOnlyClockOrTimebaseForID(os_unfair_lock_s *this, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 6);
  ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, a2);
  os_unfair_lock_unlock(this + 6);
  if (ClockOrTimebaseForID)
  {
    v5 = CFGetTypeID(ClockOrTimebaseForID);
    if (v5 == CMTimebaseGetTypeID())
    {
      OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
      if (OnlyTimebase)
      {
        v7 = OnlyTimebase;
        v8 = re::TimebaseLog(OnlyTimebase);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v11 = "copyReadOnlyClockOrTimebaseForID";
          v12 = 1024;
          v13 = 1400;
          v14 = 1024;
          v15 = v7;
          _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s:%d error: %d", buf, 0x18u);
        }
      }

      return 0;
    }

    else
    {
      CFRetain(ClockOrTimebaseForID);
    }
  }

  return ClockOrTimebaseForID;
}

void *re::TimebaseManager::copyClockOrTimebaseForID(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  ClockOrTimebaseForID = re::TimebaseManager::findClockOrTimebaseForID(this, a2);
  os_unfair_lock_unlock(this + 6);
  if (ClockOrTimebaseForID)
  {
    CFRetain(ClockOrTimebaseForID);
  }

  return ClockOrTimebaseForID;
}

BOOL re::TimebaseManager::isLocallyControlledClockOrTimebase(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 6);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, a2) != 0;
  os_unfair_lock_unlock(this + 6);
  return v4;
}

void re::TimebaseManager::latestSeekTargetForTimebase(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = a2;
  os_unfair_lock_lock(this + 6);
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[38]._os_unfair_lock_opaque, a2);
  if (v6)
  {
    *a3 = *(v6 + 2);
    v7 = v6[6];
    goto LABEL_24;
  }

  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[28]._os_unfair_lock_opaque, a2);
  if (!v8)
  {
LABEL_23:
    v20 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v7 = *(v20 + 16);
    goto LABEL_24;
  }

  v9 = *&this[20]._os_unfair_lock_opaque;
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = *(v8 + 24);
  v11 = 0x9DDFEA08EB382D69 * ((8 * (v10 & 0x1FFFFFFF) + 8) ^ HIDWORD(v10));
  v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v11 >> 47) ^ v11);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
  v14 = vcnt_s8(v9);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v13;
    if (v13 >= *&v9)
    {
      v15 = v13 % *&v9;
    }
  }

  else
  {
    v15 = v13 & (*&v9 - 1);
  }

  v16 = *(*&this[18]._os_unfair_lock_opaque + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_20:
    v19 = re::TimebaseLog(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = a2;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "retrieving seek target for un-referenced timebase %llu", buf, 0xCu);
    }

    goto LABEL_23;
  }

  while (1)
  {
    v18 = v17[1];
    if (v13 == v18)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= *&v9)
      {
        v18 %= *&v9;
      }
    }

    else
    {
      v18 &= *&v9 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_20;
    }

LABEL_19:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (v17[2] != v10)
  {
    goto LABEL_19;
  }

  v21 = v17 + 6;
  do
  {
    v21 = *v21;
    if (!v21)
    {
      v22 = re::TimebaseLog(v8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v23;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "retrieving seek target for unused timebase %llu", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v8 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21[2], &v23);
  }

  while (!v8);
  if (*(v8 + 144) != 1)
  {
    goto LABEL_23;
  }

  *a3 = *(v8 + 148);
  v7 = *(v8 + 164);
LABEL_24:
  *(a3 + 16) = v7;
  os_unfair_lock_unlock(this + 6);
}

void ___ZL34AlignmentDifferenceUpdateThresholdv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 doubleForKey:@"clockSyncUpdateThreshold"];
  qword_1EE1C4208 = v1;

  if (*&qword_1EE1C4208 == 0.0)
  {
    qword_1EE1C4208 = 0x3F847AE147AE147BLL;
  }
}

void std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void *re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, void *a5)
{
  *&v16[16] = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  *v16 = 0x3FF0000000000000uLL;
  *&v16[8] = *MEMORY[0x1E6960CC0];
  *&v16[24] = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v17 = *MEMORY[0x1E6960CC0];
  *&v18 = v8;
  *(&v18 + 1) = 0x3FF0000000000000;
  v9 = *MEMORY[0x1E6960CC0];
  *&v20[0] = *(MEMORY[0x1E6960CC0] + 16);
  v19 = v9;
  v10 = *MEMORY[0x1E6960CC0];
  *(&v20[1] + 1) = *(MEMORY[0x1E6960CC0] + 16);
  *(v20 + 8) = v10;
  v11 = *MEMORY[0x1E6960CC0];
  *(&v20[3] + 4) = *(MEMORY[0x1E6960CC0] + 16);
  *(&v20[2] + 4) = v11;
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v15);
  v13 = v12;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v12);
  return v13;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 50;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 200 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 200 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v22, v4, a2);
      v5 = *v22;
      *v22 = *a1;
      *a1 = v5;
      v6 = *&v22[16];
      v7 = *(a1 + 16);
      *&v22[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      ++*&v22[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v7 + 192) % *(a1 + 24));
            *(v12 + 8) = *(v7 + 8);
            v13 = *(v7 + 128);
            v14 = *(v7 + 144);
            v15 = *(v7 + 176);
            *(v12 + 160) = *(v7 + 160);
            *(v12 + 176) = v15;
            *(v12 + 128) = v13;
            *(v12 + 144) = v14;
            v16 = *(v7 + 64);
            v17 = *(v7 + 80);
            v18 = *(v7 + 112);
            *(v12 + 96) = *(v7 + 96);
            *(v12 + 112) = v18;
            *(v12 + 64) = v16;
            *(v12 + 80) = v17;
            v19 = *(v7 + 16);
            v20 = *(v7 + 48);
            *(v12 + 32) = *(v7 + 32);
            *(v12 + 48) = v20;
            *(v12 + 16) = v19;
          }

          ++v11;
          v7 += 200;
        }

        while (v11 < v10);
      }

      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v22);
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