BOOL re::ecs2::NetworkComponent::setAccessControl(re::ecs2::NetworkComponent *this, const re::ecs2::SyncAccessControl *a2)
{
  ++re::NetworkSystem::setAclCount;
  if (*(this + 472))
  {
    return 0;
  }

  re::ecs2::SyncAccessControl::SyncAccessControl(v6, a2);
  re::ecs2::SyncAccessControl::normalize(v6);
  v4 = re::ecs2::SyncAccessControl::operator==(v6, this + 440);
  if (!v4)
  {
    re::ecs2::SyncAccessControl::operator=(this + 440, v6);
    re::ecs2::NetworkComponent::resolveViews(this, 0);
    re::ecs2::NetworkComponent::resolveLocalViews(this, 0);
  }

  v2 = !v4;
  re::ecs2::SyncAccessControl::~SyncAccessControl(v6);
  return v2;
}

uint64_t re::ecs2::NetworkComponent::onAdded(uint64_t this, re::NetworkSystem *a2)
{
  *(this + 56) = a2;
  if (!a2)
  {
    return this;
  }

  v2 = this;
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v3)
    {
      v3 = re::internal::enableSignposts(0, 0);
      if (v3)
      {
        re::packCharArrayToUInt64ForAriadne(*(*(v2 + 16) + 296), 0);
        v3 = kdebug_trace();
      }
    }
  }

  if (!re::NetworkSystemFeatureFlags::enableAltSharedApp(v3))
  {
    goto LABEL_24;
  }

  v4 = *(v2 + 116);
  if ((v4 & 0x80000000) == 0)
  {
    ++*(v2 + 476);
    *(v2 + 116) = v4 | 0x8000;
    re::ecs2::NetworkComponent::markEntityDirty(v2, 1);
    *(v2 + 116) |= 0x4000u;
    v6 = *(v2 + 16);
    v7 = *(v6 + 72);
    if (v7)
    {
      v8 = *(v6 + 88);
      v9 = 8 * v7;
      do
      {
        v10 = *v8;
        {
          LOWORD(v24) = *((*(*v10 + 40))(v10) + 16);
          if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(v2 + 336, &v24))
          {
            v11 = (*(*v10 + 40))(v10);
            if (*(v2 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::add((v2 + 112), *(v11 + 16));
            }

            v12 = (*(*v10 + 40))(v10);
            if (*(v2 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::markDirty((v2 + 112), *(v12 + 16));
            }
          }
        }

        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    v13 = *(v2 + 56);
    v23 = v2;
    v14 = (v2 + 8);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v13 + 2584, &v23);
    if (v23)
    {

      v23 = 0;
    }

    v15 = *(v2 + 56);
    v16 = *(v2 + 16);
    v22 = 0;
    re::NetworkSystem::entityAddedToScene(v15, v16, &v22);
    if (v22)
    {
      RESyncRelease();
      v22 = 0;
    }

    re::ecs2::NetworkComponent::resolveLocalViews(v2, 0);
    if (!*(*(v2 + 56) + 3156))
    {
      goto LABEL_29;
    }

    v17 = 1;
LABEL_25:
    v18 = *(v2 + 32);
    if (v18)
    {
      re::ecs2::NetworkComponent::bindEntityTo(v18, *(v2 + 16));
      if ((v17 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      re::ecs2::NetworkComponent::bindEntityForRemoteSync(v2);
    }

LABEL_29:
    re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(v2 + 56) + 528, *(v2 + 56));
    v19 = *(v2 + 56);
    v24 = v2;
    v20 = (v2 + 8);
    v21 = 2632;
    if (!*(v2 + 32))
    {
      v21 = 2680;
    }

    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v19 + v21, &v24);
    if (v24)
    {

      v24 = 0;
    }

    goto LABEL_33;
  }

  if (*(*(v2 + 56) + 3156))
  {
LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

LABEL_33:
  this = re::internal::enableSignposts(0, 0);
  if (this)
  {
    this = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (this)
    {
      this = re::internal::enableSignposts(0, 0);
      if (this)
      {
        re::packCharArrayToUInt64ForAriadne(*(*(v2 + 16) + 296), 0);
        if (*(v2 + 32))
        {
          RESyncableGetGuid();
        }

        return kdebug_trace();
      }
    }
  }

  return this;
}

void re::ecs2::NetworkComponent::bindEntityForRemoteSync(re::ecs2::NetworkComponent *this)
{
  v39 = *MEMORY[0x1E69E9840];
  re::ecs2::NetworkComponent::findSyncService(this);
  if (*(this + 8))
  {
    IncomingSyncable = RESyncServiceCreateIncomingSyncable();
  }

  else
  {
    IncomingSyncable = RESyncServiceCreateSyncableWithTypeId();
  }

  v3 = IncomingSyncable;
  v4 = (this + 32);
  if (*(this + 4) != IncomingSyncable)
  {
    RESyncableRefRetainer::reset(this + 4, IncomingSyncable);
  }

  if (v3)
  {
    RESyncRelease();
  }

  v5 = re::ecs2::NetworkComponent::bindEntityTo(v3, *(this + 2));
  v6 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v5);
  if (v6)
  {
    v7 = *re::ecsNetworkLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 2);
      v9 = *(v8 + 296);
      v10 = *(v8 + 312);
      *buf = 136381187;
      v30 = v9;
      v31 = 2048;
      v32 = v10;
      v33 = 2048;
      Guid = RESyncableGetGuid();
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Binding entity '%{private}s' %llu to syncable %llu", buf, 0x20u);
    }
  }

  if (*(this + 51) == 1)
  {
    if (*v4)
    {
LABEL_16:
      RESyncableSetLocked();
      goto LABEL_19;
    }

    *(this + 51) = 1;
  }

  else
  {
    if (*(this + 51))
    {
      goto LABEL_19;
    }

    if (*v4)
    {
      goto LABEL_16;
    }

    *(this + 51) = 0;
  }

LABEL_19:
  RESyncableSetMigrateWhenAbandoned();
  re::ecs2::NetworkComponent::markEntityDirty(this, 2);
  v11 = *(this + 2);
  v12 = v11[9];
  if (v12)
  {
    v13 = v11[11];
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      re::ecs2::NetworkComponent::createSyncObjectForLocalComponent(&v28, this, *v13);
      if (v28)
      {
        v16 = (*(*v15 + 40))(v15);
        v17 = re::ecs2::RemoteComponentInfo::markDirty(this + 144, *(v16 + 16));
        v18 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v17);
        if (v18)
        {
          v19 = *re::ecsNetworkLogObjects(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *((*(*v15 + 40))(v15) + 32);
            v21 = *(*(this + 2) + 312);
            v22 = RESyncableGetGuid();
            v23 = RESyncableGetGuid();
            *buf = 134219011;
            v30 = v15;
            v31 = 2081;
            v32 = v20;
            v33 = 2048;
            Guid = v21;
            v35 = 2048;
            v36 = v22;
            v37 = 2048;
            v38 = v23;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "[NetworkComponent], Binding component %p(%{private}s) in authoritative entity %llu(%llu) to syncable %llu", buf, 0x34u);
          }
        }

        RESyncRelease();
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v11 = *(this + 2);
  }

  v24 = v11[43];
  if (v24)
  {
    v25 = v11[45];
    v26 = 8 * v24;
    do
    {
      v27 = *(*v25 + 216);
      if (v27 && *(v27 + 4))
      {
        re::ecs2::NetworkComponent::markEntityDirty(v27, 3);
      }

      v25 += 8;
      v26 -= 8;
    }

    while (v26);
  }

  *(this + 50) = 1;
  *(this + 48) = 1;
  re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(this + 7) + 528, *(this + 7));
  re::ecs2::NetworkComponent::resolveViews(this, 0);
}

void re::ecs2::NetworkComponent::onRemoved(re::ecs2::NetworkComponent *this, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(this + 208))
    {
      v3 = (this + 216);
    }

    else
    {
      v3 = *(this + 28);
    }

    v4 = *(this + 25);
    if (v4)
    {
      v5 = 8 * v4;
      do
      {
        if (*v3)
        {
          RESyncableSetUserData();
        }

        ++v3;
        v5 -= 8;
      }

      while (v5);
    }

    memset(*(this + 15), 255, 16 * (*(this + 58) & 0x1FFF));
    *(this + 28) = 0;
    *(this + 59) = 0;
    *(this + 58) &= 0x1FFFu;
    *(this + 10) = 0;
    *(this + 22) += 2;
    re::ecs2::RemoteComponentInfo::clearAll(this + 144);
  }

  if (*(this + 7))
  {
    v6 = re::internal::enableSignposts(0, 0);
    if (v6)
    {
      v6 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (v6)
      {
        v7 = *(this + 7);
        re::packCharArrayToUInt64ForAriadne(*(*(this + 2) + 296), 0);
        if (*(this + 4))
        {
          RESyncableGetGuid();
        }

        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 6042, v7);
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
      }
    }

    v8 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v6);
    if (v8)
    {
      v9 = *re::ecsNetworkLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(this + 2);
        v11 = *(v10 + 296);
        v12 = *(v10 + 312);
        Guid = RESyncableGetGuid();
        *buf = 136381187;
        *&buf[4] = v11;
        v24 = 2048;
        v25 = v12;
        v26 = 2048;
        v27 = Guid;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unbinding entity '%{private}s' %llu from syncable %llu", buf, 0x20u);
      }
    }

    if (!*(this + 4) || RESyncableIsAuthoritative())
    {
      v14 = *(this + 7);
      if (v14)
      {
        v15 = *(this + 2);
        v22 = *(this + 4);
        if (v22)
        {
          RESyncRetain();
        }

        re::NetworkSystem::entityRemovedFromScene(v14, v15, &v22);
        if (v22)
        {
          RESyncRelease();
          v22 = 0;
        }

        if (*(this + 208))
        {
          v16 = (this + 216);
        }

        else
        {
          v16 = *(this + 28);
        }

        v17 = *(this + 25);
        if (v17)
        {
          v18 = 8 * v17;
          do
          {
            if (*v16)
            {
              RESyncableSetUserData();
            }

            ++v16;
            v18 -= 8;
          }

          while (v18);
        }

        memset(*(this + 15), 255, 16 * (*(this + 58) & 0x1FFF));
        *(this + 28) = 0;
        *(this + 59) = 0;
        *(this + 58) &= 0x1FFFu;
        *(this + 10) = 0;
        *(this + 22) += 2;
        re::ecs2::RemoteComponentInfo::clearAll(this + 144);
        re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(this + 7) + 704, *(this + 7));
      }
    }

    if (*(this + 4))
    {
      if (RESyncableGetDirectView())
      {
        RESyncRetain();
        RESyncableSetDirectView();
        if (!RESyncViewGetObjectCount() && re::ecs2::NetworkComponent::findSyncService(this))
        {
          RESyncServiceRemoveView();
        }

        RESyncRelease();
      }

      v19 = *(this + 5);
      if (v19)
      {

        *(this + 5) = 0;
      }

      RESyncableSetUserData();
      if (*(this + 4))
      {
        RESyncRelease();
        *(this + 4) = 0;
      }
    }

    re::ecs2::NetworkComponent::clearDirty(this, 3);
    *buf = this;
    v20 = this + 8;
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(*(this + 7) + 2584, buf);
    v21 = *(this + 7);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(v21 + 2632, buf);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(v21 + 2680, buf);
    *(this + 7) = 0;
    if (*buf)
    {
    }
  }
}

BOOL re::ecs2::LocalComponentInfo::contains(re::ecs2::LocalComponentInfo *this, const re::ecs2::ComponentTypeBase *a2, int16x4_t a3)
{
  if ((*(this + 2) & 0x80000000) == 0 || !*this)
  {
    return 0;
  }

  v4 = vdupq_lane_s16(a3, 0);
  v5 = *(this + 1);
  v6 = 1;
  while (1)
  {
    v7 = vandq_s8(vceqq_s16(*v5, v4), xmmword_1E306AC00);
    v7.i16[0] = vmaxvq_u16(v7);
    if (v7.i32[0])
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (8 * ((*this + 7) >> 3) + v6 == 1)
    {
      return 0;
    }
  }

  return v7.u16[0] - v6 >= 0 && v7.u16[0] - v6 < *(this + 1);
}

uint64_t re::ecs2::NetworkComponent::resolveSelfView(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  ++re::NetworkSystem::resolveSelfViewCount;
  SyncService = re::ecs2::NetworkComponent::findSyncService(a1);
  if (SyncService)
  {
    if (!*(a1 + 32) || (RESyncableIsDestroyed() & 1) != 0)
    {
      SyncService = 0;
      goto LABEL_5;
    }

    DirectView = RESyncableGetDirectView();
    v11 = DirectView;
    v12 = *(a1 + 16);
    if (v12 && (v13 = *(v12 + 32)) != 0 && (v14 = *(v13 + 216)) != 0 && (DirectView = *(v14 + 32)) != 0)
    {
      DirectView = RESyncableGetDirectView();
      v15 = DirectView;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = 0;
      if (!v11)
      {
LABEL_20:
        v16 = 0;
        if (!v15)
        {
LABEL_21:
          v17 = 0;
LABEL_25:
          v18 = *(a1 + 16);
          v35 = v15;
          v36 = v11;
          if (v18 && (v19 = *(v18 + 32)) != 0 && ((*(v19 + 304) & 0x80) == 0 || *(v19 + 216)))
          {
            if (v17)
            {
              v20 = (v17 + 56);
              v21 = *(v17 + 88);
              v22 = *(v19 + 216);
              if (v22)
              {
                if (*(v22 + 32))
                {
                  OwnerPeerID = RESyncableGetOwnerPeerID();
                }

                else
                {
                  OwnerPeerID = *(v22 + 64);
                }

LABEL_35:
                re::ecs2::SyncAccessControl::resolve(v20, (a1 + 440), buf);
                if (*(a1 + 473) == 1)
                {
                  re::ecs2::SyncAccessControl::removeEntry(buf, OwnerPeerID);
                  if (*(a1 + 32))
                  {
                    v25 = RESyncableGetOwnerPeerID();
                  }

                  else
                  {
                    v25 = *(a1 + 64);
                  }

                  v24 = re::ecs2::SyncAccessControl::addEntry(buf, v25, 0);
                }

                v26 = *(a1 + 432);
                if (v26 == 1)
                {
                  v27 = v21;
                }

                else
                {
                  v27 = 2;
                }

                if (v21 == v26 || v21 == 1)
                {
                  v29 = *(a1 + 432);
                }

                else
                {
                  v29 = v27;
                }

                if (!v16 || *(v16 + 88) != v29 || (v24 = re::ecs2::SyncAccessControl::operator==(buf, v16 + 56), (v24 & 1) == 0))
                {
                  if (!v17 || *(v17 + 88) != v29 || (v24 = re::ecs2::SyncAccessControl::operator==(buf, v17 + 56), !v24))
                  {
                    v31 = re::globalAllocators(v24);
                    v32 = (*(*v31[2] + 32))(v31[2], 104, 8);
                    ArcSharedObject::ArcSharedObject(v32, 0);
                    *v32 = &unk_1F5CF6900;
                    *(v32 + 40) = 0u;
                    *(v32 + 24) = 0u;
                    re::DynamicString::setCapacity((v32 + 24), 0);
                    *(v32 + 56) = 0x300000000;
                    *(v32 + 96) = RESyncViewCreate();
                    RESyncViewSetUserData();
                    v34 = strlen(*(*(a1 + 16) + 296));
                    v37[0] = *(*(a1 + 16) + 296);
                    v37[1] = v34;
                    re::DynamicString::operator=((v32 + 24), v37);
                    re::ecs2::SyncAccessControl::operator=(v32 + 56, buf);
                    *(v32 + 88) = v29;
                    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 40), v32);
                    RESyncableGetOwnerPeerID();
                    RESyncViewSetOwnerPeerID();
                    RESyncableGetFromPeerID();
                    RESyncViewSetFromPeerID();
                    RESyncableSetDirectView();
                    RESyncServiceAddView();

                    v30 = v36;
LABEL_58:
                    if (v30 && !RESyncViewGetObjectCount())
                    {
                      RESyncServiceRemoveView();
                    }

                    SyncService = 1;
LABEL_63:
                    re::ecs2::SyncAccessControl::~SyncAccessControl(buf);
                    if (!a2)
                    {
                      goto LABEL_10;
                    }

                    goto LABEL_6;
                  }

                  v30 = v36;
                  if (v35 != v36)
                  {
                    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 40), v17);
                    RESyncableSetDirectView();
                    goto LABEL_58;
                  }
                }

                SyncService = 0;
                goto LABEL_63;
              }
            }

            else
            {
              v20 = re::ecs2::syncPolicy::denyAll(DirectView);
              v21 = 0;
            }
          }

          else
          {
            v21 = 1;
            v20 = re::ecs2::syncPolicy::allowAll(DirectView);
          }

          OwnerPeerID = 0;
          goto LABEL_35;
        }

LABEL_24:
        DirectView = RESyncViewGetUserData();
        v17 = DirectView;
        goto LABEL_25;
      }
    }

    DirectView = RESyncViewGetUserData();
    v16 = DirectView;
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_5:
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_6:
  *buf = a1;
  if (a1)
  {
    v6 = (a1 + 8);
  }

  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, buf);
  if (*buf)
  {
  }

