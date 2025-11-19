uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

{
  v16[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEBF90;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v15);
  return v13;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2660;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD26B8;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentDidAddEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentDidAddEvent>(void)const::s_id = re::EventBus::typeStringToId(("22REComponentDidAddEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[22];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2660;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2660;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2660;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2660;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD26B8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD26B8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD26B8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidAddEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD26B8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<REComponentWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

{
  v16[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<REComponentWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CEBFE8;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v15);
  return v13;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2720;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2778;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentWillRemoveEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentWillRemoveEvent>(void)const::s_id = re::EventBus::typeStringToId(("26REComponentWillRemoveEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[17];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2720;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2720;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2720;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2720;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2778;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2778;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2778;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2778;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REBillboardTransformChangedEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD23A0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD23F8;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REBillboardTransformChangedEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REBillboardTransformChangedEvent>(void)const::s_id = re::EventBus::typeStringToId(("32REBillboardTransformChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[9];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD23A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD23A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD23A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD23A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD23F8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD23F8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD23F8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD23F8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCASortOrderEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2450;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD24A8;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(v8);
}

char *re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCASortOrderEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re4ecs243UISortingComponentDidChangeCASortOrderEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[9];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2450;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2450;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2450;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2450;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD24A8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD24A8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD24A8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD24A8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2500;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2558;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(v8);
}

char *re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re4ecs248UISortingComponentDidChangeCALayerNeedsMeshEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[11];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2500;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2500;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2500;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2500;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2558;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2558;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2558;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2558;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD25B0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2608;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(v8);
}

char *re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re4ecs241UISortingComponentDidChangeIsPlatterEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[13];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD25B0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD25B0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD25B0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD25B0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2608;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2608;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2608;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2608;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD2878;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CD28D0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>(void)const::s_id = re::EventBus::typeStringToId(("28RESceneEntityWillRemoveEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[14];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2878;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD2878;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2878;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD2878;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD28D0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CD28D0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD28D0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CD28D0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::BucketArray<RESubscriptionHandle,8ul>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(v7 + 16, a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 24));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        v9 = *(a2 + 16) + v5;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v8 += 16;
        *(v8 + 16) = 1;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
        *(v8 + 24) = 0;
        result = re::BucketArray<RESubscriptionHandle,8ul>::swap(v8, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

uint64_t re::ecs2::LightComponentHelper::makeEntityWithDirectionalLight@<X0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re::ecs2::Entity **a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v12 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(v12, 4uLL, a4);
  v13 = *a4;
  v14 = re::ecs2::EntityComponentCollection::add((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v18[0].i64[0] = 0x3F8000003F800000;
  v18[0].i64[1] = 1065353216;
  v15 = *a1;
  v18[1] = a1[1];
  v18[2] = v15;
  re::ecs2::TransformComponent::setWorldSRT(v14, v18, 0);
  result = re::ecs2::EntityComponentCollection::add((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v17 = *a2;
  DWORD2(v17) = *(a2 + 8);
  *(result + 352) = v17;
  *(result + 368) = 0;
  *(result + 28) = 1158028115;
  if (a3)
  {
    result = re::ecs2::EntityComponentCollection::add((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *(result + 28) = a5;
    *(result + 32) = a6;
  }

  return result;
}

re::ecs2::CustomComponent *re::ecs2::CustomComponent::CustomComponent(re::ecs2::CustomComponent *this, const re::ecs2::CustomComponentType *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD2928;
  *(v4 + 32) = 0;
  *(v4 + 40) = a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    *(this + 4) = v5(a2);
    return this;
  }

  v13 = *(a2 + 10);
  if (v13)
  {
    re::TypeRegistry::typeInfo(v13, &v13, v11);
    if ((v11[0] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Instance = malloc_type_calloc(1uLL, *(*(a2 + 16) + 20), 0x9AC33FE7uLL);
  }

  *(this + 4) = Instance;
  if (Instance)
  {
    return this;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "object != nullptr", "CustomComponent", 45);
  _os_crash();
  __break(1u);
LABEL_10:
  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "objectType", "CustomComponent", 36);
  result = _os_crash();
  __break(1u);
  return result;
}

re::Allocator *re::ecs2::CustomComponent::initComponentType(re::ecs2::CustomComponent *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 24, 8);
  result = re::Allocator::Allocator(v2, "CustomComponent", 1);
  *result = &unk_1F5CCF7F8;
  re::ecs2::CustomComponent::s_allocator = result;
  return result;
}

re *re::internal::destroyPersistent<re::Allocator>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re::ecs2::CustomComponent *re::ecs2::CustomComponentType::doMakeComponent@<X0>(re::ecs2::CustomComponentType *this@<X0>, re::ecs2::CustomComponent **a2@<X8>)
{
  v4 = (*(*re::ecs2::CustomComponent::s_allocator + 32))(re::ecs2::CustomComponent::s_allocator, 48, 0);
  result = re::ecs2::CustomComponent::CustomComponent(v4, this);
  *a2 = result;
  return result;
}

__n128 re::ecs2::CustomComponentType::doGetComponentTypeID@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[9];
  *a2 = result;
  return result;
}

void re::ecs2::CustomComponentCollection::didAdd(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 360) + 64);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    for (i = 0; i < v5; ++i)
    {
      v4(*(*(a2 + 32) + 8 * i));
      v5 = *(a2 + 16);
    }
  }

  if (v5)
  {

    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 8, a1);
  }
}

void re::ecs2::CustomComponentCollection::doActivate(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 360) + 72);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    for (i = 0; i < v5; ++i)
    {
      v4(*(*(a2 + 32) + 8 * i));
      v5 = *(a2 + 16);
    }
  }

  if (v5)
  {

    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 96, a1);
  }
}

void re::ecs2::CustomComponentCollection::doDeactivate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 184, a1);
    v4 = *(*(a1 + 360) + 80);
    if (v4)
    {
      v5 = *(a2 + 16) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = 0;
      do
      {
        v4(*(*(a2 + 32) + 8 * v6++));
      }

      while (v6 < *(a2 + 16));
    }
  }
}

re::ecs2::ComponentBucketsBase *re::ecs2::CustomComponentCollection::willRemove(re::ecs2::ComponentBucketsBase *a1, uint64_t a2)
{
  result = re::ecs2::SceneComponentCollectionBase::willRemove(a1, a2);
  v5 = *(*(a1 + 45) + 88);
  if (v5 && *(a2 + 16))
  {
    v6 = 0;
    do
    {
      result = v5(*(*(a2 + 32) + 8 * v6++));
    }

    while (v6 < *(a2 + 16));
  }

  return result;
}

void re::ecs2::CustomComponent::~CustomComponent(re::ecs2::CustomComponent *this)
{
  *this = &unk_1F5CD2928;
  v2 = *(this + 5);
  v3 = *(v2 + 56);
  if (v3)
  {
    v3();
LABEL_7:
    *(this + 4) = 0;
    *this = &unk_1F5CCF868;
    objc_destructInstance(this + 8);
    return;
  }

  v9 = *(v2 + 160);
  if (!v9)
  {
    free(*(this + 4));
    goto LABEL_7;
  }

  re::TypeRegistry::typeInfo(v9, &v9, v7);
  if (v7[0])
  {
    v6 = *(this + 4);
    goto LABEL_7;
  }

  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "objectType", "~CustomComponent", 179);
  _os_crash();
  __break(1u);
}

{
  re::ecs2::CustomComponent::~CustomComponent(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::CustomComponentType::createCustomComponentShimIntrospection(re::ecs2::CustomComponentType *this)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  re::DynamicString::format("CustomComponent%s", &v56, *(v2 + 48));
  if (v57)
  {
    v4 = v60;
  }

  else
  {
    v4 = &v58;
  }

  v5 = re::IntrospectionRegistry::lookupType(v4, v3);
  if (v5)
  {
    *(this + 17) = v5;
    *(this + 9) = *(v5 + 32);
    goto LABEL_6;
  }

  v7 = re::introspectionAllocator(0);
  re::DynamicString::format("%s*", &v53, *(v2 + 48));
  if (v54)
  {
    v9 = *&v55[7];
  }

  else
  {
    v9 = v55;
  }

  v10 = re::IntrospectionRegistry::lookupType(v9, v8);
  if (!v10)
  {
    v21 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v2 + 48);
      *buf = 136315138;
      *&buf[4] = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Custom component failed to find introspection for pointer to struct '%s'", buf, 0xCu);
    }

    goto LABEL_67;
  }

  v11 = v10;
  if (v57)
  {
    v12 = v60;
  }

  else
  {
    v12 = &v58;
  }

  v13 = (*(*v7 + 32))(v7, 32, 8);
  re::DynamicString::DynamicString(v13, v12, v7);
  v14 = (*(*v7 + 32))(v7, 72, 8);
  *v14 = 1;
  *(v14 + 8) = "object";
  *(v14 + 16) = v11;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0x2000000001;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  v15 = (*(*v7 + 32))(v7, 8, 4);
  *v15 = 0x100000004;
  v16 = (*(*v7 + 32))(v7, 16, 8);
  *v16 = v14;
  v16[1] = v15;
  v17 = (*(*v7 + 32))(v7, 144, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v17, 0);
  *(v19 + 28) = 0;
  *(v17 + 32) = 0;
  *(v19 + 40) = 0xFFFFFFFFLL;
  *v19 = &unk_1F5D0C718;
  *(v17 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 16) = 0x3000000008;
  *(v19 + 24) = 8;
  if (*(v13 + 8))
  {
    v20 = *(v13 + 16);
  }

  else
  {
    v20 = v13 + 9;
  }

  *(v17 + 48) = v20;
  *(v17 + 56) = 2;
  *(v17 + 64) = v16;
  *(v17 + 80) = re::internal::defaultDestruct<re::ecs2::CustomComponent>;
  v23 = re::IntrospectionRegistry::add(v17, v18);
  if (!v23)
  {
    v32 = *re::ecsCoreLogObjects(v23);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v17 + 48);
      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Custom component failed to register struct '%s'", buf, 0xCu);
    }

    (**v17)(v17);
    (*(*v7 + 40))(v7, v17);
    (*(*v7 + 40))(v7, v16);
    re::SerializedReference<re::IntrospectionBase const*>::reset(v14 + 48);
    re::SerializedReference<re::IntrospectionBase const*>::reset(v14 + 16);
    (*(*v7 + 40))(v7, v14);
    (*(*v7 + 40))(v7, v15);
    v34 = re::DynamicString::deinit(v13);
    (*(*v7 + 40))(v7, v13, v34);
    goto LABEL_67;
  }

  *(this + 17) = v17;
  v24 = re::introspectionSharedMutex(v23);
  std::__shared_mutex_base::lock(v24);
  if (v57)
  {
    v25 = v60;
  }

  else
  {
    v25 = &v58;
  }

  if (v25)
  {
    v26 = *v25;
    v27 = v11;
    if (*v25)
    {
      v28 = (v57 & 1) != 0 ? v60 + 1 : v59;
      v29 = *v28;
      if (*v28)
      {
        v30 = (v28 + 1);
        do
        {
          v26 = 31 * v26 + v29;
          v31 = *v30++;
          v29 = v31;
        }

        while (v31);
      }
    }
  }

  else
  {
    v26 = 0;
    v27 = v11;
  }

  v49[0] = 2 * v26;
  v49[1] = v25;
  *(this + 9) = *buf;
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  if (!*(this + 18))
  {
    if (*(v52 + 64) > 0xFFFFFFFD)
    {
      v36 = 1;
    }

    else
    {
      v36 = *(v52 + 64);
    }

    v50 = *(*(this + 16) + 32);
    re::StackScratchAllocator::StackScratchAllocator(v49);
    re::TypeBuilder::TypeBuilder(buf, v49);
    v37 = *(v13 + 8);
    if (v37)
    {
      v39 = *(v13 + 16);
      if (!v39)
      {
        goto LABEL_55;
      }

      LOBYTE(v38) = *v39;
    }

    else
    {
      v38 = v37 >> 8;
      v39 = (v13 + 9);
    }

    if (v38)
    {
      v38 = v38;
      LOBYTE(v40) = v39[1];
      if (v40)
      {
        v41 = 2;
        do
        {
          v38 = 31 * v38 + v40;
          v40 = v39[v41++];
        }

        while (v40);
      }

      goto LABEL_56;
    }

LABEL_55:
    v38 = 0;
LABEL_56:
    *&v48 = 2 * v38;
    *(&v48 + 1) = v39;
    v46[0] = 0x6DAE480279BALL;
    v46[1] = "Component";
    v42 = re::TypeBuilder::beginObjectType(buf, &v48, 1, v36, 0x30uLL, 8uLL, v47);
    if (v46[0])
    {
      if (v46[0])
      {
      }
    }

    if (v48)
    {
      if (v48)
      {
      }
    }

    re::TypeBuilder::setDestructor(buf, re::internal::defaultDestructV2<re::ecs2::CustomComponent>);
    v45 = *(v27 + 32);
    *&v48 = 0x18601467ELL;
    *(&v48 + 1) = "object";
    v43 = re::TypeBuilder::addObjectMember(buf, 1, &v45, &v48, 32);
    if (v48)
    {
      if (v48)
      {
      }
    }

    re::TypeBuilder::setHideObjectWithOneMember(buf, 1);
    *(this + 9) = v48;
    *(v17 + 32) = *(this + 9);
    re::TypeBuilder::~TypeBuilder(buf, v44);
    re::StackScratchAllocator::~StackScratchAllocator(v49);
  }

  std::__shared_mutex_base::unlock(v24);