LABEL_10:
  *&re::NetworkSystem::resolveSelfViewTime = *&re::NetworkSystem::resolveSelfViewTime + CFAbsoluteTimeGetCurrent() - Current;
  if (*&re::NetworkSystem::resolveSelfViewTime > 0.1)
  {
    v8 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = re::NetworkSystem::resolveSelfViewCount;
      v39 = 2048;
      v40 = re::NetworkSystem::setAclCount;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "More than 100ms spent in NetworkComponent::resolveSelfView: resolveSelfView: %zu, setAccessControl: %zu", buf, 0x16u);
    }

    re::NetworkSystem::resolveSelfViewTime = 0;
  }

  return SyncService;
}

uint64_t re::ecs2::NetworkComponent::resolveChildEntityViews(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v2 + 344);
    if (v3)
    {
      v5 = *(v2 + 360);
      v6 = 8 * v3;
      do
      {
        v7 = *(*v5 + 216);
        if (v7)
        {
          result = re::ecs2::NetworkComponent::resolveSelfView(*(*v5 + 216), a2);
          if (result)
          {
            result = re::ecs2::NetworkComponent::resolveChildEntityViews(v7, a2);
          }
        }

        v5 += 8;
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void re::ecs2::NetworkComponent::resolveLocalViews(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  if (!v7 || !*(a1 + 16))
  {
    goto LABEL_65;
  }

  v8 = *(a1 + 88);
  if (*(a1 + 432) > 1u)
  {
    re::NetworkSystem::exitingLocalPeerView(v7, a1);
    *(a1 + 80) = 0;
    *(a1 + 88) += 2;
  }

  else
  {
    v11 = a3;
    v12 = 8 * a4;
    if (*(a1 + 80))
    {
      v13 = 0;
      v42 = &a3[a4];
      do
      {
        v14 = a1 + 96;
        if ((*(a1 + 88) & 1) == 0)
        {
          v14 = *(a1 + 104);
        }

        v15 = *(v14 + 8 * v13);
        if (*(a1 + 32))
        {
          OwnerPeerID = RESyncableGetOwnerPeerID();
        }

        else
        {
          OwnerPeerID = *(a1 + 64);
        }

        v17 = v13 + 1;
        if (v15 != OwnerPeerID)
        {
          if (a4)
          {
            v18 = *(v14 + 8 * v13);
            v19 = v12;
            v20 = v11;
            while (*v20 != v18)
            {
              ++v20;
              v19 -= 8;
              if (!v19)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
            v20 = v11;
          }

          if (v20 == v42)
          {
            v18 = *(v14 + 8 * v13);
LABEL_20:
            v21 = *(a1 + 56);
            v44[0] = v18;
            v22 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21 + 3040, v44);
            if (v22)
            {
              re::NetworkSystem::LocalPeer::exit(v22, a1);
            }

            v23 = a1 + 96;
            if ((*(a1 + 88) & 1) == 0)
            {
              v23 = *(a1 + 104);
            }

            v24 = *(a1 + 80);
            v25 = v23 + 8 * v24;
            v26 = *(v14 + 8 * v13);
            *(v14 + 8 * v13) = *(v25 - 8);
            *(v25 - 8) = v26;
            LODWORD(v25) = *(a1 + 88);
            *(a1 + 80) = v24 - 1;
            *(a1 + 88) = v25 + 2;
            v17 = v13;
          }
        }

        v13 = v17;
      }

      while (v17 < *(a1 + 80));
    }

    if (a4)
    {
      while (1)
      {
        v27 = *v11;
        v43 = v27;
        v44[0] = v27;
        v28 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(*(a1 + 56) + 3040, v44);
        v29 = *(a1 + 32) ? RESyncableGetOwnerPeerID() : *(a1 + 64);
        if (v29 != v27)
        {
          break;
        }

        isAllowed = 1;
        if (v28)
        {
          goto LABEL_34;
        }

LABEL_35:
        if (*(a1 + 473) == 1 && v27 == a5)
        {
          isAllowed = *(a1 + 64) == a5;
        }

        re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(v44, a1 + 72, v27);
        if (isAllowed & 1) == 0 || (v44[0])
        {
          if (!(isAllowed & 1 | ((v44[0] & 1) == 0)))
          {
            if (v28)
            {
              re::NetworkSystem::LocalPeer::exit(v28, a1);
            }

            re::DynamicOverflowArray<unsigned long long,2ul>::remove(a1 + 72, v27);
          }
        }

        else
        {
          re::DynamicOverflowArray<unsigned long long,2ul>::add((a1 + 72), &v43);
          if (v28)
          {
            re::NetworkSystem::LocalPeer::enter(v28, a1);
          }
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_49;
        }
      }

      isAllowed = re::ecs2::SyncAccessControl::isAllowed((a1 + 440), v27);
      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_34:
      isAllowed |= *(v28 + 8);
      goto LABEL_35;
    }
  }

LABEL_49:
  if ((*(a1 + 88) ^ v8) < 2 || (v31 = *(a1 + 16), (v32 = *(v31 + 344)) == 0))
  {
LABEL_65:
    v44[0] = a1;
LABEL_66:
    v41 = (a1 + 8);
    goto LABEL_67;
  }

  v33 = *(v31 + 360);
  v34 = 8 * v32;
  do
  {
    v35 = *v33;
    if (*v33)
    {
      v36 = (v35 + 8);
    }

    v37 = *(v35 + 216);
    if (v37)
    {
      if (*(a1 + 88))
      {
        v38 = a1 + 96;
      }

      else
      {
        v38 = *(a1 + 104);
      }

      v39 = *(a1 + 80);
      if (*(a1 + 32))
      {
        v40 = RESyncableGetOwnerPeerID();
      }

      else
      {
        v40 = *(a1 + 64);
      }

      re::ecs2::NetworkComponent::resolveLocalViews(v37, a2, v38, v39, v40);
    }

    ++v33;
    v34 -= 8;
  }

  while (v34);
  v44[0] = a1;
  if (a1)
  {
    goto LABEL_66;
  }

LABEL_67:
  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, v44);
  if (v44[0])
  {
  }
}

uint64_t re::DynamicOverflowArray<unsigned long long,2ul>::remove(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  result = re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(v8, a1, a2);
  if (v8[0] == 1)
  {
    v4 = v9;
    v5 = *(a1 + 8);
    if (v5 <= v9)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "removeAt";
      v13 = 1024;
      v14 = 1000;
      v15 = 2048;
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 - 1 > v9)
    {
      if (*(a1 + 16))
      {
        v6 = a1 + 24;
      }

      else
      {
        v6 = *(a1 + 32);
      }

      *(v6 + 8 * v9) = *(v6 + 8 * v5 - 8);
    }

    v7 = *(a1 + 16);
    *(a1 + 8) = v5 - 1;
    *(a1 + 16) = v7 + 2;
  }

  return result;
}

re::ecs2::SyncAccessControl *re::ecs2::recursiveResolveAccessControl@<X0>(re::ecs2 *this@<X0>, re::ecs2::SyncAccessControl *a2@<X8>)
{
  v3 = this;
  result = re::ecs2::SyncAccessControl::SyncAccessControl(a2, (this + 440));
  if (v3)
  {
    while (1)
    {
      v6 = *(v3 + 2);
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 32);
      if (!v7)
      {
        break;
      }

      v3 = *(v7 + 216);
      if (!v3)
      {
        break;
      }

      result = re::ecs2::SyncAccessControl::intersect(a2, (v3 + 440));
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::isViewableByPeer(re::ecs2::NetworkComponent *this, uint64_t a2)
{
  if (!*(this + 4))
  {
    re::ecs2::recursiveResolveAccessControl(this, v7);
    isAllowed = re::ecs2::SyncAccessControl::isAllowed(v7, a2);
    re::ecs2::SyncAccessControl::~SyncAccessControl(v7);
    return isAllowed;
  }

  if (!RESyncableGetHierarchicalView())
  {
    return 0;
  }

  UserData = RESyncViewGetUserData();
  if (!UserData)
  {
    return 0;
  }

  v4 = (UserData + 56);

  return re::ecs2::SyncAccessControl::isAllowed(v4, a2);
}

void *re::allocateAndConstructArray<unsigned short>(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 2 * a2;
  v4 = (*(*a1 + 32))(a1, 2 * a2 + 17, 0);
  v5 = ((v4 + 17) & 0xFFFFFFFFFFFFFFFELL);
  *(v5 - 2) = a2;
  *(v5 - 1) = v4;
  bzero(v5, v3);
  return v5;
}

void re::ecs2::LocalComponentInfo::~LocalComponentInfo(re::ecs2::LocalComponentInfo *this)
{
  v2 = this + 16;
  if (*(this + 1) == (this + 16))
  {
    v5 = *(this + 2);
    v2 = *(this + 1);
  }

  else
  {
    v3 = re::globalAllocators(this);
    v4 = *(this + 1);
    if (v4)
    {
      (*(*v3[2] + 40))(v3[2], *(v4 - 8));
    }

    *(this + 1) = v2;
    v5 = *(this + 2) & 0xE000 | 1;
    *(this + 2) = v5;
  }

  memset(v2, 255, 16 * (v5 & 0x1FFF));
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) &= 0x9FFFu;
}

unsigned __int16 *re::ecs2::LocalComponentInfo::add(unsigned __int16 *this, uint64_t a2)
{
  v3 = a2;
  v4 = this;
  v5 = *this;
  if (!*this)
  {
LABEL_5:
    v11 = this + 1;
LABEL_6:
    v12 = v5 + 1;
    *this = v5 + 1;
    v13 = this[2];
    if (8 * (v13 & 0x1FFFu) < v12)
    {
      this[2] = v13 & 0xE000 | (v13 + 1) & 0x1FFF;
      v19 = re::globalAllocators(this);
      v20 = re::allocateAndConstructArray<unsigned short>(v19[2], 8 * (v4[2] & 0x1FFF));
      v2 = v20;
      v21 = *(v4 + 1);
      v22 = v4 + 8;
      if (v21 != v4 + 8)
      {
        v23 = memcpy(v20, v21, 2 * *v4 - 2);
        v24 = re::globalAllocators(v23);
        v25 = *(v4 + 1);
        if (v25)
        {
          (*(*v24[2] + 40))(v24[2], *(v25 - 8));
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v14 = *v11;
      *v11 = v14 + 1;
      if ((v14 + 1) <= v12)
      {
        break;
      }

      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "add", 3097);
      _os_crash();
      __break(1u);
LABEL_21:
      *v2 = *v22;
LABEL_22:
      this = memset(v2 + 2 * *v4, 255, 2 * (8 * (v4[2] & 0x1FFF) - *v4));
      *(v4 + 1) = v2;
      v12 = *v4;
    }

    v15 = *(v4 + 1);
    if (v12 > (v14 + 1))
    {
      *(v15 + 2 * (v12 - 1)) = *(v15 + 2 * v14);
    }

    *(v15 + 2 * v14) = v3;
    return this;
  }

  v6 = vdupq_n_s16(a2);
  v7 = *(this + 1);
  v8 = 1;
  v9 = v7;
  while (1)
  {
    v10 = vandq_s8(vceqq_s16(*v9, v6), xmmword_1E306AC00);
    v10.i16[0] = vmaxvq_u16(v10);
    if (v10.i32[0])
    {
      break;
    }

    ++v9;
    v8 -= 8;
    if (8 * ((v5 + 7) >> 3) + v8 == 1)
    {
      goto LABEL_5;
    }
  }

  v11 = this + 1;
  v16 = this[1];
  v17 = v10.u16[0] - v8;
  if (v17 < 0 || v17 >= v16)
  {
    if (v17 >= v16)
    {
      if (v16 >= v5)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live < m_count", "add", 3077);
        this = _os_crash();
        __break(1u);
      }

      else
      {
        *v11 = v16 + 1;
        v18 = v7->i16[v17];
        v7->i16[v17] = v7->i16[v16];
        v7->i16[v16] = v18;
      }

      return this;
    }

    goto LABEL_6;
  }

  return this;
}

void re::ecs2::LocalComponentInfo::remove(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    goto LABEL_12;
  }

  v3 = vdupq_n_s16(a2);
  v4 = *(this + 1);
  v5 = 1;
  v6 = v4;
  while (1)
  {
    v7 = vandq_s8(vceqq_s16(*v6, v3), xmmword_1E306AC00);
    v7.i16[0] = vmaxvq_u16(v7);
    if (v7.i32[0])
    {
      break;
    }

    ++v6;
    v5 -= 8;
    if (8 * ((*this + 7) >> 3) + v5 == 1)
    {
      goto LABEL_12;
    }
  }

  v8 = v7.u16[0] - v5;
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v9 = *(this + 1);
  if (v8 < v9)
  {
    v10 = *(this + 3);
    if (v8 < v10)
    {
      *(this + 3) = v10 - 1;
      v11 = (v10 - 1);
      v12 = v4->i16[v8];
      v4->i16[v8] = v4->i16[v11];
      v4->i16[v11] = v12;
      v8 = *(this + 3);
      v9 = *(this + 1);
      if (v8 >= v9)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_dirty < m_live", "remove", 3120);
        _os_crash();
        __break(1u);
      }
    }

    v13 = v9 - 1;
    *(this + 1) = v13;
    v14 = v4->i16[v8];
    v4->i16[v8] = v4->i16[v13];
    v4->i16[v13] = v14;
    if (*(this + 1) >= *this)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live < m_count", "remove", 3124);
      this = _os_crash();
      __break(1u);
LABEL_12:
      v15 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(this);
      if (v15)
      {
        v16 = *re::ecsNetworkLogObjects(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v18 = v2;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] no component of type %d to remove", buf, 8u);
        }
      }
    }
  }
}

uint64_t re::ecs2::LocalComponentInfo::markDirty(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v2 = *(this + 3);
  v3 = *(this + 1);
  if (v2 > v3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_dirty <= m_live", "markDirty", 3136);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (!*this)
    {
      return 0;
    }

    v4 = vdupq_n_s16(a2);
    v5 = *(this + 1);
    v6 = 1;
    for (i = v5; ; ++i)
    {
      v8 = vandq_s8(vceqq_s16(*i, v4), xmmword_1E306AC00);
      v8.i16[0] = vmaxvq_u16(v8);
      if (v8.i32[0])
      {
        break;
      }

      v6 -= 8;
      if (8 * ((*this + 7) >> 3) + v6 == 1)
      {
        return 0;
      }
    }

    v9 = v8.u16[0] - v6;
    if ((v9 & 0x80000000) == 0)
    {
      if (v9 >= v2 && v9 < v3)
      {
        *(this + 3) = v2 + 1;
        v11 = v5->i16[v9];
        v5->i16[v9] = v5->i16[v2];
        v5->i16[v2] = v11;
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

uint64_t re::DynamicBitset<unsigned long long,64ul>::getBit(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v2 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  return (*(v2 + 8 * (a2 >> 6)) >> a2) & 1;
}

uint64_t re::ecs2::RemoteComponentInfo::markDirty(uint64_t this, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = *(this + 2);
  if (*(this + 2))
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = vdupq_n_s16(a2);
    for (i = 1; ; i -= 8)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      ++v4;
      if (!--v2)
      {
        return this;
      }
    }

    v8 = v7.u16[0] - i;
    if (v8 < *this)
    {
      this = re::DynamicBitset<unsigned long long,64ul>::getBit(this + 136, v7.u16[0] - i);
      if ((this & 1) == 0)
      {

        return re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 136, v8);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::RemoteComponentInfo::isDirty(re::ecs2::RemoteComponentInfo *this, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = *(this + 1);
  if (!*(this + 1))
  {
    return 0;
  }

  v3 = (a2 + 16);
  v4 = *(this + 1);
  v5 = vld1q_dup_s16(v3);
  for (i = 1; ; i -= 8)
  {
    v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
    v7.i16[0] = vmaxvq_u16(v7);
    if (v7.i32[0])
    {
      break;
    }

    ++v4;
    if (!--v2)
    {
      return 0;
    }
  }

  v8 = v7.u16[0] - i;
  if (v8 < *this)
  {
    return re::DynamicBitset<unsigned long long,64ul>::getBit(this + 136, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::RemoteComponentInfo::get(re::ecs2::RemoteComponentInfo *this, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = *(this + 1);
  if (!*(this + 1))
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = vdupq_n_s16(a2);
  for (i = 1; ; i -= 8)
  {
    v6 = vandq_s8(vceqq_s16(v4, *v3), xmmword_1E306AC00);
    v6.i16[0] = vmaxvq_u16(v6);
    if (v6.i32[0])
    {
      break;
    }

    ++v3;
    if (!--v2)
    {
      return 0;
    }
  }

  v7 = v6.u16[0] - i;
  if (v7 >= *this)
  {
    return 0;
  }

  if (*(this + 7) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 64))
  {
    v8 = this + 72;
  }

  else
  {
    v8 = *(this + 10);
  }

  return *&v8[8 * v7];
}

void re::ecs2::NetworkComponent::markComponentDirty(re::ecs2::NetworkComponent *this, re::ecs2::Component *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      if (!*(v3 + 4) || RESyncableIsAuthoritative())
      {

        re::ecs2::NetworkComponent::markDirty(v3, this);
      }
    }
  }
}

BOOL re::ecs2::NetworkComponent::hasOwnership(re::ecs2::NetworkComponent *this, re::ecs2::Entity *a2)
{
  v2 = *(this + 27);
  if (v2)
  {
    if (*(v2 + 32))
    {
      OwnerPeerID = RESyncableGetOwnerPeerID();
      return OwnerPeerID == 0;
    }

    if (*(v2 + 116) < 0)
    {
      OwnerPeerID = *(v2 + 64);
      return OwnerPeerID == 0;
    }
  }

  return 1;
}

re *___ZN2re4ecs216NetworkComponent12bindEntityToEP10RESyncablePNS0_6EntityE_block_invoke(re *result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 & 0xFFFFFFFFFFFFFFFELL);
    if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v3 = re::globalAllocators(result)[2];
      objc_destroyWeak(v2);
      *v2 = 0;
      v4 = *(*v3 + 40);

      return v4(v3, v2);
    }
  }

  return result;
}

re *___ZN2re4ecs216NetworkComponent23bindComponentToSyncableEPKNS0_9ComponentE21RESyncableRefRetainer_block_invoke(re *result, id *a2)
{
  if (a2 && (a2 & 1) == 0)
  {
    v3 = re::globalAllocators(result)[2];
    objc_destroyWeak(a2);
    *a2 = 0;
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::makeSyncInfo(re::IntrospectionBase **this)
{
  v2 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v5)
    {
      re::introspect<re::ecs2::NetworkComponent>(BOOL)::info = re::internal::getOrCreateInfo("NetworkComponent", re::ecs2::allocInfo_NetworkComponent, re::ecs2::initInfo_NetworkComponent, &re::internal::introspectionInfoStorage<re::ecs2::NetworkComponent>, this);
      v3 = &unk_1EE187000;
    }
  }

  re::getPrettyTypeName(v3[138], &v6);
  RESyncSyncableTypeInfoSetDebugName();
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  RESyncSyncableTypeInfoSetSupportsNetworkSync();
  return v2;
}

void re::ecs2::NetworkSendSystem::~NetworkSendSystem(re::ecs2::NetworkSendSystem *this)
{
  *this = &unk_1F5CF6788;
  re::DynamicArray<unsigned long>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CF6788;
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::LocalNetworkAssetSerialization::~LocalNetworkAssetSerialization(_anonymous_namespace_::LocalNetworkAssetSerialization *this)
{
  *this = &unk_1F5CF68B0;
  re::DynamicString::deinit((this + 144));
  *this = &unk_1F5CB9868;
  re::DynamicString::deinit((this + 104));
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }
}

{
  *this = &unk_1F5CF68B0;
  re::DynamicString::deinit((this + 144));
  *this = &unk_1F5CB9868;
  re::DynamicString::deinit((this + 104));
  *this = &unk_1F5CB98A0;
  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 56));
    re::DynamicString::deinit((this + 24));
  }

  JUMPOUT(0x1E6906520);
}