LABEL_67:
  if (v53 && (v54 & 1) != 0)
  {
    (*(*v53 + 40))();
  }

LABEL_6:
  result = v56;
  if (v56)
  {
    if (v57)
    {
      return (*(*v56 + 40))();
    }
  }

  return result;
}

re::ecs2::CustomComponent *anonymous namespace::customComponentConstruct(re::ecs2::ComponentTypeRegistry *a1, uint64_t a2, re::ecs2::CustomComponent *a3)
{
  v5 = re::ecs2::ComponentTypeRegistry::instance(a1);
  v6 = re::ecs2::ComponentTypeRegistry::componentTypeWithIntrospectionInfo(v5, a1);

  return re::ecs2::CustomComponent::CustomComponent(a3, v6);
}

re::ecs2::CustomComponent *anonymous namespace::customComponentConstructV2(_anonymous_namespace_ *this, re::TypeInfo *a2, const re::TypeInfo *a3, re::Allocator *a4, void *a5)
{
  v6 = re::TypeInfo::name(a2);
  v8 = re::IntrospectionRegistry::lookupType(v6[1], v7);
  v9 = re::ecs2::ComponentTypeRegistry::instance(v8);
  v10 = re::ecs2::ComponentTypeRegistry::componentTypeWithIntrospectionInfo(v9, v8);

  return re::ecs2::CustomComponent::CustomComponent(this, v10);
}

uint64_t re::ecs2::CustomComponentType::CustomComponentType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v11 = *(a2 + 8);
  v14[0] = v11;
  v14[1] = strlen(v11);
  v12 = re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, v14, a5, a6);
  *a1 = &unk_1F5CD2980;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = a3;
  *(a1 + 152) = 0xFFFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xFFFFFFFFLL;
  re::ecs2::CustomComponentType::createCustomComponentShimIntrospection(v12);
  if (a4)
  {
    *(a1 + 120) = a4;
    RESyncRetain();
  }

  return a1;
}

{
  v12 = *(a2 + 8);
  v36 = v12;
  v37[0] = strlen(v12);
  re::ecs2::ComponentTypeBase::ComponentTypeBase(a1, &v36, a5, a6);
  *a1 = &unk_1F5CD2980;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xFFFFFFFFLL;
  *(a1 + 160) = *a3;
  re::StackScratchAllocator::StackScratchAllocator(v49);
  re::TypeBuilder::TypeBuilder(&v36, v49);
  v13 = re::DynamicString::format("%s*", &v33, *(a2 + 8));
  if (v34)
  {
    v14 = *&v35[7];
  }

  else
  {
    v14 = v35;
  }

  *&v32 = 0;
  *(&v32 + 1) = &str_67;
  v15 = *(a3 + 8);
  v39 = -1;
  memset(v40, 0, sizeof(v40));
  v41 = 0u;
  v42 = 0xFFFFFFFFLL;
  v43 = 1;
  v44 = 0;
  v45 = 0xFFFFFFFFLL;
  v46 = 1;
  v47 = 0xFFFFFFFFLL;
  v48 = 0;
  LOBYTE(v36) = 9;
  v16 = re::StringID::operator=(v37, &v32);
  v38 = 1;
  *(v40 + 4) = 0x800000008uLL;
  *(&v41 + 4) = 0;
  *(&v40[1] + 4) = 0;
  v43 = -1;
  v45 = v15;
  v46 = 0;
  if (v32)
  {
    if (v32)
    {
    }
  }

  v18 = re::globalAllocators(v17);
  v19 = (*(*v18[2] + 32))(v18[2], 144, 8);
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 6) = 0u;
  *(v19 + 7) = 0u;
  *(v19 + 8) = 0u;
  ArcSharedObject::ArcSharedObject(v19, 0);
  *(v20 + 16) = 0;
  *(v20 + 22) = 0;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xFFFFFFFFLL;
  *v20 = &unk_1F5D0C718;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 16) = 8;
  *(v20 + 32) = *a3;
  *(v20 + 48) = *(a2 + 8);
  *(a1 + 128) = v20;
  v22 = re::IntrospectionRegistry::add(v20, v21);
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 64, 8);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v24, 0);
  *(v25 + 22) = 0;
  v25[2] = 0;
  v25[4] = 0;
  v25[5] = 0xFFFFFFFFLL;
  *v25 = &unk_1F5CBD2C0;
  v25[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v24 + 48);
  *(v24 + 16) = 1;
  *(v24 + 32) = v32;
  v26 = *(a1 + 128);
  v27 = *(v24 + 48);
  *(v24 + 56) = 0;
  *(v24 + 48) = v26;
  v31 = v27;
  re::SerializedReference<re::IntrospectionBase const*>::reset(&v31);
  re::IntrospectionRegistry::add(v24, v28);
  re::ecs2::CustomComponentType::createCustomComponentShimIntrospection(a1);
  if (a4)
  {
    *(a1 + 120) = a4;
    RESyncRetain();
  }

  if (v33 && (v34 & 1) != 0)
  {
    (*(*v33 + 40))();
  }

  re::TypeBuilder::~TypeBuilder(&v36, v29);
  re::StackScratchAllocator::~StackScratchAllocator(v49);
  return a1;
}

void re::ecs2::CustomComponentType::~CustomComponentType(re::IntrospectionRegistry **this)
{
  *this = &unk_1F5CD2980;
  v2 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v2);
  v4 = this[17];
  if (v4)
  {
    v5 = re::introspectionAllocator(v3);
    re::IntrospectionRegistry::remove(v4, v6);
    v7 = *(v4 + 8);
    if (*v7)
    {
      (*(*v5 + 40))(v5, *v7);
      v7 = *(v4 + 8);
    }

    if (!v7[1] || ((*(*v5 + 40))(v5, v7[1]), *(v4 + 8)))
    {
      (*(*v5 + 40))(v5);
    }

    (**v4)(v4);
    (*(*v5 + 40))(v5, v4);
    this[17] = 0;
  }

  if (this[18])
  {
    v22 = *(this + 9);
    this[18] = 0;
    this[19] = 0xFFFFFFFFLL;
  }

  if (this[20])
  {
    re::DynamicString::format("%s*", &v19, *(this[16] + 6));
    if (v20)
    {
      v9 = *&v21[7];
    }

    else
    {
      v9 = v21;
    }

    v10 = re::IntrospectionRegistry::lookupType(v9, v8);
    v12 = re::IntrospectionRegistry::remove(v10, v11);
    v13 = re::globalAllocators(v12)[2];
    (**v10)(v10);
    (*(*v13 + 40))(v13, v10);
    v15 = re::IntrospectionRegistry::remove(this[16], v14);
    v16 = this[16];
    if (v16)
    {
      v17 = re::globalAllocators(v15)[2];
      (**v16)(v16);
      (*(*v17 + 40))(v17, v16);
    }

    this[16] = 0;
    v18 = *(this + 10);
    this[20] = 0;
    this[21] = 0xFFFFFFFFLL;
    if (v19 && (v20 & 1) != 0)
    {
      (*(*v19 + 40))();
    }
  }

  if (this[15])
  {
    RESyncRelease();
  }

  std::__shared_mutex_base::unlock(v2);
  *this = &unk_1F5CD2AE8;
  re::StringID::destroyString((this + 3));
}

{
  re::ecs2::CustomComponentType::~CustomComponentType(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::CustomComponentCollection::~CustomComponentCollection(re::ecs2::CustomComponentCollection *this)
{
  re::ecs2::SceneComponentCollection<re::ecs2::CustomComponent>::~SceneComponentCollection(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::CustomComponentType::doMakeSceneComponentCollection(re::ecs2::CustomComponentType *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, this);
  *v4 = &unk_1F5CD2A90;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  *v3 = &unk_1F5CD29D8;
  return v3;
}

void re::ecs2::SceneComponentCollection<re::ecs2::CustomComponent>::~SceneComponentCollection(uint64_t a1)
{
  *a1 = &unk_1F5CD2A90;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

{
  re::ecs2::SceneComponentCollection<re::ecs2::CustomComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = re::FunctionBase<24ul,void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>::destroyCallable(result);
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

uint64_t re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 40 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t (***re::FunctionBase<24ul,void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = re::FunctionBase<24ul,void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>::destroyCallable(result);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](a1, i);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 48 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 48 * (a2 & 7);
}

uint64_t re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1, i);
      re::DataArray<re::ecs2::Component *>::deinit(v4);
      re::DynamicArray<unsigned long>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::DataArray<re::ecs2::Component *>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::ecs2::Component *>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::ecs2::Component *>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::ecs2::Component *>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

_DWORD *re::DataArray<re::ecs2::Component *>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::ecs2::Component *>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::Component *>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 8 * a2;
  }

  else
  {
    return 0;
  }
}

void re::ecs2::OcclusionStateTransition::update(re *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *re::foundationCoreLogObjects(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0.0)
  {
    if (v7)
    {
      v14 = a2[2];
      v15 = *a2;
      v16 = v6;
      v17 = *(v15 + 296);
      v18 = 134218242;
      v19 = v14;
      v20 = 2080;
      v21 = v17;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionDisableEvent.totalDuration=%f, entity %s moves from OcclusionEnabledState to OcclusionDisabledState", &v18, 0x16u);
    }

    v13 = 1;
  }

  else
  {
    if (v7)
    {
      v8 = a2[2];
      v9 = *a2;
      v10 = v6;
      v11 = *(v9 + 296);
      v18 = 134218242;
      v19 = v8;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionDisableEvent.totalDuration=%f, entity %s moves from OcclusionEnabledState to OcclusionTransitionToDisabledState", &v18, 0x16u);
    }

    v12 = *(a2 + 2);
    *a3 = 0;
    *(a3 + 4) = v12;
    *(a3 + 8) = 0x3F0000003F800000;
    *(a3 + 16) = 0;
    v13 = 2;
  }

  *(a3 + 20) = v13;
  *(a3 + 24) = 1;
}

{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *re::foundationCoreLogObjects(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0.0)
  {
    if (v7)
    {
      v14 = a2[2];
      v15 = *a2;
      v16 = v6;
      v17 = *(v15 + 296);
      v18 = 134218242;
      v19 = v14;
      v20 = 2080;
      v21 = v17;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEnableEvent.totalDuration=%f, entity %s moves from OcclusionDisabledState to OcclusionEnabledState", &v18, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    if (v7)
    {
      v8 = a2[2];
      v9 = *a2;
      v10 = v6;
      v11 = *(v9 + 296);
      v18 = 134218242;
      v19 = v8;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEnableEvent.totalDuration=%f, entity %s moves from OcclusionDisabledState to OcclusionTransitionToEnabledState", &v18, 0x16u);
    }

    v12 = *(a2 + 2);
    *a3 = 0;
    *(a3 + 4) = v12;
    *(a3 + 8) = 0x3F0000003F800000;
    *(a3 + 16) = 0;
    v13 = 3;
  }

  *(a3 + 20) = v13;
  *(a3 + 24) = 1;
}

void re::ecs2::OcclusionStateTransition::update(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *re::foundationCoreLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = v5;
    v8 = *(v6 + 296);
    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEntityDeactivatedEvent, entity %s moves from OcclusionEnabledState to EntityDeactivateInOcclusionEnableState", &v9, 0xCu);
  }

  *(a3 + 20) = 4;
  *(a3 + 24) = 1;
}

{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *re::foundationCoreLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = v5;
    v8 = *(v6 + 296);
    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEntityDeactivatedEvent, entity %s moves from TransitionFromEntityDeactivateToEnableState to EntityDeactivateInOcclusionEnableState", &v9, 0xCu);
  }

  *(a3 + 20) = 4;
  *(a3 + 24) = 1;
}

void re::ecs2::OcclusionStateTransition::update(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*a1 >= v6)
  {
    v8 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a2[2];
      v10 = *a2;
      v11 = v8;
      v12 = *(v10 + 296);
      v13 = *a1;
      v14 = 134218498;
      v15 = v9;
      v16 = 2080;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionFrameTickEvent.deltaTime=%f, entity %s moves from OcclusionTransitionToDisabledState{.currentTimeDuration=%f} to OcclusionDisabledState", &v14, 0x20u);
    }

    v7 = 1;
    *(a3 + 20) = 1;
  }

  else
  {
    v7 = 0;
    if ((*a1 + a2[2]) <= v6)
    {
      v6 = *a1 + a2[2];
    }

    *a1 = v6;
    *a3 = 0;
  }

  *(a3 + 24) = v7;
}

{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  if (v5 == 0.0)
  {
    v6 = *re::foundationCoreLogObjects(a1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v8 = 0;
    if (v7)
    {
      v9 = a2[2];
      v10 = *a2;
      v11 = v6;
      v12 = *(v10 + 296);
      v27 = 134218242;
      v28 = v9;
      v29 = 2080;
      v30 = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEnableEvent.totalDuration=%f, entity %s moves from OcclusionTransitionToDisabledState to OcclusionEnabledState", &v27, 0x16u);

      v8 = 0;
    }
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0 - (*a1 / a1[1]);
    if (v15 <= 1.0)
    {
      v14 = 1.0 - (*a1 / a1[1]);
    }

    v16 = v15 < 0.0;
    v17 = 0.0;
    if (!v16)
    {
      v17 = v14;
    }

    v18 = v17;
    v19 = v5 * v18;
    v20 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a2[2];
      v22 = *a2;
      v23 = v20;
      v24 = *(v22 + 296);
      v25 = *a1;
      v27 = 134218754;
      v28 = v21;
      v29 = 2080;
      v30 = v24;
      v31 = 2048;
      v32 = v25;
      v33 = 2048;
      v34 = v19;
      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEnableEvent.totalDuration=%f, entity %s moves from OcclusionTransitionToDisabledState{.currentTimeDuration=%f} to OcclusionTransitionToEnabledState{.currentTimeDuration=%f}", &v27, 0x2Au);
    }

    v26 = *(a2 + 2);
    *a3 = v19;
    *(a3 + 4) = v26;
    *(a3 + 8) = 0x3F0000003F800000;
    *(a3 + 16) = 0;
    v8 = 3;
  }

  *(a3 + 20) = v8;
  *(a3 + 24) = 1;
}

{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*a1 >= v6)
  {
    v8 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a2[2];
      v10 = *a2;
      v11 = v8;
      v12 = *(v10 + 296);
      v13 = *a1;
      v14 = 134218498;
      v15 = v9;
      v16 = 2080;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionFrameTickEvent.deltaTime=%f, entity %s moves from OcclusionTransitionToEnabledState{.currentTimeDuration=%f} to OcclusionEnabledState", &v14, 0x20u);
    }

    *(a3 + 20) = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if ((*a1 + a2[2]) <= v6)
    {
      v6 = *a1 + a2[2];
    }

    *a1 = v6;
    *a3 = 0;
  }

  *(a3 + 24) = v7;
}

{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  if (v5 == 0.0)
  {
    v6 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2[2];
      v8 = *a2;
      v9 = v6;
      v10 = *(v8 + 296);
      v26 = 134218242;
      v27 = v7;
      v28 = 2080;
      v29 = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionDisableEvent.totalDuration=%f, entity %s moves from OcclusionTransitionToEnabledState to OcclusionDisabledState", &v26, 0x16u);
    }

    v11 = 1;
  }

  else
  {
    v13 = 1.0;
    v14 = 1.0 - (*a1 / a1[1]);
    if (v14 <= 1.0)
    {
      v13 = 1.0 - (*a1 / a1[1]);
    }

    v15 = v14 < 0.0;
    v16 = 0.0;
    if (!v15)
    {
      v16 = v13;
    }

    v17 = v16;
    v18 = v5 * v17;
    v19 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a2[2];
      v21 = *a2;
      v22 = v19;
      v23 = *(v21 + 296);
      v24 = *a1;
      v26 = 134218754;
      v27 = v20;
      v28 = 2080;
      v29 = v23;
      v30 = 2048;
      v31 = v24;
      v32 = 2048;
      v33 = v18;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionDisableEvent.totalDuration=%f, entity %s moves from OcclusionTransitionToEnabledState{.currentTimeDuration=%f} to OcclusionTransitionToDisabledState{.currentTimeDuration=%f}", &v26, 0x2Au);
    }

    v25 = *(a2 + 2);
    *a3 = v18;
    *(a3 + 4) = v25;
    *(a3 + 8) = 0x3F0000003F800000;
    *(a3 + 16) = 0;
    v11 = 2;
  }

  *(a3 + 20) = v11;
  *(a3 + 24) = 1;
}

{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*a1 >= v6)
  {
    v8 = *re::foundationCoreLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a2[2];
      v10 = *a2;
      v11 = v8;
      v12 = *(v10 + 296);
      v13 = *a1;
      v14 = 134218498;
      v15 = v9;
      v16 = 2080;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionFrameTickEvent.deltaTime=%f, entity %s moves from TransitionFromEntityDeactivateToEnableState{.currentTimeDuration=%f} to OcclusionEnabledState", &v14, 0x20u);
    }

    *(a3 + 20) = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if ((*a1 + a2[2]) <= v6)
    {
      v6 = *a1 + a2[2];
    }

    *a1 = v6;
    *a3 = 0;
  }

  *(a3 + 24) = v7;
}

void re::ecs2::OcclusionStateTransition::update(float *a1@<X1>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (!v4)
  {
    goto LABEL_6;
  }

  (*(*v4 + 32))(v19);
  v5 = *v19;
  if (*v19)
  {
  }

  (*(**(a1 + 1) + 40))(v19);
  if (*v19 && ((*v19 + 8), v5))
  {
LABEL_6:
    v6 = a1[4];
    v7 = *re::foundationCoreLogObjects(v4);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == 0.0)
    {
      if (v8)
      {
        v9 = a1[4];
        v10 = *a1;
        v11 = v7;
        v12 = *(v10 + 296);
        *v19 = 134218242;
        *&v19[4] = v9;
        v20 = 2080;
        v21 = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEntityActivatedEvent.totalDuration=%f, entity %s moves from EntityDeactivateInOcclusionEnableState to OcclusionEnabledState", v19, 0x16u);
      }

      *(a2 + 20) = 0;
    }

    else
    {
      if (v8)
      {
        v14 = a1[4];
        v15 = *a1;
        v16 = v7;
        v17 = *(v15 + 296);
        *v19 = 134218242;
        *&v19[4] = v14;
        v20 = 2080;
        v21 = v17;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Receiving OcclusionEntityActivatedEvent.totalDuration=%f, entity %s moves from EntityDeactivateInOcclusionEnableState to TransitionFromEntityDeactivateToEnableState", v19, 0x16u);
      }

      v18 = *(a1 + 4);
      *a2 = 0;
      *(a2 + 4) = v18;
      *(a2 + 20) = 5;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v13;
}

uint64_t re::ecs2::BlendShapeWeightsBufferComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v14, 0, 24);
  v14[3] = re::globalAllocators(inited)[2];
  v14[4] = 0;
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::reset((a1 + 32), &location, a3, v14);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = a4 + 168 * a5;
    do
    {
      ++*a4;
      *(a4 + 24) = 0;
      a4 += 168;
    }

    while (a4 != v11);
  }

  return a1 + 32;
}