BOOL anonymous namespace::LocalNetworkAssetSerialization::isLocalPeerID(_anonymous_namespace_::LocalNetworkAssetSerialization *this, const char *a2)
{
  v6 = 0;
  if (sscanf(a2, "%llu", &v6) != 1)
  {
    return 0;
  }

  if (*(this + 152))
  {
    v4 = *(this + 20);
  }

  else
  {
    v4 = this + 153;
  }

  return strcmp(v4, a2) == 0;
}

double re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {

            *(v8 + 16) = 0;
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

double re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          if (*(v6 + v4 + 8))
          {
            RESyncRelease();
            *(v8 + 8) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 32;
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

void re::ecs2::NetworkReceiveSystem::processLocalSession(RESyncSession *)const::$_0::__invoke(const char *a1@<X0>, uint64_t a2@<X8>)
{
  objc_initWeak(a2, 0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  re::ecs2::EntityHandle::reset(a2);
  if (a1 && *a1)
  {
    v5 = 0;
    if (sscanf(a1, "%llu", &v5) == 1)
    {
      v4 = v5;
      re::ecs2::EntityHandle::reset(a2);
      *(a2 + 8) = v4;
    }
  }
}

uint64_t RESyncableRefRetainer::reset(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result != a2)
  {
    if (a2)
    {
      RESyncRetain();
      result = *a1;
    }

    if (result)
    {
      result = RESyncRelease();
    }

    *a1 = a2;
  }

  return result;
}

__n128 re::make::shared::unsafelyInplace<re::ecs2::NetworkComponent>(__n128 *a1)
{
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[10] = 0u;
  v1 = a1 + 10;
  a1[8] = 0u;
  v2 = a1 + 8;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE84F8;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 16777217;
  *(v3 + 52) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0x100000000;
  *(v3 + 120) = v2;
  v2->n128_u64[0] = -1;
  *(v3 + 136) = -1;
  *(v3 + 144) = 0;
  *(v3 + 148) = 16;
  *(v3 + 152) = v1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(v3 + 176) = result;
  *v1 = result;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 1;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 296) = 1;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 304) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0;
  *(v3 + 372) = 0x7FFFFFFFLL;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0;
  *(v3 + 420) = 0x7FFFFFFFLL;
  *(v3 + 432) = 1;
  *(v3 + 440) = 0x300000000;
  *(v3 + 472) = 0;
  *(v3 + 476) = 0;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs216NetworkComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

uint64_t re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 32);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = &v4[v5];
    while (*v4 != a3)
    {
      ++v4;
      v6 -= 8;
      if (!v6)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v3)
  {
    v8 = a2 + 24;
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v4 == (v8 + 8 * v5))
  {
    *result = 0;
  }

  else
  {
    *result = 1;
    *(result + 8) = (v4 - v8) >> 3;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 328 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 328 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 328 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 328 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 328 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[2] % *(a1 + 24));
                v19 = *v17;
                v18[1] = *(v17 - 1);
                v18[2] = v19;
                *v17 = 0;
                v18[3] = v17[1];
              }

              v17 += 5;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

void *re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 16 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(*result, 16 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 16 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v17 - 1) = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(v26);
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

uint64_t re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 24;
            do
            {
              if ((*(v18 - 24) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 16);
                *(v18 - 16) = 0;
                *(v19 + 16) = 0;
                *(v19 + 22) = 0;
                *(v19 + 24) = v19 + 32;
                v20 = *(v18 + 8);
                *(v19 + 16) = *(v18 - 8);
                *(v19 + 32) = v20;
                if (v18 + 8 == *v18)
                {
                  *(v19 + 24) = v19 + 32;
                }

                else
                {
                  *v18 = v18 + 8;
                  *(v18 - 8) = 0;
                  v21 = *(v18 - 4);
                  *(v18 - 2) = 0;
                  *(v18 - 4) = v21 & 0x8000 | 1;
                }
              }

              ++v17;
              v18 += 56;
            }

            while (v17 < v16);
          }

          re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 28);
  return v22 + 56 * v5;
}

double re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v3 = *(a1 + 8);
    if (v3)
    {

      *(a1 + 8) = 0;
    }

    re::ecs2::LocalComponentInfo::~LocalComponentInfo((a1 + 16));
  }
}

void re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  v11 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(v11 + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *a4 = 0;
  *(v11 + 4 * a2) = v7;
  ++*(a1 + 28);
}

void re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = v7 + 16;
        do
        {
          if ((*(v12 - 8) & 0x80000000) != 0)
          {
            re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(a1, *(v12 - 16) % *(a1 + 24), *(v12 - 16), v12);
          }

          ++v11;
          v12 += 24;
        }

        while (v11 < v10);
      }

      re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 24 * v8 + 16) != v4)
  {
    while (1)
    {
      v11 = v8;
      v12 = *(v10 + 24 * v8 + 8);
      v8 = v12 & 0x7FFFFFFF;
      if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 24 * v8 + 16) == v4)
      {
        *(v10 + 24 * v11 + 8) = *(v10 + 24 * v11 + 8) & 0x80000000 | *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_10:
  v13 = *(a1 + 16) + 24 * v8;
  v14 = *(v13 + 8);
  if (v14 < 0)
  {
    *(v13 + 8) = v14 & 0x7FFFFFFF;
    v15 = *(v13 + 16);
    if (v15)
    {

      *(v13 + 16) = 0;
    }
  }

  v16 = *(a1 + 16) + 24 * v8;
  v17 = *(a1 + 40);
  *(v16 + 8) = *(v16 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v17 + 1;
  return 1;
}

void anonymous namespace::SyncViewAccessList::~SyncViewAccessList(_anonymous_namespace_::SyncViewAccessList *this)
{
  *this = &unk_1F5CF6900;
  if (*(this + 12))
  {
    RESyncViewSetUserData();
    RESyncRelease();
  }

  re::ecs2::SyncAccessControl::~SyncAccessControl((this + 56));
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = 8 * v9;
          do
          {
            *v14++ = *v15;
            *v15++ = 0;
            v16 -= 8;
          }

          while (v16);
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        result = (*(*result + 32))(result, 8 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v17 = a1[1];
          if (v17)
          {
            v18 = 8 * v17;
            v19 = result;
            do
            {
              *v19++ = *v13;
              *v13++ = 0;
              v18 -= 8;
            }

            while (v18);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::ecs2::UILayerGeometryManager::UILayerGeometryManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CF6948;
  re::ecs2::UITreeTracker::UITreeTracker((a1 + 8));
  *(a1 + 500) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 516) = 0x7FFFFFFFLL;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0x7FFFFFFFLL;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 612) = 0x7FFFFFFFLL;
  *(a1 + 456) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  *(a1 + 464) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v4 = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  *(a1 + 472) = v4;
  return a1;
}

void re::ecs2::UILayerGeometryManager::update(uint64_t a1)
{
  if (!*(a1 + 556) && !*(a1 + 604) && !*(a1 + 52) && !*(a1 + 100) && !*(a1 + 148))
  {
    return;
  }

  v2 = re::RenderManager::perFrameAllocator(*(a1 + 464));
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v77 = 0x7FFFFFFFLL;
  v73 = v2;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v74, v2, 2);
  v3 = *(a1 + 560);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a1 + 544) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 560);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    while (1)
    {
      v11 = *(*(a1 + 544) + 24 * v4 + 16);
      v81[0].i64[0] = v11;
      v12 = *(v11 + 192);
      if (v12)
      {
        break;
      }

      v12 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType + 7), 496, 0);
      re::ecs2::MeshComponent::MeshComponent(v12);
      v14 = *(v11 + 216);
      if (v14)
      {
        re::ecs2::NetworkComponent::disableSyncForComponent(v14, v12);
      }

      *&v82 = v12;
      if (v12)
      {
        v15 = (v12 + 8);
      }

      re::ecs2::EntityComponentCollection::add(v11 + 48, &v82, 1);
      if (v82)
      {

        *&v82 = 0;
      }

      if (v12)
      {
        goto LABEL_28;
      }

LABEL_29:
      v16 = re::ecs2::EntityComponentCollection::get((v81[0].i64[0] + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v20 = v16;
      v21 = *(v16 + 117);
      if (v21 == *(v16 + 118))
      {
        re::ecs2::UILayerGeometryComponent::buildGeomMesh(v16, v17, v18, v19);
        v21 = *(v20 + 117);
      }

      *(v20 + 118) = v21;
      v22 = *(a1 + 456);
      if (v22)
      {
        re::AssetHelper::makeMeshMemoryAsset(v22, (v20 + 200), 1, 0, 0);
        v23 = *(v12 + 32);
        *(v12 + 32) = v82;
        v82 = v23;
        v24 = *(v12 + 48);
        *(v12 + 48) = v83;
        v83 = v24;
        re::AssetHandle::~AssetHandle(&v82);
        re::ecs2::Component::markDirty(v12);
      }

      if (*(v20 + 108))
      {
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v74, v81);
      }

      else
      {
        re::ecs2::UILayerGeometryManager::markGroundingShadowEntityForRemovalIfNeeded(a1, v81[0].i64[0]);
      }

      if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
      {
        dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
      }

      if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
      {
        v25 = v81[0].i64[0];
        v26 = *(v81[0].i64[0] + 288);
        if (v26 >> 1 == 0x222D3A64E0FLL)
        {
          v27 = *(v81[0].i64[0] + 296);
          if (v27 == "Receiver" || !strcmp(v27, "Receiver"))
          {
            v28 = re::CAREUtil::GetOrAddCAREComponent(v25, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0, 0, 0);
            *(v28 + 26) = 1;
            *(v28 + 4) = 1;
            re::ecs2::Component::markDirty(v28);
            v25 = v81[0].i64[0];
            v26 = *(v81[0].i64[0] + 288);
          }
        }

        if (v26 >> 1 == 2011275340)
        {
          v29 = *(v25 + 296);
          if (v29 == "Caster" || !strcmp(v29, "Caster"))
          {
            v30 = re::CAREUtil::GetOrAddCAREComponent(v25, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0, 0, 0);
            *(v30 + 25) = 1;
            *(v30 + 4) = 1;
            re::ecs2::Component::markDirty(v30);
          }
        }
      }

      v31 = *(a1 + 560);
      if (v31 <= v4 + 1)
      {
        v31 = v4 + 1;
      }

      while (v31 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(a1 + 544) + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_53;
        }
      }

      LODWORD(v4) = v31;
LABEL_53:
      if (v4 == v3)
      {
        goto LABEL_13;
      }
    }

    v13 = (v12 + 8);
LABEL_28:

    goto LABEL_29;
  }