uint64_t re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD2C48;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs>("reset", 161, location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

uint64_t (***re::ecs2::BlendShapeWeightsBufferComponent::rebuildWeights(uint64_t (***result)(void), uint64_t a2, re::BlendShapeWeightsMapping *a3, uint64_t a4, const re::MeshNameMap *a5, uint64_t a6))(void)
{
  v53 = *MEMORY[0x1E69E9840];
  result[14] = 0;
  ++*(result + 30);
  result[19] = 0;
  ++*(result + 40);
  v6 = *(a2 + 56);
  if (v6)
  {
    v9 = a2;
    v10 = result;
    v11 = 0;
    for (i = 0; i < v6; ++i)
    {
      v13 = *(v9 + 72) + 48 * i;
      v14 = *(v13 + 40);
      if (*(a6 + 16) > v14)
      {
        v30 = i;
        re::MeshNameMap::meshInstancePartsForIdentifier(a5, v13, &v48);
        v35 = a4;
        v36 = a5;
        v37 = v48.n128_u64[0];
        v38[3] = v50;
        v39 = 0;
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(v38, &v48.n128_i64[1]);
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v48.n128_i64[1]);
        v31 = v37;
        if (v37)
        {
          v15 = 0;
          do
          {
            v48.n128_u64[0] = v15;
            v16 = (*(*v39 + 16))(v39, &v48);
            v48.n128_u64[0] = v15;
            v17 = ((*(*v39 + 16))(v39, &v48) >> 32);
            re::BlendShapeWeightsMapping::blendWeightValues(a3, a5, v16, v17);
            v19 = v18;
            v48.n128_u64[0] = __PAIR64__(v11, v16);
            v48.n128_u64[1] = __PAIR64__(v17, v18);
            re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add((v10 + 17), &v48);
            v20 = *(a3 + 6);
            if (v10[13] < v20)
            {
              re::DynamicArray<int>::setCapacity(v10 + 12, v20);
            }

            v21 = v11 + v19;
            if (v11 < v21)
            {
              v22 = v11;
              v23 = (8 * v11) | 4;
              do
              {
                if (*(a3 + 3) <= v22 || (v24 = *(*(a3 + 4) + v23), v24 == -1))
                {
                  v27 = 0;
                }

                else
                {
                  v25 = *(a6 + 16);
                  if (v25 <= v14)
                  {
                    v34 = 0;
                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v40 = 136315906;
                    v41 = "operator[]";
                    v42 = 1024;
                    v43 = 797;
                    v44 = 2048;
                    v45 = v14;
                    v46 = 2048;
                    v47 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_24:
                    v34 = 0;
                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v40 = 136315906;
                    v41 = "operator[]";
                    v42 = 1024;
                    v43 = 476;
                    v44 = 2048;
                    v45 = v24;
                    v46 = 2048;
                    v47 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

                  v26 = *(a6 + 32) + 32 * v14;
                  v25 = *(v26 + 8);
                  if (v25 <= v24)
                  {
                    goto LABEL_24;
                  }

                  v27 = *(*(v26 + 16) + 4 * v24);
                }

                v33 = v27;
                re::DynamicArray<float>::add((v10 + 12), &v33);
                ++v22;
                v23 += 8;
              }

              while (v21 != v22);
            }

            ++v15;
            LODWORD(v11) = v21;
          }

          while (v15 != v31);
        }

        else
        {
          v21 = v11;
        }

        result = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v38);
        v9 = a2;
        v6 = *(a2 + 56);
        v11 = v21;
        i = v30;
      }
    }
  }

  return result;
}

__n128 re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::BlendNode>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::BlendNode>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 32) + 16 * v5) = *a2;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re::ecs2::BlendShapeWeightsBufferComponentStateImpl *re::ecs2::BlendShapeWeightsBufferComponentStateImpl::BlendShapeWeightsBufferComponentStateImpl(re::ecs2::BlendShapeWeightsBufferComponentStateImpl *this)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CD2B50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(v3, v4);
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(this + 4, v3);
  if (v3[0] && v3[1])
  {
    (*(*v3[0] + 40))();
  }

  return this;
}

uint64_t *re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

BOOL re::ecs2::BlendShapeWeightsBufferComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = (*(*v9 + 104))(v9);
  }

  else
  {
    v10 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v30, a5, 0);
  v11 = v30;
  v12 = v31;
  v13 = v31;
  v30 = a4;
  v31 = v11;
  v32 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v30);
      v16 = *(v15 + 16);
      v17 = *(v16 + 200);
      v18 = (a3 + 32);
      if (v17)
      {
        v19 = *(v15 + 40);
        if (v19)
        {
          v20 = *(v17 + 248) != *v19 || v10 == 0;
          if (!v20 && v19[1] == v10)
          {
            goto LABEL_24;
          }

          v21 = *(v17 + 392);
          if (v21)
          {
            v23 = *(v21 + 88);
            v22 = *(v21 + 96);
          }

          else
          {
            v23 = 0;
            v22 = 0;
          }

          re::ecs2::BlendShapeWeightsBufferComponent::resetDeformerInputs(v15, *(*(a1 + 16) + 144), 0, v22, v23);
        }

        v24 = *(v16 + 192);
        v18 = (a3 + 32);
        if (v24)
        {
          if (*(v24 + 40))
          {
            v18 = (a3 + 40);
          }

          else
          {
            v18 = (a3 + 32);
          }
        }
      }

      v25 = v30;
      v26 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v31);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v25, v26, *v18);
LABEL_24:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v31);
    }

    while (v31 != a5 || v32 != 0xFFFF || HIWORD(v32) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 18);
  if (*(v1 + 16) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*(v1 + 32) + 16 * v2) + 8 * *(a1 + 16));
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::BlendShapeWeightsBufferComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 24);
  if (v7)
  {
    v60 = (*(*v7 + 104))(v7);
  }

  else
  {
    v60 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v82, a5, 0);
  v70 = a4;
  v71 = v82;
  v72 = DWORD2(v82);
  if (v82 != a5 || DWORD2(v82) != 0xFFFFFFFFLL)
  {
    v9 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v62 = a5;
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v70);
      v11 = v10[2];
      v12 = v11[24];
      v13 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v12 + 32));
      v14 = re::ecs2::EntityComponentCollection::get((v11 + 6), v9[48]);
      if (v14)
      {
        v15 = (v14 + 216);
      }

      else
      {
        v15 = (v13 + 80);
      }

      v68 = v11[25];
      v69 = v15;
      if (*(v68 + 30) && v10[16] && v10[14])
      {
        v63 = v12;
        v16 = v10[5];
        if (!v16 || *(v68 + 31) != *v16)
        {
          v17 = *(v68 + 49);
          v18 = *(v17 + 88);
          v19 = *(v17 + 96);
          v20 = *(a1 + 16);
          v21 = re::globalAllocators(v14);
          v22 = (*(*v21[2] + 32))(v21[2], 48, 8);
          v23 = *(v68 + 31);
          v24 = [*(*(a1 + 16) + 208) newBufferWithBytes:v10[16] length:4 * v10[14] options:0];
          *v22 = v23;
          v22[1] = v60;
          v22[2] = v24;
          v22[3] = 0;
          v22[4] = 0;
          v22[5] = 0;
          v64 = v19;
          v25 = re::ecs2::BlendShapeWeightsBufferComponent::resetDeformerInputs(v10, *(v20 + 144), v22, v19, v18);
          v26 = v25;
          if (v24)
          {
          }

          v27 = *(v26 + 1);
          v27[4] = v18;
          v29 = v69;
          if (v18)
          {
            if (v18 >> 60)
            {
              goto LABEL_50;
            }

            v27[5] = v30;
            if (!v30)
            {
LABEL_51:
              re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash();
              __break(1u);
            }

            v32 = v18 - 1;
            if (v18 != 1)
            {
              do
              {
                *v30 = 0;
                v30[1] = 0;
                v30 += 2;
                --v32;
              }

              while (v32);
            }

            *v30 = 0;
            v30[1] = 0;
          }

          v65 = v18;
          v66 = v26;
          v33 = v10[19];
          if (v33)
          {
            v34 = v10[21];
            v35 = &v34[4 * v33];
            do
            {
              v36 = *v34;
              if (v36 <= *(v29 + 54))
              {
                v18 = v35;
                v37 = v10;
                v38 = v34[1];
                v67 = v34[2];
                v39 = *(v34 + 6);
                v40 = v13[79];
                v41 = re::MeshNameMap::modelIndex(v29, v36);
                v42 = v41;
                v43 = v13[76];
                if (v43 <= v41)
                {
                  v73 = 0;
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v82 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v74 = 136315906;
                  v75 = "operator[]";
                  v76 = 1024;
                  v77 = 797;
                  v78 = 2048;
                  v79 = v42;
                  v80 = 2048;
                  v81 = v43;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_45:
                  v73 = 0;
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v82 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v74 = 136315906;
                  v75 = "slice";
                  v76 = 1024;
                  v77 = 1119;
                  v78 = 2048;
                  v79 = v38;
                  v80 = 2048;
                  v81 = v42;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_46:
                  re::internal::assertLog(7, v47, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, v38, v49, v48);
                  _os_crash();
                  __break(1u);
LABEL_47:
                  v73 = 0;
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v82 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v74 = 136315906;
                  v75 = "operator[]";
                  v76 = 1024;
                  v77 = 468;
                  v78 = 2048;
                  v79 = v36;
                  v80 = 2048;
                  v81 = v42;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_48:
                  re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v52);
                  _os_crash();
                  __break(1u);
LABEL_49:
                  v73 = 0;
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v82 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v74 = 136315906;
                  v75 = "operator[]";
                  v76 = 1024;
                  v77 = 468;
                  v78 = 2048;
                  v79 = v36;
                  v80 = 2048;
                  v81 = v42;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_50:
                  re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v18);
                  _os_crash();
                  __break(1u);
                  goto LABEL_51;
                }

                v44 = re::DataArray<re::MeshModel>::tryGet(v40 + 8, *(v13[78] + 8 * v41));
                v10 = v37;
                v29 = v69;
                v35 = v18;
                if (v44)
                {
                  started = re::MeshNameMap::meshPartStartIndexForInstance(v69, v36);
                  v46 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v68 + 232), started + v39);
                  if (v46 != -1)
                  {
                    v48 = v10[14];
                    v42 = v48 + 1;
                    if (v48 + 1 <= v38)
                    {
                      goto LABEL_45;
                    }

                    v49 = v67;
                    if (v67 + v38 > v48)
                    {
                      goto LABEL_46;
                    }

                    v50 = *(v66 + 1);
                    v36 = v46;
                    v42 = *(v50 + 32);
                    if (v42 <= v46)
                    {
                      goto LABEL_47;
                    }

                    v51 = (*(v50 + 40) + 16 * v46);
                    *v51 = v10[16] + 4 * v38;
                    v51[1] = v67;
                    v52 = v65;
                    if (v65 <= v46)
                    {
                      goto LABEL_48;
                    }

                    v53 = *(v66 + 1);
                    v42 = *(v53 + 32);
                    if (v42 <= v46)
                    {
                      goto LABEL_49;
                    }

                    v54 = v64 + 168 * v46;
                    v55 = *(v53 + 40) + 16 * v46;
                    ++*v54;
                    *(v54 + 24) = v55;
                  }
                }
              }

              v34 += 4;
            }

            while (v34 != v35);
          }
        }

        a5 = v62;
        v9 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v68, v63))
        {
          v56 = v70;
          v57 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v71);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v56, v57, *(a3 + 48));
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v71);
    }

    while (v71 != a5 || v72 != 0xFFFF || HIWORD(v72) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BlendShapeWeightsBufferSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v32);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v31, 3150, a1);
  re::StackScratchAllocator::StackScratchAllocator(v45);
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v39 = v45;
  v40 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v39, 0);
  v41 += 2;
  v5 = a1[65];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v44 = a1[65];
  v34[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v39, v6, v34);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v34[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 46, v34);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v39, *(a1[47] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v39, (a1 + 60));
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v34[0] = v45;
  v34[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v34, 0);
  v35 += 2;
  v12 = a1[65];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v38 = a1[65];
  v46 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v34, v13, &v46);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 60), &v39);
  v14 = v43;
  if (v41)
  {
    v14 = &v42;
  }

  v15 = v40;
  if ((v40 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 39), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v33, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v33, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v33, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v34, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v34, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v39, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 60), v34);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 39));
  if (v34[0] && (v35 & 1) == 0)
  {
    (*(*v34[0] + 40))();
  }

  if (v39 && (v41 & 1) == 0)
  {
    (*(*v39 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v45);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v31);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v32);
}

_anonymous_namespace_ *re::ecs2::BlendShapeWeightsBufferSystem::willAddSystemToECSService(re::ecs2::BlendShapeWeightsBufferSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = *(this + 29);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v3);
  *(this + 34) = v2;
  *(this + 35) = result;
  return result;
}

double re::ecs2::BlendShapeWeightsBufferSystem::willRemoveSystemFromECSService(re::ecs2::BlendShapeWeightsBufferSystem *this)
{
  *(this + 34) = 0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::BlendShapeWeightsBufferSystem::willAddSceneToECSService(re::ecs2::BlendShapeWeightsBufferSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 55);
  v5 = *(this + 112);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 456);
    }

    else
    {
      v6 = *(this + 58);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 456);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 58);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 432, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 312, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::init(v12, this + 312, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 46, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 432, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 44);
  *&v47 = 0;
  v15 = *(this + 40);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::setBucketsCapacity(this + 39, (v14 + 4) >> 2);
    v15 = *(this + 40);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 328))
  {
    v16 = this + 336;
  }

  else
  {
    v16 = *(this + 43);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 44);
  ++*(this + 90);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 44);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 312, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::init(v24, this + 312, v48[0]);
  *&v57[0] = *(this + 44) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 46, v48, v57);
  v25 = *(this + 44);
  v26 = *(this + 59);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 59) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 432), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 59) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 448))
    {
      v30 = this + 456;
    }

    else
    {
      v30 = *(this + 58);
    }

    *&v30[8 * *(this + 55) - 8] &= v28;
  }

  v31 = *(this + 44);
  v32 = *(this + 65);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 65) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 480), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 65) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 496))
    {
      v36 = this + 504;
    }

    else
    {
      v36 = *(this + 64);
    }

    *&v36[8 * *(this + 61) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 480, v13);
  if (*(this + 544) == 1)
  {
    v38 = *(this + 66);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 312);
  }

  return result;
}

uint64_t re::ecs2::BlendShapeWeightsBufferSystem::willRemoveSceneFromECSService(re::ecs2::BlendShapeWeightsBufferSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_BlendShapeMeshWeightRange(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E370))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E428, "BlendShapeMeshWeightRange");
    __cxa_guard_release(&qword_1EE19E370);
  }

  return &unk_1EE19E428;
}

void re::ecs2::initInfo_BlendShapeMeshWeightRange(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xB54CA9662B8EA2D0;
  v23[1] = "BlendShapeMeshWeightRange";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE19E378, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E378);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "instanceIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19E3A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "weightRangeStartIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19E3B0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint32_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "weightRangeSize";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19E3B8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint32_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "partIndex";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19E3C0 = v21;
      __cxa_guard_release(&qword_1EE19E378);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19E3A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeMeshWeightRange>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeMeshWeightRange>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeMeshWeightRange>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeMeshWeightRange>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ecs2::BlendShapeMeshWeightRange>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 0xFFFFFFFFLL;
  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::BlendShapeMeshWeightRange>(uint64_t a1)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE19E3A0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19E3A0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19E3E8);
      qword_1EE19E3E8 = &unk_1F5CD2E00;
      __cxa_guard_release(&qword_1EE19E3A0);
    }
  }

  if ((_MergedGlobals_140 & 1) == 0)
  {
    v1 = qword_1EE19E380;
    if (qword_1EE19E380 || (v1 = re::ecs2::allocInfo_BlendShapeMeshWeightRange(a1), qword_1EE19E380 = v1, re::ecs2::initInfo_BlendShapeMeshWeightRange(v1, v2), (_MergedGlobals_140 & 1) == 0))
    {
      _MergedGlobals_140 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19E3E8, 0);
      qword_1EE19E3F8 = 0x2800000003;
      dword_1EE19E400 = v3;
      word_1EE19E404 = 0;
      *&xmmword_1EE19E408 = 0;
      *(&xmmword_1EE19E408 + 1) = 0xFFFFFFFFLL;
      qword_1EE19E418 = v1;
      unk_1EE19E420 = 0;
      qword_1EE19E3E8 = &unk_1F5CD2E00;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19E3E8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19E408 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_BlendShapeWeightsBufferComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E390))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E4B8, "BlendShapeWeightsBufferComponent");
    __cxa_guard_release(&qword_1EE19E390);
  }

  return &unk_1EE19E4B8;
}

void re::ecs2::initInfo_BlendShapeWeightsBufferComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x83B2A9AC9A6DC864;
  v20[1] = "BlendShapeWeightsBufferComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19E388, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E388);
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
      qword_1EE19E3C8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_totalBlendShapeWeights";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x6000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19E3D0 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>>::get(v13);
      v14 = (*(*v13 + 32))(v13, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_blendShapeWeightsRanges";
      *(v14 + 16) = &qword_1EE19E3E8;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x8800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19E3D8 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_size_t(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_processedBlendShapeWeightsRangeHash";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19E3E0 = v18;
      __cxa_guard_release(&qword_1EE19E388);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19E3C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsBufferComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsBufferComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsBufferComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsBufferComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232BlendShapeWeightsBufferComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void *re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsBufferComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 136);
  re::DynamicArray<unsigned long>::deinit(a3 + 96);
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::~FramePersistentPtr((a3 + 32));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsBufferComponent>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 136);
  re::DynamicArray<unsigned long>::deinit(a1 + 96);
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::~FramePersistentPtr((a1 + 32));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::ecs2::allocInfo_BlendShapeWeightsBufferSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E398))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E548, "BlendShapeWeightsBufferSystem");
    __cxa_guard_release(&qword_1EE19E398);
  }

  return &unk_1EE19E548;
}

void re::ecs2::initInfo_BlendShapeWeightsBufferSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC750A969B247FE34;
  v6[1] = "BlendShapeWeightsBufferSystem";
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
  *(this + 8) = &re::ecs2::initInfo_BlendShapeWeightsBufferSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsBufferSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsBufferSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::BlendShapeWeightsBufferSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::BlendShapeWeightsBufferSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsBufferSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsBufferSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsBufferSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 39);
  a3[32] = &unk_1F5CD2B50;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 36);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsBufferSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 39);
  a1[32] = &unk_1F5CD2B50;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 36);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::BlendShapeWeightsBufferComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::BlendShapeWeightsBufferSystem::~BlendShapeWeightsBufferSystem(re::ecs2::BlendShapeWeightsBufferSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 39);
  *(this + 32) = &unk_1F5CD2B50;
  re::FixedArray<CoreIKTransform>::deinit(this + 36);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 39);
  *(this + 32) = &unk_1F5CD2B50;
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(a1);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 7));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 15));
  a1[20] = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 21));
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 21));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 15));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 7));
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(a1);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, i);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 112 * (a2 & 3);
}

void *re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(void *a1)
{
  if (*a1)
  {
    *a1 = 0;
    v2 = a1 + 1;
    v3 = *(a1[1] + 288);
    if (v3)
    {
      v4 = a1[12];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v6 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((a1 + 7), i);
          re::EventBus::unsubscribe(v3, *v6, *(v6 + 8));
        }
      }
    }

    re::BucketArray<RESubscriptionHandle,8ul>::deinit((a1 + 7));
    v7 = 0;
    v8 = a1 + 3;
    do
    {
      v9 = a1[2];
      if (*v9)
      {
        re::ecs2::ComponentBucketsBase::removeBucket(v9, v8[v7]);
      }

      v8[v7++] = -1;
    }

    while (v7 != 4);
    *v2 = 0;
    a1[2] = 0;
  }

  re::BucketArray<RESubscriptionHandle,8ul>::deinit((a1 + 7));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 7));
  return a1;
}

re *re::internal::destroyPersistent<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::FixedArray<CoreIKTransform>::deinit((a3 + 24));
    v5 = *(a3 + 16);
    if (v5)
    {

      *(a3 + 16) = 0;
    }

    v6 = *(*v4 + 40);

    return v6(v4, a3);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD2C48;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD2C48;
  return result;
}

uint64_t re::DynamicBitset<unsigned long long,64ul>::setBit(uint64_t result, unint64_t a2)
{
  if (*(result + 8) <= a2 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(result + 16))
  {
    v2 = result + 24;
  }

  else
  {
    v2 = *(result + 32);
  }

  *(v2 + 8 * (a2 >> 6)) |= 1 << a2;
  return result;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(unint64_t result)
{
  if (*(result + 232) != 1)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 176);
  v3 = *(result + 184);
  if (v2 >= 0xB)
  {
    if (v3)
    {
      v4 = (result + 192);
    }

    else
    {
      v4 = *(result + 200);
    }

    v6 = 8 * v2;
    while (!*v4)
    {
      ++v4;
      v6 -= 8;
      if (!v6)
      {
        return result;
      }
    }

LABEL_17:
    result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(result + 168, 0);
    if (result != -1)
    {
      v10 = result;
      do
      {
        v11 = *(re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v1, v10) + 8);
        if ((re::ecs2::System::isQueuedToRun(*(v1 + 216), *(v11 + 376)) & 1) == 0)
        {
          re::ecs2::System::queueToRun(*(v1 + 216), *(v11 + 376), 0.0);
        }

        result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v1 + 168, v10 + 1);
        v10 = result;
      }

      while (result != -1);
    }

    return result;
  }

  if (v3)
  {
    v5 = (result + 192);
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v5 = *(result + 200);
    if (!v2)
    {
      return result;
    }
  }

  v7 = 0;
  v8 = 8 * v2;
  do
  {
    v9 = *v5++;
    v7 |= v9;
    v8 -= 8;
  }

  while (v8);
  if (v7)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 8);
  if (a2 >= v3 << 6)
  {
    return -1;
  }

  v4 = a2 >> 6;
  if ((a2 & 0x3F) != 0)
  {
    v5 = *(v2 + 8 * v4) & (-1 << (a2 & 0x3F));
    if (v5)
    {
      return __clz(__rbit64(v5)) + (a2 & 0xFFFFFFFFFFFFFFC0);
    }

    ++v4;
  }

  v7 = v3 > v4;
  v8 = v3 - v4;
  if (!v7)
  {
    return -1;
  }

  v9 = -64 * v4;
  v10 = (v2 + 8 * v4);
  while (1)
  {
    v12 = *v10++;
    v11 = v12;
    if (v12)
    {
      break;
    }

    v9 -= 64;
    if (!--v8)
    {
      return -1;
    }
  }

  return __clz(__rbit64(v11)) - v9;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(uint64_t result)
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
      v5 = v3[984].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[984].i64[0] = v5;
      v6 = v3[984].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[984].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[985] = vaddq_s64(v3[985], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(result + 8))
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a2 + 32);
      if (*(a2 + 16))
      {
        v4 = a2 + 24;
      }

      v5 = result + 24;
      if ((*(result + 16) & 1) == 0)
      {
        v5 = *(result + 32);
      }

      *(v5 + 8 * i) &= *(v4 + 8 * i);
    }
  }

  return result;
}

uint64_t re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(result + 8))
  {
    v2 = *(result + 8);
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(result + 16);
      v5 = result + 24;
      if ((v4 & 1) == 0)
      {
        v5 = *(result + 32);
      }

      if (*(a2 + 16))
      {
        v6 = a2 + 24;
      }

      else
      {
        v6 = *(a2 + 32);
      }

      v7 = result + 24;
      if ((v4 & 1) == 0)
      {
        v7 = *(result + 32);
      }

      *(v7 + 8 * i) ^= *(v6 + 8 * i) & *(v5 + 8 * i);
    }
  }

  return result;
}