LABEL_13:
  if (HIDWORD(v75))
  {
    v7 = v76;
    if (v76)
    {
      v8 = 0;
      v9 = (v75 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 < 0)
        {
          break;
        }

        if (v76 == ++v8)
        {
          LODWORD(v8) = v76;
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 != v76)
    {
      v36 = v75;
      v37 = &unk_1EE187000;
      while (1)
      {
        v38 = *(v36 + 24 * v8 + 16);
        v39 = re::ecs2::EntityComponentCollection::get((v38 + 6), v37[474]);
        v95[0] = *(v39 + 132);
        v88 = 0x3F8000003F2D42C4;
        v90 = 25;
        HIWORD(v40) = 16173;
        v91 = xmmword_1E3072E30;
        v92 = 1056964608;
        v93 = 0x40000000;
        v94 = 256;
        LOWORD(v40) = *(v39 + 110);
        v89 = v40;
        re::internal::shadows::buildCylindricalProxyMesh(&v88, &v82);
        v41 = *(a1 + 472);
        if (v41)
        {
          re::TransformService::worldMatrixForRendering(v41, v38, 1, v80);
        }

        else
        {
          v80[0] = xmmword_1E3047670;
          v80[1] = xmmword_1E3047680;
          v80[2] = xmmword_1E30476A0;
          v80[3] = xmmword_1E30474D0;
        }

        re::internal::shadows::calcCylShadowProxyLocalTransform(v95, v80, v81);
        re::transform(&v82, v81);
        v42 = *(v39 + 148);
        if (v42 > 0.0 && v42 >= ((v42 + 1.0) * 0.00001))
        {
          re::internal::wrapGeometryAroundCylinder(&v82, &v82, *(v39 + 152), v42);
        }

        re::AssetHelper::makeMeshMemoryAsset(*(a1 + 456), &v82, 1, 0, 0);
        WeakRetained = objc_loadWeakRetained((v39 + 952));
        if (WeakRetained)
        {
          break;
        }

        v48 = v37;
        v49 = re::ecs2::EntityFactory::instance(0);
        v50 = re::ecs2::EntityFactory::make(v49, 4uLL, &v79);
        v51 = v79;
        *(v79 + 76) |= 0x400u;
        v78[0] = 0;
        v78[1] = &str_67;
        v52 = re::StringID::operator=(v51 + 36, v78);
        if (v78[0])
        {
          if (v78[0])
          {
          }
        }

        v53 = *(v51 + 32);
        if (!v53)
        {
          v53 = re::ecs2::EntityComponentCollection::add((v51 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v53[4] = 0x3F8000003F800000;
        v53[5] = 1065353216;
        v53[6] = 0;
        v53[7] = 0x3F80000000000000;
        v53[8] = 0;
        v53[9] = 0;
        v54 = *(v51 + 24);
        if (!v54)
        {
          v54 = re::ecs2::EntityComponentCollection::add((v51 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
        }

        re::AssetHandle::operator=(v54 + 32, v80);
        (*(**(a1 + 456) + 8))(v78);
        re::DynamicArray<re::AssetHandle>::add((v54 + 56), v78);
        re::AssetHandle::~AssetHandle(v78);
        v55 = v79;
        v56 = re::ecs2::EntityComponentCollection::getOrAdd((v79 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        *(v56 + 25) = 0;
        re::ecs2::Component::markDirty(v56);
        *(v56 + 27) = 1;
        re::ecs2::Component::markDirty(v56);
        *(v56 + 26) = 0;
        *(v56 + 28) = 0;
        re::ecs2::Component::markDirty(v56);
        *(v56 + 45) = 1;
        re::ecs2::Component::markDirty(v56);
        if (*(v39 + 108) == 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        *(v56 + 36) = v57;
        re::ecs2::Component::markDirty(v56);
        re::ecs2::EntityComponentCollection::remove((v55 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v38 + 40, &v79);
        if (v79)
        {
          v58 = v79 + 8;
        }

        else
        {
          v58 = 0;
        }

        objc_storeWeak((v39 + 952), v58);
        if (v79)
        {
        }

        v37 = v48;
LABEL_93:
        re::AssetHandle::~AssetHandle(v80);
        re::GeomMesh::~GeomMesh(&v82);
        v36 = v75;
        if (v76 <= v8 + 1)
        {
          v59 = v8 + 1;
        }

        else
        {
          v59 = v76;
        }

        while (v59 - 1 != v8)
        {
          LODWORD(v8) = v8 + 1;
          if ((*(v75 + 24 * v8 + 8) & 0x80000000) != 0)
          {
            goto LABEL_100;
          }
        }

        LODWORD(v8) = v59;
LABEL_100:
        if (v8 == v7)
        {
          goto LABEL_57;
        }
      }

      v44 = objc_loadWeakRetained((v39 + 952));
      v45 = v44;
      v46 = v44 - 8;
      if (!v44)
      {
        v46 = 0;
      }

      v47 = *(v46 + 24);
      if (v47)
      {
        if (!v44)
        {
LABEL_76:
          re::AssetHandle::operator=((v47 + 4), v80);
          re::ecs2::Component::markDirty(v47);
          goto LABEL_93;
        }
      }

      else
      {
        v47 = re::ecs2::EntityComponentCollection::add((v46 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
        if (!v45)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_76;
    }
  }

LABEL_57:
  if (*(a1 + 604))
  {
    v32 = *(a1 + 608);
    if (v32)
    {
      v33 = 0;
      v34 = (*(a1 + 592) + 8);
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
          LODWORD(v33) = *(a1 + 608);
          break;
        }
      }
    }

    else
    {
      LODWORD(v33) = 0;
    }

    while (v33 != v32)
    {
      v60 = *(*(a1 + 592) + 24 * v33 + 16);
      re::ecs2::EntityComponentCollection::remove((v60 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      re::ecs2::Entity::removeFromSceneOrParent(v60);
      v61 = *(a1 + 608);
      if (v61 <= v33 + 1)
      {
        v61 = v33 + 1;
      }

      while (v61 - 1 != v33)
      {
        LODWORD(v33) = v33 + 1;
        if ((*(*(a1 + 592) + 24 * v33 + 8) & 0x80000000) != 0)
        {
          goto LABEL_112;
        }
      }

      LODWORD(v33) = v61;
LABEL_112:
      ;
    }
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    re::ecs2::UITreeTracker::update((a1 + 8), v73, &v82);
    v62 = v87;
    if (v87)
    {
      v63 = 0;
      v64 = (v86 + 8);
      while (1)
      {
        v65 = *v64;
        v64 += 6;
        if (v65 < 0)
        {
          break;
        }

        if (v87 == ++v63)
        {
          LODWORD(v63) = v87;
          break;
        }
      }
    }

    else
    {
      LODWORD(v63) = 0;
    }

    if (v63 != v87)
    {
      v66 = v86;
      do
      {
        v67 = *(v66 + 24 * v63 + 16);
        v68 = re::ecs2::EntityComponentCollection::get((v67 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v68)
        {
          v69 = v68;
          v81[0].i64[0] = v67;
          v70 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 216, v81);
          if (v70)
          {
            v71 = *v70;
            if (*v70)
            {
              v71 = *(v71 + 312);
            }
          }

          else
          {
            v71 = 0;
          }

          *(v69 + 32) = v71;
          re::ecs2::Component::markDirty(v69);
        }

        v66 = v86;
        if (v87 <= v63 + 1)
        {
          v72 = v63 + 1;
        }

        else
        {
          v72 = v87;
        }

        while (v72 - 1 != v63)
        {
          LODWORD(v63) = v63 + 1;
          if ((*(v86 + 24 * v63 + 8) & 0x80000000) != 0)
          {
            goto LABEL_137;
          }
        }

        LODWORD(v63) = v72;
LABEL_137:
        ;
      }

      while (v63 != v62);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v85);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v84);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v82);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1 + 528);
  re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::clear(a1 + 576);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v74);
}

void re::ecs2::UILayerGeometryManager::markGroundingShadowEntityForRemovalIfNeeded(re::ecs2::UILayerGeometryManager *this, re::ecs2::Entity *a2)
{
  if (a2)
  {
    v3 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v3)
    {
      v4 = (v3 + 952);
      WeakRetained = objc_loadWeakRetained((v3 + 952));
      v6 = WeakRetained - 8;
      if (WeakRetained)
      {
        v7 = (WeakRetained - 8);
      }

      else
      {
        v7 = 0;
      }

      v14 = v7;
      if (!WeakRetained)
      {
        goto LABEL_15;
      }

      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
      v9 = v8 ^ (v8 >> 31);
      v10 = *(this + 150);
      if (v10)
      {
        v11 = v9 % v10;
        v12 = *(*(this + 73) + 4 * (v9 % v10));
        if (v12 != 0x7FFFFFFF)
        {
          v13 = *(this + 74);
          if (*(v13 + 24 * v12 + 16) == v6)
          {
            goto LABEL_15;
          }

          while (1)
          {
            LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
            if (v12 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v13 + 24 * v12 + 16) == v7)
            {
              goto LABEL_15;
            }
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsCopy(this + 576, v11, v9, &v14, &v14);
      ++*(this + 154);
LABEL_15:
      objc_destroyWeak(v4);
      *v4 = 0;
      if (v14)
      {
      }
    }
  }
}

void re::ecs2::UILayerGeometryManager::willAddSceneToECSService(re::ecs2::UILayerGeometryManager *this, re::EventBus **a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = a2;
  v3 = a2[36];
  v17 = 0uLL;
  v18 = 1;
  v19 = 0;
  v4 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 480, &v21, &v17);
  v5 = v17.n128_u64[0];
  if (v17.n128_u64[0] && (v18 & 1) == 0)
  {
    v5 = (*(*v17.n128_u64[0] + 40))();
  }

  v32 = re::globalAllocators(v5)[2];
  v6 = (*(*v32 + 32))(v32, 32, 0);
  *v6 = &unk_1F5CF69B8;
  v6[1] = this;
  v6[2] = re::ecs2::UILayerGeometryManager::didActivateUILayerGeometryComponent;
  v6[3] = 0;
  v33 = v6;
  v17.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v3, v31, re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v17.n128_u64[1] = v7;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v17);
  v8 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v31);
  v29 = re::globalAllocators(v8)[2];
  v9 = (*(*v29 + 32))(v29, 32, 0);
  *v9 = &unk_1F5CF6A10;
  v9[1] = this;
  v9[2] = re::ecs2::UILayerGeometryManager::didChangeUILayerGeometryComponent;
  v9[3] = 0;
  v30 = v9;
  v17.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v28, re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v17.n128_u64[1] = v10;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v17);
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v28);
  v26 = re::globalAllocators(v11)[2];
  v12 = (*(*v26 + 32))(v26, 32, 0);
  *v12 = &unk_1F5CF6A68;
  v12[1] = this;
  v12[2] = re::ecs2::UILayerGeometryManager::willDeactivateUILayerGeometryComponent;
  v12[3] = 0;
  v27 = v12;
  v17.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v3, v25, re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v17.n128_u64[1] = v13;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v17);
  v14 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v25);
  v23 = re::globalAllocators(v14)[2];
  v15 = (*(*v23 + 32))(v23, 32, 0);
  *v15 = &unk_1F5CF6AC0;
  v15[1] = this;
  v15[2] = re::ecs2::UILayerGeometryManager::willRemoveUILayerGeometryComponent;
  v15[3] = 0;
  v24 = v15;
  v17.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v22, re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v17.n128_u64[1] = v16;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v17);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v22);
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    re::ecs2::UITreeTracker::registerScene(this + 8, v21);
  }
}

uint64_t re::ecs2::UILayerGeometryManager::didActivateUILayerGeometryComponent(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(a2 + 304) & 1) != 0 && (*(a2 + 387) & 1) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 528, &v3);
  }

  return 0;
}

uint64_t re::ecs2::UILayerGeometryManager::didChangeUILayerGeometryComponent(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(a2 + 304) & 1) != 0 && (*(a2 + 387) & 1) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 528, &v3);
  }

  return 0;
}

uint64_t re::ecs2::UILayerGeometryManager::willDeactivateUILayerGeometryComponent(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 528, &v3);
  return 0;
}

uint64_t re::ecs2::UILayerGeometryManager::willRemoveUILayerGeometryComponent(re::ecs2::UILayerGeometryManager *a1, re::ecs2::Entity *a2)
{
  v4 = a2;
  re::ecs2::UILayerGeometryManager::markGroundingShadowEntityForRemovalIfNeeded(a1, a2);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 528, &v4);
  return 0;
}

void re::ecs2::UILayerGeometryManager::willRemoveSceneFromECSService(re::ecs2::UILayerGeometryManager *this, re::ecs2::Scene *a2)
{
  v10 = a2;
  v3 = *(a2 + 36);
  v4 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 480, &v10);
  if (*(v4 + 16))
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = &v5[2 * v6];
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v5 += 2;
      re::EventBus::unsubscribe(v3, v8, v9);
    }

    while (v5 != v7);
  }

  re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 480, &v10);
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow)
  {
    re::ecs2::UITreeTracker::unregisterScene(this + 8, v10);
  }
}

void re::ecs2::UILayerGeometryManager::~UILayerGeometryManager(re::ecs2::UILayerGeometryManager *this)
{
  re::ecs2::UILayerGeometryManager::~UILayerGeometryManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 72);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 66);
  re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 60);
  re::ecs2::UITreeTracker::~UITreeTracker((this + 8));
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF69B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF69B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6A10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6A10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6A68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6A68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6AC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UILayerGeometryManager,REEventHandlerResult (re::ecs2::UILayerGeometryManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6AC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_MaterialRenderStateArrayComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE7A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE810, "MaterialRenderStateArrayComponent");
    __cxa_guard_release(&qword_1EE1AE7A8);
  }

  return &unk_1EE1AE810;
}

void re::ecs2::initInfo_MaterialRenderStateArrayComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x5C89C1565218C930;
  v12[1] = "MaterialRenderStateArrayComponent";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1AE7B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AE7B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "ecs2::Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AE7C0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::MaterialRenderFlags>>::get();
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "renderState";
      *(v10 + 16) = &qword_1EE1AE7D0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1AE7C8 = v10;
      __cxa_guard_release(&qword_1EE1AE7B0);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AE7C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialRenderStateArrayComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialRenderStateArrayComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialRenderStateArrayComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialRenderStateArrayComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233MaterialRenderStateArrayComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::IntrospectionInfo<re::DynamicArray<re::MaterialRenderFlags>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AE7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE7B8))
  {
    re::IntrospectionDynamicArray<re::MaterialRenderFlags>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AE7B8);
  }

  if ((_MergedGlobals_334 & 1) == 0)
  {
    v0 = re::introspect_MaterialRenderFlags(1);
    if ((_MergedGlobals_334 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_334 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AE7D0, 0);
      qword_1EE1AE7E0 = 0x2800000003;
      dword_1EE1AE7E8 = v2;
      word_1EE1AE7EC = 0;
      *&xmmword_1EE1AE7F0 = 0;
      *(&xmmword_1EE1AE7F0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AE800 = v1;
      qword_1EE1AE808 = 0;
      qword_1EE1AE7D0 = &unk_1F5CF6B18;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AE7D0, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AE7F0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::ecs2::MaterialRenderStateArrayComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6A00;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::MaterialRenderStateArrayComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6A00;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

uint64_t re::IntrospectionDynamicArray<re::MaterialRenderFlags>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AE7D0, 0);
  *(&qword_1EE1AE7E0 + 6) = 0;
  qword_1EE1AE7E0 = 0;
  *&xmmword_1EE1AE7F0 = 0;
  *(&xmmword_1EE1AE7F0 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AE7D0 = &unk_1F5CADA48;
  qword_1EE1AE808 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AE800);
  qword_1EE1AE7D0 = &unk_1F5CF6B18;
  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialRenderFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialRenderFlags>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialRenderFlags>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialRenderFlags>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialRenderFlags>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MaterialRenderFlags>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialRenderFlags>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (v8 >= v9)
  {
    v10 = v8 + 1;
    if (v9 < v8 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v9;
        if (!v9)
        {
          v11 = 8;
        }

        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a4, v12);
      }

      else
      {
        re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v8 = *(a4 + 16);
  }

  v13 = (*(a4 + 32) + 20 * v8);
  *v13 = 0;
  *(v13 + 2) = 0;
  *(v13 + 4) = 0;
  *(v13 + 6) = 0;
  *(v13 + 8) = 0;
  *(v13 + 10) = 0;
  *(v13 + 12) = 0;
  *(v13 + 14) = 0;
  *(v13 + 16) = 0;
  *(v13 + 18) = 0;
  *(a4 + 16) = v8 + 1;
  ++*(a4 + 24);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

uint64_t re::IntrospectionDynamicArray<re::MaterialRenderFlags>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 20 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 20 * a3;
}

void *re::DynamicArray<re::MaterialRenderFlags>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MaterialRenderFlags>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x14uLL))
        {
          v2 = 20 * a2;
          result = (*(*result + 32))(result, 20 * a2, 1);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_35;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 20, a2);
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
LABEL_35:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 20 * v9);
        v11 = (v8 + 9);
        v12 = v7 + 9;
        do
        {
          v13 = v11 - 9;
          v14 = *(v11 - 9);
          *(v12 - 9) = v14;
          if (v14 == 1)
          {
            *(v12 - 8) = *(v11 - 8);
          }

          v15 = *(v11 - 7);
          *(v12 - 7) = v15;
          if (v15 == 1)
          {
            *(v12 - 6) = *(v11 - 6);
          }

          v16 = *(v11 - 5);
          *(v12 - 5) = v16;
          if (v16 == 1)
          {
            *(v12 - 4) = *(v11 - 4);
          }

          v17 = *(v11 - 3);
          *(v12 - 3) = v17;
          if (v17 == 1)
          {
            *(v12 - 2) = *(v11 - 2);
          }

          v18 = *(v11 - 1);
          *(v12 - 1) = v18;
          if (v18 == 1)
          {
            *v12 = *v11;
          }

          v19 = v11[1];
          v12[1] = v19;
          if (v19 == 1)
          {
            v12[2] = v11[2];
          }

          v20 = v11[3];
          v12[3] = v20;
          if (v20 == 1)
          {
            v12[4] = v11[4];
          }

          v21 = v11[5];
          v12[5] = v21;
          if (v21 == 1)
          {
            v12[6] = v11[6];
          }

          v22 = v11[7];
          v12[7] = v22;
          if (v22 == 1)
          {
            v12[8] = v11[8];
          }

          v23 = v11[9];
          v12[9] = v23;
          if (v23 == 1)
          {
            v12[10] = v11[10];
          }

          v11 += 20;
          v12 += 20;
        }

        while (v13 + 20 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_35;
    }
  }

  return result;
}

void *re::DynamicArray<re::MaterialRenderFlags>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MaterialRenderFlags>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v3[4] + 20 * v4 + 10);
      do
      {
        *(v6 - 10) = 0;
        *(v6 - 8) = 0;
        *(v6 - 6) = 0;
        *(v6 - 4) = 0;
        *(v6 - 2) = 0;
        *v6 = 0;
        v6[2] = 0;
        v6[4] = 0;
        v6[6] = 0;
        v6[8] = 0;
        v6 += 20;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialRenderFlags>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::MaterialRenderFlags>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 20 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 20;
        v11 -= 20;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 20 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 20 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialRenderFlags>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs233MaterialRenderStateArrayComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_ProtectionOptionsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_335, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_335))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE8A8, "ProtectionOptionsSystem");
    __cxa_guard_release(&_MergedGlobals_335);
  }

  return &unk_1EE1AE8A8;
}

void re::ecs2::initInfo_ProtectionOptionsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE76AB3F74DAE17E8;
  v6[1] = "ProtectionOptionsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ProtectionOptionsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProtectionOptionsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProtectionOptionsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ProtectionOptionsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ProtectionOptionsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProtectionOptionsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProtectionOptionsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::ProtectionOptionsSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF6BB0;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::ProtectionOptionsSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF6BB0;
  result[29] = 0;
  result[30] = 0;
  result[28] = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::ProtectionOptionsSystem::willAddSystemToECSService(re::ecs2::ProtectionOptionsSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  result = re::ServiceLocator::serviceOrNull<re::ProtectionOptionsService>(*(*(this + 28) + 688));
  *(this + 30) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ProtectionOptionsService>(uint64_t a1)
{
  {
    re::introspect<re::ProtectionOptionsService>(BOOL)::info = re::introspect_ProtectionOptionsService(0);
  }

  v2 = re::introspect<re::ProtectionOptionsService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void *re::ecs2::ProtectionOptionsSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

void *re::ecs2::ProtectionOptionsSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[28];
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    if (result[29])
    {
      result = result[30];
      if (result)
      {
        if (*(a3 + 8) != 2)
        {
          (*(*result + 48))(result);
          v5 = *(v3[29] + 112);
          if (v5)
          {
            v6 = re::RenderFrameBox::get((v5 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v6 = 0;
          }

          result = (*(*v3[30] + 24))(v3[30]);
          *(v6 + 440) = result;
        }
      }
    }
  }

  return result;
}

void re::ecs2::ProtectionOptionsSystem::~ProtectionOptionsSystem(re::ecs2::ProtectionOptionsSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ImageBasedReflectionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE940))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE948, "ImageBasedReflectionSystem");
    __cxa_guard_release(&qword_1EE1AE940);
  }

  return &unk_1EE1AE948;
}

void re::ecs2::initInfo_ImageBasedReflectionSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC466ACB6F5D99324;
  v6[1] = "ImageBasedReflectionSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ImageBasedReflectionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ImageBasedReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ImageBasedReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 336) = 0;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF6C40;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 37);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionSystem>(uint64_t a1)
{
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF6C40;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0;
  *(v1 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 37);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::ImageBasedReflectionSystem::willAddSystemToECSService(re::ecs2::ImageBasedReflectionSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(v2);
  *(this + 29) = result;
  return result;
}

double re::ecs2::ImageBasedReflectionSystem::willRemoveSystemFromECSService(re::ecs2::ImageBasedReflectionSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

uint64_t (***re::ecs2::ImageBasedReflectionSystem::willAddSceneToECSService(re::ecs2::ImageBasedReflectionSystem *this, re::EventBus **a2))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for ImageBasedReflectionSystem to track parameter changes.", "eventBus", "willAddSceneToECSService", 36);
    _os_crash();
    __break(1u);
  }

  v10 = re::globalAllocators(this)[2];
  v4 = (*(*v10 + 32))(v10, 32, 0);
  *v4 = &unk_1F5CF6CD0;
  v4[1] = this;
  v4[2] = re::ecs2::ImageBasedReflectionSystem::componentWillDeactivateEventHandler;
  v4[3] = 0;
  v11 = v4;
  *&v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v2, v9, re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  *(&v7 + 1) = v5;
  re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addNew(this + 296, &v8, &v7);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v9);
}