uint64_t re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 > *(a1 + 40))
  {
    if ((v4 & 0x3F) != 0)
    {
      v5 = (v4 >> 6) + 1;
    }

    else
    {
      v5 = v4 >> 6;
    }

    *(a1 + 40) = v4;
    v11 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(a1, v5, &v11);
  }

  v6 = *(a2 + 8);
  if (v6 >= *(a1 + 8))
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(a2 + 32);
      if (*(a2 + 16))
      {
        v8 = a2 + 24;
      }

      v9 = a1 + 24;
      if ((*(a1 + 16) & 1) == 0)
      {
        v9 = *(a1 + 32);
      }

      *(v9 + 8 * i) |= *(v8 + 8 * i);
    }
  }

  return a1;
}

uint64_t re::DynamicBitset<unsigned long long,64ul>::clearBit(uint64_t result, unint64_t a2)
{
  if (*(result + 8) <= a2 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(result + 16))
  {
    v2 = result + 24;
  }

  else
  {
    v2 = *(result + 32);
  }

  *(v2 + 8 * (a2 >> 6)) &= ~(1 << a2);
  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD2CA0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD2CF8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD2D50;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD2DA8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD2CA0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD2CF8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD2D50;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD2DA8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

double re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(void *a1, void *a2, void *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2CA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2CA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2CF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2CF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2D50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2D50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2DA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2DA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

int64x2_t re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::internalAdd(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = 16 * (v15 + 16 * v14);
  *(*(a1 + 8) + v18) = *a2;
  v19 = *(a1 + 8);
  *(v19 + v18 + 8) = *a3;
  if (v17 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 24), v21);
  *(a1 + 24) = result;
  v23 = *(v19 + v18) ^ (*(v19 + v18) >> 30);
  v24 = ((v23 * v8) ^ ((v23 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

int64x2_t re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 16 * (v13 + 16 * v11);
  *(a1[1] + v16) = *a2;
  v17 = a1[1];
  *(v17 + v16 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = *(v17 + v16) ^ (*(v17 + v16) >> 30);
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  a1[5] ^= (v22 >> 31) ^ v22;
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v4 = *a2;
  if (v4)
  {
    re::BucketArray<RESubscriptionHandle,8ul>::init(a1, v4, *(a2 + 8));
    re::BucketArray<RESubscriptionHandle,8ul>::copy(a1, a2);
  }

  return a1;
}

void re::BucketArray<RESubscriptionHandle,8ul>::copy(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  if (v4 >= *(a1 + 40))
  {
    re::BucketArray<RESubscriptionHandle,8ul>::setBucketsCapacity(a1, (v4 + 7) >> 3);
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle&,re::BucketArray<RESubscriptionHandle,8ul>&,true>>(a2, 0, a2, *(a1 + 40), a1, 0, v12);
    v6 = *(a1 + 40);
    v7 = v4 - v6;
    if (v4 != v6)
    {
      v8 = 0;
      do
      {
        v9 = v8 + *(a1 + 40);
        if (*(a1 + 8) <= v9 >> 3)
        {
          memset(v12, 0, sizeof(v12));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = a1 + 24;
        if ((*(a1 + 16) & 1) == 0)
        {
          v10 = *(a1 + 32);
        }

        v11 = *(v10 + 8 * (v9 >> 3));
        *(v11 + 16 * (v9 & 7)) = *re::BucketArray<RESubscriptionHandle,8ul>::operator[](a2, v9);
        ++v8;
      }

      while (v7 != v8);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle&,re::BucketArray<RESubscriptionHandle,8ul>&,true>>(a2, 0, a2, *(a2 + 40), a1, 0, v12);
    if (v4 != *(a1 + 40))
    {
      v5 = v4;
      do
      {
        re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, v5++);
      }

      while (v5 != *(a1 + 40));
    }
  }

  *(a1 + 40) = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle const&,re::BucketArray<RESubscriptionHandle,8ul> const&,true>,re::BucketArray<RESubscriptionHandle,8ul>::BucketArrayIterator<RESubscriptionHandle,RESubscriptionHandle&,re::BucketArray<RESubscriptionHandle,8ul>&,true>>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v13 = a4 - 1;
    do
    {
      do
      {
        v14 = a2;
        v15 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, a2);
        *re::BucketArray<RESubscriptionHandle,8ul>::operator[](a5, a6) = *v15;
        a2 = v14 + 1;
        ++a6;
      }

      while (a1 != a3);
    }

    while (v13 != v14);
    a2 = a4;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a6;
}

BOOL re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void *re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v10 = xmmword_1E306C600;
  re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(a4, &v10);
  v8 = (*(a4 + 32) + 16 * *(a4 + 16) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::BlendShapeMeshWeightRange>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::BlendNode>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = (v3[4] + 16 * v4);
      v7 = v5 + 1;
      do
      {
        *v6++ = xmmword_1E306C600;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::BlendShapeMeshWeightRange>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::BlendShapeWeightsBufferComponent>(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD2E98;
  inited = objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 72) = re::globalAllocators(inited)[2];
  *(a1 + 168) = 0;
  *(a1 + 108) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void re::ecs2::BlendShapeWeightsBufferComponent::~BlendShapeWeightsBufferComponent(id *this)
{
  re::DynamicArray<unsigned long>::deinit((this + 17));
  re::DynamicArray<unsigned long>::deinit((this + 12));
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::~FramePersistentPtr(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::DynamicArray<unsigned long>::deinit((this + 17));
  re::DynamicArray<unsigned long>::deinit((this + 12));
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::~FramePersistentPtr(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

id *re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::BlendShapeWeightsBufferComponent::BlendShapeWeightsInputs,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs232BlendShapeWeightsBufferComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::BlendShapeWeightsBufferSystem *re::ecs2::BlendShapeWeightsBufferSystem::BlendShapeWeightsBufferSystem(re::ecs2::BlendShapeWeightsBufferSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CD2BB8;
  v3 = re::ecs2::BlendShapeWeightsBufferComponentStateImpl::BlendShapeWeightsBufferComponentStateImpl((this + 256));
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 82) = 1;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 42) = 0;
  *(this + 90) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 112) = 1;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 61) = 0;
  *(this + 124) = 1;
  *(this + 529) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 54, 0);
  *(this + 112) += 2;
  *(this + 59) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 60, 0);
  *(this + 124) += 2;
  *(this + 65) = 0;
  *(this + 66) = this;
  *(this + 67) = this + 256;
  *(this + 544) = 1;
  return this;
}

void *re::ecs2::allocInfo_ImageBasedReflectionContentComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_141, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_141))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E5F0, "ImageBasedReflectionContentComponent");
    __cxa_guard_release(&_MergedGlobals_141);
  }

  return &unk_1EE19E5F0;
}

void re::ecs2::initInfo_ImageBasedReflectionContentComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE5C615947B7704ELL;
  v10[1] = "ImageBasedReflectionContentComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19E5E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E5E8);
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
      qword_1EE19E5E0 = v8;
      __cxa_guard_release(&qword_1EE19E5E8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19E5E0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionContentComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionContentComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionContentComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionContentComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs236ImageBasedReflectionContentComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionContentComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD2F20;
}

void re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionContentComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD2F20;
}

void re::ecs2::ImageBasedReflectionContentComponent::~ImageBasedReflectionContentComponent(re::ecs2::ImageBasedReflectionContentComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs236ImageBasedReflectionContentComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::PhysicsJointsPhysicsSubsystem::physicsSimulationService(re::ecs2::PhysicsJointsPhysicsSubsystem *this)
{
  if (this)
  {
    result = *(this + 35);
    if (result)
    {
      return result;
    }

    v2 = *re::physicsLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0;
      v3 = "PhysicsJointsPhysicsSubsystem::physicsSimulationService(): No PhysicsSimulationService";
      v4 = &v5;
LABEL_7:
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v2 = *re::physicsLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "PhysicsJointsPhysicsSubsystem::physicsSimulationService(): No parent PhysicsSystem";
      v4 = buf;
      goto LABEL_7;
    }
  }

  return 0;
}

void *re::ecs2::PhysicsJointsPhysicsSubsystem::init(re::ecs2::PhysicsJointsPhysicsSubsystem *this, re::ecs2::PhysicsSystem *a2)
{
  v3 = this;
  *(this + 32) = a2;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

unint64_t re::ecs2::PhysicsJointsPhysicsSubsystem::ecsToSim(re::ecs2::PhysicsJointsPhysicsSubsystem **this, const re::ecs2::Scene *a2, re::PhysicsSimulation *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::PhysicsJointsPhysicsSubsystem::physicsSimulationService(this[32]);
  if (v6)
  {
    v7 = (*(*v6 + 40))(v6, a2);
    if (v7)
    {
      v8 = v7;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v45, v7, 0);
      v9 = v45;
      v35 = v45;
      v36 = DWORD2(v45);
      v10 = WORD4(v45);
      v11 = HIWORD(DWORD2(v45));
      v12 = v8 == v45 && WORD4(v45) == 0xFFFF;
      if (!v12 || v11 != 0xFFFF)
      {
        while (1)
        {
          v14 = v11;
          v15 = *(v9 + 16);
          if (v15 <= v11)
          {
            v37 = 0;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v38 = 136315906;
            *&v38[4] = "operator[]";
            v39 = 1024;
            v40 = 797;
            v41 = 2048;
            v42 = v14;
            v43 = 2048;
            v44 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_41;
          }

          v16 = *(*(*(v9 + 32) + 16 * v11) + 272 * v10 + 16);
          if (v16)
          {
            if (*(v16 + 240))
            {
              break;
            }
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
          v9 = v35;
          v10 = v36;
          v11 = HIWORD(v36);
          if (v35 == v8 && v36 == 0xFFFF && HIWORD(v36) == 0xFFFF)
          {
            goto LABEL_16;
          }
        }

        v20 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
        if (*(a2 + 28) > v20)
        {
          v21 = *(*(a2 + 30) + 8 * v20);
          if (v21)
          {
            v22 = *(v21 + 384);
            if (v22)
            {
              v23 = *(v21 + 400);
              v24 = 8 * v22;
              do
              {
                v25 = *v23++;
                re::ecs2::Component::markDirty(v25);
                v24 -= 8;
              }

              while (v24);
            }
          }
        }

        v26 = re::ecs2::PhysicsJointsPhysicsSubsystem::physicsSimulationService(this[32]);
        if (v26)
        {
          v27 = (*(*v26 + 32))(v26, a2);
          if (v27)
          {
            v28 = v27;
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v45, v27, 0);
            v29 = v45;
            v35 = v45;
            v36 = DWORD2(v45);
            v30 = WORD4(v45);
            v31 = HIWORD(DWORD2(v45));
            v32 = v28 == v45 && WORD4(v45) == 0xFFFF;
            if (!v32 || v31 != 0xFFFF)
            {
              while (1)
              {
                v14 = v31;
                v15 = *(v29 + 16);
                if (v15 <= v31)
                {
                  break;
                }

                v34 = *(*(*(v29 + 32) + 16 * v31) + 272 * v30 + 16);
                if (v34)
                {
                  *(v34 + 240) = 0;
                }

                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
                v29 = v35;
                v30 = v36;
                v31 = HIWORD(v36);
                if (v35 == v28 && v36 == 0xFFFF && HIWORD(v36) == 0xFFFF)
                {
                  goto LABEL_16;
                }
              }

LABEL_41:
              v37 = 0;
              v49 = 0u;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v38 = 136315906;
              *&v38[4] = "operator[]";
              v39 = 1024;
              v40 = 797;
              v41 = 2048;
              v42 = v14;
              v43 = 2048;
              v44 = v15;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }
          }
        }
      }
    }
  }

LABEL_16:
  v45 = 0uLL;
  *v38 = a2;
  v17 = *(this[9] + 2 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 8, v38) + 1);
  re::DynamicBitset<unsigned long long,64ul>::clearBit((this + 22), v17);
  v18 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((this + 1), v17);
  if (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::update(v18, &v45, a3))
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit((this + 22), v17);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((this + 1));
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v9) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  if (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::update(v6, v8, a3))
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

void re::ecs2::PhysicsJointsPhysicsSubsystem::~PhysicsJointsPhysicsSubsystem(re::ecs2::PhysicsJointsPhysicsSubsystem *this)
{
  *this = &unk_1F5CD3058;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 1);
}

{
  *this = &unk_1F5CD3058;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void **re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {

    return re::ecs2::PhysicsJointsComponent::removeFromSimulation(result);
  }

  return result;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD3058;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsJointsComponent,re::ecs2::PhysicsJointsComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD3058;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 224);
  v7 = a1[3];
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v7);
  if (*(v8 + 40))
  {
    v9 = (*(*v6 + 24))(v6, a2, a1, v7, v8, a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  v11 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v10);
  if (*(v11 + 40))
  {
    v9 = v9 | (*(*v6 + 32))(v6, a2, a1, v10, v11, a3);
  }

  v12 = a1[6];
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v12);
  if (*(v13 + 40))
  {
    return v9 | (*(*v6 + 40))(v6, a2, a1, v12, v13, a3);
  }

  return v9;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD30C8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD3120;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD3178;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD31D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD30C8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD3120;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD3178;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD31D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD30C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD30C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3120;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3120;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3178;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3178;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD31D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD31D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::OcclusionServiceParams::enableRendersToFarPlane(re::ecs2::OcclusionServiceParams *this)
{
  {
    re::Defaults::BOOLValue("enableRendersToFarPlane", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 1;
    }

    re::ecs2::OcclusionServiceParams::enableRendersToFarPlane(void)::kEnable = v8;
  }

  v9[0] = 0x93B58ED67D91260ELL;
  v9[1] = "overrides:enableRendersToFarPlane";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::ecs2::OcclusionServiceParams::enableRendersToFarPlane(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::ecs2::OcclusionServiceParams::enableStaticOcclusionFarDistanceMitigation(re::ecs2::OcclusionServiceParams *this)
{
  {
    re::Defaults::BOOLValue("enableStaticOcclusionFarDistanceMitigation", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 1;
    }

    re::ecs2::OcclusionServiceParams::enableStaticOcclusionFarDistanceMitigation(void)::kEnable = v8;
  }

  v9[0] = 0xF1AB18809C06ACC4;
  v9[1] = "overrides:enableStaticOcclusionFarDistanceMitigation";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::ecs2::OcclusionServiceParams::enableStaticOcclusionFarDistanceMitigation(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

void *re::ecs2::allocInfo_OcclusionService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_142, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_142))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19E688, "OcclusionService");
    __cxa_guard_release(&_MergedGlobals_142);
  }

  return &unk_1EE19E688;
}

void re::ecs2::initInfo_OcclusionService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF95E60D565BEA910;
  v6[1] = "OcclusionService";
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
  *(this + 8) = &re::ecs2::initInfo_OcclusionService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::ecs2::getOcclusionTypeBasedOnAABB(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = 0;
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v12[0] = *a2;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  do
  {
    *(&v13 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*&v12[v3])), v5, *v12[v3].f32, 1), v6, v12[v3], 2), v7, v12[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  re::AABB::transform(a1, &v13, v12);
  if (v12[0].f32[2] > -7.0)
  {
    return 256;
  }

  else
  {
    return 257;
  }
}

re::ecs2::OcclusionManagerStateTracking *re::ecs2::OcclusionManagerStateTracking::OcclusionManagerStateTracking(re::ecs2::OcclusionManagerStateTracking *this)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CD3228;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4 = v7;
  v5 = 1;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), &v4);
  v5 = 1;
  v6 = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4 = &v6;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 328), &v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CD3350;
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

_anonymous_namespace_ *re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(a1, a2);
  }

  return a1;
}

__n128 re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
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
  v8 = (v7 + 24 * (v4 & 0x1F));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

void re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v41 = 0x7FFFFFFFLL;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v39, v42, 3);
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
    while (1)
    {
      v38 = *(v8 + 24 * v5 + 16);
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v39, &v38))
      {
        v9 = v38;
        v10 = *(v38 + 32);
        if (v10 && (*(v10 + 304) & 0x80) == 0)
        {
          do
          {
            v37 = v10;
            if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v39, &v37) || re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, &v37))
            {
              v19 = v38;
              while (1)
              {
                v54[0] = v19;
                if (v37 == v19)
                {
                  break;
                }

                re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v39, v54);
                v19 = *(v54[0] + 32);
                if (v19 && (*(v19 + 304) & 0x80) != 0)
                {
                  v19 = 0;
                }
              }

              goto LABEL_73;
            }

            v10 = *(v37 + 32);
          }

          while (v10 && (*(v10 + 304) & 0x80) == 0);
          v9 = v38;
        }

        v37 = 0;
        if (*(v9 + 304))
        {
          v11 = *(a1 + 352);
          if (*(a1 + 56))
          {
            v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
            v13 = *(*(a1 + 64) + 4 * ((v12 ^ (v12 >> 31)) % *(a1 + 80)));
            if (v13 != 0x7FFFFFFF)
            {
              v14 = *(a1 + 72);
              while (*(v14 + 32 * v13 + 8) != v9)
              {
                v13 = *(v14 + 32 * v13) & 0x7FFFFFFF;
                if (v13 == 0x7FFFFFFF)
                {
                  goto LABEL_23;
                }
              }

              goto LABEL_73;
            }
          }

LABEL_23:
          (*(**v11 + 8))(v54);
          if (LOBYTE(v54[0]) != 1 || v54[1] == 0)
          {
            break;
          }
        }
      }

LABEL_73:
      v36 = *(a2 + 32);
      v8 = *(a2 + 16);
      if (v36 <= v5 + 1)
      {
        v36 = v5 + 1;
      }

      while (v36 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_79;
        }
      }

      LODWORD(v5) = v36;
LABEL_79:
      if (v5 == v4)
      {
        goto LABEL_80;
      }
    }

    v16 = *(v9 + 32);
    if (v16 && (*(v16 + 304) & 0x80) == 0 && (v54[0] = *(v9 + 32), (v17 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 56, v54)) != 0))
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    re::StackScratchAllocator::StackScratchAllocator(v54);
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v53 = 0;
    re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::init(&v47, v54, 1uLL);
    v45.n128_u64[0] = v9;
    v45.n128_u64[1] = v18;
    v46 = 0;
    v20 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::add(&v47, &v45);
    while (1)
    {
      do
      {
        if (!v52)
        {
          while (v48)
          {
            re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v47);
          }

          if (v47 && (v49 & 1) == 0)
          {
            (*(*v47 + 40))(v20);
          }

          re::StackScratchAllocator::~StackScratchAllocator(v54);
          goto LABEL_73;
        }

        v21 = v52 - 1;
        v22 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](&v47, v52 - 1);
        v23 = v22[1].n128_u64[0];
        v45 = *v22;
        v46 = v23;
        re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](&v47, v21);
        v52 = v21;
        ++v53;
      }

      while ((*(v45.n128_u64[0] + 304) & 1) == 0);
      v24 = re::ecs2::EntityComponentCollection::get((v45.n128_u64[0] + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (!v24)
      {
        break;
      }

      v25 = v24;
      if ((*(v24 + 280) & 1) == 0)
      {
        *(v24 + 280) = 1;
        *(v24 + 304) = 1;
      }

      v26 = v45.n128_u64[0];
      if (v45.n128_u64[0])
      {
        while (1)
        {
          v27 = re::ecs2::EntityComponentCollection::get((v26 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalOcclusionOptionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v27)
          {
            break;
          }

          v26 = *(v26 + 32);
          if (!v26 || (*(v26 + 304) & 0x80) != 0)
          {
            goto LABEL_49;
          }
        }

        v28 = *(v27 + 25);
      }

      else
      {
LABEL_49:
        v28 = 0;
      }

      *(v25 + 308) = v28 & 1;
      v29 = v45.n128_u64[0];
      v45.n128_u64[1] = v45.n128_u64[0];
      if (v45.n128_u64[0])
      {
        goto LABEL_54;
      }

LABEL_57:
      v31 = *(v45.n128_u64[0] + 344);
      if (v31)
      {
        v32 = *(v45.n128_u64[0] + 360);
        v33 = 8 * v31;
        do
        {
          v34 = *v32;
          (*(**v11 + 8))(&v43);
          if (v43.n128_u8[0] != 1 || v43.n128_u64[1] == 0)
          {
            v43.n128_u64[0] = v34;
            v43.n128_u64[1] = v45.n128_u64[1];
            v44 = v46;
            v20 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::add(&v47, &v43);
          }

          ++v32;
          v33 -= 8;
        }

        while (v33);
      }
    }

    v29 = v45.n128_u64[1];
    if (!v45.n128_u64[1])
    {
      goto LABEL_57;
    }

LABEL_54:
    v30 = re::ecs2::EntityComponentCollection::get((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if ((*(v30 + 36) & 1) != 0 || (*(v30 + 308) & 1) == 0)
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 56, &v45, &v45.n128_u64[1]);
    }

    goto LABEL_57;
  }

LABEL_80:
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v39);
  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