uint64_t re::ecs2::ImageBasedReflectionSystem::componentWillDeactivateEventHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 232) + 24);
  v3 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::ImageBasedReflectionReceiverComponent::removeParamsFromSystemParameterBlock(v3, v2, 1);
  return 0;
}

BOOL re::ecs2::ImageBasedReflectionSystem::willRemoveSceneFromECSService(_BOOL8 this, unint64_t a2)
{
  v8 = a2;
  if (*(this + 296))
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = *(*(this + 304) + 4 * ((v3 ^ (v3 >> 31)) % *(this + 320)));
    if (v4 != 0x7FFFFFFF)
    {
      v5 = *(a2 + 288);
      v6 = *(this + 312);
      while (*(v6 + 40 * v4 + 8) != a2)
      {
        v4 = *(v6 + 40 * v4) & 0x7FFFFFFF;
        if (v4 == 0x7FFFFFFF)
        {
          return this;
        }
      }

      v7 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 296, &v8);
      re::EventBus::unsubscribe(v5, *v7, *(v7 + 8));
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2 + 296, &v8);
    }
  }

  return this;
}

void re::ecs2::ImageBasedReflectionSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 232);
  if (v3)
  {
    v5 = a1;
    _MergedGlobals_336 = 0;
    v6 = *(v3 + 96);
    if (v6)
    {
      LOBYTE(v75[0]) = 0;
      *buf = 0xE15535833B0F11F2;
      *&buf[8] = "imageBasedReflectionSystem:debugLog";
      v6 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v6, buf, v75);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      _MergedGlobals_336 = v75[0];
      if (LOBYTE(v75[0]) == 1)
      {
        re::ecs2::ImageBasedReflectionSystem::log(buf, v66);
        v6 = *buf;
        if (*buf)
        {
          if (buf[8])
          {
            v6 = (*(**buf + 40))();
          }
        }
      }
    }

    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = &v8[v7];
      v68 = v9;
      v69 = v5;
      do
      {
        v10 = *(v5 + 232);
        if (!v10 || (v11 = *(v10 + 24)) == 0)
        {
          if ((atomic_exchange(byte_1EE1AE939, 1u) & 1) == 0)
          {
            v25 = *re::graphicsLogObjects(v6);
            v6 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v6)
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "ImageBasedReflection: ImageBasedReflectionSystem failed -- can't access MaterialManager", buf, 2u);
            }
          }

          goto LABEL_62;
        }

        v12 = *v8;
        if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken != -1)
        {
          dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
        }

        if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking == 1)
        {
          v13 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
          if (*(v12 + 28) > v13)
          {
            v14 = *(*(v12 + 30) + 8 * v13);
            if (v14)
            {
              v15 = *(v14 + 384);
              if (v15)
              {
                v16 = *(v14 + 400);
                v17 = 8 * v15;
                do
                {
                  v18 = *v16++;
                  re::ecs2::ImageBasedReflectionReceiverComponent::removeParamsFromSystemParameterBlock(v18, *(*(v5 + 232) + 24), 0);
                  v17 -= 8;
                }

                while (v17);
              }
            }
          }
        }

        ReflectionContentComponent = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(v12, 1);
        v21 = ReflectionContentComponent;
        v22 = 0uLL;
        v72 = 0u;
        if (ReflectionContentComponent)
        {
          v6 = re::ecs2::EntityComponentCollection::get((*(ReflectionContentComponent + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (!v6)
          {
            if (_MergedGlobals_336 == 1)
            {
              re::DynamicString::format("Warning! Encountered entity %llu with a ImageBasedReflectionContentComponent but no video component", buf, *(*(v21 + 16) + 312));
              re::ecs2::ImageBasedReflectionSystem::log(buf, v26);
              v6 = *buf;
              if (*buf)
              {
                if (buf[8])
                {
                  v6 = (*(**buf + 40))();
                }
              }
            }

            goto LABEL_62;
          }

          v23 = v6;
          CustomDockingRegionComponentFromScene = re::ecs2::CustomDockingRegionComponent::getCustomDockingRegionComponentFromScene(v12);
          if (CustomDockingRegionComponentFromScene)
          {
            v22 = *(CustomDockingRegionComponentFromScene + 48);
            v72 = *(CustomDockingRegionComponentFromScene + 32);
          }

          else
          {
            if (_MergedGlobals_336 == 1)
            {
              re::DynamicString::format("Warning! Encountered entity %llu with a ImageBasedReflectionContentComponent but no docking region component", buf, *(*(v21 + 16) + 312));
              re::ecs2::ImageBasedReflectionSystem::log(buf, v65);
              if (*buf)
              {
                if (buf[8])
                {
                  (*(**buf + 40))();
                }
              }
            }

            v22 = 0uLL;
          }
        }

        else
        {
          v23 = 0;
        }

        v70 = v22;
        v27 = *(*(v5 + 232) + 344);
        v6 = *(v27 + 1312);
        if (v6)
        {
          v6 = (*(*v6 + 16))(v6);
        }

        else
        {
          v28 = *(v27 + 1320);
        }

        v74 = v28;
        if (v21 && v23)
        {
          re::ecs2::ibrutils::inferContentPlaneGeometry(*(v21 + 16), *(v5 + 288), v20, v88);
          if (_MergedGlobals_336 == 1)
          {
            *buf = v88[0];
            v83 = v88[1];
            v84 = v88[2];
            v85[0] = v88[3];
            re::GraphicsLoggingUtilities::toStr(buf, &v80);
            v59 = &v80 + 9;
            if (BYTE8(v80))
            {
              v59 = v81;
            }

            re::DynamicString::format("Content worldToPlaneUVsTransformMatrix: %s", v75, v59);
            re::ecs2::ImageBasedReflectionSystem::log(v75, v60);
            if (*&v75[0])
            {
              if (BYTE8(v75[0]))
              {
                (*(**&v75[0] + 40))();
              }

              memset(v75, 0, 32);
            }

            if (v80 && (BYTE8(v80) & 1) != 0)
            {
              (*(*v80 + 40))();
            }

            re::DynamicString::format("Content planeWidth: %g planeHeight: %g", v75, v89, v90);
            re::ecs2::ImageBasedReflectionSystem::log(v75, v61);
            if (*&v75[0] && (BYTE8(v75[0]) & 1) != 0)
            {
              (*(**&v75[0] + 40))();
            }

            v62 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
            if (*(v12 + 28) <= v62)
            {
              v63 = 0;
            }

            else
            {
              v63 = *(*(v12 + 30) + 8 * v62);
              if (v63)
              {
                v63 = *(v63 + 384);
              }
            }

            re::DynamicString::format("Content will be applied to %zu receiver(s)", v75, v63);
            re::ecs2::ImageBasedReflectionSystem::log(v75, v64);
            v6 = *&v75[0];
            if (*&v75[0] && (BYTE8(v75[0]) & 1) != 0)
            {
              v6 = (*(**&v75[0] + 40))();
            }
          }

          v29 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
          if (*(v12 + 28) > v29)
          {
            v30 = *(*(v12 + 30) + 8 * v29);
            if (v30)
            {
              v31 = *(v30 + 384);
              if (v31)
              {
                v73.i64[0] = vsubq_f32(v70, v72).u64[0];
                v32 = *(v30 + 400);
                v71 = &v32[v31];
                do
                {
                  v33 = *v32;
                  v34 = v89;
                  v35 = v90;
                  v36 = *(v23 + 344);
                  re::ecs2::VideoComponent::getRectangularMask(v23);
                  v38 = v37;
                  re::ecs2::VideoComponent::getRectangularMask(v23);
                  v40 = v39;
                  Dimensions = re::ecs2::VideoComponent::getDimensions(v23);
                  re::ecs2::VideoComponent::getVideoTextureHandles(v23, buf);
                  re::ecs2::VideoComponent::calculateColorSpaceTransformationMatrix(v23, buf, &v80);
                  v42 = *(v23 + 336) / (v74 * v36);
                  if (_MergedGlobals_336 == 1)
                  {
                    v43 = v33[2];
                    if (v43)
                    {
                      v57 = *(v43 + 296);
                      if (v57)
                      {
                        re::DynamicString::format("Applying video attachments for receiver entity %llu [%s] (videoBrightnessScale: %g)", &v78, *(v43 + 312), v57, v42);
                        re::ecs2::ImageBasedReflectionSystem::log(&v78, v58);
                        if (v78)
                        {
                          if (v79)
                          {
                            (*(*v78 + 40))();
                          }
                        }
                      }
                    }
                  }

                  for (i = 0; i != 20; i += 10)
                  {
                    re::TextureHandle::TextureHandle(&v75[i], &buf[i * 16]);
                    re::TextureHandle::TextureHandle(&v75[i + 1], &buf[i * 16 + 16]);
                    re::TextureHandle::TextureHandle(&v75[i + 2], &v85[i - 1]);
                    re::TextureHandle::TextureHandle(&v75[i + 3], &v85[i]);
                    re::TextureHandle::TextureHandle(&v75[i + 4], &v85[i + 1]);
                    re::TextureHandle::TextureHandle(&v75[i + 5], &v85[i + 2]);
                    re::TextureHandle::TextureHandle(&v75[i + 6], &v85[i + 3]);
                    *&v75[i + 9] = 0;
                    v45 = &v75[i + 9];
                    v46 = v85[i + 5];
                    *(v45 - 2) = v85[i + 4];
                    *(v45 - 1) = v46;
                    re::VideoObject<re::VideoColorTransformBase>::setRef(v45, v45, *&v85[i + 6]);
                    *(v45 + 4) = WORD4(v85[i + 6]);
                    *(v45 + 10) = BYTE10(v85[i + 6]);
                  }

                  v76 = v86;
                  v77 = v87;
                  v47 = re::ecs2::VideoComponent::YCbCrMatrix(v23);
                  v48 = re::ecs2::VideoComponent::imageFunction(v23);
                  v49 = *(v23 + 340);
                  *&v67 = re::ecs2::VideoComponent::getAverageColor(v23);
                  *(&v67 + 1) = v50;
                  v51.i32[0] = v73.i32[1];
                  re::ecs2::ImageBasedReflectionReceiverComponent::applyAttachments(v33, v11, v75, v47, v48, &v80, v88, v52, v34, v35, v42, v49, v51, *v73.f32, v38, v40, v67, Dimensions);
                  for (j = 0; j != -20; j -= 10)
                  {
                    v54 = &v75[j];
                    if (*&v75[j + 19])
                    {
                      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v54 + 38);
                    }

                    v54[38] = 0;
                    re::TextureHandle::invalidate((v54 + 32));
                    re::TextureHandle::invalidate((v54 + 30));
                    re::TextureHandle::invalidate((v54 + 28));
                    re::TextureHandle::invalidate((v54 + 26));
                    re::TextureHandle::invalidate((v54 + 24));
                    re::TextureHandle::invalidate((v54 + 22));
                    re::TextureHandle::invalidate((v54 + 20));
                  }

                  for (k = 0; k != -20; k -= 10)
                  {
                    v56 = &buf[k * 16];
                    if (*&v85[k + 16])
                    {
                      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v56 + 38);
                    }

                    v56[38] = 0;
                    re::TextureHandle::invalidate((v56 + 32));
                    re::TextureHandle::invalidate((v56 + 30));
                    re::TextureHandle::invalidate((v56 + 28));
                    re::TextureHandle::invalidate((v56 + 26));
                    re::TextureHandle::invalidate((v56 + 24));
                    re::TextureHandle::invalidate((v56 + 22));
                    re::TextureHandle::invalidate((v56 + 20));
                  }

                  ++v32;
                }

                while (v32 != v71);
              }
            }
          }

          v9 = v68;
          v5 = v69;
        }

LABEL_62:
        ++v8;
      }

      while (v8 != v9);
    }
  }
}

void re::ecs2::ImageBasedReflectionSystem::log(re::ecs2::ImageBasedReflectionSystem *this, const re::DynamicString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 1))
    {
      v4 = *(this + 2);
    }

    else
    {
      v4 = this + 9;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ImageBasedReflectionSystem: %s", &v5, 0xCu);
  }
}

uint64_t re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(re::ecs2::ImageBasedReflectionSystem *this, const re::ecs2::Scene *a2)
{
  v3 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
  if (*(this + 28) > v3 && (v4 = *(*(this + 30) + 8 * v3)) != 0)
  {
    v5 = *(v4 + 400);
    v6 = *(v4 + 384);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (_MergedGlobals_336 & a2);
  if (v7 == 1)
  {
    re::DynamicString::format("Found %zu content component(s)", &v36, v6);
    re::ecs2::ImageBasedReflectionSystem::log(&v36, v32);
    if (v36)
    {
      if (v37)
      {
        (*(*v36 + 40))();
      }
    }
  }

  if (!v6)
  {
    return 0;
  }

  v8 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
  if (*(this + 28) <= v8 || (v9 = *(*(this + 30) + 8 * v8)) == 0)
  {
    if (!v7)
    {
LABEL_13:
      v11 = 8 * v6;
      v12 = v5;
      while (1)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14)
        {
          v15 = *(v14 + 304);
          v16 = v7 ^ 1;
          if ((v15 & 1) == 0)
          {
            v16 = 1;
          }

          if ((v16 & 1) == 0)
          {
            re::DynamicString::format("Chose arbitrary content component from entity %llu", &v36, *(v14 + 312));
LABEL_42:
            re::ecs2::ImageBasedReflectionSystem::log(&v36, v29);
            if (v36 && (v37 & 1) != 0)
            {
              (*(*v36 + 40))();
            }

            return v13;
          }

          if (v15)
          {
            return v13;
          }
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_20;
        }
      }
    }

    v10 = 0;
    goto LABEL_56;
  }

  v10 = *(v9 + 384);
  if (v7)
  {
LABEL_56:
    re::DynamicString::format("Found %zu root component(s)", &v36, v10);
    re::ecs2::ImageBasedReflectionSystem::log(&v36, v33);
    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 40))();
    }

    if (!v10)
    {
      re::DynamicString::format("Warning! No root component found; results are undefined", &v36);
      re::ecs2::ImageBasedReflectionSystem::log(&v36, v34);
      if (v36 && (v37 & 1) != 0)
      {
        (*(*v36 + 40))();
      }

      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_20:
  v17 = &v5[v6];
  v18 = xmmword_1E306AC00;
  while (1)
  {
    v13 = *v5;
    if (v7)
    {
      v19 = *(v13 + 16);
      if (v19)
      {
        v35 = v18;
        re::DynamicString::format("Checking whether content component on entity %llu is parented by a root component...", &v36, *(v19 + 312));
        re::ecs2::ImageBasedReflectionSystem::log(&v36, v28);
        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }

        v18 = v35;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      if (*(v20 + 304))
      {
        break;
      }
    }

LABEL_34:
    if (++v5 == v17)
    {
      if (v7)
      {
        re::DynamicString::format("No valid content component was found", &v36);
        re::ecs2::ImageBasedReflectionSystem::log(&v36, v30);
        if (v36)
        {
          if (v37)
          {
            (*(*v36 + 40))();
          }
        }
      }

      return 0;
    }
  }

  v22 = *(v13 + 16);
  while (1)
  {
    v23 = *(v22 + 98);
    if (*(v22 + 98))
    {
      v24 = *(v22 + 104);
      v21 = (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v25 = vld1q_dup_s16(v21);
      v26 = 1;
      while (1)
      {
        v27 = vandq_s8(vceqq_s16(v25, *v24), v18);
        v27.i16[0] = vmaxvq_u16(v27);
        if (v27.i32[0])
        {
          break;
        }

        v26 -= 8;
        ++v24;
        if (!--v23)
        {
          goto LABEL_32;
        }
      }

      if (v27.u16[0] - v26 < *(v22 + 96))
      {
        break;
      }
    }

LABEL_32:
    v22 = *(v22 + 32);
    if (!v22 || (*(v22 + 304) & 0x80) != 0)
    {
      goto LABEL_34;
    }
  }

  if (v7)
  {
    re::DynamicString::format("Found root component parenting content from entity %llu, will use this content", &v36, *(v20 + 312));
    goto LABEL_42;
  }

  return v13;
}

void re::ecs2::ImageBasedReflectionSystem::~ImageBasedReflectionSystem(re::ecs2::ImageBasedReflectionSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedReflectionSystem,REEventHandlerResult (re::ecs2::ImageBasedReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedReflectionSystem,REEventHandlerResult (re::ecs2::ImageBasedReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6CD0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedReflectionSystem,REEventHandlerResult (re::ecs2::ImageBasedReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6CD0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_VisualProxyCaptureComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_337, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_337))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE9F8, "VisualProxyCaptureComponent");
    __cxa_guard_release(&_MergedGlobals_337);
  }

  return &unk_1EE1AE9F8;
}