void re::ecs2::OcclusionManager::updateOcclusionData(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 384) == 1)
  {
    v6 = a1;
    v8 = a1 + 24;
    v7 = *(a1 + 24);
    *(a1 + 376) = a2;
    (*(v7 + 32))(a1 + 24, a1 + 128);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 104);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 200);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 248);
    v10 = *(v8 - 16);
    v11 = a3[1];
    if (v11)
    {
      v34 = a3;
      v35 = v6;
      v12 = *(v10 + 352);
      v13 = *a3;
      v36 = *a3 + 8 * v11;
      v37 = 0;
      do
      {
        v9 = re::ecs2::SceneComponentTable::get((*v13 + 200), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v9)
        {
          v14 = *(v9 + 48);
          if (v14)
          {
            v15 = *(v9 + 50);
            v16 = 8 * v14;
            do
            {
              v17 = *v15;
              if (*(*v15 + 280) == 1)
              {
                v18 = *(v17 + 16);
                v19 = (v17 + 284);
                if (v18[304])
                {
                  location = *(v17 + 16);
                  v39 = v12;
                  v40 = *(v17 + 28);
                  p_location = &location;
                  v21 = *(v17 + 304);
                  if (v21 == -1)
                  {
                    goto LABEL_59;
                  }

                  p_p_location = &p_location;
                  (off_1F5CD3590[v21])(buf, &p_p_location, v17 + 284);
                }

                else
                {
                  p_location = *(v17 + 16);
                  p_p_location = &p_location;
                  v20 = *(v17 + 304);
                  if (v20 == -1)
                  {
                    goto LABEL_59;
                  }

                  location = &p_p_location;
                  (off_1F5CD35C0[v20])(buf, &location, v17 + 284);
                }

                if (v45 == 1)
                {
                  *v19 = *buf;
                  *(v17 + 300) = v44;
                }

                location = v18;
                *&v39 = a4;
                p_location = &location;
                v22 = *(v17 + 304);
                if (v22 == -1)
                {
LABEL_59:
                  std::__throw_bad_variant_access[abi:nn200100]();
                }

                p_p_location = &p_location;
                (off_1F5CD35F0[v22])(buf, &p_p_location, v17 + 284);
                if (v45 == 1)
                {
                  *v19 = *buf;
                  *(v17 + 300) = v44;
                }

                if (((*(v17 + 36) & 1) != 0 || (*(v17 + 308) & 1) == 0) && *(v17 + 25) == 1)
                {
                  location = v18;
                  LODWORD(v39) = *(v17 + 28);
                  p_location = &location;
                  v23 = *(v17 + 304);
                  if (v23 == -1)
                  {
                    goto LABEL_59;
                  }

                  p_p_location = &p_location;
                  v24 = off_1F5CD3620;
                }

                else
                {
                  location = v18;
                  LODWORD(v39) = *(v17 + 28);
                  p_location = &location;
                  v23 = *(v17 + 304);
                  if (v23 == -1)
                  {
                    goto LABEL_59;
                  }

                  p_p_location = &p_location;
                  v24 = off_1F5CD3650;
                }

                v9 = (v24[v23])(buf, &p_p_location, v17 + 284);
                if (v45 == 1)
                {
                  *v19 = *buf;
                  *(v17 + 300) = v44;
                }

                if (v18[304])
                {
                  v25 = *(v17 + 304);
                  if (v25 != 1)
                  {
                    if ((v25 & 0xFFFFFFFE) == 2)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v26 = HIDWORD(v37);
                    }

                    LOBYTE(v37) = 1;
                    HIDWORD(v37) = v26;
                  }
                }
              }

              ++v15;
              v16 -= 8;
            }

            while (v16);
          }
        }

        v13 += 8;
      }

      while (v13 != v36);
      a3 = v34;
      v6 = v35;
      v10 = *(v35 + 8);
      v27 = v37;
      v28 = WORD2(v37);
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v6 + 544) = v27 | (v28 << 8);
    *(v6 + 376) = 0;
    if (*(v10 + 352))
    {
      if (v27)
      {
        if ((*(v6 + 392) & 1) == 0)
        {
          v29 = *re::foundationCoreLogObjects(v9);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Begin requesting visual depth data", buf, 2u);
          }

          v30 = *(*(v6 + 8) + 352);
          if (v30)
          {
            v31 = v30 + 8;
          }

          else
          {
            v31 = 0;
          }

          objc_initWeak(&location, v31);
          re::CameraStreamProvider::threadSafe_increaseRunningTokenCount(v30);
          buf[0] = 1;
          *&buf[8] = 0;
          objc_moveWeak(&buf[8], &location);
          objc_destroyWeak(&location);
          location = 0;
          re::Optional<re::VisualDepthStreamRunningToken>::operator=(v6 + 392, buf);
          if (buf[0] == 1)
          {
            re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(&buf[8]);
          }

          re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(&location);
        }

        if (re::ecs2::OcclusionServiceParams::enableStaticOcclusionFarDistanceMitigation(v9))
        {
          if ((*(v6 + 416) & 1) == 0)
          {
            v32 = *(v6 + 8);
            buf[0] = 1;
            v44 = v32;
            v46 = 0;
            v47 = 0;
            re::Optional<re::ecs2::SceneUnderstandingDepthTracker>::operator=(v6 + 416, buf);
          }

          re::ecs2::SceneUnderstandingDepthTracker::updateRenderData(v6 + 432, (v6 + 560), v6 + 544, a3, a4);
        }
      }

      else if (*(v6 + 392))
      {
        v33 = *re::foundationCoreLogObjects(v9);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "StaticOcclusion: Stop requesting visual depth data", buf, 2u);
        }

        buf[0] = 0;
        re::Optional<re::VisualDepthStreamRunningToken>::operator=(v6 + 392, buf);
        if (buf[0] == 1)
        {
          re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(&buf[8]);
        }

        buf[0] = 0;
        re::Optional<re::ecs2::SceneUnderstandingDepthTracker>::operator=(v6 + 416, buf);
      }
    }
  }
}

uint64_t re::Optional<re::VisualDepthStreamRunningToken>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if (*a2)
    {
      re::VisualDepthStreamRunningToken::operator=(v4, (a2 + 8));
    }

    else
    {
      re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(v4);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    objc_moveWeak((a1 + 8), (a2 + 8));
    objc_destroyWeak((a2 + 8));
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t re::Optional<re::ecs2::SceneUnderstandingDepthTracker>::operator=(uint64_t result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    if ((*a2 & 1) == 0)
    {
      return result;
    }

    *result = 1;
    *(result + 16) = *(a2 + 16);
    v2 = *(a2 + 32);
    *(result + 32) = v2;
    if (v2 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((*a2 & 1) == 0)
  {
    *result = 0;
    return result;
  }

  *(result + 16) = *(a2 + 16);
  if ((*(result + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(result + 32) = 1;
LABEL_12:
    v3 = *(a2 + 48);
    v4 = *(a2 + 64);
    v5 = *(a2 + 96);
    *(result + 80) = *(a2 + 80);
    *(result + 96) = v5;
    *(result + 48) = v3;
    *(result + 64) = v4;
    goto LABEL_13;
  }

  if (*(a2 + 32))
  {
    goto LABEL_12;
  }

  *(result + 32) = 0;
LABEL_13:
  *(result + 112) = *(a2 + 112);
  return result;
}

_BYTE *re::ecs2::OcclusionManager::tryGetOcclusionData@<X0>(re::ecs2::OcclusionManager *this@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 80, &v10);
  if (!result || !*result)
  {
    goto LABEL_7;
  }

  result = re::ecs2::EntityComponentCollection::get((*result + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!result)
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) OcclusionOwningEntity must have an OcclusionComponent", "occlusionComponent != nullptr", "tryGetOcclusionData", 366);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = result;
  if (result[280])
  {
    result = re::ecs2::OcclusionServiceParams::enableRendersToFarPlane(result);
    if (result)
    {
      v7 = *(v6 + 76) != 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v6 + 8);
    v9 = v6[64];
    *a3 = 1;
    *(a3 + 4) = *(v6 + 284);
    *(a3 + 20) = *(v6 + 300);
    *(a3 + 28) = v8;
    *(a3 + 32) = v7;
    *(a3 + 33) = v9;
  }

  else
  {
LABEL_7:
    *a3 = 0;
  }

  return result;
}

_DWORD *re::ecs2::OcclusionManager::tryGetOcclusionType@<X0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *(a2 + 16);
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(&a1[5], &v14);
  if (!result || !*result)
  {
LABEL_9:
    *a3 = 0;
    return result;
  }

  result = re::ecs2::EntityComponentCollection::get((*result + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v8 = result;
    v9 = result[76];
    if (v9 != 1)
    {
      result = re::ecs2::getOcclusionTypeBasedOnAABB(*(a2 + 32), *(a2 + 24), a1 + 39);
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v13 = *(v8 + 64);
        v11 = v13 == 3;
        v10 = v13 == 2;
        v12 = v13 != 4;
      }

      *a3 = 1;
      a3[1] = result;
      a3[2] = v12;
      a3[3] = v10;
      a3[4] = v11;
      a3 += 5;
    }

    goto LABEL_9;
  }

  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) OcclusionOwningEntity does not have OcclusionComponent. That should never happen.", "occlusionComponent != nullptr", "tryGetOcclusionType", 397);
  result = _os_crash();
  __break(1u);
  return result;
}

_BYTE *re::ecs2::OcclusionManager::tryGetOcclusionDataForPortalCrossing@<X0>(re::ecs2::OcclusionManager *this@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::ecs2::OcclusionManager::tryGetOcclusionData(this, a2, v8);
  v6 = v8[0];
  if (v8[0] == 1)
  {
    BYTE13(v10) = 0;
    v7 = v10;
    *(a3 + 4) = v9;
    *(a3 + 20) = v7;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t re::ecs2::OcclusionManager::tryGetOcclusionTypeForPortalCrossing@<X0>(float32x4_t *a1@<X0>, const re::ecs2::Entity *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = re::ecs2::OcclusionManager::tryGetOcclusionData(a1, a2, v8);
  if ((v8[0] & 1) != 0 && v9 != 1)
  {
    result = re::ecs2::getOcclusionTypeBasedOnAABB(*(a3 + 32), *(a3 + 24), a1 + 39);
    *a4 = 1;
    *(a4 + 1) = result;
    *(a4 + 5) = BYTE4(result);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void re::ecs2::OcclusionManager::setCameraPoseForCurrentFrame(uint64_t a1, simd_float4x4 *a2)
{
  v2 = a2->columns[0];
  v3 = a2->columns[1];
  v4 = a2->columns[3];
  *(a1 + 592) = a2->columns[2];
  *(a1 + 608) = v4;
  *(a1 + 560) = v2;
  *(a1 + 576) = v3;
  *(a1 + 624) = __invert_f4(*a2);
}

__n128 re::ecs2::OcclusionManager::getCameraPoseForCurrentFrame@<Q0>(re::ecs2::OcclusionManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 36);
  *a2 = *(this + 35);
  *(a2 + 16) = v2;
  result = *(this + 37);
  v4 = *(this + 38);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

re::ecs2::OcclusionManager *re::ecs2::OcclusionManager::OcclusionManager(re::ecs2::OcclusionManager *this, re::RenderManager *a2, re::TransformService *a3)
{
  *this = &unk_1F5CD3268;
  *(this + 1) = a2;
  *(this + 2) = a3;
  re::ecs2::OcclusionManagerStateTracking::OcclusionManagerStateTracking((this + 24));
  *(this + 384) = 0;
  *(this + 392) = 0;
  *(this + 416) = 0;
  *(this + 272) = 0;
  *(this + 35) = xmmword_1E3047670;
  *(this + 36) = xmmword_1E3047680;
  *(this + 37) = xmmword_1E30476A0;
  *(this + 38) = xmmword_1E30474D0;
  *(this + 39) = xmmword_1E3047670;
  *(this + 40) = xmmword_1E3047680;
  *(this + 41) = xmmword_1E30476A0;
  *(this + 42) = xmmword_1E30474D0;
  return this;
}

void re::ecs2::OcclusionManagerStateTracking::~OcclusionManagerStateTracking(re::ecs2::OcclusionManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
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
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 32 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 32 * v25) = *(v7 + 32 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 32 * v6) = *(a1 + 92);
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

void re::ecs2::OcclusionManager::~OcclusionManager(re::ecs2::OcclusionManager *this)
{
  re::ecs2::OcclusionManager::~OcclusionManager(this);

  JUMPOUT(0x1E6906520);
}

{
  if (*(this + 392) == 1)
  {
    re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(this + 50);
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::~HierarchyStateTracking(this + 3);
}

uint64_t re::ecs2::OcclusionManager::registerScene(re::ecs2::OcclusionManager *this, re::ecs2::Scene *a2)
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

  v4 = (this + 24);
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
      *v10 = &unk_1F5CD3390;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
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
      re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CD3498;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
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
  *v26 = &unk_1F5CD34F0;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
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
  *v32 = &unk_1F5CD3548;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 176, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 14);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 5) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 6);
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

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 32, v40, v38, &v50, &v50);
  ++*(this + 18);
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

uint64_t re::ecs2::OcclusionManager::unregisterScene(re::ecs2::OcclusionManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v13);
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
        (*(*(this + 3) + 40))(this + 24);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 176, &v13);
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

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 176, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CD3350;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 19));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD33E8;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD3440;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD33E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD33E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3440;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3440;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3498;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3498;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD34F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD34F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3548;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3548;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

void *re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}