void re::ecs2::initInfo_VisualProxyCaptureComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x12371EF08E44DECALL;
  v10[1] = "VisualProxyCaptureComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AE9E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AE9E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AE9E0 = v8;
      __cxa_guard_release(&qword_1EE1AE9E8);
    }
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AE9E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyCaptureComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyCaptureComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyCaptureComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyCaptureComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227VisualProxyCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::internal::defaultDestruct<re::ecs2::VisualProxyCaptureComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(a3 + 136);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a3 + 88));
  v4 = *(a3 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a3 + 72);
  if (v5)
  {

    *(a3 + 72) = 0;
  }

  if (*(a3 + 40) == 1)
  {
    objc_destroyWeak((a3 + 48));
    *(a3 + 48) = 0;
  }

  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::VisualProxyCaptureComponent>(uint64_t a1)
{
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(a1 + 136);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a1 + 88));
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    *(a1 + 72) = 0;
  }

  if (*(a1 + 40) == 1)
  {
    objc_destroyWeak((a1 + 48));
    *(a1 + 48) = 0;
  }

  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::ecs2::allocInfo_VisualProxyCaptureSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE9F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE9F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEA88, "VisualProxyCaptureSystem");
    __cxa_guard_release(&qword_1EE1AE9F0);
  }

  return &unk_1EE1AEA88;
}

void re::ecs2::initInfo_VisualProxyCaptureSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB32037BEF810F18ELL;
  v6[1] = "VisualProxyCaptureSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VisualProxyCaptureSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyCaptureSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyCaptureSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VisualProxyCaptureSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VisualProxyCaptureSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyCaptureSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyCaptureSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::VisualProxyCaptureSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VisualProxyCaptureSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 39);

  re::ecs2::System::~System(a1);
}

BOOL re::ecs2::VisualProxyCaptureComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19) + 32);
      v13 = v19;
      v14 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      if (v12)
      {
        v15 = 32;
      }

      else
      {
        v15 = 48;
      }

      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v13, v14, *(a3 + v15));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) == 0;
}

BOOL re::ecs2::VisualProxyCaptureComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = *(*(*(a1 + 8) + 232) + 112);
      if (v13 && (v14 = *(v13 + 1796), v14 < 32))
      {
        v15 = (v14 + 1);
        *(v13 + 1796) = v15;
        *(v12 + 184) = v15;
        if (v14 != -2)
        {
          re::ecs2::VisualProxyCaptureHelper::markVisualProxyScope(*(v12 + 16), v15);
        }
      }

      else
      {
        *(v12 + 184) = -1;
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

re::ecs2::VisualProxyCaptureSystem *re::ecs2::VisualProxyCaptureSystem::VisualProxyCaptureSystem(re::ecs2::VisualProxyCaptureSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF6D68;
  v3 = v2 + 296;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CF6D28;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 1;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 336) = 0;
  *(v2 + 360) = 0;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 1;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0;
  *(v2 + 496) = 1;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 529) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 54, 0);
  *(this + 112) += 2;
  *(this + 59) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 60, 0);
  *(this + 124) += 2;
  *(this + 65) = 0;
  *(this + 66) = this;
  *(this + 67) = v3;
  *(this + 544) = 1;
  return this;
}

void re::ecs2::VisualProxyCaptureSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  v3 = a1[28];
  if (!v3 || (*(v3 + 432) & 0x10) != 0)
  {
    if (a1[29])
    {
      re::ecs2::BasicComponentStates<re::ecs2::VisualProxyCaptureComponent>::update(a1 + 39, &v4, 0);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 95, v4, v5);
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::ecs2::VisualProxyCaptureSystem::willRemoveSceneFromECSService(re::ecs2::VisualProxyCaptureSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 46, &v15);
  if (result != -1)
  {
    v4 = *(this + 47) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 432, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 480, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 312, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 368, &v15);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::VisualProxyCaptureComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::VisualProxyCaptureSystem::~VisualProxyCaptureSystem(re::ecs2::VisualProxyCaptureSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::VisualProxyCaptureComponent>(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE40F0;
  *(v2 + 32) = 256;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0x20000000200;
  *(v2 + 64) = 71;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 124) = 0x7FFFFFFFLL;
  *(a1 + 160) = re::globalAllocators(v2)[2];
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227VisualProxyCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void re::HashTable<re::ecs2::Entity *,re::ecs2::AudioComponentForwarder::ForwardingState,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 176 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_11, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::ecs2::AudioComponentForwarder::forwardAudioComponentState(re::ecs2::AudioComponentForwarder *this, uint64_t a2, re::ecs2::Entity *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    v7 = *re::audioLogObjects(this);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v45 = "Cannot set up audio component forwarding with source entity %p, destination entity %p";
    v46 = v7;
    v47 = 22;
    goto LABEL_24;
  }

  v6 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this, a2);
  if (!v6)
  {
    v8 = a2;
    do
    {
      v9 = v8;
      v8 = *(v8 + 32);
    }

    while (v8);
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = *(v10 + 288);
      if (v11)
      {
        v85 = re::globalAllocators(0)[2];
        v12 = (*(*v85 + 32))(v85, 32, 0);
        *v12 = &unk_1F5CF6E10;
        v12[1] = this;
        v12[2] = re::ecs2::AudioComponentForwarder::didChangeComponent<re::ecs2::SpatialAudioComponent>;
        v12[3] = 0;
        v86 = v12;
        v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, a2, v84, re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v58 = v14;
        v59 = v13;
        v82 = re::globalAllocators(v13)[2];
        v15 = (*(*v82 + 32))(v82, 32, 0);
        *v15 = &unk_1F5CF6E10;
        v15[1] = this;
        v15[2] = re::ecs2::AudioComponentForwarder::didChangeComponent<re::ecs2::AmbientAudioComponent>;
        v15[3] = 0;
        v83 = v15;
        v16 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, a2, v81, re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v56 = v17;
        v57 = v16;
        v79 = re::globalAllocators(v16)[2];
        v18 = (*(*v79 + 32))(v79, 32, 0);
        *v18 = &unk_1F5CF6E10;
        v18[1] = this;
        v18[2] = re::ecs2::AudioComponentForwarder::didChangeComponent<re::ecs2::ChannelAudioComponent>;
        v18[3] = 0;
        v80 = v18;
        v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, a2, v78, re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v54 = v20;
        v55 = v19;
        v76 = re::globalAllocators(v19)[2];
        v21 = (*(*v76 + 32))(v76, 32, 0);
        *v21 = &unk_1F5CF6E68;
        v21[1] = this;
        v21[2] = re::ecs2::AudioComponentForwarder::didAddComponent<re::ecs2::SpatialAudioComponent>;
        v21[3] = 0;
        v77 = v21;
        v22 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v11, a2, v75, re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v52 = v23;
        v53 = v22;
        v73 = re::globalAllocators(v22)[2];
        v24 = (*(*v73 + 32))(v73, 32, 0);
        *v24 = &unk_1F5CF6E68;
        v24[1] = this;
        v24[2] = re::ecs2::AudioComponentForwarder::didAddComponent<re::ecs2::AmbientAudioComponent>;
        v24[3] = 0;
        v74 = v24;
        v25 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v11, a2, v72, re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v50 = v26;
        v51 = v25;
        v70 = re::globalAllocators(v25)[2];
        v27 = (*(*v70 + 32))(v70, 32, 0);
        *v27 = &unk_1F5CF6E68;
        v27[1] = this;
        v27[2] = re::ecs2::AudioComponentForwarder::didAddComponent<re::ecs2::ChannelAudioComponent>;
        v27[3] = 0;
        v71 = v27;
        v49 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v11, a2, v69, re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v29 = v28;
        v67 = re::globalAllocators(v49)[2];
        v30 = (*(*v67 + 32))(v67, 32, 0);
        *v30 = &unk_1F5CF6EC0;
        v30[1] = this;
        v30[2] = re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::SpatialAudioComponent>;
        v30[3] = 0;
        v68 = v30;
        v31 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v11, a2, v66, re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v33 = v32;
        v64 = re::globalAllocators(v31)[2];
        v34 = (*(*v64 + 32))(v64, 32, 0);
        *v34 = &unk_1F5CF6EC0;
        v34[1] = this;
        v34[2] = re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::AmbientAudioComponent>;
        v34[3] = 0;
        v65 = v34;
        v35 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v11, a2, v63, re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v37 = v36;
        v61 = re::globalAllocators(v35)[2];
        v38 = (*(*v61 + 32))(v61, 32, 0);
        *v38 = &unk_1F5CF6EC0;
        v38[1] = this;
        v38[2] = re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::ChannelAudioComponent>;
        v38[3] = 0;
        v62 = v38;
        v39 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v11, a2, v60, re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
        v41 = v40;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v60);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v63);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v66);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v69);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v75);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v78);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v84);
        memset(buf, 0, sizeof(buf));
        v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(buf, this, a2, v42 ^ (v42 >> 31));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v43 = re::HashTable<re::ecs2::Entity *,re::ecs2::AudioComponentForwarder::ForwardingState,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(this, *&buf[8], *buf);
          v43[1] = a2;
          v43[2] = a3;
          v43[3] = v59;
          v43[4] = v58;
          v43[5] = v57;
          v43[6] = v56;
          v43[7] = v55;
          v43[8] = v54;
          v43[9] = v53;
          v43[10] = v52;
          v43[11] = v51;
          v43[12] = v50;
          v43[13] = v49;
          v43[14] = v29;
          v43[15] = v31;
          v43[16] = v33;
          v43[17] = v35;
          v43[18] = v37;
          v43[19] = v39;
          v43[20] = v41;
          ++*(this + 10);
        }

        goto LABEL_5;
      }

      v48 = *re::audioLogObjects(0);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v45 = "Cannot set up audio component forwarding b/c entity's scene has no event bus";
      v46 = v48;
      v47 = 2;
    }

    else
    {
      v44 = *re::audioLogObjects(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 134217984;
      *&buf[4] = a2;
      v45 = "Cannot set up audio component forwarding b/c entity %p has no scene";
      v46 = v44;
      v47 = 12;
    }

LABEL_24:
    _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
    return;
  }

  *v6 = a3;
LABEL_5:
  if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::SpatialAudioComponent>(this, a2);
  }

  else if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::AmbientAudioComponent>(this, a2);
  }

  else if (re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
  {
    re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::ChannelAudioComponent>(this, a2);
  }
}

uint64_t re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::SpatialAudioComponent>(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (v3)
  {
    v4 = *v3;
    v5 = *(*v3 + 98);
    if (*(*v3 + 98))
    {
      v6 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v7 = *(v4 + 104);
      v8 = vld1q_dup_s16(v6);
      for (i = 1; ; i -= 8)
      {
        v10 = vandq_s8(vceqq_s16(v8, *v7), xmmword_1E306AC00);
        v10.i16[0] = vmaxvq_u16(v10);
        if (v10.i32[0])
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          return 0;
        }
      }

      if (v10.u16[0] - i < *(v4 + 96))
      {
        re::ecs2::EntityComponentCollection::remove((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }
    }
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "willRemoveComponent for unknown entity %p", &v13, 0xCu);
    }
  }

  return 0;
}

uint64_t re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::AmbientAudioComponent>(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (v3)
  {
    v4 = *v3;
    v5 = *(*v3 + 98);
    if (*(*v3 + 98))
    {
      v6 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v7 = *(v4 + 104);
      v8 = vld1q_dup_s16(v6);
      for (i = 1; ; i -= 8)
      {
        v10 = vandq_s8(vceqq_s16(v8, *v7), xmmword_1E306AC00);
        v10.i16[0] = vmaxvq_u16(v10);
        if (v10.i32[0])
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          return 0;
        }
      }

      if (v10.u16[0] - i < *(v4 + 96))
      {
        re::ecs2::EntityComponentCollection::remove((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }
    }
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "willRemoveComponent for unknown entity %p", &v13, 0xCu);
    }
  }

  return 0;
}

uint64_t re::ecs2::AudioComponentForwarder::willRemoveComponent<re::ecs2::ChannelAudioComponent>(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (v3)
  {
    v4 = *v3;
    v5 = *(*v3 + 98);
    if (*(*v3 + 98))
    {
      v6 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v7 = *(v4 + 104);
      v8 = vld1q_dup_s16(v6);
      for (i = 1; ; i -= 8)
      {
        v10 = vandq_s8(vceqq_s16(v8, *v7), xmmword_1E306AC00);
        v10.i16[0] = vmaxvq_u16(v10);
        if (v10.i32[0])
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          return 0;
        }
      }

      if (v10.u16[0] - i < *(v4 + 96))
      {
        re::ecs2::EntityComponentCollection::remove((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }
    }
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "willRemoveComponent for unknown entity %p", &v13, 0xCu);
    }
  }

  return 0;
}

void re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::SpatialAudioComponent>(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (!v3)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "didChangeOrAddComponent for unknown entity %p";
    goto LABEL_12;
  }

  v4 = v3;
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v5)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "Audio component for entity %p is unexpectedly nil";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    return;
  }

  v6 = v5;
  v7 = *v4;
  v8 = re::ecs2::EntityComponentCollection::getOrAdd((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *(v8 + 28) = *(v6 + 28);
  *(v8 + 40) = *(v6 + 40);
  *(v8 + 44) = *(v6 + 44);
  *(v8 + 36) = *(v6 + 36);
  re::ecs2::Component::markDirty(v8);
  v9 = *(v7 + 216);
  if (v9)
  {

    re::ecs2::NetworkComponent::markDirty(v9, v8);
  }
}

void re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::AmbientAudioComponent>(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (!v3)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "didChangeOrAddComponent for unknown entity %p";
    goto LABEL_12;
  }

  v4 = v3;
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v5)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "Audio component for entity %p is unexpectedly nil";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    return;
  }

  v6 = v5;
  v7 = *v4;
  v8 = re::ecs2::EntityComponentCollection::getOrAdd((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *(v8 + 28) = *(v6 + 28);
  re::ecs2::Component::markDirty(v8);
  v9 = *(v7 + 216);
  if (v9)
  {

    re::ecs2::NetworkComponent::markDirty(v9, v8);
  }
}

void re::ecs2::AudioComponentForwarder::didChangeOrAddComponent<re::ecs2::ChannelAudioComponent>(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1, a2);
  if (!v3)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "didChangeOrAddComponent for unknown entity %p";
    goto LABEL_12;
  }

  v4 = v3;
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v5)
  {
    v10 = *re::audioLogObjects(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 134217984;
    v13 = a2;
    v11 = "Audio component for entity %p is unexpectedly nil";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    return;
  }

  v6 = v5;
  v7 = *v4;
  v8 = re::ecs2::EntityComponentCollection::getOrAdd((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *(v8 + 28) = *(v6 + 28);
  re::ecs2::Component::markDirty(v8);
  v9 = *(v7 + 216);
  if (v9)
  {

    re::ecs2::NetworkComponent::markDirty(v9, v8);
  }
}

void re::ecs2::AudioComponentForwarder::stopForwardingAudioComponentState(re::ecs2::AudioComponentForwarder *this, unint64_t a2, re::ecs2::Entity *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this, a2);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (*v6 != a3)
  {
    return;
  }

  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *(v8 + 4);
  }

  while (v8);
  v10 = *(v9 + 3);
  if (!v10)
  {
    v17 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = 134217984;
    v24 = a2;
    v18 = "Cannot clean up audio component forwarding b/c entity %p has no scene";
    v19 = v17;
    v20 = 12;
    goto LABEL_15;
  }

  v11 = *(v10 + 288);
  if (!v11)
  {
    v21 = *re::audioLogObjects(v6);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v23) = 0;
    v18 = "Cannot clean up audio component forwarding b/c entity's scene has no event bus";
    v19 = v21;
    v20 = 2;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v18, &v23, v20);
    return;
  }

  re::EventBus::unsubscribe(*(v10 + 288), *(v6 + 8), *(v6 + 16));
  re::EventBus::unsubscribe(v11, *(v7 + 24), *(v7 + 32));
  re::EventBus::unsubscribe(v11, *(v7 + 40), *(v7 + 48));
  re::EventBus::unsubscribe(v11, *(v7 + 56), *(v7 + 64));
  re::EventBus::unsubscribe(v11, *(v7 + 72), *(v7 + 80));
  re::EventBus::unsubscribe(v11, *(v7 + 88), *(v7 + 96));
  re::EventBus::unsubscribe(v11, *(v7 + 104), *(v7 + 112));
  re::EventBus::unsubscribe(v11, *(v7 + 120), *(v7 + 128));
  re::EventBus::unsubscribe(v11, *(v7 + 136), *(v7 + 144));
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v23, this, a2, v12 ^ (v12 >> 31));
  v13 = v25;
  if (v25 != 0x7FFFFFFF)
  {
    v14 = *(this + 2);
    v15 = (v14 + 176 * v25);
    v16 = *v15 & 0x7FFFFFFF;
    if (v26 == 0x7FFFFFFF)
    {
      *(*(this + 1) + 4 * HIDWORD(v24)) = v16;
    }

    else
    {
      *(v14 + 176 * v26) = *(v14 + 176 * v26) & 0x80000000 | v16;
    }

    *v15 = *(this + 9);
    --*(this + 7);
    v22 = *(this + 10) + 1;
    *(this + 9) = v13;
    *(this + 10) = v22;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6E10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6E10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6E68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioComponentForwarder,REEventHandlerResult (re::ecs2::AudioComponentForwarder::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6EC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::ecs2::AudioComponentForwarder::ForwardingState,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Entity *,re::ecs2::AudioComponentForwarder::ForwardingState,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = *(a1 + 16);
          *&v34[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 24);
          v14 = *&v34[32];
          *(a1 + 24) = v15;
          ++*&v34[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity *,re::ecs2::AudioComponentForwarder::ForwardingState,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, *(v13 + v17 + 168) % *(a1 + 24));
                v13 = *&v34[16];
                v20 = *&v34[16] + v17;
                *(v19 + 8) = *(*&v34[16] + v17 + 8);
                v21 = *(v20 + 32);
                *(v19 + 16) = *(v20 + 16);
                *(v19 + 32) = v21;
                v22 = *(v20 + 96);
                v24 = *(v20 + 48);
                v23 = *(v20 + 64);
                *(v19 + 80) = *(v20 + 80);
                *(v19 + 96) = v22;
                *(v19 + 48) = v24;
                *(v19 + 64) = v23;
                v25 = *(v20 + 160);
                v27 = *(v20 + 128);
                v26 = *(v20 + 144);
                *(v19 + 112) = *(v20 + 112);
                *(v19 + 128) = v27;
                *(v19 + 144) = v26;
                *(v19 + 160) = v25;
                v16 = *&v34[32];
              }

              ++v18;
              v17 += 176;
            }

            while (v18 < v16);
          }

          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + 176 * v5);
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + 176 * v5);
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + 176 * v5;
  *v31 = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v5;
  *(v31 + 168) = a3;
  ++*(a1 + 28);
  return v28 + 176 * v5;
}

void re::ecs2::introspect_BodyTrackingTargetType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AEB20, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AEB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AEB28))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AEB90, "BodyTrackingTargetType", 4, 4, 1, 1);
      qword_1EE1AEB90 = &unk_1F5D0C658;
      qword_1EE1AEBD0 = &re::ecs2::introspect_BodyTrackingTargetType(BOOL)::enumTable;
      dword_1EE1AEBA0 = 9;
      __cxa_guard_release(&qword_1EE1AEB28);
    }

    if (_MergedGlobals_338)
    {
      break;
    }

    _MergedGlobals_338 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AEB90, a2);
    v33 = 0x8B297CF4FD9787C8;
    v34 = "BodyTrackingTargetType";
    v37 = 208862;
    v38 = "int";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AEBD0;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1AEBB0 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1AEB20);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Any";
      qword_1EE1AEB58 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Body";
      qword_1EE1AEB60 = v32;
      __cxa_guard_release(&qword_1EE1AEB20);
    }
  }
}

void *re::ecs2::allocInfo_BodyTrackingTarget(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AEB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AEB30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEBD8, "BodyTrackingTarget");
    __cxa_guard_release(&qword_1EE1AEB30);
  }

  return &unk_1EE1AEBD8;
}

void re::ecs2::initInfo_BodyTrackingTarget(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xD3F2FE58F3BB2B14;
  v14[1] = "BodyTrackingTarget";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1AEB38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AEB38);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_BodyTrackingTargetType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE1AEB90;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AEB68 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<unsigned char [16]>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "bodyIdentifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AEB70 = v12;
      __cxa_guard_release(&qword_1EE1AEB38);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AEB68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BodyTrackingTarget>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BodyTrackingTarget>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BodyTrackingTarget>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BodyTrackingTarget>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::BodyTrackingTarget>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::BodyTrackingTarget>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::ecs2::allocInfo_BodyTrackingComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AEB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AEB48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEC68, "BodyTrackingComponent");
    __cxa_guard_release(&qword_1EE1AEB48);
  }

  return &unk_1EE1AEC68;
}

void re::ecs2::initInfo_BodyTrackingComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xC26C97C4FC5494C8;
  v19[1] = "BodyTrackingComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1AEB50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AEB50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AEB78 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1AEB40;
      if (!qword_1EE1AEB40)
      {
        v11 = re::ecs2::allocInfo_BodyTrackingTarget(v9);
        qword_1EE1AEB40 = v11;
        re::ecs2::initInfo_BodyTrackingTarget(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "target";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1C00000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1AEB80 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "isPaused";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1AEB88 = v17;
      __cxa_guard_release(&qword_1EE1AEB50);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AEB78;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BodyTrackingComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BodyTrackingComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BodyTrackingComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BodyTrackingComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221BodyTrackingComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::ecs2::BodyTrackingComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDAB68;
  *(v3 + 36) = 0;
  *(v3 + 28) = 0;
  *(v3 + 41) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::BodyTrackingComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDAB68;
  *(v1 + 36) = 0;
  *(v1 + 28) = 0;
  *(v1 + 41) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs221BodyTrackingComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void re::AudioSharedSceneManager::AudioSharedSceneManager(re::AudioSharedSceneManager *this, re::AudioManagerFactory *a2)
{
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *this = &unk_1F5CF6F18;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = a2;
  re::AudioManagerFactory::createManager(a2);
}

void re::AudioSharedSceneManager::~AudioSharedSceneManager(id *this)
{
  *this = &unk_1F5CF6F18;
  [this[1] stop];
  v2 = this[1];
  this[1] = 0;

  (*(*this[2] + 960))();
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 10));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table((this + 5));
  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

{
  re::AudioSharedSceneManager::~AudioSharedSceneManager(this);

  JUMPOUT(0x1E6906520);
}

void re::AudioSharedSceneManager::configureEnterFramePhase(re *a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  *&v15.var0 = 0x4BF9C6AA1E4AE526;
  v15.var1 = "Audio Before Frame Update";
  *v16 = 1;
  *&v16[4] = 0;
  v16[8] = 0;
  *&v16[12] = 260;
  *&v16[16] = 1023969417;
  v16[20] = 0;
  v18 = re::globalAllocators(a1)[2];
  v19 = v17;
  v17[0] = &unk_1F5CF7010;
  v17[1] = v5;
  v20 = *a2;
  v21 = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  re::StringID::StringID(v9, &v15);
  *v10 = *v16;
  *&v10[13] = *&v16[13];
  v11[3] = v18;
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v11, v17);
  v11[5] = v20;
  re::DynamicArray<unsigned long>::DynamicArray(v12, &v21);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v6 + 48))(v6, v9);
  if (v12[0])
  {
    if (v14)
    {
      (*(*v12[0] + 40))();
    }

    v14 = 0;
    memset(v12, 0, sizeof(v12));
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v11);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v21)
  {
    if (v25)
    {
      (*(*v21 + 40))();
    }

    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    ++v24;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v17);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }
}

void re::AudioSharedSceneManager::configureCommitPhase(re *a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  *&v15.var0 = 0xEA0359364ADC6754;
  v15.var1 = "Audio After Frame Update";
  *v16 = 1;
  *&v16[4] = 0;
  v16[8] = 0;
  *&v16[12] = 260;
  *&v16[16] = 1023969417;
  v16[20] = 0;
  v18 = re::globalAllocators(a1)[2];
  v19 = v17;
  v17[0] = &unk_1F5CF7068;
  v17[1] = v5;
  v20 = *a2;
  v21 = 0;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  re::StringID::StringID(v9, &v15);
  *v10 = *v16;
  *&v10[13] = *&v16[13];
  v11[3] = v18;
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v11, v17);
  v11[5] = v20;
  re::DynamicArray<unsigned long>::DynamicArray(v12, &v21);
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v6 + 48))(v6, v9);
  if (v12[0])
  {
    if (v14)
    {
      (*(*v12[0] + 40))();
    }

    v14 = 0;
    memset(v12, 0, sizeof(v12));
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v11);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v21)
  {
    if (v25)
    {
      (*(*v21 + 40))();
    }

    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    ++v24;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v17);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }
}

uint64_t re::AudioSharedSceneManager::triggerNotification(uint64_t a1, int a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  result = (*(**(a1 + 16) + 944))(*(a1 + 16));
  if (a2 == 3 && *(a1 + 120) == 1)
  {
    v5 = *(a1 + 16);
    v6[0] = &unk_1F5CF70C0;
    v6[1] = a1;
    v6[3] = v6;
    (*(*v5 + 608))(v5, v6);
    return std::__function::__value_func<std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void re::AudioSharedSceneManager::simulateMediaServicesLostNotification(re::AudioSharedSceneManager *this)
{
  v2 = *(this + 1);
  v3 = objc_alloc(MEMORY[0x1E696AD80]);
  v5 = [*(this + 1) audioSessionToFollow];
  v4 = [v3 initWithName:@"AVAudioSessionMediaServicesWereLostNotification" object:v5 userInfo:MEMORY[0x1E695E0F8]];
  [v2 servicesLost:v4];
}

void re::AudioSharedSceneManager::simulateMediaServicesResetNotification(re::AudioSharedSceneManager *this)
{
  v2 = *(this + 1);
  v3 = objc_alloc(MEMORY[0x1E696AD80]);
  v5 = [*(this + 1) audioSessionToFollow];
  v4 = [v3 initWithName:@"AVAudioSessionMediaServicesWereResetNotification" object:v5 userInfo:MEMORY[0x1E695E0F8]];
  [v2 servicesReset:v4];
}

uint64_t re::AudioSharedSceneManager::loadAudio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[9] = *MEMORY[0x1E69E9840];
  result = (*(**(a1 + 16) + 568))(*(a1 + 16));
  if (result)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v7;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v13[0] = v9;
    v13[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v14, a3);
    v14[4] = a1;
    operator new();
  }

  return result;
}

void re::AudioSharedSceneManager::unloadAudio(re::AudioSharedSceneManager *this, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v4 = (*(**(this + 2) + 640))(*(this + 2));
  v5 = [v4 isCancelled];
  if (v5)
  {
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[RE] [AudioSharedSceneManager] REEngine was deallocated. Cannot unload audio asset: %llu", buf, 0xCu);
    }
  }

  else
  {
    (*(**(this + 2) + 648))(*(this + 2), a2);
    os_unfair_lock_lock(this + 8);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__erase_unique<unsigned long long>(this + 5, &v7))
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(this + 10, &v7);
    }

    os_unfair_lock_unlock(this + 8);
  }
}

BOOL re::AudioSharedSceneManager::assetIsLoaded(os_unfair_lock_s *this, unint64_t a2)
{
  v5 = a2;
  os_unfair_lock_lock(this + 8);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[10]._os_unfair_lock_opaque, &v5) != 0;
  os_unfair_lock_unlock(this + 8);
  return v3;
}

uint64_t re::internal::Callable<re::AudioSharedSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::operator()(uint64_t a1)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v3);
  (*(**(a1 + 8) + 968))(*(a1 + 8));
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)22>::end(v3);
}

void *re::internal::Callable<re::AudioSharedSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7010;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::AudioSharedSceneManager::configureEnterFramePhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7010;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::AudioSharedSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  (*(**(a1 + 8) + 976))(*(a1 + 8), v3);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)22>::end(v5);
}

void *re::internal::Callable<re::AudioSharedSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7068;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::AudioSharedSceneManager::configureCommitPhase(unsigned long const&,std::function<void ()(re::Scheduler::TaskDescriptor)>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7068;
  a2[1] = v2;
  return a2;
}

uint64_t std::__function::__func<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF70C0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  os_unfair_lock_lock(v3 + 8);
  std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>>::unordered_map(a2, &v3[10]);

  os_unfair_lock_unlock(v3 + 8);
}

uint64_t std::__function::__func<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0,std::allocator<re::AudioSharedSceneManager::triggerNotification(REAudioNotificationType)::$_0>,std::unordered_map<unsigned long long,std::shared_ptr<re::PersistedAssetData>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CF7140;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::~__func(void *a1)
{
  *a1 = &unk_1F5CF7140;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_1F5CF7140;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100]((a2 + 3), (a1 + 3));
  a2[7] = a1[7];
  return result;
}

void std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioMultiSceneManager::loadAudioToSingleService(std::shared_ptr<re::AudioManager>,std::shared_ptr<re::AudioAssetPayload>,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::operator()(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[7];
    v5 = std::__shared_weak_count::lock(v5);
    v7 = v5;
    if (v5)
    {
      v5 = a1[1];
      if (v5)
      {
        v8 = (v5->__vftable[16].~__shared_weak_count)(v5);
        v9 = [v8 isCancelled];
        if (v9)
        {
          v10 = *re::audioLogObjects(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "[RE] [AudioSharedSceneManager] REEngine was deallocated. Cannot assign audio asset to assetGenerators", buf, 2u);
          }
        }

        else if (v4 && *v4)
        {
          os_unfair_lock_lock((v6 + 32));
          *buf = v4[13];
          v12 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((v6 + 80), buf);
          if (v12)
          {
            v13 = v12;
            v14 = *re::audioLogObjects(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v4[13];
              *buf = 134217984;
              *&buf[4] = v15;
              _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[RE] [AudioSharedSceneManager] Audio asset: %llu has been unregistered. Not storing assetData in asset generator map.", buf, 0xCu);
            }

            std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase((v6 + 80), v13);
          }

          else
          {
            v19 = v4[13];
            *buf = &v19;
            v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::PersistedAssetData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v6 + 40), &v19);
            if (v3)
            {
              atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = v17[4];
            v17[3] = v4;
            v17[4] = v3;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }
          }

          std::function<void ()(BOOL)>::operator()((a1 + 3), 1);
          os_unfair_lock_unlock((v6 + 32));
        }

        else
        {
          v16 = *re::audioLogObjects(v9);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[RE] [AudioSharedSceneManager] Cannot add asset to assetGenerators with a null generator block.", buf, 2u);
          }

          std::function<void ()(BOOL)>::operator()((a1 + 3), 0);
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *re::audioLogObjects(v5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[RE] [AudioSharedSceneManager] AudioSharedSceneManager was deallocated. Cannot assign audio asset to assetGenerators", buf, 2u);
  }

  if (!v7)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_29:
  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  if (!v3)
  {
    return;
  }

LABEL_12:
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
}

uint64_t std::__function::__func<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0,std::allocator<re::AudioSharedSceneManager::loadAudio(re::audio::AudioAssetPayloadWrapper &,std::function<void ()(BOOL)>)::$_0>,void ()(std::shared_ptr<re::PersistedAssetData>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v47, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v46[0] = v12, (v46[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
    v15 = v43;
    v14 = v44;
    v43 = a4;
    v44 = v15;
    v45 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v22 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v44);
        v23 = *v22;
        v24 = *(*v22 + 16);
        v25 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v46, v24);
        if (v25)
        {
          v26 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v25);
        }

        else
        {
          v26 = 0;
        }

        if ((*(v24 + 304) & 1) == 0)
        {
          goto LABEL_33;
        }

        v27 = *(v24 + 98);
        if (!*(v24 + 98))
        {
          goto LABEL_33;
        }

        v28 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v29 = *(v24 + 104);
        v30 = vld1q_dup_s16(v28);
        v31 = 1;
        v32 = v29;
        v33 = *(v24 + 98);
        while (1)
        {
          v34 = vandq_s8(vceqq_s16(v30, *v32), xmmword_1E306AC00);
          v34.i16[0] = vmaxvq_u16(v34);
          if (v34.i32[0])
          {
            break;
          }

          v31 -= 8;
          ++v32;
          if (!--v33)
          {
            goto LABEL_24;
          }
        }

        if (v34.u16[0] - v31 < *(v24 + 96))
        {
          goto LABEL_33;
        }

LABEL_24:
        v35 = (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v36 = vld1q_dup_s16(v35);
        v37 = 1;
        while (1)
        {
          v38 = vandq_s8(vceqq_s16(v36, *v29), xmmword_1E306AC00);
          v38.i16[0] = vmaxvq_u16(v38);
          if (v38.i32[0])
          {
            break;
          }

          v37 -= 8;
          ++v29;
          if (!--v27)
          {
            goto LABEL_33;
          }
        }

        if (v38.u16[0] - v37 < *(v24 + 96) && v26 != 0)
        {
          WeakRetained = objc_loadWeakRetained(v23 + 20);
          if (WeakRetained)
          {
            v18 = (WeakRetained - 8);
          }

          else
          {
            v18 = 0;
          }

          if (v26 != v18 || re::ecs2::BallSocketJointComponent::needsUpdate(v23))
          {
            re::ecs2::BallSocketJointComponent::removeFromSimulation(v23);
            re::ecs2::BallSocketJointComponent::addToSimulation(v23, v26, v19);
          }

          v20 = v43;
          v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v20, v21, *(a3 + 32));
        }

        else
        {
LABEL_33:
          v40 = v43;
          v41 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v40, v41, *(a3 + 32));
          re::ecs2::BallSocketJointComponent::removeFromSimulation(v23);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
      }

      while (v44 != a5 || v45 != 0xFFFF || HIWORD(v45) != 0xFFFF);
    }

    v16 = *(a5 + 40) != 0;
  }

  else
  {
    v16 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47);
  return v16;
}

BOOL re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v47, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v46[0] = v12, (v46[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
    v15 = v43;
    v14 = v44;
    v43 = a4;
    v44 = v15;
    v45 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v22 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v44);
        v23 = *v22;
        v24 = *(*v22 + 16);
        v25 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v46, v24);
        if (v25)
        {
          v26 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v25);
        }

        else
        {
          v26 = 0;
        }

        if ((*(v24 + 304) & 1) == 0)
        {
          goto LABEL_33;
        }

        v27 = *(v24 + 98);
        if (!*(v24 + 98))
        {
          goto LABEL_33;
        }

        v28 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v29 = *(v24 + 104);
        v30 = vld1q_dup_s16(v28);
        v31 = 1;
        v32 = v29;
        v33 = *(v24 + 98);
        while (1)
        {
          v34 = vandq_s8(vceqq_s16(v30, *v32), xmmword_1E306AC00);
          v34.i16[0] = vmaxvq_u16(v34);
          if (v34.i32[0])
          {
            break;
          }

          v31 -= 8;
          ++v32;
          if (!--v33)
          {
            goto LABEL_24;
          }
        }

        if (v34.u16[0] - v31 < *(v24 + 96))
        {
          goto LABEL_33;
        }

LABEL_24:
        v35 = (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v36 = vld1q_dup_s16(v35);
        v37 = 1;
        while (1)
        {
          v38 = vandq_s8(vceqq_s16(v36, *v29), xmmword_1E306AC00);
          v38.i16[0] = vmaxvq_u16(v38);
          if (v38.i32[0])
          {
            break;
          }

          v37 -= 8;
          ++v29;
          if (!--v27)
          {
            goto LABEL_33;
          }
        }

        if (v38.u16[0] - v37 < *(v24 + 96) && v26 != 0)
        {
          WeakRetained = objc_loadWeakRetained(v23 + 20);
          if (WeakRetained)
          {
            v18 = (WeakRetained - 8);
          }

          else
          {
            v18 = 0;
          }

          if (v26 != v18 || re::ecs2::BallSocketJointComponent::needsUpdate(v23))
          {
            re::ecs2::HingeJointComponent::removeFromSimulation(v23);
            re::ecs2::HingeJointComponent::addToSimulation(v23, v26, v19);
          }

          v20 = v43;
          v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v20, v21, *(a3 + 32));
        }

        else
        {
LABEL_33:
          v40 = v43;
          v41 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v40, v41, *(a3 + 32));
          re::ecs2::HingeJointComponent::removeFromSimulation(v23);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
      }

      while (v44 != a5 || v45 != 0xFFFF || HIWORD(v45) != 0xFFFF);
    }

    v16 = *(a5 + 40) != 0;
  }

  else
  {
    v16 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47);
  return v16;
}

BOOL re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v46, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v45[0] = v12, (v45[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v42, a5, 0);
    v15 = v42;
    v14 = v43;
    v42 = a4;
    v43 = v15;
    v44 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v21 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v43);
        v22 = *v21;
        v23 = *(*v21 + 16);
        v24 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v45, v23);
        if (v24)
        {
          v25 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v24);
        }

        else
        {
          v25 = 0;
        }

        if ((*(v23 + 304) & 1) == 0)
        {
          goto LABEL_33;
        }

        v26 = *(v23 + 98);
        if (!*(v23 + 98))
        {
          goto LABEL_33;
        }

        v27 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v28 = *(v23 + 104);
        v29 = vld1q_dup_s16(v27);
        v30 = 1;
        v31 = v28;
        v32 = *(v23 + 98);
        while (1)
        {
          v33 = vandq_s8(vceqq_s16(v29, *v31), xmmword_1E306AC00);
          v33.i16[0] = vmaxvq_u16(v33);
          if (v33.i32[0])
          {
            break;
          }

          v30 -= 8;
          ++v31;
          if (!--v32)
          {
            goto LABEL_24;
          }
        }

        if (v33.u16[0] - v30 < *(v23 + 96))
        {
          goto LABEL_33;
        }

LABEL_24:
        v34 = (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v35 = vld1q_dup_s16(v34);
        v36 = 1;
        while (1)
        {
          v37 = vandq_s8(vceqq_s16(v35, *v28), xmmword_1E306AC00);
          v37.i16[0] = vmaxvq_u16(v37);
          if (v37.i32[0])
          {
            break;
          }

          v36 -= 8;
          ++v28;
          if (!--v26)
          {
            goto LABEL_33;
          }
        }

        if (v37.u16[0] - v36 < *(v23 + 96) && v25 != 0)
        {
          WeakRetained = objc_loadWeakRetained((v22 + 128));
          if (WeakRetained)
          {
            v18 = WeakRetained - 8;
          }

          else
          {
            v18 = 0;
          }

          if (v25 != v18 || *(v22 + 25) == 1)
          {
            re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(v22, 0);
          }

          v19 = v42;
          v20 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v43);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v19, v20, *(a3 + 32));
        }

        else
        {
LABEL_33:
          v39 = v42;
          v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v43);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v39, v40, *(a3 + 32));
          re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(v22, 1);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v43);
      }

      while (v43 != a5 || v44 != 0xFFFF || HIWORD(v44) != 0xFFFF);
    }

    v16 = *(a5 + 40) != 0;
  }

  else
  {
    v16 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46);
  return v16;
}

uint64_t re::ecs2::ECSForceEffectEventDelegate::computeForces(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v42[0] = a3;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  result = re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1 + 8, v42, v5 ^ (v5 >> 31), &v32);
  if (DWORD1(v33) != 0x7FFFFFFF)
  {
    v7 = *(a1 + 24) + 48 * DWORD1(v33);
    v10 = *(v7 + 16);
    v9 = v7 + 16;
    v8 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        v12 = v11;
        v11 = *(v11 + 32);
      }

      while (v11);
      v13 = *(v12 + 24);
      v14 = *(v9 + 8);
      if (v13 && v14 != 0)
      {
        v16 = (*(**(v13 + 56) + 32))(*(v13 + 56));
        result = re::ServiceLocator::serviceOrNull<re::Engine>(v16);
        if (result)
        {
          v17 = *(result + 1512);
          if (v17)
          {
            v18 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,REEntityForceEffectComputeForcesEvent>(*(result + 1512), v8, v14);
            v19 = v18 + re::EventBus::subscriptionCountInternal<re::ecs2::Entity,REEntityForceEffectComputeForcesEvent>(v17, v8, 0);
            v20 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,REEntityForceEffectComputeForcesEvent>(v17, 0, v14) + v19;
            result = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,REEntityForceEffectComputeForcesEvent>(v17, 0, 0);
            if (&v20[result])
            {
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v41 = 0;
              v40 = 0u;
              v39 = 0u;
              v38 = 0u;
              v37 = 0u;
              v36 = 0u;
              v32 = v8;
              LODWORD(v33) = *(a2 + 8);
              *(&v33 + 1) = *(a2 + 16);
              v21 = *(a2 + 32);
              *&v34 = *(a2 + 24);
              *(&v34 + 1) = v21;
              v22 = *(a2 + 64);
              *&v35 = *(a2 + 48);
              *(&v35 + 1) = v22;
              v23 = *(a2 + 96);
              *&v36 = *(a2 + 80);
              *(&v36 + 1) = v23;
              v24 = *(a2 + 128);
              *&v37 = *(a2 + 112);
              *(&v37 + 1) = v24;
              v25 = *(a2 + 160);
              *&v38 = *(a2 + 144);
              *(&v38 + 1) = v25;
              v26 = *(a2 + 192);
              *&v39 = *(a2 + 176);
              *(&v39 + 1) = v26;
              v27 = re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v27)
              {
                v28 = *(v9 + 16);
                v29 = *(v27 + 48);
                if (v29 <= v28)
                {
                  v42[1] = 0;
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v51 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v43 = 136315906;
                  v44 = "operator[]";
                  v45 = 1024;
                  v46 = 797;
                  v47 = 2048;
                  v48 = v28;
                  v49 = 2048;
                  v50 = v29;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                v30 = (*(v27 + 64) + (v28 << 8));
                *&v40 = v30[28];
                *(&v40 + 1) = v30[26];
                v41 = v30[31];
              }

              Type = re::EventBus::getTypeId<REEntityForceEffectComputeForcesEvent>();
              return re::EventBus::publish(v17, v8, Type, &v32, 0x90uLL, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(uint64_t a1, void *a2, __int128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = *a3;
  *(v7 + 32) = *(a3 + 2);
  *(v7 + 16) = v9;
  ++*(a1 + 40);
  return result;
}

void re::ecs2::ECSForceEffectEventDelegate::~ECSForceEffectEventDelegate(re::ecs2::ECSForceEffectEventDelegate *this)
{
  *this = &unk_1F5CF71C0;
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 1);
}

{
  *this = &unk_1F5CF71C0;
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

re::EventBus::EventInfo *re::EventBus::subscriptionCountInternal<re::ecs2::Entity,REEntityForceEffectComputeForcesEvent>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  Type = re::EventBus::getTypeId<REEntityForceEffectComputeForcesEvent>();
  v6 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v6 == -1)
  {
    return 0;
  }

  result = *(*(a1 + 32) + 48 * v6 + 8);
  if (result)
  {
    result = re::EventBus::EventInfo::getSubscriptions(result, a2, a3);
    if (result)
    {
      return *(result + 15);
    }
  }

  return result;
}

uint64_t re::EventBus::getTypeId<REEntityForceEffectComputeForcesEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1AED00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AED00))
  {
    _MergedGlobals_339 = re::EventBus::typeStringToId(("37REEntityForceEffectComputeForcesEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1AED00);
  }

  return _MergedGlobals_339;
}

BOOL re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 48 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = v6;
    }

    else
    {
      *(v4 + 48 * v3) = *(v4 + 48 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 48 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<void *,re::ecs2::CustomForceEffectIdentifier,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, *(v13 + 40) % *(a1 + 24));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                *(v17 + 32) = *(v13 + 32);
                *(v17 + 16) = v18;
              }

              v13 += 48;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v25);
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
    v20 = *(v19 + 48 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 48 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 48 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 40) = a3;
  ++*(a1 + 28);
  return v19 + 48 * v5;
}

re::ecs2::OpacityManagerStateTracking *re::ecs2::OpacityManagerStateTracking::OpacityManagerStateTracking(re::ecs2::OpacityManagerStateTracking *this)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF7220;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[3] = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 4;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CF7300;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::OpacityManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  re::StackScratchAllocator::StackScratchAllocator(v53);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v52 = 0x7FFFFFFFLL;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v50, v53, 3);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a2 + 16) + 8);
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
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v49 = *(v8 + 24 * v5 + 16);
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v50, &v49))
      {
        v13 = v49;
        v14 = *(v49 + 32);
        if (!v14 || (*(v14 + 304) & 0x80) != 0)
        {
LABEL_18:
          v48 = 0;
          if (*(v13 + 304))
          {
            v15 = *(a1 + 352);
            if (!*(a1 + 56) || (v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27)), v17 = *(*(a1 + 64) + 4 * ((v16 ^ (v16 >> 31)) % *(a1 + 80))), v17 == 0x7FFFFFFF))
            {
LABEL_24:
              (*(**v15 + 8))(&v67);
              if (v67)
              {
                v19 = v68;
              }

              else
              {
                v19 = 0;
              }

              for (i = *(v13 + 32); i; i = *(v60 + 32))
              {
                if ((*(i + 304) & 0x80) != 0)
                {
                  break;
                }

                v60 = i;
                (*(**v15 + 8))(&v67);
                v21 = v67 ? v68 : 0;
                if (v19 != v21)
                {
                  break;
                }

                v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v60 ^ (v60 >> 30))) >> 27));
                re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1 + 56, &v60, v22 ^ (v22 >> 31), &v67);
                if (HIDWORD(v68) != 0x7FFFFFFF)
                {
                  v47 = *(a1 + 72) + 48 * HIDWORD(v68);
                  v24 = *(v47 + 24);
                  v23 = *(v47 + 16);
                  goto LABEL_36;
                }
              }

              v23 = 0;
              v24 = _D8;
LABEL_36:
              re::StackScratchAllocator::StackScratchAllocator(&v67);
              v60 = 0;
              v61 = 0;
              v62 = 1;
              v64 = 0;
              v65 = 0;
              v63 = 0;
              v66 = 0;
              re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::init(&v60, &v67, 1uLL);
              *&v58 = v13;
              *(&v58 + 1) = v23;
              *&v59 = v24;
              *(&v59 + 1) = v19;
              v25 = re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::add(&v60, &v58);
LABEL_37:
              v26 = v65;
              while (v26)
              {
                v27 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v60, --v26);
                v28 = v27[1];
                v58 = *v27;
                v59 = v28;
                re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v60, v26);
                v65 = v26;
                ++v66;
                v29 = v58;
                if (*(v58 + 304))
                {
                  v30 = *(v58 + 168);
                  if (v30)
                  {
                    v31 = re::ecs2::EntityComponentCollection::get((v58 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    v32 = v30[7];
                    if (v31)
                    {
                      *(&v59 + 1) = v32 * *(&v59 + 1);
                    }

                    else
                    {
                      *&v59 = v32 * *&v59;
                    }

                    re::ecs2::HierarchicalFadeComponent::getFadeGroupID(v30, &v54);
                    if (v54)
                    {
                      v34 = &v55;
                    }

                    else
                    {
                      v34 = &v58 + 1;
                    }

                    v33 = *v34;
                    *(&v58 + 1) = *v34;
                    v29 = v58;
                  }

                  else
                  {
                    v33 = *(&v58 + 1);
                  }

                  v35 = v59;
                  if (*&v59 != 1.0 || v33 != 0 || *(&v59 + 1) != 1.0)
                  {
                    v54 = 0;
                    v55 = 0;
                    v56 = 0;
                    v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
                    re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1 + 56, &v58, v38 ^ (v38 >> 31), &v54);
                    if (HIDWORD(v55) == 0x7FFFFFFF)
                    {
                      v39 = re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v55, v54);
                      v29 = v58;
                      *(v39 + 8) = v58;
                      *(v39 + 16) = v33;
                      *(v39 + 24) = v35;
                      *(v39 + 32) = 0;
                      ++*(a1 + 96);
                    }

                    else
                    {
                      v29 = v58;
                    }
                  }

                  v40 = *(v29 + 344);
                  if (v40)
                  {
                    v41 = *(v29 + 360);
                    v42 = 8 * v40;
                    do
                    {
                      v43 = *v41;
                      (*(**v15 + 8))(&v54);
                      if (v54)
                      {
                        v44 = v55;
                      }

                      else
                      {
                        v44 = 0;
                      }

                      if (*(&v59 + 1) == v44)
                      {
                        v54 = v43;
                        v55 = *(&v58 + 1);
                        v56 = v59;
                      }

                      else
                      {
                        v54 = v43;
                        v55 = 0;
                        v56 = _D8;
                      }

                      v57 = v44;
                      v25 = re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::add(&v60, &v54);
                      ++v41;
                      v42 -= 8;
                    }

                    while (v42);
                    goto LABEL_37;
                  }
                }
              }

              while (v61)
              {
                re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v60);
              }

              if (v60 && (v62 & 1) == 0)
              {
                (*(*v60 + 40))(v25);
              }

              re::StackScratchAllocator::~StackScratchAllocator(&v67);
            }

            else
            {
              v18 = *(a1 + 72);
              while (*(v18 + 48 * v17 + 8) != v13)
              {
                v17 = *(v18 + 48 * v17) & 0x7FFFFFFF;
                if (v17 == 0x7FFFFFFF)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }

        else
        {
          while (1)
          {
            v48 = v14;
            if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v50, &v48) || re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, &v48))
            {
              break;
            }

            v14 = *(v48 + 32);
            if (!v14 || (*(v14 + 304) & 0x80) != 0)
            {
              v13 = v49;
              goto LABEL_18;
            }
          }

          v46 = v49;
          while (1)
          {
            v67 = v46;
            if (v48 == v46)
            {
              break;
            }

            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v50, &v67);
            v46 = *(v67 + 32);
            if (v46 && (*(v46 + 304) & 0x80) != 0)
            {
              v46 = 0;
            }
          }
        }
      }

      v45 = *(a2 + 32);
      v8 = *(a2 + 16);
      if (v45 <= v5 + 1)
      {
        v45 = v5 + 1;
      }

      while (v45 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_81;
        }
      }

      LODWORD(v5) = v45;
LABEL_81:
      ;
    }

    while (v5 != v4);
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v50);
  re::StackScratchAllocator::~StackScratchAllocator(v53);
}

__n128 re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 32 * (v4 & 0x1F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  return result;
}

void re::ecs2::OpacityManager::updateOpacityData(uint64_t a1, uint64_t a2)
{
  *(a1 + 360) = a2;
  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::updatePerEntityStateData(a1 + 8);
  *(a1 + 360) = 0;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::updatePerEntityStateData(uint64_t a1)
{
  v2 = a1 + 248;
  (*(*a1 + 32))(a1, a1 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 200);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v2);
}

uint64_t re::ecs2::OpacityManager::getResolvedFadeOpacity(re::ecs2::OpacityManager *this, const re::ecs2::Entity *a2)
{
  v5 = a2;
  v2 = re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 64, &v5);
  if (!v2)
  {
    return 1065353216;
  }

  v3 = 12;
  if (*(v2 + 16))
  {
    v3 = 20;
  }

  return COERCE_UNSIGNED_INT(*(v2 + 8) * *(v2 + v3));
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 16;
  }
}

float re::ecs2::OpacityManager::computeAndGetResolvedFadeOpacity(re::ecs2::OpacityManager *this, const re::ecs2::Entity *a2)
{
  v3 = *(this + 46);
  if (!v3)
  {
    return -1.0;
  }

  v6 = (*(*v3 + 24))(v3);
  *(this + 45) = &v6;
  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::updatePerEntityStateData(this + 8);
  *(this + 45) = 0;
  LODWORD(result) = re::ecs2::OpacityManager::getResolvedFadeOpacity(this, a2);
  return result;
}

void re::ecs2::OpacityManagerStateTracking::~OpacityManagerStateTracking(re::ecs2::OpacityManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 296) != *(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v14 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v14))
      {
        v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 48 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 48 * v25) = *(v7 + 48 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 48 * v6) = *(a1 + 92);
          --*(a1 + 84);
          *(a1 + 92) = v6;
          *(a1 + 96) = v9 + 1;
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 248, &v14);
        v10 = *(v14 + 344);
        if (v10)
        {
          v11 = *(v14 + 360);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = v13;
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    *(a1 + 296) = *(a1 + 96);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::OpacityManager::~OpacityManager(re::ecs2::OpacityManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::OpacityManager::registerScene(re::ecs2::OpacityManager *this, re::ecs2::Scene *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = *(a2 + 36);
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash();
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CF7340;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CF7448;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CF74A0;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CF74F8;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::OpacityManager::unregisterScene(re::ecs2::OpacityManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, *(v12 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CF7300;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 19));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF7398;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF73F0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF7340;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7340;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF7398;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7398;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF73F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF73F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF7448;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF7448;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF74A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF74A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}