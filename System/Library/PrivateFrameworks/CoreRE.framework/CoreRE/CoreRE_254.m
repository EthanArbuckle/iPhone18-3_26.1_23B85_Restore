uint64_t physx::Sc::Scene::setSimulationEventCallback(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (!*(result + 4240))
    {
      v2 = *(result + 4092);
      if (v2)
      {
        v3 = *(result + 4048);
        do
        {
          v4 = *v3++;
          *(*v4 + 180) |= 0x40u;
          --v2;
        }

        while (v2);
      }
    }
  }

  *(result + 4240) = a2;
  return result;
}

uint64_t (***physx::Sc::Scene::release(physx::Sc::Scene *this))(void)
{
  ++*(this + 498);
  *(this + 556) = 0;
  v2 = *(this + 499);
  if (v2)
  {
    physx::Sc::NPhaseCore::~NPhaseCore(*(this + 499));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  *(this + 499) = 0;
  if (*(this + 500))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 500) = 0;
  v3 = *(this + 538);
  if (v3)
  {
    v4 = *(v3 + 80);
    v5 = *(this + 540);
    (**v3)(*(this + 538));
    physx::Cm::PreallocatingRegionManager::deallocateMemory(v5, v3);
    if (v4)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
    }
  }

  physx::Sc::Scene::postReportsCleanup(this);
  v6 = *(this + 230);
  if (v6)
  {
    v7 = *(v6 + 1784);
    if (v7)
    {
      (*(*v7 + 16))(v7);
      v6 = *(this + 230);
      *(v6 + 1784) = 0;
    }

    v8 = *(v6 + 1776);
    if (v8)
    {
      (*(*v8 + 16))(v8);
      *(*(this + 230) + 1776) = 0;
    }
  }

  v9 = *(this + 257);
  if (v9)
  {
    if (*(v9 + 632))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v9 + 576))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v9 + 556))
    {
      v127 = 0;
      v128 = 0;
      v10 = *(v9 + 568);
      if (v10)
      {
        do
        {
          v126 = v10;
          v11 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v10;
            LODWORD(v128) = v11 + 1;
          }

          v10 = **(v9 + 568);
          *(v9 + 568) = v10;
        }

        while (v10);
        v12 = v127;
        v13 = v128;
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>(v12, v13);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>(*(v9 + 536), *(v9 + 544));
      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v127)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }
    }

    v14 = *(v9 + 536);
    v15 = *(v9 + 544);
    if (v15)
    {
      v16 = 8 * v15;
      do
      {
        if (*v14)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        ++v14;
        v16 -= 8;
      }

      while (v16);
      v14 = *(v9 + 536);
    }

    v17 = *(v9 + 548);
    if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0)
    {
      if (v14 == (v9 + 16))
      {
        *(v9 + 528) = 0;
      }

      else if (v14)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v14);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v9);
  }

  *(this + 257) = 0;
  v18 = *(this + 261);
  if (v18)
  {
    v19 = *(v18 + 60);
    if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0 && *(v18 + 48) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v21 = *(v18 + 44);
    if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(v18 + 32) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v23 = *(v18 + 28);
    if ((v23 & 0x80000000) == 0 && (v23 & 0x7FFFFFFF) != 0 && *(v18 + 16) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v25 = *(v18 + 12);
    if ((v25 & 0x80000000) == 0 && (v25 & 0x7FFFFFFF) != 0 && *v18)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v18);
  }

  *(this + 261) = 0;
  v26 = *(this + 258);
  if (v26)
  {
    v27 = *(v26 + 20);
    if ((v27 & 0x80000000) == 0 && (v27 & 0x7FFFFFFF) != 0 && *(v26 + 8) != 0)
    {
      (*(**v26 + 24))();
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v26);
  }

  *(this + 258) = 0;
  v29 = *(this + 1042);
  if (v29)
  {
    for (i = 0; i < v29; ++i)
    {
      v31 = *(this + 520);
      if (*(v31 + 8 * i))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v31 = *(this + 520);
        v29 = *(this + 1042);
      }

      *(v31 + 8 * i) = 0;
    }
  }

  v32 = *(this + 545);
  if (v32)
  {
    if (*(v32 + 548))
    {
      v127 = 0;
      v128 = 0;
      v33 = *(v32 + 560);
      if (v33)
      {
        do
        {
          v126 = v33;
          v34 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v33;
            LODWORD(v128) = v34 + 1;
          }

          v33 = **(v32 + 560);
          *(v32 + 560) = v33;
        }

        while (v33);
        v35 = v127;
        v36 = v128;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>(v35, v36);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>(*(v32 + 528), *(v32 + 536));
      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v127)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }
    }

    v37 = *(v32 + 528);
    v38 = *(v32 + 536);
    if (v38)
    {
      v39 = 8 * v38;
      do
      {
        if (*v37)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        ++v37;
        v39 -= 8;
      }

      while (v39);
      v37 = *(v32 + 528);
    }

    v40 = *(v32 + 540);
    if ((v40 & 0x80000000) == 0 && (v40 & 0x7FFFFFFF) != 0)
    {
      if (v37 == (v32 + 8))
      {
        *(v32 + 520) = 0;
      }

      else if (v37)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v37);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v32);
  }

  v41 = *(this + 542);
  if (v41)
  {
    if (*(v41 + 548))
    {
      v127 = 0;
      v128 = 0;
      v42 = *(v41 + 560);
      if (v42)
      {
        do
        {
          v126 = v42;
          v43 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v42;
            LODWORD(v128) = v43 + 1;
          }

          v42 = **(v41 + 560);
          *(v41 + 560) = v42;
        }

        while (v42);
        v44 = v127;
        v45 = v128;
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>(v44, v45);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>(*(v41 + 528), *(v41 + 536));
      v46 = *(v41 + 536);
      v47 = v127;
      if (v46)
      {
        v48 = *(v41 + 528);
        v49 = &v48[v46];
        do
        {
          v50 = *(v41 + 544);
          if (v50)
          {
            v51 = *v48;
            v52 = v50 << 7;
            do
            {
              if (v47 != &v127[v128] && v51 == *v47)
              {
                ++v47;
              }

              else
              {
                physx::Sc::ConstraintSim::~ConstraintSim(v51);
              }

              v51 = (v51 + 128);
              v52 -= 128;
            }

            while (v52);
          }

          ++v48;
        }

        while (v48 != v49);
        v47 = v127;
      }

      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v47 != 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v47);
      }
    }

    v54 = *(v41 + 528);
    v55 = *(v41 + 536);
    if (v55)
    {
      v56 = 8 * v55;
      do
      {
        if (*v54)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        ++v54;
        v56 -= 8;
      }

      while (v56);
      v54 = *(v41 + 528);
    }

    v57 = *(v41 + 540);
    if ((v57 & 0x80000000) == 0 && (v57 & 0x7FFFFFFF) != 0)
    {
      if (v54 == (v41 + 8))
      {
        *(v41 + 520) = 0;
      }

      else if (v54)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v54);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v41);
  }

  v58 = *(this + 546);
  if (v58)
  {
    if (*(v58 + 548))
    {
      v127 = 0;
      v128 = 0;
      v59 = *(v58 + 560);
      if (v59)
      {
        do
        {
          v126 = v59;
          v60 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v59;
            LODWORD(v128) = v60 + 1;
          }

          v59 = **(v58 + 560);
          *(v58 + 560) = v59;
        }

        while (v59);
        v61 = v127;
        v62 = v128;
      }

      else
      {
        v62 = 0;
        v61 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>(v61, v62);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>(*(v58 + 528), *(v58 + 536));
      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v127)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }
    }

    v63 = *(v58 + 528);
    v64 = *(v58 + 536);
    if (v64)
    {
      v65 = 8 * v64;
      do
      {
        if (*v63)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        ++v63;
        v65 -= 8;
      }

      while (v65);
      v63 = *(v58 + 528);
    }

    v66 = *(v58 + 540);
    if ((v66 & 0x80000000) == 0 && (v66 & 0x7FFFFFFF) != 0)
    {
      if (v63 == (v58 + 8))
      {
        *(v58 + 520) = 0;
      }

      else if (v63)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v63);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v58);
  }

  v67 = *(this + 540);
  if (v67)
  {
    physx::Cm::PreallocatingRegionManager::~PreallocatingRegionManager(*(this + 540));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v67);
  }

  v68 = *(this + 539);
  if (v68)
  {
    physx::Cm::PreallocatingRegionManager::~PreallocatingRegionManager(*(this + 539));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v68);
  }

  v69 = *(this + 541);
  if (v69)
  {
    physx::Cm::PreallocatingRegionManager::~PreallocatingRegionManager(*(this + 541));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v69);
  }

  v70 = *(this + 543);
  if (v70)
  {
    if (*(v70 + 548))
    {
      v127 = 0;
      v128 = 0;
      v71 = *(v70 + 560);
      if (v71)
      {
        do
        {
          v126 = v71;
          v72 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v71;
            LODWORD(v128) = v72 + 1;
          }

          v71 = **(v70 + 560);
          *(v70 + 560) = v71;
        }

        while (v71);
        v73 = v127;
        v74 = v128;
      }

      else
      {
        v74 = 0;
        v73 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>(v73, v74);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>(*(v70 + 528), *(v70 + 536));
      v75 = *(v70 + 536);
      if (v75)
      {
        v76 = *(v70 + 528);
        v77 = &v76[v75];
        v78 = v127;
        do
        {
          v79 = *(v70 + 544);
          if (v79)
          {
            v80 = *v76;
            v81 = 320 * v79;
            v82 = *v76;
            do
            {
              if (v78 != &v127[v128] && v82 == *v78)
              {
                ++v78;
              }

              else
              {
                (**v82)(v82);
              }

              v82 = (v82 + 320);
              v80 = (v80 + 320);
              v81 -= 320;
            }

            while (v81);
          }

          ++v76;
        }

        while (v76 != v77);
      }

      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v127)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v127 - *(v127 - 1));
      }
    }

    v83 = *(v70 + 528);
    v84 = *(v70 + 536);
    if (v84)
    {
      v85 = 8 * v84;
      do
      {
        if (*v83)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v83 - *(*v83 - 8));
        }

        v83 += 8;
        v85 -= 8;
      }

      while (v85);
      v83 = *(v70 + 528);
    }

    v86 = *(v70 + 540);
    if ((v86 & 0x80000000) == 0 && (v86 & 0x7FFFFFFF) != 0)
    {
      if (v83 == (v70 + 8))
      {
        *(v70 + 520) = 0;
      }

      else if (v83)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, &v83[-*(v83 - 1)]);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v70);
  }

  v87 = *(this + 544);
  if (v87)
  {
    if (*(v87 + 548))
    {
      v127 = 0;
      v128 = 0;
      v88 = *(v87 + 560);
      if (v88)
      {
        do
        {
          v126 = v88;
          v89 = v128;
          if ((HIDWORD(v128) & 0x7FFFFFFFu) <= v128)
          {
            physx::shdfnd::Array<void *,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::growAndPushBack(&v127, &v126);
          }

          else
          {
            v127[v128] = v88;
            LODWORD(v128) = v89 + 1;
          }

          v88 = **(v87 + 560);
          *(v87 + 560) = v88;
        }

        while (v88);
        v90 = v127;
        v91 = v128;
      }

      else
      {
        v91 = 0;
        v90 = 0;
      }

      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>(v90, v91);
      physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>(*(v87 + 528), *(v87 + 536));
      v92 = *(v87 + 536);
      if (v92)
      {
        v93 = *(v87 + 528);
        v94 = &v93[v92];
        v95 = v127;
        do
        {
          v96 = *(v87 + 544);
          if (v96)
          {
            v97 = *v93;
            v98 = 896 * v96;
            v99 = *v93;
            do
            {
              if (v95 != &v127[v128] && v99 == *v95)
              {
                ++v95;
              }

              else
              {
                (**v99)(v99);
              }

              v99 = (v99 + 896);
              v97 = (v97 + 896);
              v98 -= 896;
            }

            while (v98);
          }

          ++v93;
        }

        while (v93 != v94);
      }

      if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x7FFFFFFF00000000) != 0 && v127)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v127 - *(v127 - 1));
      }
    }

    v100 = *(v87 + 528);
    v101 = *(v87 + 536);
    if (v101)
    {
      v102 = 8 * v101;
      do
      {
        if (*v100)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v100 - *(*v100 - 8));
        }

        v100 += 8;
        v102 -= 8;
      }

      while (v102);
      v100 = *(v87 + 528);
    }

    v103 = *(v87 + 540);
    if ((v103 & 0x80000000) == 0 && (v103 & 0x7FFFFFFF) != 0)
    {
      if (v100 == (v87 + 8))
      {
        *(v87 + 520) = 0;
      }

      else if (v100)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, &v100[-*(v100 - 1)]);
      }
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v87);
  }

  v104 = *(this + 268);
  v105 = *(v104 + 12);
  if (v105 < 0 || ((v105 & 0x7FFFFFFF) != 0 ? (v106 = *v104 == 0) : (v106 = 1), v106 || ((*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v104), *(this + 268))))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v107 = *(this + 537);
  if (v107)
  {
    v108 = *(v107 + 60);
    if ((v108 & 0x80000000) == 0 && (v108 & 0x7FFFFFFF) != 0 && *(v107 + 48) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v107 + 32) && (*(v107 + 40) & 0x80000000) == 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v107 + 32) = 0;
    v110 = *(v107 + 28);
    if ((v110 & 0x80000000) == 0 && (v110 & 0x7FFFFFFF) != 0 && *(v107 + 16))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v107);
  }

  v111 = *(this + 536);
  if (v111)
  {
    v112 = *(v111 + 60);
    if ((v112 & 0x80000000) == 0 && (v112 & 0x7FFFFFFF) != 0 && *(v111 + 48) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v111 + 32) && (*(v111 + 40) & 0x80000000) == 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v111 + 32) = 0;
    v114 = *(v111 + 28);
    if ((v114 & 0x80000000) == 0 && (v114 & 0x7FFFFFFF) != 0 && *(v111 + 16))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v111);
  }

  v115 = *(this + 535);
  if (v115)
  {
    v116 = *(v115 + 60);
    if ((v116 & 0x80000000) == 0 && (v116 & 0x7FFFFFFF) != 0 && *(v115 + 48))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v115 + 32) && (*(v115 + 40) & 0x80000000) == 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v115 + 32) = 0;
    v117 = *(v115 + 28);
    if ((v117 & 0x80000000) == 0 && (v117 & 0x7FFFFFFF) != 0 && *(v115 + 16))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v115);
  }

  v118 = *(this + 534);
  if (v118)
  {
    v119 = *(v118 + 60);
    if ((v119 & 0x80000000) == 0 && (v119 & 0x7FFFFFFF) != 0 && *(v118 + 48))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    if (*(v118 + 32) && (*(v118 + 40) & 0x80000000) == 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v118 + 32) = 0;
    v120 = *(v118 + 28);
    if ((v120 & 0x80000000) == 0 && (v120 & 0x7FFFFFFF) != 0 && *(v118 + 16))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v118);
  }

  if (*(this + 532))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Bp::AABBManager::destroy(*(this + 231));
  (*(**(this + 232) + 80))(*(this + 232));
  (*(**(this + 239) + 16))(*(this + 239));
  if (*(this + 239))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  (***(this + 238))(*(this + 238));
  if (*(this + 238))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  (***(this + 236))(*(this + 236));
  physx::PxsCCDContext::destroy(*(this + 233));
  physx::IG::SimpleIslandManager::~SimpleIslandManager(*(this + 235));
  if (*(this + 235))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v121 = *(this + 932);
  if (v121)
  {
    (*(*v121 + 80))(v121);
  }

  v122 = *(this + 230);
  if (v122)
  {
    physx::PxsContext::~PxsContext(*(this + 230));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v122);
    *(this + 230) = 0;
  }

  v123 = *(this + 259);
  v124 = *(v123 + 5);
  if (v124 < 0 || (v124 & 0x7FFFFFFF) == 0 || !v123[1] || ((*(**v123 + 24))(*v123, v123[1]), *(this + 259)))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  result = *(this + 237);
  if (result)
  {
    result = (**result)(result);
    if (*(this + 237))
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 237) = 0;
  }

  return result;
}

void physx::Sc::Scene::postReportsCleanup(physx::Sc::Scene *this)
{
  v2 = *(this + 535);
  v3 = v2;
  if (*(v2 + 56))
  {
    v4 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v2 + 8, *(*(v2 + 48) + 4 * v4++));
    }

    while (v4 < *(v2 + 56));
    v3 = *(this + 535);
  }

  *(v2 + 56) = 0;
  bzero(*(v3 + 32), (4 * *(v3 + 40)));
  v5 = *(this + 536);
  v6 = v5;
  if (*(v5 + 56))
  {
    v7 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v5 + 8, *(*(v5 + 48) + 4 * v7++));
    }

    while (v7 < *(v5 + 56));
    v6 = *(this + 536);
  }

  *(v5 + 56) = 0;
  bzero(*(v6 + 32), (4 * *(v6 + 40)));
  v8 = *(this + 534);
  v9 = v8;
  if (*(v8 + 56))
  {
    v10 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v8 + 8, *(*(v8 + 48) + 4 * v10++));
    }

    while (v10 < *(v8 + 56));
    v9 = *(this + 534);
  }

  *(v8 + 56) = 0;
  v11 = *(v9 + 32);
  v12 = (4 * *(v9 + 40));

  bzero(v11, v12);
}

uint64_t *physx::Sc::Scene::preAllocate(physx::Sc::Scene *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (a3 <= 0x40)
  {
    v10 = 64;
  }

  else
  {
    v10 = a3;
  }

  if ((*(this + 11) & 0x7FFFFFFFu) < v10)
  {
    physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::recreate(this + 32, v10);
  }

  physx::Cm::PreallocatingRegionManager::preAllocate(*(this + 540), a2);
  physx::Cm::PreallocatingRegionManager::preAllocate(*(this + 541), a3);
  v11 = *(this + 539);

  return physx::Cm::PreallocatingRegionManager::preAllocate(v11, a5 + a4);
}

uint64_t physx::Sc::Scene::addToActiveBodyList(uint64_t this, physx::Sc::BodySim *a2)
{
  v3 = this;
  v4 = *(this + 40);
  v5 = *(a2 + 10);
  v10 = v5;
  if ((*(v5 + 44) & 1) != 0 && (v6 = *(this + 48), *(this + 48) = v6 + 1, v6 != v4))
  {
    v7 = *(this + 32);
    v8 = *(v7 + 8 * v6);
    v10 = v8;
    *(*v8 + 184) = v4;
    *(v7 + 8 * v6) = v5;
    v5 = v8;
  }

  else
  {
    v6 = v4;
  }

  if ((*(a2 + 90) & 0x1000) != 0)
  {
    v9 = *(this + 64);
    if ((*(this + 68) & 0x7FFFFFFFu) <= v9)
    {
      this = physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::growAndPushBack(this + 56, &v10);
      v4 = *(v3 + 40);
    }

    else
    {
      *(*(this + 56) + 8 * v9) = v5;
      *(this + 64) = v9 + 1;
    }

    *(a2 + 47) = v9;
  }

  *(a2 + 46) = v6;
  if ((*(v3 + 44) & 0x7FFFFFFFu) <= v4)
  {
    return physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::growAndPushBack(v3 + 32, &v10);
  }

  *(*(v3 + 32) + 8 * v4) = v10;
  *(v3 + 40) = v4 + 1;
  return this;
}

uint64_t physx::Sc::Scene::removeFromActiveBodyList(uint64_t this, physx::Sc::BodySim *a2)
{
  v2 = *(a2 + 46);
  *(a2 + 46) = -2;
  v3 = *(this + 40);
  v4 = *(this + 48);
  if (v2 < v4)
  {
    v5 = v4 - 1;
    *(this + 48) = v4 - 1;
    if (v3 != v4 && v2 < v5)
    {
      v7 = *(this + 32);
      v8 = *(v7 + 8 * v5);
      *(*v8 + 184) = v2;
      *(v7 + 8 * v2) = v8;
      v2 = v5;
    }
  }

  v9 = v3 - 1;
  if ((*(a2 + 90) & 0x1000) != 0)
  {
    v10 = *(a2 + 47);
    *(a2 + 47) = -2;
    v11 = *(this + 64) - 1;
    if (v10 != v11)
    {
      v12 = *(this + 56);
      v13 = *(v12 + 8 * v11);
      *(v12 + 8 * v10) = v13;
      *(*v13 + 188) = v10;
    }

    *(this + 64) = v11;
  }

  if (v2 != v9)
  {
    v14 = *(this + 32);
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v2) = v15;
    *(*v15 + 184) = v2;
  }

  *(this + 40) = v9;
  return this;
}

uint64_t physx::Sc::Scene::registerInteraction(uint64_t this, physx::Sc::Interaction *a2, int a3)
{
  v5 = this;
  v17 = a2;
  v6 = *(a2 + 28);
  v7 = this + 16 * v6;
  v9 = *(v7 + 80);
  v8 = *(v7 + 84);
  *(a2 + 4) = v9;
  v10 = v8 & 0x7FFFFFFF;
  if ((v8 & 0x7FFFFFFF) != 0)
  {
    v11 = v9;
  }

  else
  {
    this = physx::shdfnd::Array<physx::Sc::Interaction *,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>>::recreate(v7 + 72, 0x40u);
    v11 = *(v7 + 80);
    v10 = *(v7 + 84) & 0x7FFFFFFF;
  }

  if (v10 <= v11)
  {
    this = physx::shdfnd::Array<physx::Sc::Interaction *,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>>::growAndPushBack(v7 + 72, &v17);
    if (!a3)
    {
      return this;
    }
  }

  else
  {
    *(*(v7 + 72) + 8 * v11) = a2;
    *(v7 + 80) = v11 + 1;
    if (!a3)
    {
      return this;
    }
  }

  v12 = v5 + 120;
  v13 = *(v5 + 120 + 4 * v6);
  if (v9 > v13)
  {
    v14 = *(v7 + 72);
    v15 = *(v14 + 8 * v9);
    v16 = *(v14 + 8 * v13);
    *(v14 + 8 * v9) = v16;
    *(*(v7 + 72) + 8 * v13) = v15;
    *(v15 + 16) = v13;
    *(v16 + 16) = v9;
    v13 = *(v12 + 4 * v6);
  }

  *(v12 + 4 * v6) = v13 + 1;
  return this;
}

uint64_t physx::Sc::Scene::unregisterInteraction(uint64_t this, physx::Sc::Interaction *a2)
{
  v2 = *(a2 + 28);
  v3 = *(a2 + 4);
  v4 = this + 16 * v2;
  v6 = *(v4 + 72);
  v5 = v4 + 72;
  v7 = *(v5 + 8) - 1;
  v8 = *(v6 + 8 * v7);
  *(v5 + 8) = v7;
  *(v6 + 8 * v3) = v8;
  *(a2 + 4) = -1;
  if (v3 < v7)
  {
    *(*(*v5 + 8 * v3) + 16) = v3;
  }

  v9 = *(this + 120 + 4 * v2);
  if (v3 < v9)
  {
    v10 = v9 - 1;
    *(this + 120 + 4 * v2) = v10;
    if (v10 < *(v5 + 8))
    {
      v11 = *(*v5 + 8 * v3);
      v12 = *(*v5 + 8 * v10);
      *(*v5 + 8 * v3) = v12;
      *(*v5 + 8 * v10) = v11;
      *(v11 + 16) = v10;
      *(v12 + 16) = v3;
    }
  }

  return this;
}

void *physx::Sc::Scene::allocatePointerBlock(physx::Sc::Scene *this, int a2)
{
  HIDWORD(v4) = a2;
  LODWORD(v4) = a2;
  v3 = v4 >> 3;
  if (v3 <= 1)
  {
    if (!v3)
    {
      return 0;
    }

    if (v3 == 1)
    {
      result = *(this + 87);
      if (!result)
      {
        physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,8u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::allocateSlab(this + 136);
        result = *(this + 87);
      }

      *(this + 87) = *result;
      ++*(this + 171);
      return result;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    result = *(this + 158);
    if (!result)
    {
      physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,16u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::allocateSlab(this + 704);
      result = *(this + 158);
    }

    *(this + 158) = *result;
    ++*(this + 313);
  }

  else
  {
    if (v3 != 4)
    {
LABEL_12:
      v6 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 16);

      return v6();
    }

    result = *(this + 229);
    if (!result)
    {
      physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,32u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::allocateSlab(this + 1272);
      result = *(this + 229);
    }

    *(this + 229) = *result;
    ++*(this + 455);
  }

  return result;
}

uint64_t physx::Sc::Scene::deallocatePointerBlock(uint64_t this, void **a2, int a3)
{
  switch(a3)
  {
    case 32:
      if (a2)
      {
        --*(this + 1820);
        *a2 = *(this + 1832);
        *(this + 1832) = a2;
      }

      break;
    case 16:
      if (a2)
      {
        --*(this + 1252);
        *a2 = *(this + 1264);
        *(this + 1264) = a2;
      }

      break;
    case 8:
      if (a2)
      {
        --*(this + 684);
        *a2 = *(this + 696);
        *(this + 696) = a2;
      }

      break;
    default:
      if (a2)
      {
        return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      break;
  }

  return this;
}

void *physx::Sc::Scene::setFilterShaderData(void *this, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = this;
  if (a2)
  {
    if (*(this + 1003) >= a3)
    {
      v17 = this[500];
      v12 = a3;
LABEL_10:
      this = memcpy(v17, a2, v12);
      v9[500] = v17;
      *(v9 + 1002) = a3;
      return this;
    }

    v12 = a3;
    v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 1434);
    if (v13)
    {
      v17 = v13;
      *(v9 + 1003) = a3;
      if (v9[500])
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      goto LABEL_10;
    }

    v18 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v18, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 1443, "Failed to allocate memory for filter shader data!", v14, v15, v16, a9);
  }

  else
  {
    if (this[500])
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v9[500] = 0;
    }

    v9[501] = 0;
  }

  return this;
}

uint64_t physx::Sc::Scene::prepareCollide(physx::Sc::Scene *this)
{
  v2 = this + 4096;
  ++*(this + 499);
  *(this + 7472) = 0;
  *(this + 538) = *(*(this + 535) + 56);
  (*(*(*(this + 230) + 296) + 88))(*(this + 230) + 296);
  *(this + 556) = 0;
  if (v2[564] == 1)
  {
    v2[564] = 0;
    v3 = *(this + 230);
    if (v3[454] != 0.0 || v3[455] != 0.0 || v3[456] != 0.0 || v3[457] != 0.0)
    {
      *(this + 1066) |= 4u;
    }
  }

  return physx::Sc::Scene::visualizeStartStep(this);
}

uint64_t physx::Sc::Scene::visualizeStartStep(uint64_t this)
{
  if (*(this + 4656) != 0.0)
  {
    v21 = v1;
    v22 = v2;
    v3 = this;
    v4 = *(this + 1840);
    memset(v9, 0, sizeof(v9));
    v11 = 0;
    v12 = 0;
    v10 = 0x3F80000000000000;
    v13 = 1065353216;
    v15 = 0;
    v14 = 0;
    v16 = 1065353216;
    v17 = 0;
    v18 = 0;
    v19 = 1065353216;
    v20 = v4 + 296;
    if (*(v4 + 1848) != 0.0)
    {
      physx::Bp::AABBManager::visualize(*(this + 1848), v9);
    }

    v5 = *(v3 + 2052);
    if (v5)
    {
      v6 = *(v3 + 2008);
      do
      {
        v7 = *v6++;
        physx::Sc::ConstraintSim::visualize(*(v7 + 80), *(v3 + 1840) + 296);
        --v5;
      }

      while (v5);
    }

    (*(**(*(v3 + 1840) + 1776) + 168))(v8);
    return physx::Sc::NPhaseCore::visualize(*(v3 + 3992), v9, v8);
  }

  return this;
}

uint64_t physx::Sc::Scene::simulate(uint64_t this, float a2, physx::PxBaseTask *a3)
{
  if (a2 != 0.0)
  {
    v4 = this;
    *(this + 1984) = a2;
    v5 = 1.0 / a2;
    v6 = a2 <= 0.0;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v5;
    }

    *(this + 1988) = v7;
    v8 = (this + 7304);
    *(this + 7336) = 1;
    *(this + 7328) = a3;
    if (a3)
    {
      (*(*a3 + 32))(a3);
      *(v4 + 7320) = *(*(v4 + 7328) + 16);
    }

    physx::Sc::Scene::prepareCollide(v4);
    physx::Sc::Scene::stepSetupCollide(v4, v8, v9, v10, v11, v12, v13, v14);
    *(v4 + 7392) = 1;
    *(v4 + 7384) = v8;
    (*(*(v4 + 7304) + 32))(v8);
    *(v4 + 7376) = *(*(v4 + 7384) + 16);
    (*(**(v4 + 7320) + 144))(*(v4 + 7320), v8);
    v15 = *(**(v4 + 7376) + 144);

    return v15();
  }

  return this;
}

void *physx::Sc::Scene::stepSetupCollide(physx::Sc::Scene *this, physx::PxBaseTask *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  physx::Sc::ConstraintProjectionManager::processPendingUpdates(*(this + 257), *(this + 230), a3, a4, a5, a6, a7, a8);
  physx::Sc::Scene::kinematicsSetup(this, a2);
  (*(**(*(this + 230) + 1776) + 168))(v11);
  result = physx::Sc::NPhaseCore::updateDirtyInteractions(*(this + 499), v11, (*(this + 1067) >> 3) & 1);
  *(this + 1066) &= 0xFFFFFFF9;
  return result;
}

uint64_t physx::Sc::Scene::advance(uint64_t this, float a2, physx::PxBaseTask *a3)
{
  if (a2 != 0.0)
  {
    v4 = this;
    *(this + 1984) = a2;
    v5 = 1.0 / a2;
    v6 = a2 <= 0.0;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v5;
    }

    *(this + 1988) = v7;
    *(this + 7336) = 1;
    *(this + 7328) = a3;
    if (a3)
    {
      (*(*a3 + 32))(a3);
      v4[915] = *(v4[916] + 16);
    }

    physx::Sc::Scene::kinematicsSetup(v4, (v4 + 913));
    v8 = *(*v4[915] + 144);

    return v8();
  }

  return this;
}

uint64_t physx::Sc::Scene::collide(physx::Sc::Scene *this, float a2, physx::PxBaseTask *a3)
{
  *(this + 496) = a2;
  physx::Sc::Scene::prepareCollide(this);
  physx::Sc::Scene::stepSetupCollide(this, a3, v5, v6, v7, v8, v9, v10);
  bzero((*(this + 230) + 1936), 0x288uLL);
  *(this + 1848) = 1;
  *(this + 923) = a3;
  if (a3)
  {
    (*(*a3 + 32))(a3);
    v11 = *(*(this + 923) + 16);
    *(this + 922) = v11;
  }

  else
  {
    v11 = *(this + 922);
  }

  v12 = *(*v11 + 144);

  return v12();
}

uint64_t physx::Sc::Scene::endSimulation(physx::Sc::Scene *this)
{
  (*(**(*(this + 230) + 1776) + 168))(v3);
  physx::Sc::NPhaseCore::fireCustomFilteringCallbacks(*(this + 499), v3, (*(this + 1067) & 8) != 0);
  *(*(this + 499) + 40) = *(*(this + 499) + 32);
  result = (*(**(this + 238) + 80))(*(this + 238));
  *(this + 498) = (*(this + 498) + 1) & 0x7FFFFFFF;
  ++*(this + 499);
  return result;
}

uint64_t physx::Sc::Scene::flush(physx::Sc::Scene *this, int a2)
{
  if (a2)
  {
    physx::Sc::Scene::fireQueuedContactCallbacks(this, 1);
    v3 = *(this + 499);
    v3[9].i32[0] = 0;
    v3[10].i32[1] = -1;
    physx::Sc::NPhaseCore::clearContactReportActorPairs(v3, 1);
    physx::Sc::Scene::fireTriggerCallbacks(this);
  }

  else
  {
    physx::Sc::NPhaseCore::clearContactReportActorPairs(*(this + 499), 1);
  }

  physx::Sc::Scene::postReportsCleanup(this);
  v4 = *(this + 499);
  *(v4 + 72) = 0;
  *(v4 + 84) = -1;
  v5 = *(v4 + 80);
  if (*(v4 + 76) != v5)
  {
    if (*(v4 + 64))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v5 = *(v4 + 80);
    }

    if (v5)
    {
      v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScContactReportBuffer.h", 169);
      v5 = *(v4 + 80);
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 64) = v6;
    *(v4 + 76) = v5;
  }

  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 2128);
  physx::shdfnd::Array<physx::PxTriggerPair,physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>>::recreate(this + 2128, *(this + 534));
  v7 = *(this + 268);
  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(v7);
  physx::shdfnd::Array<physx::Sc::TriggerPairExtraData,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>>::recreate(v7, *(v7 + 8));
  *(this + 556) = 0;
  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 2216);
  physx::shdfnd::Array<physx::Sc::ConstraintCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>>::recreate(this + 2216, *(this + 556));
  physx::Sc::Scene::clearSleepWakeBodies(this);
  physx::shdfnd::Array<physx::Sc::Client *,physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>>::recreate(this + 4160, *(this + 1042));
  v8 = *(this + 535);
  if (*(v8 + 56))
  {
    v9 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v8 + 8, *(*(v8 + 48) + 4 * v9++));
    }

    while (v9 < *(v8 + 56));
  }

  *(v8 + 56) = 0;
  v15 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v8 + 48, 0, &v15);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v8 + 48, *(v8 + 56));
  v10 = *(this + 536);
  if (*(v10 + 56))
  {
    v11 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v10 + 8, *(*(v10 + 48) + 4 * v11++));
    }

    while (v11 < *(v10 + 56));
  }

  *(v10 + 56) = 0;
  v16 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v10 + 48, 0, &v16);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v10 + 48, *(v10 + 56));
  physx::Sc::Scene::processLostTouchPairs(this);
  physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(this + 4384);
  physx::shdfnd::Array<physx::Sc::Scene::SimpleBodyPair,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>>::recreate(this + 4384, *(this + 1098));
  physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::recreate(this + 32, *(this + 10));
  v12 = this + 72;
  v13 = 3;
  do
  {
    physx::shdfnd::Array<physx::Sc::Interaction *,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>>::recreate(v12, *(v12 + 2));
    v12 += 16;
    --v13;
  }

  while (v13);
  return physx::PxcNpMemBlockPool::releaseUnusedBlocks(*(this + 230) + 40);
}

uint64_t physx::Sc::Scene::fireQueuedContactCallbacks(uint64_t this, char a2)
{
  if (*(this + 4240))
  {
    v2 = this;
    if (a2)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(this + 2152) == *(*(this + 4280) + 56) ? 1 : 17;
    }

    v4 = *(this + 3992);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 8) + 8;
      do
      {
        if (v6 < (v5 - 1))
        {
          _X8 = *v7;
          __asm { PRFM            #0, [X8] }
        }

        v14 = *(v7 - 8);
        v15 = v14[3];
        ++v6;
        if ((v15[5] & 2) == 0)
        {
          if (v6 < v5)
          {
            _X8 = *(*v7 + 24);
            __asm { PRFM            #0, [X8] }
          }

          v20[13] = 0;
          physx::Sc::Scene::finalizeContactStreamAndCreateHeader(v2, v20, v14, v15, v3);
          this = (*(**(v2 + 4240) + 24))(*(v2 + 4240), v20, v21, v22);
          v15[2] = v15[3];
          v18 = v15[4];
          _ZF = (v18 & 0xF) == 0;
          v19 = v18 >> 4;
          if (!_ZF)
          {
            LOWORD(v19) = v19 + 1;
          }

          v15[5] = v15[5] & 0x1F | (32 * v19);
        }

        v7 += 8;
      }

      while (v5 != v6);
    }
  }

  return this;
}

uint64_t physx::Sc::Scene::fireTriggerCallbacks(uint64_t this)
{
  v1 = this;
  v2 = *(this + 2136);
  if (v2)
  {
    this = *(this + 4240);
    if (this)
    {
      v3 = *(v1 + 4280);
      v4 = *(v3 + 56);
      v5 = *(v1 + 2128);
      if (v4)
      {
        v6 = 0;
        v7 = *(v1 + 2152);
        v8 = 36;
        do
        {
          if (v7 < v4 || (*(v5 + v8) & 4) != 0)
          {
            v9 = **(v1 + 2144);
            v10 = *(v3 + 40) & 0x7FFFFFFF;
            v11 = *(v9 + v6) >> 5 < v10 && ((*(*(v3 + 32) + 4 * (*(v9 + v6) >> 5)) >> *(v9 + v6)) & 1) != 0;
            v12 = *(v9 + v6 + 4);
            if (v12 >> 5) < v10 && ((*(*(v3 + 32) + 4 * (v12 >> 5)) >> v12))
            {
              v11 |= 2u;
            }

            *(v5 + v8) = v11;
          }

          v6 += 12;
          v8 += 40;
        }

        while (12 * v2 != v6);
      }

      this = (*(*this + 32))(this, v5);
    }
  }

  *(v1 + 2136) = 0;
  *(*(v1 + 2144) + 8) = 0;
  return this;
}

void *physx::Sc::Scene::clearSleepWakeBodies(physx::Sc::Scene *this)
{
  v2 = *(this + 1023);
  if (v2)
  {
    v3 = *(this + 506);
    do
    {
      v4 = *v3++;
      *(*v4 + 180) &= 0xFF8Fu;
      --v2;
    }

    while (v2);
  }

  v5 = *(this + 1037);
  if (v5)
  {
    v6 = *(this + 513);
    do
    {
      v7 = *v6++;
      *(*v7 + 180) &= 0xFF4Fu;
      --v5;
    }

    while (v5);
  }

  physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(this + 4040);
  result = physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(this + 4096);
  *(this + 2076) = 257;
  return result;
}

void physx::Sc::Scene::processLostTouchPairs(physx::Sc::Scene *this)
{
  if (*(this + 1098))
  {
    v2 = 0;
    v3 = 0;
    while (1)
    {
      v4 = *(this + 548);
      v5 = v4 + v2;
      v6 = *(this + 1102) & 0x7FFFFFFF;
      v7 = *(v4 + v2 + 16) >> 5 < v6 && (*(*(this + 550) + 4 * (*(v4 + v2 + 16) >> 5)) >> *(v4 + v2 + 16)) & 1;
      v8 = *(v5 + 20) >> 5 < v6 && (*(*(this + 550) + 4 * (*(v5 + 20) >> 5)) >> *(v5 + 20)) & 1;
      if (v7 || v8)
      {
        break;
      }

      v9 = *(v4 + v2);
      if (*(v9 + 46) < 0xFFFFFFFE != *(*(v4 + v2 + 8) + 184) < 0xFFFFFFFE)
      {
        physx::Sc::BodySim::internalWakeUp(v9, 0.4);
LABEL_16:
        physx::Sc::BodySim::internalWakeUp(*(*(this + 548) + v2 + 8), 0.4);
      }

LABEL_17:
      ++v3;
      v2 += 24;
      if (v3 >= *(this + 1098))
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      physx::Sc::BodySim::internalWakeUp(*v5, 0.4);
    }

    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  *(this + 1098) = 0;
  v10 = *(this + 550);
  v11 = (4 * *(this + 1102));

  bzero(v10, v11);
}

void physx::Sc::Scene::removeBody(physx::Sc::Scene *this, physx::Sc::BodySim *a2)
{
  v4 = *(a2 + 25);
  if (v4)
  {
    physx::Sc::ConstraintProjectionManager::invalidateGroup(*(this + 257), v4, 0);
  }

  v5 = *(a2 + 10);
  physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 505, v5);
  physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 512, v5);
  if (*(a2 + 46) <= 0xFFFFFFFD && (*(v5 + 44) & 0x10) != 0)
  {
    if (*(this + 1885))
    {
      v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
      v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
      v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
      v9 = (*(this + 939) + 4 * ((*(this + 1881) - 1) & ((v8 >> 31) ^ v8)));
      v10 = *v9;
      if (v10 != -1)
      {
        v11 = *(this + 937);
        v12 = *(this + 938);
        if (*(v11 + 8 * v10) == a2)
        {
LABEL_11:
          *v9 = *(v12 + 4 * v10);
          v14 = vadd_s32(*(this + 7536), 0xFFFFFFFF00000001);
          *(this + 942) = v14;
          if (v10 != v14.i32[1])
          {
            *(v11 + 8 * v10) = *(v11 + 8 * v14.u32[1]);
            v15 = *(this + 938);
            *(v15 + 4 * v10) = *(v15 + 4 * v14.u32[1]);
            v16 = *(*(this + 937) + 8 * v10);
            v17 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
            v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
            v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
            v20 = (*(this + 939) + 4 * ((*(this + 1881) - 1) & ((v19 >> 31) ^ v19)));
            v21 = *(this + 1885);
            v22 = *v20;
            if (v22 != v21)
            {
              do
              {
                v23 = v22;
                v22 = *(v15 + 4 * v22);
              }

              while (v22 != v21);
              v20 = (v15 + 4 * v23);
            }

            *v20 = v10;
          }

          --*(this + 1883);
        }

        else
        {
          while (1)
          {
            v13 = v10;
            v10 = *(v12 + 4 * v10);
            if (v10 == -1)
            {
              break;
            }

            if (*(v11 + 8 * v10) == a2)
            {
              v9 = (v12 + 4 * v13);
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  v24 = *(a2 + 22);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 4400, v24 + 1);
  *(*(this + 550) + ((v24 >> 3) & 0x1FFFFFFC)) |= 1 << v24;
}

void *physx::Sc::Scene::addConstraint(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[542];
  v9 = *(v8 + 560);
  if (!v9)
  {
    physx::shdfnd::PoolBase<physx::Sc::ConstraintSim,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::allocateSlab(v8);
    v9 = *(v8 + 560);
  }

  *(v8 + 560) = *v9;
  ++*(v8 + 548);
  physx::Sc::ConstraintSim::ConstraintSim(v9, a2, a3, a4, a1);
  v11 = a2;
  v12 = 0;
  result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintCore *,physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a1 + 250, &v11, &v12);
  if ((v12 & 1) == 0)
  {
    *result = v11;
  }

  return result;
}

void physx::Sc::Scene::removeConstraint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    v5 = *(v4 + 13);
    if (!v5)
    {
      v5 = *(v4 + 14);
    }

    v6 = *(v5 + 200);
    if (v6)
    {
      physx::Sc::ConstraintProjectionManager::invalidateGroup(*(a1 + 2056), v6, v4);
    }

    v7 = *(a1 + 4336);
    physx::Sc::ConstraintSim::~ConstraintSim(v4);
    --*(v7 + 548);
    *v4 = *(v7 + 560);
    *(v7 + 560) = v4;
  }

  if (*(a1 + 2052))
  {
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = (*(a1 + 2024) + 4 * ((*(a1 + 2036) - 1) & ((v10 >> 31) ^ v10)));
    v12 = *v11;
    if (v12 != -1)
    {
      v13 = *(a1 + 2008);
      v14 = *(a1 + 2016);
      if (*(v13 + 8 * v12) == a2)
      {
LABEL_13:
        *v11 = *(v14 + 4 * v12);
        v16 = vadd_s32(*(a1 + 2048), 0xFFFFFFFF00000001);
        *(a1 + 2048) = v16;
        if (v12 != v16.i32[1])
        {
          *(v13 + 8 * v12) = *(v13 + 8 * v16.u32[1]);
          v17 = *(a1 + 2016);
          *(v17 + 4 * v12) = *(v17 + 4 * v16.u32[1]);
          v18 = *(*(a1 + 2008) + 8 * v12);
          v19 = (~(v18 << 32) + v18) ^ ((~(v18 << 32) + v18) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = (*(a1 + 2024) + 4 * ((*(a1 + 2036) - 1) & ((v21 >> 31) ^ v21)));
          v23 = *(a1 + 2052);
          v24 = *v22;
          if (v24 != v23)
          {
            do
            {
              v25 = v24;
              v24 = *(v17 + 4 * v24);
            }

            while (v24 != v23);
            v22 = (v17 + 4 * v25);
          }

          *v22 = v12;
        }

        --*(a1 + 2044);
      }

      else
      {
        while (1)
        {
          v15 = v12;
          v12 = *(v14 + 4 * v12);
          if (v12 == -1)
          {
            break;
          }

          if (*(v13 + 8 * v12) == a2)
          {
            v11 = (v14 + 4 * v15);
            goto LABEL_13;
          }
        }
      }
    }
  }
}

void *physx::Sc::Scene::addArticulation(int32x2_t *this, physx::Sc::ArticulationCore *a2, physx::Sc::BodySim **a3)
{
  v6 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationSim>::getName() [T = physx::Sc::ArticulationSim]";
  }

  else
  {
    v7 = "<allocation names disabled>";
  }

  v8 = (*(*(v6 + 24) + 16))(v6 + 24, 104, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 1746);
  if (physx::Sc::ArticulationSim::ArticulationSim(v8, a2, this, a3) && !*v8)
  {
    physx::Sc::ArticulationSim::~ArticulationSim(v8);
    v10 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    return v10();
  }

  else
  {
    v11 = a2;
    v12 = 0;
    result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintCore *,physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 270, &v11, &v12);
    if ((v12 & 1) == 0)
    {
      *result = v11;
    }
  }

  return result;
}

int32x2_t *physx::Sc::Scene::removeArticulation(int32x2_t *this, physx::Sc::ArticulationSim **a2)
{
  v3 = this;
  v4 = *a2;
  if (*a2)
  {
    physx::Sc::ArticulationSim::~ArticulationSim(*a2);
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  if (v3[276].i32[1])
  {
    v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = (*&v3[273] + 4 * ((v3[274].i32[1] - 1) & ((v7 >> 31) ^ v7)));
    v9 = *v8;
    if (v9 != -1)
    {
      v10 = v3[271];
      v11 = v3[272];
      if (*(*&v10 + 8 * v9) == a2)
      {
LABEL_9:
        *v8 = *(*&v11 + 4 * v9);
        v13 = vadd_s32(v3[276], 0xFFFFFFFF00000001);
        v3[276] = v13;
        if (v9 != v13.i32[1])
        {
          *(*&v10 + 8 * v9) = *(*&v10 + 8 * v13.u32[1]);
          v14 = v3[272];
          *(*&v14 + 4 * v9) = *(*&v14 + 4 * v13.u32[1]);
          v15 = *(*&v3[271] + 8 * v9);
          v16 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = (*&v3[273] + 4 * ((v3[274].i32[1] - 1) & ((v18 >> 31) ^ v18)));
          v20 = v3[276].u32[1];
          v21 = *v19;
          if (v21 != v20)
          {
            do
            {
              v22 = v21;
              v21 = *(*&v14 + 4 * v21);
            }

            while (v21 != v20);
            v19 = (*&v14 + 4 * v22);
          }

          *v19 = v9;
        }

        --v3[275].i32[1];
      }

      else
      {
        while (1)
        {
          v12 = v9;
          v9 = *(*&v11 + 4 * v9);
          if (v9 == -1)
          {
            break;
          }

          if (*(*&v10 + 8 * v9) == a2)
          {
            v8 = (*&v11 + 4 * v12);
            goto LABEL_9;
          }
        }
      }
    }
  }

  return this;
}

uint64_t physx::Sc::Scene::addArticulationJoint(uint64_t a1, uint64_t a2, physx::Sc::ArticulationSim ***a3, physx::Sc::BodySim **a4)
{
  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ArticulationJointSim>::getName() [T = physx::Sc::ArticulationJointSim]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = (*(*(v7 + 24) + 16))(v7 + 24, 40, v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 1766);
  v10 = *a3;
  v11 = *a4;

  return physx::Sc::ArticulationJointSim::ArticulationJointSim(v9, a2, v10, v11);
}

uint64_t physx::Sc::Scene::removeArticulationJoint(uint64_t a1, physx::Sc::ArticulationJointSim **a2)
{
  if (*a2)
  {
    physx::Sc::ArticulationJointSim::~ArticulationJointSim(*a2);
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    return v2();
  }

  return result;
}

uint64_t physx::Sc::Scene::addBrokenConstraint(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v2 = *(result + 2224);
  if ((*(result + 2228) & 0x7FFFFFFFu) <= v2)
  {
    return physx::shdfnd::Array<physx::Sc::ConstraintCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>>::growAndPushBack(result + 2216, &v3);
  }

  *(*(result + 2216) + 8 * v2) = a2;
  *(result + 2224) = v2 + 1;
  return result;
}

void *physx::Sc::Scene::addActiveBreakableConstraint(int32x2_t *a1, uint64_t a2)
{
  v4 = a2;
  v5 = 0;
  result = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a1 + 279, &v4, &v5);
  v3 = v4;
  if ((v5 & 1) == 0)
  {
    *result = v4;
  }

  *(v3 + 120) |= 4u;
  return result;
}

int32x2_t *physx::Sc::Scene::removeActiveBreakableConstraint(int32x2_t *this, physx::Sc::ConstraintSim *a2)
{
  if (this[285].i32[1])
  {
    v2 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
    v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
    v5 = (*&this[282] + 4 * ((this[283].i32[1] - 1) & ((v4 >> 31) ^ v4)));
    v6 = *v5;
    if (v6 != -1)
    {
      v7 = this[280];
      v8 = this[281];
      if (*(*&v7 + 8 * v6) == a2)
      {
LABEL_7:
        *v5 = *(*&v8 + 4 * v6);
        v10 = vadd_s32(this[285], 0xFFFFFFFF00000001);
        this[285] = v10;
        if (v6 != v10.i32[1])
        {
          *(*&v7 + 8 * v6) = *(*&v7 + 8 * v10.u32[1]);
          v11 = this[281];
          *(*&v11 + 4 * v6) = *(*&v11 + 4 * v10.u32[1]);
          v12 = *(*&this[280] + 8 * v6);
          v13 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = (*&this[282] + 4 * ((this[283].i32[1] - 1) & ((v15 >> 31) ^ v15)));
          v17 = this[285].u32[1];
          v18 = *v16;
          if (v18 != v17)
          {
            do
            {
              v19 = v18;
              v18 = *(*&v11 + 4 * v18);
            }

            while (v18 != v17);
            v16 = (*&v11 + 4 * v19);
          }

          *v16 = v6;
        }

        --this[284].i32[1];
      }

      else
      {
        while (1)
        {
          v9 = v6;
          v6 = *(*&v8 + 4 * v6);
          if (v6 == -1)
          {
            break;
          }

          if (*(*&v7 + 8 * v6) == a2)
          {
            v5 = (*&v8 + 4 * v9);
            goto LABEL_7;
          }
        }
      }
    }
  }

  *(a2 + 120) &= ~4u;
  return this;
}

void *physx::Sc::Scene::allocateConstraintBlock(physx::Sc::Scene *this, unsigned int a2)
{
  if (a2 > 0x80)
  {
    if (a2 > 0x100)
    {
      if (a2 > 0x180)
      {
        v4 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 16);

        return v4();
      }

      else
      {
        result = *(this + 498);
        if (!result)
        {
          physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,384u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::allocateSlab(this + 3424);
          result = *(this + 498);
        }

        *(this + 498) = *result;
        ++*(this + 993);
      }
    }

    else
    {
      result = *(this + 427);
      if (!result)
      {
        physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,256u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::allocateSlab(this + 2856);
        result = *(this + 427);
      }

      *(this + 427) = *result;
      ++*(this + 851);
    }
  }

  else
  {
    result = *(this + 356);
    if (!result)
    {
      physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,128u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::allocateSlab(this + 2288);
      result = *(this + 356);
    }

    *(this + 356) = *result;
    ++*(this + 709);
  }

  return result;
}

uint64_t physx::Sc::Scene::deallocateConstraintBlock(uint64_t this, void *a2, unsigned int a3)
{
  if (a3 > 0x80)
  {
    if (a3 > 0x100)
    {
      if (a3 > 0x180)
      {
        if (a2)
        {
          return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }
      }

      else if (a2)
      {
        --*(this + 3972);
        *a2 = *(this + 3984);
        *(this + 3984) = a2;
      }
    }

    else if (a2)
    {
      --*(this + 3404);
      *a2 = *(this + 3416);
      *(this + 3416) = a2;
    }
  }

  else if (a2)
  {
    --*(this + 2836);
    *a2 = *(this + 2848);
    *(this + 2848) = a2;
  }

  return this;
}

uint64_t physx::Cm::FanoutTask::removeReference(uint64_t this)
{
  v1 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 160));
  }

  if (atomic_fetch_add((v1 + 24), 0xFFFFFFFF) == 1)
  {
    atomic_fetch_add((v1 + 24), 1u);
    *(v1 + 152) = 0;
    v2 = *(v1 + 88);
    if (v2)
    {
      v3 = 0;
      for (i = 0; i < v2; ++i)
      {
        v5 = *(v1 + 80);
        v6 = *(v1 + 144);
        if ((*(v1 + 148) & 0x7FFFFFFFu) <= v6)
        {
          physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(v1 + 96, (v5 + v3));
          v2 = *(v1 + 88);
        }

        else
        {
          *(*(v1 + 136) + 8 * v6) = *(v5 + 8 * i);
          *(v1 + 144) = v6 + 1;
        }

        v3 += 8;
      }
    }

    *(v1 + 88) = 0;
    v7 = *(*(**(v1 + 16) + 8))(*(v1 + 16));
    this = (*v7)();
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v8 = *(v1 + 160);

    return pthread_mutex_unlock(v8);
  }

  return this;
}

uint64_t physx::Cm::FanoutTask::addReference(uint64_t this)
{
  v1 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 160));
  }

  atomic_fetch_add((v1 + 24), 1u);
  *(v1 + 152) = 1;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v2 = *(v1 + 160);

    return pthread_mutex_unlock(v2);
  }

  return this;
}

uint64_t physx::Sc::Scene::finishBroadPhase(physx::Sc::Scene *this, physx::PxBaseTask *a2)
{
  v4 = *(this + 231);
  v5 = *(v4 + 464);
  v6 = *(v4 + 456);
  *(*(this + 230) + 2564) += v5;
  physx::Sc::NPhaseCore::onOverlapCreated(*(this + 499), v6, v5);
  v7 = *(v4 + 448);
  v8 = *(v4 + 440);
  if ((*(this + 1889) & 0x7FFFFFFF) == 0)
  {
    physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(this + 7544, 1u);
  }

  if ((*(this + 1893) & 0x7FFFFFFF) == 0)
  {
    physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::recreate(this + 7560, 1u);
  }

  if ((*(this + 1897) & 0x7FFFFFFF) == 0)
  {
    physx::shdfnd::Array<physx::Sc::ElementInteractionMarker *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker *>>::recreate(this + 7576, 1u);
  }

  *(this + 1888) = 1;
  *(this + 1892) = 1;
  *(this + 1896) = 1;
  v9 = *(this + 230);
  *(v9 + 2564) += v7;
  *(this + 1750) = 1;
  *(this + 874) = a2;
  if (a2)
  {
    (*(*a2 + 32))(a2);
    *(this + 873) = *(*(this + 874) + 16);
    v9 = *(this + 230);
  }

  v10 = *(v9 + 1920);
  *(this + 1902) = 0;
  if ((*(this + 1903) & 0x7FFFFFFFu) >= v7)
  {
    *(this + 1902) = v7;
    *(this + 949) = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

    v11 = (this + 7592);
  }

  else
  {
    physx::shdfnd::Array<physx::PxFilterInfo,physx::shdfnd::ReflectionAllocator<physx::PxFilterInfo>>::recreate(this + 7600, v7);
    *(this + 1902) = v7;
    v11 = (this + 7592);
    *(this + 949) = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = v7;
  v24 = v8;
  do
  {
    v15 = v7;
    v16 = v14 - 512;
    if (v14 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v14;
    }

    v18 = physx::Cm::FlushPool::allocate(v10, 224, 0x10u);
    v19 = *(this + 499);
    v20 = *(this + 950) + 8 * v13;
    *(v18 + 8) = *(this + 3);
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *v18 = &unk_1F5D1EFC8;
    *(v18 + 40) = v19;
    *(v18 + 48) = v24 + 24 * v13;
    *(v18 + 56) = v17;
    *(v18 + 192) = v20;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
    *(v18 + 216) = 0;
    *(v18 + 60) = 0u;
    *(v18 + 76) = 0u;
    *(v18 + 92) = 0u;
    *(v18 + 108) = 0u;
    *(v18 + 124) = 0u;
    *(v18 + 140) = 0u;
    *(v18 + 156) = 0u;
    *(v18 + 172) = 0u;
    *(v18 + 32) = 1;
    *(v18 + 24) = this + 6968;
    (*(*(this + 871) + 32))(this + 6968);
    *(v18 + 16) = *(*(v18 + 24) + 16);
    (*(*v18 + 40))(v18);
    v21 = (v12 + 216);
    if (!v12)
    {
      v21 = v11;
    }

    *v21 = v18;
    v13 += 512;
    v14 = v16;
    v7 = v15;
    v12 = v18;
  }

  while (v13 < v15);
LABEL_20:
  v22 = *(**(this + 873) + 144);

  return v22();
}

uint64_t physx::Sc::Scene::postBroadPhaseStage2(physx::Sc::Scene *this, physx::PxBaseTask *a2)
{
  physx::Sc::Scene::processLostTouchPairs(this);
  *(this + 1764) = 1;
  *(this + 881) = a2;
  if (a2)
  {
    (*(*a2 + 32))(a2);
    *(this + 880) = *(*(this + 881) + 16);
    *(this + 1778) = 1;
    *(this + 888) = a2;
    (*(*a2 + 32))(a2);
    *(this + 887) = *(*(this + 888) + 16);
    *(this + 1792) = 1;
    *(this + 895) = a2;
    (*(*a2 + 32))(a2);
    *(this + 894) = *(*(this + 895) + 16);
    *(this + 1806) = 1;
    *(this + 902) = a2;
    (*(*a2 + 32))(a2);
    v4 = *(*(this + 902) + 16);
    v5 = 7208;
  }

  else
  {
    v4 = 0;
    *(this + 1778) = 1;
    *(this + 888) = 0;
    *(this + 1792) = 1;
    *(this + 895) = 0;
    v5 = 7216;
    *(this + 1806) = 1;
  }

  *(this + v5) = v4;
  (*(**(this + 880) + 144))(*(this + 880), this + 7024);
  (*(**(this + 887) + 144))(*(this + 887), this + 7080);
  (*(**(this + 894) + 144))(*(this + 894), this + 7136);
  result = (*(**(this + 901) + 144))(*(this + 901), this + 7192);
  v7 = *(this + 1888);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(*(this + 943) + 8 * i);
      if ((v9 & 1) == 0)
      {
        v10 = *(this + 230);
        *(*(v10 + 504) + ((*(v9 + 88) >> 3) & 0x1FFFFFFC)) &= ~(1 << *(v9 + 88));
        v11 = *(v10 + 472);
        v12 = *(v10 + 480);
        *(v10 + 480) = v12 + 1;
        *(v11 + 8 * v12) = v9;
        v7 = *(this + 1888);
      }
    }
  }

  v13 = *(this + 1892);
  if (v13)
  {
    v14 = *(this + 945);
    do
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = (*v14 & 1) == 0;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v17 = *(this + 499);
        --*(v17 + 1844);
        *v15 = *(v17 + 1856);
        *(v17 + 1856) = v15;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(this + 1896);
  if (v18)
  {
    v19 = *(this + 947);
    do
    {
      v20 = *v19;
      if (*v19)
      {
        v21 = (*v19 & 1) == 0;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = *(this + 499);
        --*(v22 + 3548);
        *v20 = *(v22 + 3560);
        *(v22 + 3560) = v20;
      }

      ++v19;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t physx::Sc::Scene::releaseConstraints(uint64_t this, int a2)
{
  if (*(this + 4154) == 1)
  {
    if (a2)
    {
      return this;
    }

    v2 = (this + 1840);
  }

  else
  {
    if (!a2)
    {
      return this;
    }

    v2 = (this + 1840);
    physx::PxcNpMemBlockPool::releaseContacts((*(this + 1840) + 40));
  }

  v3 = (*v2 + 40);

  return physx::PxcNpMemBlockPool::releaseContacts(v3);
}

uint64_t physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(result, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t physx::Sc::Scene::addToLostTouchList(uint64_t this, physx::Sc::BodySim *a2, physx::Sc::BodySim *a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;
  v3 = *(a3 + 22);
  LODWORD(v8) = *(a2 + 22);
  HIDWORD(v8) = v3;
  v4 = *(this + 4392);
  if ((*(this + 4396) & 0x7FFFFFFFu) <= v4)
  {
    return physx::shdfnd::Array<physx::Sc::Scene::SimpleBodyPair,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>>::growAndPushBack((this + 4384), &v7);
  }

  v5 = *(this + 4384) + 24 * v4;
  v6 = v7;
  *(v5 + 16) = v8;
  *v5 = v6;
  ++*(this + 4392);
  return this;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void physx::Sc::Scene::postCCDPass(physx::Sc::Scene *this, physx::PxBaseTask *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 233) + 180);
  v4 = *(this + 230);
  v5 = v4[435];
  v6 = v4[434];
  v52 = v6;
  v53 = v5;
  v51 = v4[436];
  v7 = (16 * v5);
  if (v7 < 0x401)
  {
    MEMORY[0x1EEE9AC00](this);
    v49 = (&v48 - ((v7 + 15) & 0x1FFFFFFF0));
    bzero(v49, v7);
  }

  else
  {
    v8 = physx::shdfnd::TempAllocator::allocate(v50, (16 * v5), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 3474);
    v49 = v8;
    v6 = v52;
  }

  v9 = (16 * v6);
  if (v9 < 0x401)
  {
    MEMORY[0x1EEE9AC00](v8);
    v48 = (&v48 - ((v9 + 15) & 0x1FFFFFFF0));
    bzero(v48, (16 * v6));
  }

  else
  {
    v10 = physx::shdfnd::TempAllocator::allocate(v50, (16 * v6), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 3475);
    v48 = v10;
  }

  v11 = (16 * v51);
  if (v11 < 0x401)
  {
    MEMORY[0x1EEE9AC00](v10);
    v12 = (&v48 - ((v11 + 15) & 0x1FFFFFFF0));
    bzero(v12, v11);
  }

  else
  {
    v12 = physx::shdfnd::TempAllocator::allocate(v50, (16 * v51), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 3476);
  }

  (*(**(*(this + 230) + 1776) + 168))(v50);
  v13 = *(this + 1067);
  physx::PxsContext::fillManagerTouchEvents(*(this + 230), v49, &v53, v48, &v52, v12, &v51);
  v14 = (v13 >> 3) & 1;
  if (v53 >= 1)
  {
    v15 = 0;
    v16 = v49 + 1;
    do
    {
      v17 = *v16;
      physx::Sc::NPhaseCore::managerNewTouch(*(this + 499), *v16);
      physx::Sc::ShapeInteraction::managerNewTouch(v17, v3, 1, v50, v14);
      if ((*(v17 + 66) & 4) == 0)
      {
        physx::IG::SimpleIslandManager::setEdgeConnected(*(this + 235), *(v17 + 24), v18);
      }

      ++v15;
      v16 += 2;
    }

    while (v15 < v53);
  }

  if (v52 >= 1)
  {
    v19 = 0;
    v20 = v48 + 1;
    do
    {
      v21 = *v20;
      if (physx::Sc::ShapeInteraction::managerLostTouch(*v20, v3, 1, v50, v14) && (*(v21 + 66) & 4) == 0)
      {
        if (*(*(*(*(v21 + 5) + 8) + 80) + 13) - 1 >= 2)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(*(v21 + 5) + 8);
        }

        if (*(*(*(*(v21 + 6) + 8) + 80) + 13) - 1 >= 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(*(v21 + 6) + 8);
        }

        physx::Sc::Scene::addToLostTouchList(this, v22, v23);
      }

      physx::IG::SimpleIslandManager::setEdgeDisconnected(*(this + 235), *(v21 + 24));
      ++v19;
      v20 += 2;
    }

    while (v19 < v52);
  }

  v24 = v51;
  if (v51 >= 1)
  {
    v25 = 0;
    v26 = v12 + 1;
    do
    {
      v27 = *v26;
      if ((*(*v26 + 64) & 0x20) != 0)
      {
        physx::Sc::ShapeInteraction::processUserNotificationSync(*v26);
        physx::Sc::ShapeInteraction::processUserNotificationAsync(v27, 32, 0, 0, v3, 0, v50, 0, v28, v29, v30);
        v24 = v51;
      }

      ++v25;
      v26 += 2;
    }

    while (v25 < v24);
  }

  physx::Sc::Scene::checkForceThresholdContactEvents(this, v3);
  v31 = *(this + 231);
  v32 = *(this + 526);
  if (v32)
  {
    for (i = 0; i != v32; ++i)
    {
      v34 = *(this + 262);
      v35 = *(v34 + 8 * i);
      if (i + 8 < v32)
      {
        _X8 = *(v34 + 8 * (i + 8));
        v37 = ~((_X8 + 511) >> 5) + (_X8 >> 5);
        do
        {
          __asm { PRFM            #0, [X8] }

          _X8 += 32;
        }

        while (!__CFADD__(v37++, 1));
      }

      physx::Sc::BodySim::updateCached(v35, (v31 + 224));
    }
  }

  v43 = *(this + 553);
  if (v43)
  {
    v44 = 0;
    v45 = *(this + 271);
    do
    {
      v46 = **(v45 + 8 * v44);
      if (*(v46 + 48))
      {
        v47 = 0;
        do
        {
          physx::Sc::BodySim::updateCached(*(*(v46 + 40) + 8 * v47++), (v31 + 224));
        }

        while (v47 < *(v46 + 48));
        v43 = *(this + 553);
      }

      ++v44;
    }

    while (v44 < v43);
  }

  if (v11 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v50, v12);
  }

  if (v9 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v50, v48);
  }

  if (v7 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v50, v49);
  }
}

char *physx::Sc::Scene::checkForceThresholdContactEvents(physx::Sc::Scene *this, int a2)
{
  result = (*(**(*(this + 230) + 1776) + 168))(v18);
  v5 = *(*(this + 236) + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 32 * v6;
    do
    {
      v9 = *(v5 + 8);
      v10 = *(v9 + v7);
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = *(v10 + 64);
      if ((v11 & 0x1C0) == 0)
      {
        goto LABEL_16;
      }

      v12 = (2 * v11) & 0x100000;
      v13 = v11 & 0xFFE7FFFF | (((v11 >> 19) & 1) << 20);
      *(v10 + 64) = v13;
      if (*(v9 + v7 + 24) <= (*(v9 + v7 + 12) * *(this + 496)))
      {
        if ((v11 & 0x100) == 0 || !v12)
        {
          goto LABEL_16;
        }

        v14 = 256;
      }

      else
      {
        *(v10 + 64) = v13 | 0x80000;
        if ((v11 & 0x40) == 0 || v12)
        {
          if ((v11 & 0x80) == 0 || !v12)
          {
            goto LABEL_16;
          }

          v14 = 128;
        }

        else
        {
          v14 = 64;
        }
      }

      physx::Sc::ShapeInteraction::processUserNotificationSync(v10);
      result = physx::Sc::ShapeInteraction::processUserNotificationAsync(v10, v14, 0, 0, a2, 0, v18, 0, v15, v16, v17);
LABEL_16:
      v7 += 32;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t physx::Cm::FlushPool::clear(pthread_mutex_t **this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*this);
  }

  result = physx::Cm::FlushPool::clearNotThreadSafe(this);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v3 = *this;

    return pthread_mutex_unlock(v3);
  }

  return result;
}

uint64_t physx::Sc::Scene::kinematicsSetup(uint64_t this, physx::PxBaseTask *a2)
{
  v3 = this;
  v4 = *(this + 48);
  v5 = *(this + 32);
  v6 = *(*(this + 1840) + 1920);
  if (v4)
  {
    v7 = 0;
    v8 = *(this + 48);
    do
    {
      v9 = physx::Cm::FlushPool::allocate(v6, 56, 0x10u);
      v10 = v9;
      v11 = *(v3 + 1988);
      if (v8 >= 0x400)
      {
        v12 = 1024;
      }

      else
      {
        v12 = v8;
      }

      *(v9 + 8) = *(v3 + 24);
      *(v9 + 16) = 0;
      *(v9 + 32) = 0;
      v13 = &unk_1F5D1ED28;
      *v9 = &unk_1F5D1ED28;
      *(v9 + 40) = v5 + 8 * v7;
      *(v9 + 48) = v12;
      *(v9 + 52) = v11;
      *(v9 + 32) = 1;
      *(v9 + 24) = a2;
      if (a2)
      {
        (*(*a2 + 32))(a2);
        v10[2] = *(v10[3] + 16);
        v13 = *v10;
      }

      this = v13[5](v10);
      v7 += 1024;
      v8 -= 1024;
    }

    while (v7 < v4);
  }

  if ((*(v3 + 4269) & 0x20) != 0)
  {
    v14 = physx::Cm::FlushPool::allocate(v6, 64, 0x10u);
    v15 = *(v3 + 1904);
    *(v14 + 8) = *(v3 + 24);
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    v16 = &unk_1F5D1ED98;
    *v14 = &unk_1F5D1ED98;
    *(v14 + 40) = v5;
    *(v14 + 48) = v4;
    *(v14 + 56) = v15;
    *(v14 + 32) = 1;
    *(v14 + 24) = a2;
    if (a2)
    {
      (*(*a2 + 32))(a2);
      *(v14 + 16) = *(*(v14 + 24) + 16);
      v16 = *v14;
    }

    v17 = v16[5];

    return v17(v14);
  }

  return this;
}

void physx::Sc::Scene::resizeReleasedBodyIDMaps(physx::Sc::Scene *this, int a2, unsigned int a3)
{
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 4400, a2);
  v6 = *(this + 536);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v6 + 32, a2);
  if ((*(v6 + 60) & 0x7FFFFFFFu) < a3)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v6 + 48, a3);
  }

  v7 = *(this + 535);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v7 + 32, a2);
  if ((*(v7 + 60) & 0x7FFFFFFFu) < a3)
  {

    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v7 + 48, a3);
  }
}

void *physx::Sc::Scene::finalizeContactStreamAndCreateHeader(void *result, uint64_t a2, void *a3, unsigned __int16 *a4, unsigned __int8 a5)
{
  v5 = *(result[499] + 64);
  v6 = *a4;
  v7 = a4[5];
  v8 = (v7 >> 1) & 0x7FF0;
  v9 = a4[3];
  if ((v7 & 0x1F & a5) != 0 && v9 != 0)
  {
    v11 = result[535];
    v12 = *(v11 + 40) & 0x7FFFFFFF;
    v13 = v8 + v6 + v5 + 48;
    v14 = a4[3];
    do
    {
      v15 = *v13;
      if (*(v13 + 4) >> 5 < v12 && ((*(*(v11 + 32) + 4 * (*(v13 + 4) >> 5)) >> *(v13 + 4)) & 1) != 0)
      {
        v15 |= 1u;
      }

      if (*(v13 + 8) >> 5 < v12 && ((*(*(v11 + 32) + 4 * (*(v13 + 8) >> 5)) >> *(v13 + 8)) & 1) != 0)
      {
        v15 |= 2u;
      }

      *v13 = v15;
      v13 += 64;
      --v14;
    }

    while (v14);
  }

  v16 = v5 + v6;
  v17 = result[536];
  *a2 = *(a3[3] + 24);
  *(a2 + 8) = *(a3[3] + 32);
  v18 = a3[3];
  v19 = *(v17 + 40) & 0x7FFFFFFF;
  v20 = 0;
  if (*(v18 + 16) >> 5 < v19)
  {
    result = *(v17 + 32);
    if ((*(result + (*(v18 + 16) >> 5)) >> *(v18 + 16)))
    {
      v20 = 1;
    }
  }

  v21 = v16 + v8;
  v22 = *(v18 + 20);
  if (v22 >> 5) < v19 && ((*(*(v17 + 32) + 4 * (v22 >> 5)) >> v22))
  {
    v20 |= 2u;
  }

  *(a2 + 26) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v9;
  v23 = a4[4];
  if (v23)
  {
    v23 -= 4;
    *(a2 + 16) = v16 + 4;
    if ((v7 & 8) != 0)
    {
      v24 = a3[2];
      v25 = *(a3[1] + 80);
      if (*(v25 + 13))
      {
        *(v16 + 12) = *(v25 + 80);
        *(v16 + 20) = *(v25 + 88);
        v26 = *(v25 + 96);
        v27 = *(v25 + 104);
      }

      else
      {
        v26 = 0;
        *(v16 + 12) = 0;
        *(v16 + 20) = 0;
        v27 = 0;
      }

      *(v16 + 36) = v26;
      *(v16 + 44) = v27;
      v28 = *(v24 + 80);
      if (*(v28 + 13))
      {
        *(v16 + 24) = *(v28 + 80);
        *(v16 + 32) = *(v28 + 88);
        v29 = *(v28 + 96);
        v30 = *(v28 + 104);
      }

      else
      {
        v29 = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        v30 = 0;
      }

      *(v16 + 48) = v29;
      *(v16 + 56) = v30;
      a4[5] = v7 & 0xFFF7;
    }
  }

  else
  {
    *(a2 + 16) = 0;
  }

  *(a2 + 24) = v23;
  return result;
}

uint64_t physx::Sc::Scene::getQueuedContactPairHeaders(physx::Sc::Scene *this)
{
  if (*(this + 538) == *(*(this + 535) + 56))
  {
    v2 = 1;
  }

  else
  {
    v2 = 17;
  }

  v3 = *(this + 499);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if ((*(this + 495) & 0x7FFFFFFFu) >= v5)
  {
    *(this + 494) = 0;
    if (!v5)
    {
      return this + 1968;
    }

    v6 = (this + 1976);
  }

  else
  {
    physx::shdfnd::Array<physx::PxContactPairHeader,physx::shdfnd::ReflectionAllocator<physx::PxContactPairHeader>>::recreate(this + 1968, v5);
    v6 = (this + 1976);
    *(this + 494) = 0;
  }

  v7 = 0;
  v8 = (v4 + 8);
  do
  {
    if (v7 < (v5 - 1))
    {
      _X8 = *v8;
      __asm { PRFM            #0, [X8] }
    }

    v15 = *(v8 - 1);
    v16 = v15[3];
    ++v7;
    if ((v16[5] & 2) == 0)
    {
      if (v7 < v5)
      {
        _X8 = *(*v8 + 24);
        __asm { PRFM            #0, [X8] }
      }

      v19 = *(this + 495) & 0x7FFFFFFF;
      v20 = *(this + 494);
      if (v19 <= v20)
      {
        if (v19)
        {
          v21 = 2 * *(this + 495);
        }

        else
        {
          v21 = 1;
        }

        physx::shdfnd::Array<physx::PxContactPairHeader,physx::shdfnd::ReflectionAllocator<physx::PxContactPairHeader>>::recreate(this + 1968, v21);
        v20 = *v6;
      }

      v22 = *(this + 246);
      *(this + 494) = v20 + 1;
      v23 = v22 + 48 * v20;
      *(v23 + 26) = 0;
      physx::Sc::Scene::finalizeContactStreamAndCreateHeader(this, v23, v15, v16, v2);
      v16[2] = v16[3];
      v24 = v16[4];
      _ZF = (v24 & 0xF) == 0;
      v25 = v24 >> 4;
      if (!_ZF)
      {
        LOWORD(v25) = v25 + 1;
      }

      v16[5] = v16[5] & 0x1F | (32 * v25);
    }

    ++v8;
  }

  while (v5 != v7);
  return this + 1968;
}

uint64_t physx::Sc::Scene::fireBrokenConstraintCallbacks(uint64_t this)
{
  if (*(this + 4240))
  {
    v1 = this;
    v2 = *(this + 2224);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(v1 + 2216) + v3);
        if (*(v5 + 80))
        {
          v9 = -1;
          v6 = (*(**(v5 + 32) + 40))(*(v5 + 32), &v9);
          v7[0] = v5 + qword_1EE1C7E28;
          v7[1] = v6;
          v8 = v9;
          this = (***(v1 + 4240))(*(v1 + 4240), v7, 1);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  return this;
}

void *physx::Sc::Scene::fireCallbacksPostSync(int32x2_t *this)
{
  v2 = this + 512;
  if ((this[519].i8[1] & 1) == 0)
  {
    v3 = this[511].u32[1];
    if (v3)
    {
      v4 = this[235];
      v5 = 8 * v3;
      v6 = *&this[506] - 8;
      do
      {
        v7 = *(v6 + v5);
        v8 = *v7;
        v9 = *(*v7 + 180);
        if ((v9 & 0x80) != 0)
        {
          *(v8 + 180) = v9 & 0xFFDF;
          physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 505, *(v6 + v5));
        }

        else if ((*(*(*&v4 + 248) + ((*(v8 + 176) >> 2) & 0x3FFFFFE0) + 4) & 2) != 0)
        {
          physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 505, v7);
          physx::Sc::BodySim::internalWakeUp(v8, 0.4);
        }

        v5 -= 8;
      }

      while (v5);
    }

    v2[7].i8[1] = 1;
  }

  if ((v2[7].i8[0] & 1) == 0)
  {
    v10 = this[518].u32[1];
    if (v10)
    {
      v11 = 8 * v10;
      v12 = *&this[513] - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((*(*v13 + 180) & 0x40) != 0)
        {
          physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 512, v13);
        }

        v11 -= 8;
      }

      while (v11);
    }

    v2[7].i8[0] = 1;
  }

  if (this[530])
  {
    v14 = this[511].u32[1];
    v15 = this[518].u32[1];
    v16 = v14 <= v15 ? this[518].i32[1] : this[511].i32[1];
    if (v16)
    {
      v17 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 4569);
      if (v17)
      {
        v18 = v17;
        if (v14)
        {
          v19 = 0;
          v20 = this[506];
          do
          {
            if ((*(**&v20 + 12) & 4) != 0)
            {
              *(v17 + 8 * v19++) = **&v20 + *(&physx::Sc::gOffsetTable + *(**&v20 + 13) + 10);
            }

            *&v20 += 8;
            --v14;
          }

          while (v14);
          if (v19)
          {
            (*(**&this[530] + 16))(*&this[530], v17);
          }
        }

        if (v15)
        {
          v21 = 0;
          v22 = this[513];
          do
          {
            if ((*(**&v22 + 12) & 4) != 0)
            {
              *(v18 + 8 * v21++) = **&v22 + *(&physx::Sc::gOffsetTable + *(**&v22 + 13) + 10);
            }

            *&v22 += 8;
            --v15;
          }

          while (v15);
          if (v21)
          {
            (*(**&this[530] + 8))(*&this[530], v18);
          }
        }

        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v18);
      }
    }
  }

  return physx::Sc::Scene::clearSleepWakeBodies(this);
}

uint64_t physx::Sc::Scene::prepareOutOfBoundsCallbacks(uint64_t this)
{
  v1 = *(this + 1848);
  v2 = *(v1 + 416);
  v3 = *(v1 + 408);
  *(this + 4504) = 0;
  if (v2)
  {
    v4 = this;
    do
    {
      v5 = *(*v3 + 64);
      v7 = v5;
      v6 = *(v4 + 4504);
      if ((*(v4 + 4508) & 0x7FFFFFFFu) <= v6)
      {
        this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v4 + 4496, &v7);
      }

      else
      {
        *(*(v4 + 4496) + 4 * v6) = v5;
        ++*(v4 + 4504);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t physx::Sc::Scene::fireOutOfBoundsCallbacks(physx::Sc::Scene *this)
{
  v1 = *(this + 231);
  v2 = *(v1 + 416);
  if (!v2)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(v1 + 408);
  v7 = *(this + 531);
  v8 = *(this + 535);
  do
  {
    if (*(*(this + 562) + 4 * v4) >> 5 < (*(v8 + 40) & 0x7FFFFFFFu))
    {
      v9 = *(*(this + 562) + 4 * v4);
      v10 = *(*(v8 + 32) + 4 * (v9 >> 5)) & (1 << v9);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 == 0;
      }

      if (v11)
      {
        v5 |= v10 == 0;
        goto LABEL_13;
      }

LABEL_11:
      (*(*v7 + 16))(v7, *(*(v6 + 8 * v4) + 56) + qword_1EE1C7DF8, *(*(*(v6 + 8 * v4) + 8) + 80) + *(&physx::Sc::gOffsetTable + *(*(*(*(v6 + 8 * v4) + 8) + 80) + 13) + 10));
      goto LABEL_13;
    }

    if (v7)
    {
      goto LABEL_11;
    }

    v5 = 1;
LABEL_13:
    ++v4;
  }

  while (v2 != v4);
  v1 = *(this + 231);
LABEL_16:
  *(v1 + 416) = 0;
  return v5 & 1;
}

uint64_t physx::Sc::Scene::postCallbacksPreSync(physx::Sc::Scene *this)
{
  v2 = *(this + 499);
  v2[9].i32[0] = 0;
  v2[10].i32[1] = -1;
  physx::Sc::NPhaseCore::clearContactReportActorPairs(v2, 0);
  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = v3 - 5;
    v6 = v3 - 1;
    while (v6 < 0x11)
    {
      if (v6 >= 5)
      {
        goto LABEL_6;
      }

LABEL_7:
      v15 = *(v4 + 8 * v6);
      *(*(v15 + 176) + 28) = 0;
      physx::Sc::BodySim::deactivateKinematic(*v15);
      --v5;
      if (--v6 == -1)
      {
        goto LABEL_8;
      }
    }

    _X8 = *(v4 + 8 * (v5 - 12));
    __asm { PRFM            #0, [X8] }

LABEL_6:
    _X8 = *(*(v4 + 8 * v5) + 176);
    __asm { PRFM            #0, [X8] }

    goto LABEL_7;
  }

LABEL_8:

  return physx::Sc::Scene::releaseConstraints(this, 1);
}

void physx::Sc::Scene::getStats(uint64_t a1, uint64_t a2)
{
  physx::Sc::SimStats::readOut(*(a1 + 4256), a2, *(a1 + 1840) + 1936);
  v4 = 0;
  *(a2 + 12) = *(a1 + 4664);
  *(a2 + 20) = *(a1 + 4672);
  v5 = *(a1 + 2212);
  *(a2 + 52) = *(*(a1 + 1848) + 528);
  *(a2 + 56) = v5;
  do
  {
    *(a2 + 24 + v4) = *(a1 + 4676 + v4);
    v4 += 4;
  }

  while (v4 != 28);
}

uint64_t physx::Sc::Scene::addShapes(uint64_t result, void *a2, unsigned int a3, uint64_t a4, physx::Sc::RigidSim *a5, uint64_t a6)
{
  if (a3)
  {
    v10 = result;
    v11 = result + 4676;
    v12 = a3;
    for (i = (a6 + 16); ; i += 3)
    {
      v14 = (*a2 + a4);
      v15 = *(v10 + 4312);
      v16 = *(v15 + 16) + 24 * *(v15 + 8);
      v17 = *(v16 + 8);
      if (v17)
      {
        break;
      }

      v18 = *(v16 + 16);
      if (v18 != *v15)
      {
        v19 = *(v15 + 4);
        *(v16 + 16) = v18 + 1;
        v20 = *v16;
        if (v20)
        {
          v17 = (v20 + (v18 * v19));
          goto LABEL_9;
        }
      }

      v17 = physx::Cm::PreallocatingRegionManager::searchForMemory(v15);
      if (v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      ++*(v11 + 4 * v14[18]);
      (*(**(v10 + 1904) + 32))(*(v10 + 1904), v17 + 6, *(v17 + 16));
      if (a6)
      {
        v21 = (*(*(v10 + 2064) + 8) + 24 * (*(v17 + 4) & 0x7FFFFFFF));
        *(i - 2) = *v21;
        *(i - 1) = v21[1];
        *i = v21[2];
      }

      result = (*(**(*(v10 + 1840) + 1776) + 88))(*(*(v10 + 1840) + 1776), v14 + 8);
      ++a2;
      if (!--v12)
      {
        return result;
      }
    }

    *(v16 + 8) = *v17;
LABEL_9:
    physx::Sc::ShapeSim::ShapeSim(v17, a5, v14);
    goto LABEL_10;
  }

  return result;
}

void physx::Sc::Scene::removeShapes(physx::Sc::Scene *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  for (i = *(a2 + 56); i; i = *i)
  {
    v15 = i;
    v10 = *(a3 + 528);
    if ((*(a3 + 532) & 0x7FFFFFFFu) <= v10)
    {
      physx::shdfnd::Array<physx::Sc::ShapeSim *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>>>::growAndPushBack(a3, &v15);
    }

    else
    {
      *(*(a3 + 520) + 8 * v10) = i;
      *(a3 + 528) = v10 + 1;
    }

    v11 = i[7];
    v14 = v11;
    v12 = *(a4 + 528);
    if ((*(a4 + 532) & 0x7FFFFFFFu) <= v12)
    {
      physx::shdfnd::Array<physx::Sc::ShapeCore const*,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeCore const*>>>::growAndPushBack(a4, &v14);
    }

    else
    {
      *(*(a4 + 520) + 8 * v12) = v11;
      *(a4 + 528) = v12 + 1;
    }
  }

  if (*(a3 + 528))
  {
    v13 = 0;
    do
    {
      physx::Sc::Scene::removeShape(this, *(*(a3 + 520) + 8 * v13++), a5);
    }

    while (v13 < *(a3 + 528));
  }
}

uint64_t physx::Sc::Scene::addStatic(uint64_t a1, void *a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 4320);
  v13 = *(v12 + 16) + 24 * *(v12 + 8);
  v14 = *(v13 + 8);
  if (v14)
  {
    *(v13 + 8) = *v14;
  }

  else
  {
    v15 = *(v13 + 16);
    if (v15 == *v12 || (v16 = *(v12 + 4), *(v13 + 16) = v15 + 1, (v17 = *v13) == 0))
    {
      v14 = physx::Cm::PreallocatingRegionManager::searchForMemory(v12);
    }

    else
    {
      v14 = (v17 + (v15 * v16));
    }
  }

  physx::Sc::RigidSim::RigidSim(v14, a1, a2);
  *v14 = &unk_1F5D207B0;
  ++*(a1 + 4664);

  return physx::Sc::Scene::addShapes(a1, a3, a4, a5, v14, a6);
}

void physx::Sc::Scene::prefetchForRemove(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = ~((v2 + 95) >> 5) + (v2 >> 5);
    _X10 = *a2;
    do
    {
      __asm { PRFM            #0, [X10] }

      _X10 += 32;
      _CF = __CFADD__(v3++, 1);
    }

    while (!_CF);
    _X8 = *(v2 + 56);
    v11 = ~((_X8 + 23) >> 5) + (_X8 >> 5);
    do
    {
      __asm { PRFM            #0, [X8] }

      _X8 += 32;
      _CF = __CFADD__(v11++, 1);
    }

    while (!_CF);
  }
}

void physx::Sc::Scene::prefetchForRemove(physx::Sc::Scene *this, const physx::Sc::BodyCore *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = ~((v2 + 207) >> 5) + (v2 >> 5);
    _X10 = *a2;
    do
    {
      __asm { PRFM            #0, [X10] }

      _X10 += 32;
      _CF = __CFADD__(v3++, 1);
    }

    while (!_CF);
    _X8 = *(v2 + 56);
    v11 = ~((_X8 + 23) >> 5) + (_X8 >> 5);
    do
    {
      __asm { PRFM            #0, [X8] }

      _X8 += 32;
      _CF = __CFADD__(v11++, 1);
    }

    while (!_CF);
  }
}

void physx::Sc::Scene::removeStatic(physx::Sc::Scene *this, uint64_t *a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5)
  {
    v9 = *(this + 547);
    if (v9)
    {
      physx::Sc::Scene::removeShapes(this, v5, v9, a3, a4);
    }

    else
    {
      v14 = 0x4000000000;
      v12[512] = 1;
      v13 = v12;
      physx::Sc::Scene::removeShapes(this, v5, v12, a3, a4);
      if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x7FFFFFFF00000000) != 0 && v13 != v12 && v13)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }
    }

    v10 = *a2;
    if (v10)
    {
      v11 = *(this + 540);
      (**v10)(v10);
      physx::Cm::PreallocatingRegionManager::deallocateMemory(v11, v10);
    }

    --*(this + 1166);
  }
}

uint64_t physx::Sc::Scene::addBody(physx::Sc::Scene *a1, physx::Sc::BodyCore *a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = *(a1 + 541);
  v15 = *(v14 + 16) + 24 * *(v14 + 8);
  v16 = *(v15 + 8);
  if (v16)
  {
    *(v15 + 8) = *v16;
  }

  else
  {
    v17 = *(v15 + 16);
    if (v17 == *v14 || (v18 = *(v14 + 4), *(v15 + 16) = v17 + 1, (v19 = *v15) == 0))
    {
      v16 = physx::Cm::PreallocatingRegionManager::searchForMemory(v14);
    }

    else
    {
      v16 = (v19 + (v17 * v18));
    }
  }

  physx::Sc::BodySim::BodySim(v16, a1, a2, a7);
  if ((*(*(v16 + 17) + 28) & 0x20) != 0 && v16[46] <= 0xFFFFFFFD)
  {
    if (*(*(v16 + 10) + 13) == 2)
    {
      v20 = v16[44];
      if (v20 > 0xFFFFFF7F)
      {
        goto LABEL_14;
      }

      v21 = a1 + 7632;
    }

    else
    {
      v21 = a1 + 7616;
      v20 = v16[44];
    }

    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v21, (v20 >> 7) + 1);
    *(*v21 + 4 * (v20 >> 12)) |= 1 << (v20 >> 7);
  }

LABEL_14:
  if (v16[44] <= 0xFFFFFF7F)
  {
    v22 = *(a1 + 238);
    v25 = v16[44];
    (*(*v22 + 48))(v22, v16 + 12, &v25);
  }

  v23 = *(a2 + 22);
  if (v23 && *(v23 + 31) == 1)
  {
    ++*(a1 + 1168);
  }

  else
  {
    ++*(a1 + 1167);
  }

  return physx::Sc::Scene::addShapes(a1, a3, a4, a5, v16, a6);
}

void physx::Sc::Scene::removeBody(physx::Sc::Scene *this, uint64_t *a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2)
  {
    v9 = *(this + 547);
    if (v9)
    {
      physx::Sc::Scene::removeShapes(this, *a2, v9, a3, a4);
    }

    else
    {
      v16 = 0x4000000000;
      v14[512] = 1;
      v15 = v14;
      physx::Sc::Scene::removeShapes(this, v4, v14, a3, a4);
      if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x7FFFFFFF00000000) != 0 && v15 != v14 && v15)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }
    }

    if (*(*(v4 + 80) + 13) != 2 && (*(*(v4 + 136) + 28) & 0x20) != 0)
    {
      v10 = *(v4 + 72);
      v11 = *(v4 + 176);
      if (32 * *(v10 + 7624) > v11 >> 7)
      {
        *(*(v10 + 7616) + ((v11 >> 10) & 0x3FFFFC)) &= ~(1 << (v11 >> 7));
      }
    }

    v12 = a2[22];
    if (v12 && *(v12 + 31) == 1)
    {
      --*(this + 1168);
    }

    else
    {
      --*(this + 1167);
    }

    v13 = *(this + 541);
    (**v4)(v4);
    physx::Cm::PreallocatingRegionManager::deallocateMemory(v13, v4);
  }
}

unint64_t physx::Sc::Scene::startBatchInsertion(void *a1, unint64_t *a2)
{
  v4 = a1[539];
  v5 = *(v4 + 16) + 24 * *(v4 + 8);
  v6 = *(v5 + 8);
  if (v6)
  {
    *(v5 + 8) = *v6;
  }

  else
  {
    v7 = *(v5 + 16);
    if (v7 == *v4 || (v8 = *(v4 + 4), *(v5 + 16) = v7 + 1, (v9 = *v5) == 0))
    {
      v6 = physx::Cm::PreallocatingRegionManager::searchForMemory(v4);
    }

    else
    {
      v6 = v9 + (v7 * v8);
    }
  }

  v10 = ~((v6 + 71) >> 5) + (v6 >> 5);
  _X9 = v6;
  do
  {
    __asm { PRFM            #0, [X9] }

    _X9 += 32;
    _CF = __CFADD__(v10++, 1);
  }

  while (!_CF);
  a2[2] = v6;
  v17 = a1[540];
  v18 = *(v17 + 16) + 24 * *(v17 + 8);
  v19 = *(v18 + 8);
  if (v19)
  {
    *(v18 + 8) = *v19;
  }

  else
  {
    v20 = *(v18 + 16);
    if (v20 == *v17 || (v21 = *(v17 + 4), *(v18 + 16) = v20 + 1, (v22 = *v18) == 0))
    {
      v19 = physx::Cm::PreallocatingRegionManager::searchForMemory(v17);
    }

    else
    {
      v19 = v22 + (v20 * v21);
    }
  }

  v23 = ~((v19 + 95) >> 5) + (v19 >> 5);
  _X9 = v19;
  do
  {
    __asm { PRFM            #0, [X9] }

    _X9 += 32;
    _CF = __CFADD__(v23++, 1);
  }

  while (!_CF);
  a2[1] = v19;
  v26 = a1[541];
  v27 = *(v26 + 16) + 24 * *(v26 + 8);
  result = *(v27 + 8);
  if (result)
  {
    *(v27 + 8) = *result;
  }

  else
  {
    v29 = *(v27 + 16);
    if (v29 == *v26 || (v30 = *(v26 + 4), *(v27 + 16) = v29 + 1, (v31 = *v27) == 0))
    {
      result = physx::Cm::PreallocatingRegionManager::searchForMemory(v26);
    }

    else
    {
      result = v31 + (v29 * v30);
    }
  }

  v32 = ~((result + 207) >> 5) + (result >> 5);
  _X9 = result;
  do
  {
    __asm { PRFM            #0, [X9] }

    _X9 += 32;
    _CF = __CFADD__(v32++, 1);
  }

  while (!_CF);
  *a2 = result;
  return result;
}

uint64_t physx::Sc::Scene::addShapes(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, physx::Sc::RigidSim *a5, physx::Sc::ShapeSim **a6, uint64_t a7)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v34 = (a4 + 176) + 0x1FFFFFFFFFLL;
    v11 = result + 4676;
    v12 = a3;
    do
    {
      v13 = v10 + 1;
      if (v10 + 1 < v12)
      {
        _X8 = *(a2 + 8 * v13);
        v15 = ~((v34 + _X8) >> 5) + (_X8 >> 5);
        do
        {
          __asm { PRFM            #0, [X8] }

          _X8 += 32;
          _CF = __CFADD__(v15++, 1);
        }

        while (!_CF);
      }

      v21 = *(v9 + 4312);
      v22 = *(v21 + 16) + 24 * *(v21 + 8);
      v23 = *(v22 + 8);
      if (v23)
      {
        *(v22 + 8) = *v23;
      }

      else
      {
        v24 = *(v22 + 16);
        if (v24 == *v21 || (v25 = *(v21 + 4), *(v22 + 16) = v24 + 1, (v26 = *v22) == 0))
        {
          v23 = physx::Cm::PreallocatingRegionManager::searchForMemory(v21);
        }

        else
        {
          v23 = (v26 + (v24 * v25));
        }
      }

      v27 = ~((v23 + 71) >> 5) + (v23 >> 5);
      _X9 = v23;
      do
      {
        __asm { PRFM            #0, [X9] }

        _X9 = (_X9 + 32);
        _CF = __CFADD__(v27++, 1);
      }

      while (!_CF);
      v30 = (*(a2 + 8 * v10) + a4);
      physx::Sc::ShapeSim::ShapeSim(*a6, a5, v30);
      v31 = *a6;
      v32 = (*(*(v9 + 2064) + 8) + 24 * (*(*a6 + 4) & 0x7FFFFFFF));
      v33 = (a7 + 24 * v10);
      *v33 = *v32;
      v33[1] = v32[1];
      v33[2] = v32[2];
      (*(**(v9 + 1904) + 32))(*(v9 + 1904), v31 + 24, *(v31 + 16));
      *a6 = v23;
      ++*(v11 + 4 * v30[18]);
      result = (*(**(*(v9 + 1840) + 1776) + 88))(*(*(v9 + 1840) + 1776), v30 + 8);
      ++v10;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t physx::Sc::Scene::addStatic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  v8 = a2 + *(a3 + 32);
  v9 = v8;
  if (*(v8 + 8) == 1 || (v9 = *v8, *(v8 + 8)))
  {
    _X8 = *v9;
    v11 = ~((*v9 + (*(a3 + 56) + 176) - 1) >> 5) + (*v9 >> 5);
    do
    {
      __asm { PRFM            #0, [X8] }

      _X8 += 32;
      _CF = __CFADD__(v11++, 1);
    }

    while (!_CF);
  }

  physx::Sc::RigidSim::RigidSim(v7, a1, (a2 + *(a3 + 24)));
  *v7 = &unk_1F5D207B0;
  v17 = *(a1 + 4320);
  v18 = *(v17 + 16) + 24 * *(v17 + 8);
  v19 = *(v18 + 8);
  if (v19)
  {
    *(v18 + 8) = *v19;
  }

  else
  {
    v20 = *(v18 + 16);
    if (v20 == *v17 || (v21 = *(v17 + 4), *(v18 + 16) = v20 + 1, (v22 = *v18) == 0))
    {
      v19 = physx::Cm::PreallocatingRegionManager::searchForMemory(v17);
    }

    else
    {
      v19 = v22 + (v20 * v21);
    }
  }

  v23 = ~((v19 + 95) >> 5) + (v19 >> 5);
  _X9 = v19;
  do
  {
    __asm { PRFM            #0, [X9] }

    _X9 += 32;
    _CF = __CFADD__(v23++, 1);
  }

  while (!_CF);
  *(a3 + 8) = v19;
  result = physx::Sc::Scene::addShapes(a1, v9, *(v8 + 8), *(a3 + 56), v7, (a3 + 16), a4);
  ++*(a1 + 4664);
  return result;
}

uint64_t physx::Sc::Scene::addBody(physx::Sc::Scene *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *a3;
  v9 = a2 + *(a3 + 48);
  v10 = v9;
  if (*(v9 + 8) == 1 || (v10 = *v9, *(v9 + 8)))
  {
    _X8 = *v10;
    v12 = ~((*v10 + (*(a3 + 56) + 176) - 1) >> 5) + (*v10 >> 5);
    do
    {
      __asm { PRFM            #0, [X8] }

      _X8 += 32;
      _CF = __CFADD__(v12++, 1);
    }

    while (!_CF);
  }

  v18 = (a2 + *(a3 + 40));
  physx::Sc::BodySim::BodySim(*a3, a1, v18, a5);
  v19 = *(a1 + 541);
  v20 = *(v19 + 16) + 24 * *(v19 + 8);
  v21 = *(v20 + 8);
  if (v21)
  {
    *(v20 + 8) = *v21;
  }

  else
  {
    v22 = *(v20 + 16);
    if (v22 == *v19 || (v23 = *(v19 + 4), *(v20 + 16) = v22 + 1, (v24 = *v20) == 0))
    {
      v21 = physx::Cm::PreallocatingRegionManager::searchForMemory(v19);
    }

    else
    {
      v21 = v24 + (v22 * v23);
    }
  }

  v25 = ~((v21 + 207) >> 5) + (v21 >> 5);
  _X9 = v21;
  do
  {
    __asm { PRFM            #0, [X9] }

    _X9 += 32;
    _CF = __CFADD__(v25++, 1);
  }

  while (!_CF);
  *a3 = v21;
  if ((*(*(v8 + 17) + 28) & 0x20) != 0)
  {
    if (*(*(v8 + 10) + 13) == 2)
    {
      v28 = 7632;
    }

    else
    {
      v28 = 7616;
    }

    v29 = *(v8 + 44);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + v28, (v29 >> 7) + 1);
    *(*(a1 + v28) + ((v29 >> 10) & 0x3FFFFC)) |= 1 << (v29 >> 7);
  }

  if (*(v8 + 44) <= 0xFFFFFF7F)
  {
    v30 = *(a1 + 238);
    v33 = *(v8 + 44);
    (*(*v30 + 48))(v30, v8 + 96, &v33);
  }

  result = physx::Sc::Scene::addShapes(a1, v10, *(v9 + 8), *(a3 + 56), v8, (a3 + 16), a4);
  v32 = *(v18 + 22);
  if (v32 && *(v32 + 31) == 1)
  {
    ++*(a1 + 1168);
  }

  else
  {
    ++*(a1 + 1167);
  }

  return result;
}

void physx::Sc::Scene::finishBatchInsertion(physx::Cm::PreallocatingRegionManager **a1, unsigned __int8 **a2)
{
  v4 = a2[1];
  if (v4)
  {
    physx::Cm::PreallocatingRegionManager::deallocateMemory(a1[540], v4);
  }

  if (*a2)
  {
    physx::Cm::PreallocatingRegionManager::deallocateMemory(a1[541], *a2);
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a1[539];

    physx::Cm::PreallocatingRegionManager::deallocateMemory(v6, v5);
  }
}

uint64_t physx::Sc::Scene::setDominanceGroupPair(uint64_t result, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v4 = result + 4528;
  v5 = 1 << a3;
  if (*a4)
  {
    v6 = *(v4 + 4 * a2) | v5;
  }

  else
  {
    v6 = *(v4 + 4 * a2) & ~v5;
  }

  *(v4 + 4 * a2) = v6;
  v7 = 1 << a2;
  if (a4[1])
  {
    v8 = *(v4 + 4 * a3) | v7;
  }

  else
  {
    v8 = *(v4 + 4 * a3) & ~v7;
  }

  *(v4 + 4 * a3) = v8;
  *(result + 4264) |= 2u;
  return result;
}

uint64_t physx::Sc::Scene::buildActiveActors(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if ((*(this + 4269) & 0x10) != 0)
  {
    v4 = *(this + 48);
    v2 -= v4;
    v3 = *(this + 32) + 8 * v4;
  }

  else
  {
    v3 = *(this + 32);
  }

  *(this + 4184) = 0;
  if (v2)
  {
    v5 = v2;
    do
    {
      if ((*(**v3 + 124) & 1) == 0)
      {
        v6 = *v3 + *(&physx::Sc::gOffsetTable + *(*v3 + 13) + 10);
        v8 = v6;
        v7 = *(v1 + 4184);
        if ((*(v1 + 4188) & 0x7FFFFFFFu) <= v7)
        {
          this = physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::growAndPushBack(v1 + 4176, &v8);
        }

        else
        {
          *(*(v1 + 4176) + 8 * v7) = v6;
          *(v1 + 4184) = v7 + 1;
        }
      }

      v3 += 8;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t physx::Sc::Scene::buildActiveAndFrozenActors(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if ((*(this + 4269) & 0x10) != 0)
  {
    v4 = *(this + 48);
    v2 -= v4;
    v3 = *(this + 32) + 8 * v4;
  }

  else
  {
    v3 = *(this + 32);
  }

  *(this + 4184) = 0;
  *(this + 4200) = 0;
  if (v2)
  {
    for (i = v2; i; --i)
    {
      v6 = *v3 + *(&physx::Sc::gOffsetTable + *(*v3 + 13) + 10);
      if (*(**v3 + 124))
      {
        v10 = *v3 + *(&physx::Sc::gOffsetTable + *(*v3 + 13) + 10);
        v8 = *(v1 + 4200);
        if ((*(v1 + 4204) & 0x7FFFFFFFu) <= v8)
        {
          v9 = v1 + 4192;
          goto LABEL_13;
        }

        *(*(v1 + 4192) + 8 * v8) = v6;
        *(v1 + 4200) = v8 + 1;
      }

      else
      {
        v10 = *v3 + *(&physx::Sc::gOffsetTable + *(*v3 + 13) + 10);
        v7 = *(v1 + 4184);
        if ((*(v1 + 4188) & 0x7FFFFFFFu) <= v7)
        {
          v9 = v1 + 4176;
LABEL_13:
          this = physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::growAndPushBack(v9, &v10);
          goto LABEL_14;
        }

        *(*(v1 + 4176) + 8 * v7) = v6;
        *(v1 + 4184) = v7 + 1;
      }

LABEL_14:
      v3 += 8;
    }
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = (*v5 + 8 * v6 + 8);
    v9 = *v5 + 8 * a2;
    if (v8 > v9)
    {
      v9 = *v5 + 8 * v6 + 8;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 8 * v6) >> 3;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 2) & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v14.i8[0])
      {
        *(v8 - 1) = v10;
      }

      if (v14.i8[4])
      {
        *v8 = v10;
      }

      v7 += 2;
      v8 += 2;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::Sc::Scene::reserveTriggerReportBufferSpace(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = *(a1 + 2136);
  v8 = v7 + a2;
  v9 = (v7 + a2) * 1.5;
  v10 = v9;
  if ((*(a1 + 2140) & 0x7FFFFFFFu) < v9)
  {
    physx::shdfnd::Array<physx::PxTriggerPair,physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>>::recreate(a1 + 2128, v9);
  }

  *(a1 + 2136) = v8;
  *a3 = *(a1 + 2128) + 40 * v7;
  result = *(a1 + 2144);
  if ((*(result + 12) & 0x7FFFFFFFu) < v10)
  {
    physx::shdfnd::Array<physx::Sc::TriggerPairExtraData,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>>::recreate(result, v10);
    result = *(a1 + 2144);
  }

  *(result + 8) = v8;
  *a4 = *result + 12 * v7;
  return result;
}

uint64_t physx::Sc::Scene::createClient(physx::Sc::Scene *this)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Client>::getName() [T = physx::Sc::Client]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  v4 = (*(*(v2 + 24) + 16))(v2 + 24, 1, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/simulationcontroller/src/ScScene.cpp", 5287);
  v8 = v4;
  v5 = *(this + 1042);
  if ((*(this + 1043) & 0x7FFFFFFFu) <= v5)
  {
    physx::shdfnd::Array<physx::Sc::Client *,physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>>::growAndPushBack(this + 4160, &v8);
    v6 = *(this + 1042);
  }

  else
  {
    *(*(this + 520) + 8 * v5) = v4;
    v6 = v5 + 1;
    *(this + 1042) = v6;
  }

  return (v6 - 1);
}

int32x2_t *physx::Sc::Scene::onBodySleep(int32x2_t *this, int32x2_t *a2)
{
  v3 = a2[22].i16[2];
  if (this[530])
  {
    if ((v3 & 0x80) != 0)
    {
      v3 &= ~0x80u;
      this[519].i8[0] = 0;
    }

    v3 |= 0x40u;
    a2[22].i16[2] = v3;
  }

  if ((v3 & 0x10) == 0)
  {
    v4 = a2[10];
    v5 = 0;
    this = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintCore *,physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 505, &v4, &v5);
    if ((v5 & 1) == 0)
    {
      *this = v4;
    }

    a2[22].i16[2] |= 0x10u;
  }

  return this;
}

int32x2_t *physx::Sc::Scene::onBodyWakeUp(int32x2_t *this, int32x2_t *a2)
{
  if (this[530])
  {
    v3 = a2[22].i16[2];
    if ((v3 & 0x40) != 0)
    {
      v3 &= ~0x40u;
      this[519].i8[1] = 0;
    }

    a2[22].i16[2] = v3 | 0x80;
    if ((v3 & 0x20) == 0)
    {
      v4 = a2[10];
      v5 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Sc::ConstraintCore *,physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 512, &v4, &v5);
      if ((v5 & 1) == 0)
      {
        *this = v4;
      }

      a2[22].i16[2] |= 0x20u;
    }
  }

  return this;
}

double physx::Sc::Scene::createLLArticulation(physx::Sc::Scene *this, physx::Sc::ArticulationSim *a2)
{
  if (*(*(a2 + 2) + 44))
  {
    v3 = *(this + 544);
    v4 = *(v3 + 560);
    if (!v4)
    {
      physx::shdfnd::PoolBase<physx::Dy::FeatherstoneArticulation,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::allocateSlab(v3);
      v4 = *(v3 + 560);
    }

    *(v3 + 560) = *v4;
    ++*(v3 + 548);
    *(v4 + 24) = a2;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    result = 0.0;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 1;
    *(v4 + 164) = 0;
    *v4 = &unk_1F5D1D2F0;
    *(v4 + 576) = 0u;
    *(v4 + 592) = 0u;
    *(v4 + 544) = 0u;
    *(v4 + 560) = 0u;
    *(v4 + 512) = 0u;
    *(v4 + 528) = 0u;
    *(v4 + 480) = 0u;
    *(v4 + 496) = 0u;
    *(v4 + 448) = 0u;
    *(v4 + 464) = 0u;
    *(v4 + 416) = 0u;
    *(v4 + 432) = 0u;
    *(v4 + 384) = 0u;
    *(v4 + 400) = 0u;
    *(v4 + 352) = 0u;
    *(v4 + 368) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 336) = 0u;
    *(v4 + 288) = 0u;
    *(v4 + 304) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 272) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 640) = 0;
    *(v4 + 624) = 0u;
    *(v4 + 648) = 0xFFFFFFFF00000000;
    *(v4 + 656) = 0;
    *(v4 + 684) = 1;
    *(v4 + 176) = 0u;
    *(v4 + 696) = 0u;
    *(v4 + 712) = 0u;
    *(v4 + 848) = 0u;
    *(v4 + 864) = 0;
    *(v4 + 872) = 0u;
    *(v4 + 888) = 0;
  }

  else
  {
    v6 = *(this + 543);
    v7 = *(v6 + 560);
    if (!v7)
    {
      physx::shdfnd::PoolBase<physx::Dy::Articulation,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::allocateSlab(v6);
      v7 = *(v6 + 560);
    }

    *(v6 + 560) = *v7;
    ++*(v6 + 548);
    *(v7 + 24) = a2;
    *(v7 + 32) = 0;
    *(v7 + 40) = 1;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 1;
    *(v7 + 164) = 0;
    *v7 = &unk_1F5D1CFA8;
    result = 0.0;
    *(v7 + 248) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 184) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 264) = 0u;
  }

  return result;
}

uint64_t physx::Sc::Scene::createAggregate(physx::Sc::Scene *this, uint64_t a2, int a3)
{
  v6 = *(this + 537);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(*(v6 + 16) + 4 * v8);
    *(v6 + 24) = v8;
    v10 = v9 + 1;
  }

  else
  {
    v9 = *(v6 + 8);
    v10 = v9 + 1;
    *(v6 + 8) = v9 + 1;
  }

  v11 = *(this + 258);
  v12 = *(v11 + 20) & 0x7FFFFFFF;
  if (v10 >= v12)
  {
    v13 = v10 | (v10 >> 1) | ((v10 | (v10 >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v15 = v14 | HIWORD(v14);
    v16 = v15 + 1;
    if (v12 < v15 + 1)
    {
      physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::VirtualAllocator>::recreate(*(this + 258), v15 + 1);
    }

    *(v11 + 16) = v16;
  }

  v17 = *(this + 231);

  return physx::Bp::AABBManager::createAggregate(v17, v9, 0xFFFFFFFFLL, a2, a3);
}

void physx::Sc::Scene::deleteAggregate(physx::Sc::Scene *this, unsigned int a2)
{
  v6 = 0;
  v7 = 0;
  if (physx::Bp::AABBManager::destroyAggregate(*(this + 231), &v7, &v6, a2))
  {
    v3 = *(this + 537);
    v4 = v7;
    v8 = v7;
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v3 + 32, v7 + 1);
    *(*(v3 + 32) + ((v4 >> 3) & 0x1FFFFFFC)) |= 1 << v4;
    v5 = *(v3 + 56);
    if ((*(v3 + 60) & 0x7FFFFFFFu) <= v5)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 48, &v8);
    }

    else
    {
      *(*(v3 + 48) + 4 * v5) = v4;
      ++*(v3 + 56);
    }
  }
}

uint64_t physx::Sc::Scene::shiftOrigin(uint64_t a1, float32x2_t *a2)
{
  physx::PxsContext::shiftOrigin(*(a1 + 1840), a2);
  physx::Bp::BoundsArray::shiftOrigin(*(a1 + 2064), a2);
  v4 = *(a1 + 1848);
  result = (*(**(v4 + 392) + 144))(*(v4 + 392), a2, *(*(v4 + 400) + 8), *(*(v4 + 280) + 8));
  *(v4 + 524) = 1;
  v6 = *(a1 + 2052);
  if (v6)
  {
    v7 = *(a1 + 2008);
    do
    {
      v8 = *v7++;
      result = (*(**(v8 + 32) + 32))(*(v8 + 32), a2);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t physx::Bp::BoundsArray::shiftOrigin(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (*(result + 8) + 16);
    do
    {
      v4 = v3[-1];
      v3[-2] = vsub_f32(v3[-2], *a2);
      v5.i32[0] = *(a2 + 8);
      v5.i32[1] = *a2;
      v3[-1] = vsub_f32(v4, v5);
      *v3 = vsub_f32(*v3, *(a2 + 4));
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  *(result + 24) = 1;
  return result;
}

uint64_t physx::Sc::Scene::preallocateContactManagers(physx::PxBaseTask *)::Local::processBatch(unsigned int a1, unsigned int *a2, int a3, int *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a2;
  v17 = a1 - v16;
  v59 = *a4;
  v57 = *a2;
  v18 = (a10 + 8 * v16);
  v19 = *(a6 + 480);
  if (a1 - v16 >= v19)
  {
    v20 = a1 - v16 - v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v17 - v20;
  memcpy((a10 + 8 * v16), (*(a6 + 472) + 8 * (v19 - v21)), 8 * v21);
  v22 = *(a6 + 480) - (v17 - v20);
  *(a6 + 480) = v22;
  v58 = v17;
  v23 = v17 >= v19;
  v24 = v17 - v19;
  v60 = a1;
  if (v24 == 0 || !v23)
  {
LABEL_28:
    if (v21)
    {
      v48 = *(a6 + 504);
      v49 = v21;
      do
      {
        v50 = *v18++;
        *(v48 + ((*(v50 + 88) >> 3) & 0x1FFFFFFC)) |= 1 << *(v50 + 88);
        --v49;
      }

      while (v49);
    }

    goto LABEL_31;
  }

  v66 = (a6 + 456);
  v25 = *(a6 + 456);
  if (__CFADD__(v20 - 1, v25))
  {
    v26 = v21;
LABEL_27:
    *(a6 + 480) = v22;
    v21 = v26;
    goto LABEL_28;
  }

  v27 = 0;
  v65 = (v20 - 1 + v25) / v25;
  while (1)
  {
    v28 = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(v66, 120 * *v66, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 135);
    if (!v28)
    {
      break;
    }

    v29 = v28;
    v67 = v21;
    v30 = *(a6 + 460);
    v31 = v30 + 1;
    v32 = *(a6 + 456);
    if (v32 * (v30 + 1) <= (32 * *(a6 + 512)))
    {
      v35 = *(a6 + 488);
    }

    else
    {
      v33 = 2 * v31;
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a6 + 504, 2 * v31 * v32);
      if (*(a6 + 472))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      *(a6 + 472) = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(v66, 8 * *(a6 + 456) * v33, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 147);
      v34 = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(v66, 8 * v33, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 149);
      v35 = v34;
      v36 = *(a6 + 488);
      if (v36)
      {
        memcpy(v34, v36, (8 * *(a6 + 460)));
        if (*(a6 + 488))
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }
      }

      *(a6 + 488) = v35;
      v30 = *(a6 + 460);
      v32 = *(a6 + 456);
      v31 = v30 + 1;
    }

    *(a6 + 460) = v31;
    v35[v30] = v29;
    v37 = v32 - 1;
    if (v32 - 1 >= v24)
    {
      v39 = v32 + v32 * v30 - 1;
      v40 = v22;
      v38 = v67;
      do
      {
        v41 = v29 + 120 * v37;
        *(v41 + 16) = 0;
        *(v41 + 88) = v39;
        *(v41 + 92) = 0;
        *(v41 + 32) = 0;
        *(v41 + 40) = 0;
        *(v41 + 84) = 257;
        *(v41 + 72) = 0;
        *(v41 + 82) = 0;
        v22 = v40 + 1;
        *(*(a6 + 472) + 8 * v40) = v41;
        --v37;
        --v39;
        ++v40;
      }

      while (v37 >= v24);
    }

    else
    {
      v38 = v67;
    }

    v26 = v38;
    if ((v37 & 0x80000000) == 0)
    {
      v42 = v30 * v32;
      v43 = 120 * v37;
      v44 = &v18[v38 + v37];
      v45 = v37 + v42;
      v46 = -120;
      do
      {
        v47 = v29 + v43;
        *(v47 + 16) = 0;
        *(v47 + 88) = v45;
        *(v47 + 92) = 0;
        *(v47 + 32) = 0;
        *(v47 + 40) = 0;
        *(v47 + 84) = 257;
        *(v47 + 72) = 0;
        v46 += 120;
        --v45;
        v29 -= 120;
        *(v47 + 82) = 0;
        *v44-- = v47;
      }

      while (v43 != v46);
      v26 = v38 + v37 + 1;
    }

    v24 = v38 + v24 - v26;
    ++v27;
    v21 = v26;
    if (v27 >= v65)
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v57 != v60)
  {
    v51 = 0;
    do
    {
      v52 = *(a7 + 1856);
      if (!v52)
      {
        physx::shdfnd::PoolBase<physx::Sc::ShapeInteraction,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction>>::allocateSlab(a7 + 1296);
        v52 = *(a7 + 1856);
      }

      *(a7 + 1856) = *v52;
      ++*(a7 + 1844);
      *(a11 + 8 * (v51 + *a2)) = v52;
      ++v51;
    }

    while (v58 != v51);
  }

  if (a3 != v59)
  {
    v53 = 0;
    do
    {
      v54 = *(a7 + 3560);
      if (!v54)
      {
        physx::shdfnd::PoolBase<physx::Sc::ElementInteractionMarker,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker>>::allocateSlab(a7 + 3000);
        v54 = *(a7 + 3560);
      }

      *(a7 + 3560) = *v54;
      ++*(a7 + 3548);
      *(a12 + 8 * (v53 + *a4)) = v54;
      ++v53;
    }

    while (a3 - v59 != v53);
  }

  *a2 = v60;
  *a4 = a3;
  *(a8 + 88) = a5;
  *(a8 + 32) = 1;
  *(a8 + 24) = a9;
  if (a9)
  {
    (*(*a9 + 32))(a9);
    *(a8 + 16) = *(*(a8 + 24) + 16);
  }

  v55 = *(*a8 + 40);

  return v55(a8);
}

uint64_t physx::Sc::activateInteraction(physx::Sc *this, physx::Sc::Interaction *a2, void *a3)
{
  result = 0;
  v5 = *(this + 28);
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 != 5)
      {
        return result;
      }

      if (*(*this + 184) > 0xFFFFFFFD || *(*(this + 1) + 184) > 0xFFFFFFFD)
      {
        return 0;
      }

      goto LABEL_11;
    }

    return physx::Sc::ConstraintInteraction::onActivate_(this, a2);
  }

  else
  {
    if (*(this + 28))
    {
      if (v5 != 1)
      {
        return result;
      }

      if ((*(this + 34) & 0x20) == 0)
      {
        result = isOneActorActive((this - 8));
        if (!result)
        {
          return result;
        }
      }

LABEL_11:
      *(this + 29) |= 0x20u;
      return 1;
    }

    return physx::Sc::ShapeInteraction::onActivate_((this - 8), a2);
  }
}

uint64_t physx::Sc::deactivateInteraction(physx::Sc *this, physx::Sc::Interaction *a2)
{
  result = 0;
  v4 = *(this + 28);
  if (v4 <= 1)
  {
    if (*(this + 28))
    {
      if (v4 == 1)
      {
        if ((*(this + 34) & 0x20) == 0 && !isOneActorActive((this - 8)))
        {
          goto LABEL_5;
        }

        return 0;
      }
    }

    else
    {

      return physx::Sc::ShapeInteraction::onDeactivate_((this - 8));
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        return 1;
      case 4u:

        return physx::Sc::ConstraintInteraction::onDeactivate_(this);
      case 5u:
LABEL_5:
        *(this + 29) &= ~0x20u;
        return 1;
    }
  }

  return result;
}

unint64_t physx::shdfnd::AlignedAllocator<16u,physx::shdfnd::NonTrackingAllocator>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 23;
  if (!v4)
  {
    return 0;
  }

  result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v4, "NonTrackedAlloc", a3, a4);
  if (result)
  {
    v6 = result;
    result = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(result - 8) = result - v6;
  }

  return result;
}

physx::Cm::FlushPool *physx::Cm::FlushPool::FlushPool(physx::Cm::FlushPool *this, unsigned int a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 72, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *this = v6;
  physx::shdfnd::MutexImpl::MutexImpl(v6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = a2;
  if (!a2)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmFlushPool.h", 57);
  v8 = *(this + 4);
  v9 = *(this + 5) & 0x7FFFFFFF;
  v11 = v7;
  if (v9 <= v8)
  {
LABEL_8:
    physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack(this + 8, &v11);
    return this;
  }

  *(*(this + 1) + 8 * v8) = v7;
  *(this + 4) = v8 + 1;
  return this;
}

unint64_t physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 71;
  if (!v4)
  {
    return 0;
  }

  result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v4, "NonTrackedAlloc", a3, a4);
  if (result)
  {
    v6 = result;
    result = (result + 71) & 0xFFFFFFFFFFFFFFC0;
    *(result - 8) = result - v6;
  }

  return result;
}

uint64_t ScSimulationControllerCallback::updateScBodyAndShapeSim(uint64_t this, physx::PxBaseTask *a2)
{
  v2 = *(this + 8);
  v3 = v2[235];
  v4 = *(v3 + 384);
  if (v4)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v2[230];
    v11 = *(v10 + 1920);
    v21 = *(v10 + 2592);
    v22 = v2[236];
    v12 = *(v3 + 376);
    do
    {
      if (v8 >= 0x100)
      {
        v13 = physx::Cm::FlushPool::allocate(v11, 88, 0x10u);
        v14 = *(v6 + 8);
        *(v13 + 8) = *(v14 + 24);
        *(v13 + 16) = 0;
        *(v13 + 32) = 0;
        v15 = &unk_1F5D1E958;
        *v13 = &unk_1F5D1E958;
        *(v13 + 40) = v12 + 4 * v9;
        *(v13 + 48) = v7 - v9;
        *(v13 + 56) = v10;
        *(v13 + 64) = v22;
        *(v13 + 72) = v21;
        *(v13 + 80) = v14;
        *(v13 + 32) = 1;
        *(v13 + 24) = a2;
        if (a2)
        {
          (*(*a2 + 32))(a2);
          *(v13 + 16) = *(*(v13 + 24) + 16);
          v15 = *v13;
        }

        this = v15[5](v13);
        v8 = 0;
        v9 = v7;
      }

      v16 = *(*(*(v3 + 248) + ((*(v12 + 4 * v7) >> 2) & 0x3FFFFFE0) + 24) - 32);
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v8 += v16;
      ++v7;
    }

    while (v4 != v7);
    if (v8)
    {
      v17 = physx::Cm::FlushPool::allocate(v11, 88, 0x10u);
      v18 = *(v6 + 8);
      *(v17 + 8) = *(v18 + 24);
      *(v17 + 16) = 0;
      *(v17 + 32) = 0;
      v19 = &unk_1F5D1E958;
      *v17 = &unk_1F5D1E958;
      *(v17 + 40) = v12 + 4 * v9;
      *(v17 + 48) = v4 - v9;
      *(v17 + 56) = v10;
      *(v17 + 64) = v22;
      *(v17 + 72) = v21;
      *(v17 + 80) = v18;
      *(v17 + 32) = 1;
      *(v17 + 24) = a2;
      if (a2)
      {
        (*(*a2 + 32))(a2);
        *(v17 + 16) = *(*(v17 + 24) + 16);
        v19 = *v17;
      }

      v20 = v19[5];

      return v20(v17);
    }
  }

  return this;
}

void ScAfterIntegrationTask::~ScAfterIntegrationTask(ScAfterIntegrationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void ScAfterIntegrationTask::runInternal(ScAfterIntegrationTask *this)
{
  v6 = MEMORY[0x1EEE9AC00](this);
  v68 = *MEMORY[0x1E69E9840];
  memset(v67, 0, 512);
  memset(v66, 0, 512);
  memset(v65, 0, 512);
  memset(v64, 0, 512);
  v7 = *(v6 + 80);
  v8 = *(v7 + 1880);
  v9 = *(v7 + 2064);
  memset(v63, 0, 512);
  memset(v62, 0, 512);
  v10 = *(v6 + 48);
  v61 = v6;
  if (!v10)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    v30 = 0;
    v29 = 0;
    v28 = 1;
    goto LABEL_28;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v55 = 0;
  v14 = 0;
  v59 = 0;
  do
  {
    v15 = *(*(v8 + 248) + ((*(*(v6 + 40) + 4 * v11) >> 2) & 0x3FFFFFE0) + 24);
    v16 = v15 - 96;
    v17 = *(v15 - 16);
    *(v17 + 156) = *(v17 + 160);
    v18 = *(v15 + 28);
    if (v18)
    {
      if ((v18 & 2) != 0)
      {
        v24 = HIDWORD(v55);
        v25 = v63;
        ++HIDWORD(v55);
        goto LABEL_14;
      }

      v19 = v12;
      if ((v18 & 4) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = (v12 + 1);
      *(v67 + v12) = v16;
      v20 = *(v15 - 40);
      if (v20)
      {
        v57 = v13;
        v21 = v8;
        v22 = v14;
        v23 = *(v61 + 72);
        do
        {
          physx::Sc::ShapeSim::updateCached(v20, v23, v9, v1, v2, v3, v4, v5, v54);
          v20 = *v20;
        }

        while (v20);
        v18 = *(v15 + 28);
        v14 = v22;
        v8 = v21;
        v13 = v57;
      }

      if ((v18 & 4) == 0)
      {
LABEL_9:
        v12 = v19;
        v6 = v61;
        goto LABEL_15;
      }
    }

    v24 = v14;
    v14 = (v14 + 1);
    v25 = v62;
    v12 = v19;
    v6 = v61;
LABEL_14:
    *(v25 + v24) = v16;
LABEL_15:
    if ((*(v17 + 44) & 4) != 0)
    {
      *(v66 + v13++) = v16;
    }

    if ((v18 & 8) != 0)
    {
      v26 = v59;
      v27 = v65;
      ++v59;
    }

    else
    {
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v26 = v55;
      v27 = v64;
      LODWORD(v55) = v55 + 1;
    }

    *(v27 + v26) = v16;
LABEL_22:
    *(v15 + 28) = v18 & 1;
    ++v11;
  }

  while (v11 < *(v6 + 48));
  v28 = 1;
  if (v12)
  {
    *(*(v6 + 72) + 28) = 1;
    *(v9 + 24) = 1;
    v28 = 0;
  }

  v29 = v55;
  v10 = HIDWORD(v55);
  v30 = v59;
  if (v12)
  {
LABEL_32:
    v56 = v10;
    v58 = v14;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(*(v6 + 56) + 1760));
    }

    v31 = *(v6 + 80);
    v32 = *(v31 + 1848);
    if ((v28 & 1) == 0)
    {
      v60 = v30;
      v33 = v29;
      v34 = 0;
      do
      {
        for (i = *(*(v67 + v34) + 56); i; i = *i)
        {
          if ((i[7][8] & 5) != 0)
          {
            v36 = *(i + 4);
            physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v32 + 224, (v36 & 0x7FFFFFFF) + 1);
            *(*(v32 + 224) + ((v36 >> 3) & 0xFFFFFFC)) |= 1 << v36;
          }
        }

        ++v34;
      }

      while (v34 != v12);
      v6 = v61;
      v31 = *(v61 + 80);
      v29 = v33;
      v30 = v60;
    }

    if (v13)
    {
      v37 = v13;
      v38 = v66;
      do
      {
        v39 = *(v31 + 2104);
        if ((*(v31 + 2108) & 0x7FFFFFFFu) <= v39)
        {
          physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(v31 + 2096, v38);
        }

        else
        {
          *(*(v31 + 2096) + 8 * v39) = *v38;
          *(v31 + 2104) = v39 + 1;
        }

        ++v38;
        --v37;
      }

      while (v37);
    }

    if (v56)
    {
      v40 = v56;
      v41 = v63;
      do
      {
        v42 = *v41++;
        physx::Sc::BodySim::freezeTransforms(v42, (v32 + 224));
        --v40;
      }

      while (v40);
    }

    if (v58)
    {
      v43 = v58;
      v44 = v62;
      do
      {
        v45 = *v44++;
        physx::Sc::BodySim::createSqBounds(v45);
        --v43;
      }

      while (v43);
    }

    if (v30)
    {
      v46 = v30;
      v47 = v65;
      do
      {
        v48 = *v47++;
        v49 = *(*(v48 + 72) + 1880);
        v50 = *(v48 + 176);
        physx::IG::IslandSim::activateNode(v49 + 224, v50);
        physx::IG::IslandSim::activateNode(v49 + 864, v50);
        --v46;
      }

      while (v46);
    }

    if (v29)
    {
      v51 = v29;
      v52 = v64;
      do
      {
        v53 = *v52++;
        physx::Sc::BodySim::notifyReadyForSleeping(v53);
        --v51;
      }

      while (v51);
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(*(v6 + 56) + 1760));
    }

    return;
  }

LABEL_28:
  if (v10 || v13 || v30 || v29)
  {
    goto LABEL_32;
  }
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintGroupNode>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintInteraction>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::getName() [T = physx::Sc::ConstraintSim]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sc::SimStateData>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6 - *(v6 - 1));
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

unint64_t physx::shdfnd::Array<void *,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::growAndPushBack(unint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v3 - *(*v3 - 8));
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v5 - *(v5 - 8));
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 52);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x20 || (*(a1 + 32) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 32) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 40);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 52) & 0x80000000) == 0)
  {
    v13 = *(a1 + 40);
    if (v13 == a1)
    {
      *(a1 + 32) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 48);
    }
  }

  *(a1 + 40) = v7;
  *(a1 + 48) = v8 + 1;
  *(a1 + 52) = v5;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>::getName() [T = physx::PxBaseTask *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void SpeculativeCCDContactDistanceUpdateTask::~SpeculativeCCDContactDistanceUpdateTask(SpeculativeCCDContactDistanceUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void SpeculativeCCDContactDistanceUpdateTask::runInternal(SpeculativeCCDContactDistanceUpdateTask *this)
{
  if (*(this + 270))
  {
    v2 = 0;
    v3 = this + 56;
    do
    {
      physx::Sc::BodySim::updateContactDistance(*&v3[8 * v2++], *(this + 5), *(this + 136), *(this + 12));
    }

    while (v2 < *(this + 270));
  }
}

void SpeculativeCCDContactDistanceArticulationUpdateTask::~SpeculativeCCDContactDistanceArticulationUpdateTask(SpeculativeCCDContactDistanceArticulationUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void SpeculativeCCDContactDistanceArticulationUpdateTask::runInternal(SpeculativeCCDContactDistanceArticulationUpdateTask *this)
{
  v1 = *(this + 7);
  if (*(v1 + 48))
  {
    v2 = 0;
    v3 = *(this + 5);
    v4 = *(this + 12);
    v5 = *(this + 8);
    do
    {
      physx::Sc::BodySim::updateContactDistance(*(*(v1 + 40) + 8 * v2++), v3, v5, v4);
    }

    while (v2 < *(v1 + 48));
  }
}

void DirtyShapeUpdatesTask::~DirtyShapeUpdatesTask(DirtyShapeUpdatesTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void DirtyShapeUpdatesTask::runInternal(DirtyShapeUpdatesTask *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 526))
  {
    v9 = 0;
    v10 = this + 56;
    do
    {
      physx::Sc::ShapeSim::updateCached(*&v10[8 * v9++], *(this + 5), *(this + 6), a4, a5, a6, a7, a8, v11);
    }

    while (v9 < *(this + 526));
  }
}

void UpdateCCDBoundsTask::~UpdateCCDBoundsTask(UpdateCCDBoundsTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t UpdateCCDBoundsTask::runInternal(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  v15 = this;
  v16 = *(this + 48);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(v15 + 40) + 8 * v17);
      v20 = *(v19 + 56);
      if (v20)
      {
        v21 = 0;
        do
        {
          if ((*(*(v20 + 7) + 64) & 5) != 0)
          {
            this = physx::Sc::ShapeSim::updateSweptBounds(v20, a9, a10, a11, a12, a13, a14, a15, a2, a3, a4, a5, a6, a7, a8);
            v18 += this;
            v21 |= this;
          }

          v20 = *v20;
        }

        while (v20);
        v16 = *(v15 + 48);
        v22 = v21 != 0;
      }

      else
      {
        v22 = 0;
      }

      *(*(v19 + 136) + 156) = v22;
      ++v17;
    }

    while (v17 < v16);
  }

  else
  {
    v18 = 0;
  }

  atomic_fetch_add(*(v15 + 56), v18);
  return this;
}

void ScKinematicPoseUpdateTask::~ScKinematicPoseUpdateTask(ScKinematicPoseUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void ScKinematicPoseUpdateTask::runInternal(ScKinematicPoseUpdateTask *this)
{
  LODWORD(v1) = *(this + 12);
  if (v1)
  {
    v3 = 0;
    do
    {
      v4 = *(this + 5);
      if (v3 + 16 < v1)
      {
        _X10 = *(v4 + 8 * (v3 + 16));
        __asm { PRFM            #0, [X10] }

        if (v3 + 4 < v1)
        {
          v11 = *(v4 + 8 * (v3 + 4));
          _X10 = *v11;
          __asm { PRFM            #0, [X10] }

          _X8 = v11[22];
          __asm { PRFM            #0, [X8] }
        }
      }

      physx::Sc::BodySim::updateKinematicPose(**(v4 + 8 * v3++));
      v1 = *(this + 12);
    }

    while (v3 < v1);
  }
}

void ScKinematicShapeUpdateTask::~ScKinematicShapeUpdateTask(ScKinematicShapeUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void ScKinematicShapeUpdateTask::runInternal(ScKinematicShapeUpdateTask *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 12);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v11 = *(**(*(this + 5) + 8 * i) + 56);
      if (v11)
      {
        v12 = *(this + 7);
        v13 = *(this + 8);
        do
        {
          physx::Sc::ShapeSim::updateCached(v11, v12, v13, a4, a5, a6, a7, a8, v14);
          v11 = *v11;
        }

        while (v11);
        v8 = *(this + 12);
      }
    }
  }
}

void ConstraintProjectionTask::~ConstraintProjectionTask(ConstraintProjectionTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t ConstraintProjectionTask::runInternal(ConstraintProjectionTask *this)
{
  v2 = *(this + 8);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 440));
  if (!v3)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpThreadContext>::getName() [T = physx::PxcNpThreadContext]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, 7335, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v6)
    {
      v3 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v6;
    }

    else
    {
      v3 = 0;
    }

    physx::PxcNpThreadContext::PxcNpThreadContext(v3, *(v2 + 448));
  }

  *(v3 + 7160) = 0;
  if (*(this + 12))
  {
    v7 = 0;
    v8 = *(this + 5);
    do
    {
      v9 = *(*(v8 + 8 * v7) + 40);
      do
      {
        physx::Sc::ConstraintProjectionTree::projectPoseForTree(v9, v3 + 7152);
        v9 = v9[6];
      }

      while (v9);
      v8 = *(this + 5);
      *(*(v8 + 8 * v7++) + 88) &= ~2u;
    }

    while (v7 < *(this + 12));
    if (*(v3 + 7160))
    {
      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0 || (pthread_mutex_lock(*(*(this + 8) + 1760)), *(v3 + 7160)))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(this + 7);
          v13 = *(v3 + 7152);
          v14 = *(v12 + 8);
          if ((*(v12 + 12) & 0x7FFFFFFFu) <= v14)
          {
            physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(v12, (v13 + v10));
          }

          else
          {
            *(*v12 + 8 * v14) = *(v13 + 8 * v11);
            *(v12 + 8) = v14 + 1;
          }

          ++v11;
          v10 += 8;
        }

        while (v11 < *(v3 + 7160));
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_unlock(*(*(this + 8) + 1760));
      }
    }
  }

  v15 = *(*(this + 8) + 440);
  pthread_mutex_lock((v15 + 8));
  *v3 = *v15;
  *v15 = v3;

  return pthread_mutex_unlock((v15 + 8));
}

uint64_t physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(uint64_t result, int a2)
{
  v3 = a2;
  if (*result - 1 == a2)
  {
    *result = a2;
  }

  else
  {
    v2 = *(result + 16);
    if ((*(result + 20) & 0x7FFFFFFFu) <= v2)
    {
      return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result + 8, &v3);
    }

    else
    {
      *(*(result + 8) + 4 * v2) = a2;
      ++*(result + 16);
    }
  }

  return result;
}

uint64_t physx::Cm::FlushPool::clearNotThreadSafe(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24) + 2;
  v3 = *(this + 16);
  while (v3 > v2)
  {
    v4 = *(*(v1 + 8) + 8 * --v3);
    *(v1 + 16) = v3;
    if (v4)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v3 = *(v1 + 16);
    }
  }

  *(v1 + 24) = 0;
  return this;
}

void ScKinematicUpdateTask::~ScKinematicUpdateTask(ScKinematicUpdateTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void ScKinematicUpdateTask::runInternal(ScKinematicUpdateTask *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v2 = *(this + 13);
    v3 = *(this + 5);
    do
    {
      --v1;
      v4 = *v3++;
      physx::Sc::BodySim::calculateKinematicVelocity(*v4, v2);
    }

    while (v1);
  }
}

void ScKinematicAddDynamicTask::~ScKinematicAddDynamicTask(ScKinematicAddDynamicTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t ScKinematicAddDynamicTask::runInternal(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 40);
    do
    {
      --v1;
      v4 = *v3++;
      v5 = *(v2 + 56);
      v6 = *(*v4 + 176);
      this = (*(*v5 + 88))(v5, 0, &v6);
    }

    while (v1);
  }

  return this;
}

void ScBeforeSolverTask::~ScBeforeSolverTask(ScBeforeSolverTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t ScBeforeSolverTask::runInternal(uint64_t this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1072);
  v8 = 0;
  v2 = *(this + 1060);
  if (v2)
  {
    v3 = this;
    v4 = (this + 36);
    memset(v10, 0, 512);
    do
    {
      v5 = *v4++;
      v6 = v5 >> 7;
      if (*(*(v1 + 264) + 4 * v6) != 0x1FFFFFF)
      {
        v7 = *(v1 + 248) + 32 * v6;
        if (!*(v7 + 5))
        {
          this = physx::Sc::BodySim::updateForces(*(v7 + 24) - 96, v10, v9, &v8, 0, 0, *(v3 + 1088), *(v3 + 1064));
        }
      }

      --v2;
    }

    while (v2);
    if (v8)
    {
      return (*(**(v3 + 1080) + 104))(*(v3 + 1080), v10, v9);
    }
  }

  return this;
}

void ScArticBeforeSolverTask::~ScArticBeforeSolverTask(ScArticBeforeSolverTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void ScArticBeforeSolverTask::runInternal(ScArticBeforeSolverTask *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    v3 = *(this + 7);
    do
    {
      v4 = *(*(*(v3 + 248) + ((*(*(this + 5) + 4 * v2) >> 2) & 0x3FFFFFE0) + 24) + 24);
      physx::Sc::ArticulationSim::checkResize(v4);
      physx::Sc::ArticulationSim::updateForces(v4, *(this + 13), *(this + 64));
      physx::Sc::ArticulationSim::saveLastCCDTransform(v4);
      ++v2;
    }

    while (v2 < *(this + 12));
  }
}

void UpdatProjectedPoseTask::~UpdatProjectedPoseTask(UpdatProjectedPoseTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void UpdatProjectedPoseTask::runInternal(UpdatProjectedPoseTask *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    do
    {
      physx::Sc::BodySim::updateCached(*(*(this + 5) + 8 * v2++), 0);
    }

    while (v2 < *(this + 12));
  }
}

void UpdateArticulationTask::~UpdateArticulationTask(UpdateArticulationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void UpdateArticulationTask::runInternal(UpdateArticulationTask *this)
{
  if (*(this + 14))
  {
    v2 = 0;
    do
    {
      v3 = *(*(*(*(this + 5) + 24) + ((*(*(this + 6) + 4 * v2) >> 2) & 0x3FFFFFE0) + 24) + 24);
      physx::Sc::ArticulationSim::sleepCheck(v3, *(this + 15));
      if (*(v3 + 48))
      {
        v4 = 0;
        do
        {
          physx::Sc::BodySim::updateCached(*(*(v3 + 40) + 8 * v4++), 0);
        }

        while (v4 < *(v3 + 48));
      }

      ++v2;
    }

    while (v2 < *(this + 14));
  }
}

void OverlapFilterTask::~OverlapFilterTask(OverlapFilterTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void OnOverlapCreatedTask::~OnOverlapCreatedTask(OnOverlapCreatedTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

physx::Sc::ElementInteractionMarker *OnOverlapCreatedTask::runInternal(physx::Sc::ElementInteractionMarker *this)
{
  if (*(this + 22))
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v6 = *(this + 9);
    v5 = *(this + 10);
    v7 = *(this + 8);
    do
    {
      this = physx::Sc::NPhaseCore::createRbElementInteraction(*(v1 + 5), *(v1 + 7) + v3, *(*(v1 + 6) + v2 + 8), *(*(v1 + 6) + v2), *v7, *v6, *v5, 0);
      if (this)
      {
        if (*(this + 36) == 2)
        {
          *v5 = (*v5 | 1);
          ++v5;
        }

        else if (!*(this + 36))
        {
          *v6 = (*v6 | 1);
          ++v6;
          if (*(this + 11))
          {
            *v7++ |= 1uLL;
          }
        }
      }

      ++v4;
      v3 += 8;
      v2 += 24;
    }

    while (v4 < *(v1 + 22));
  }

  return this;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *, 8>>::getName() [T = physx::Sc::Scene::Block<void *, 8>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *, 16>>::getName() [T = physx::Sc::Scene::Block<void *, 16>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *, 32>>::getName() [T = physx::Sc::Scene::Block<void *, 32>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 8 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 8 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 8) + 8 * v13);
      v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      LODWORD(v17) = (v2 - 1) & ((v17 >> 31) ^ v17);
      *&v10[4 * v13] = *&v9[4 * v17];
      *&v9[4 * v17] = v13;
      *&v11[8 * v13++] = v14;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char, 128>>::getName() [T = physx::Sc::Scene::Block<unsigned char, 128>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char, 256>>::getName() [T = physx::Sc::Scene::Block<unsigned char, 256>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char, 384>>::getName() [T = physx::Sc::Scene::Block<unsigned char, 384>]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::secondPassNarrowPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::secondPassNarrowPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::secondPassNarrowPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  physx::IG::IslandSim::wakeIslands2(*(v1 + 1880) + 864);
  v4 = *(v1 + 1880);
  v5 = *(v4 + 1072);
  if (v5)
  {
    v6 = *(v4 + 1064);
    v7 = v1 + 120;
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(*(*(*(v1 + 1880) + 64) + 8 * (v9 / *(*(v1 + 1880) + 88))) + 8 * (v9 % *(*(v1 + 1880) + 88)));
      if (v10)
      {
        if ((*(v10 + 29) & 0x20) == 0 && (*(*(*(v4 + 920) + 8 * (v8 / *(v4 + 944))) + 16 * (v8 % *(v4 + 944)) + 4) & 4) != 0)
        {
          if (physx::Sc::activateInteraction(v10, 0, v2))
          {
            v11 = *(v10 + 28);
            if (v11 <= 2)
            {
              v12 = *(v7 + 4 * v11);
              v13 = v1 + 72 + 16 * v11;
              if (v12 < *(v13 + 8))
              {
                v14 = *(*v13 + 8 * v12);
                v15 = *(v10 + 16);
                v16 = *(*v13 + 8 * v15);
                *(*v13 + 8 * v12) = v16;
                *(*v13 + 8 * v15) = v14;
                *(v14 + 16) = v15;
                *(v16 + 16) = v12;
                v12 = *(v7 + 4 * v11);
              }

              *(v7 + 4 * v11) = v12 + 1;
            }
          }
        }
      }

      --v5;
    }

    while (v5);
  }

  v3.n128_u32[0] = *(v1 + 1984);
  v17 = *(**(*(v1 + 1840) + 1776) + 40);

  return v17(v3);
}

uint64_t physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::postNarrowPhase>::~DelegateFanoutTask(uint64_t a1)
{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return a1;
}

{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v6 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v6();
}

uint64_t physx::Cm::FanoutTask::release(uint64_t this)
{
  v1 = this;
  v13 = *MEMORY[0x1E69E9840];
  v10[80] = 1;
  v11 = v10;
  v12 = 0xA00000000;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 160));
    v2 = HIDWORD(v12) & 0x7FFFFFFF;
  }

  else
  {
    v2 = 10;
  }

  v3 = *(v1 + 144);
  if (v2 >= v3)
  {
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    this = physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<80u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::recreate(v10, *(v1 + 144));
  }

  v4 = 0;
  do
  {
    v5 = *(v1 + 136);
    v6 = v12;
    if ((HIDWORD(v12) & 0x7FFFFFFFu) <= v12)
    {
      this = physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<80u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(v10, (v5 + v4));
    }

    else
    {
      *&v11[8 * v12] = *(v5 + v4);
      LODWORD(v12) = v6 + 1;
    }

    v4 += 8;
    --v3;
  }

  while (v3);
LABEL_13:
  *(v1 + 144) = 0;
  if (*(v1 + 152))
  {
    this = (*(*v1 + 40))(v1);
  }

  else
  {
    atomic_fetch_add((v1 + 24), 0xFFFFFFFF);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_unlock(*(v1 + 160));
  }

  if (v12)
  {
    v7 = 0;
    do
    {
      this = (*(**&v11[8 * v7] + 40))(*&v11[8 * v7]);
      ++v7;
    }

    while (v7 < v12);
  }

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x7FFFFFFF00000000) != 0 && v11 != v10 && v11 != 0)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return this;
}

uint64_t physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::postNarrowPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 168);
  *(v1 + 2080) = 0;
  v2 = *(v1 + 1840);
  (*(**(v2 + 222) + 48))(*(v2 + 222));
  result = physx::PxsContext::mergeCMDiscreteUpdateResults(v2, v3);
  if (*(v1 + 4154) == 1)
  {
    v5 = (*(v1 + 1840) + 40);

    return physx::PxcNpMemBlockPool::releaseContacts(v5);
  }

  return result;
}

void physx::Cm::FanoutTask::~FanoutTask(pthread_mutex_t **this)
{
  *this = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 20);
  v2 = *(this + 37);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = this[17];
    if (v3 == (this + 12))
    {
      *(this + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v4 = *(this + 23);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = this[10];
    if (v5 == (this + 5))
    {
      *(this + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  *this = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 20);
  v2 = *(this + 37);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = this[17];
    if (v3 == (this + 12))
    {
      *(this + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v4 = *(this + 23);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = this[10];
    if (v5 == (this + 5))
    {
      *(this + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  JUMPOUT(0x1E6906520);
}

uint64_t physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<80u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = (8 * a2);
    if (v4 > 0x50 || (*(result + 80) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      *(result + 80) = 1;
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 96);
  v7 = *(v3 + 88);
  if (v6)
  {
    v8 = &v5[v6];
    v9 = v5;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *(v3 + 88);
  }

  if ((*(v3 + 100) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 80) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 88) = v5;
  *(v3 + 100) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<80u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 100);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x50 || (*(a1 + 80) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 80) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 96);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 88);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 100) & 0x80000000) == 0)
  {
    v13 = *(a1 + 88);
    if (v13 == a1)
    {
      *(a1 + 80) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 96);
    }
  }

  *(a1 + 88) = v7;
  *(a1 + 96) = v8 + 1;
  *(a1 + 100) = v5;
  return v7 + 8 * v8;
}

uint64_t physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::finalizationPhase>::~DelegateFanoutTask(uint64_t a1)
{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return a1;
}

{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v6 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v6();
}

uint64_t physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::finalizationPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(v1 + 1864);
  if (v2)
  {
    v3 = *(v2 + 304);
    if (v3)
    {
      v4 = *(v2 + 296);
      do
      {
        v5 = *v4++;
        v6 = *(v1 + 1904);
        v7 = *(*(v5 - 16) + 13) == 2;
        LODWORD(v54) = *(v5 + 80);
        (*(*v6 + 88))(v6, v7, &v54);
        --v3;
      }

      while (v3);
      v2 = *(v1 + 1864);
    }

    *(v2 + 304) = 0;
  }

  v8 = *(v1 + 7480);
  if (v8)
  {
    physx::PxcScratchAllocator::free(*(v1 + 1840), v8);
    *(v1 + 7480) = 0;
  }

  if (*(v1 + 4240))
  {
    v9 = *(v1 + 7540);
    if (v9)
    {
      *(v1 + 4216) = 0;
      if ((*(v1 + 4220) & 0x7FFFFFFFu) < v9)
      {
        physx::shdfnd::Array<physx::PxRigidBody const*,physx::shdfnd::ReflectionAllocator<physx::PxRigidBody const*>>::recreate(v1 + 4208, v9);
      }

      *(v1 + 4232) = 0;
      if ((*(v1 + 4236) & 0x7FFFFFFFu) < v9)
      {
        physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::recreate(v1 + 4224, v9);
      }

      v10 = *(v1 + 7496);
      do
      {
        if ((*(*v10 + 124) & 1) == 0)
        {
          v11 = *(*v10 + 80);
          v12 = v11 + *(&physx::Sc::gOffsetTable + *(v11 + 13) + 10);
          v54 = v12;
          v13 = *(v1 + 4216);
          if ((*(v1 + 4220) & 0x7FFFFFFFu) <= v13)
          {
            physx::shdfnd::Array<physx::PxRigidBody const*,physx::shdfnd::ReflectionAllocator<physx::PxRigidBody const*>>::growAndPushBack(v1 + 4208, &v54);
          }

          else
          {
            *(*(v1 + 4208) + 8 * v13) = v12;
            *(v1 + 4216) = v13 + 1;
          }

          v14 = *(v11 + 64) * -2.0;
          v15 = *(v11 + 68) * -2.0;
          v16 = *(v11 + 72) * -2.0;
          v18 = *(v11 + 56);
          v17 = *(v11 + 60);
          v19 = (v17 * v17) + -0.5;
          v21 = *(v11 + 48);
          v20 = *(v11 + 52);
          v22 = ((v15 * v20) + (v21 * v14)) + (v18 * v16);
          v23 = ((v14 * v19) - (((v20 * v16) - (v18 * v15)) * v17)) + (v21 * v22);
          v24 = ((v15 * v19) - (((v18 * v14) - (v21 * v16)) * v17)) + (v20 * v22);
          v25 = ((v16 * v19) - (((v21 * v15) - (v20 * v14)) * v17)) + (v18 * v22);
          v26 = v23 + v23;
          v27 = v24 + v24;
          v28 = v25 + v25;
          v30 = *(v11 + 24);
          v29 = *(v11 + 28);
          v31 = (v29 * v29) + -0.5;
          v32 = *(v11 + 16);
          v33 = *(v11 + 20);
          v34 = ((v33 * v27) + (v32 * (v23 + v23))) + (v30 * v28);
          v35 = ((v29 * ((v33 * v28) - (v30 * v27))) + ((v23 + v23) * v31)) + (v32 * v34);
          v36 = ((v29 * ((v30 * v26) - (v32 * v28))) + (v27 * v31)) + (v33 * v34);
          v37 = ((v29 * ((v32 * v27) - (v33 * v26))) + (v28 * v31)) + (v30 * v34);
          v38 = *(v11 + 32) + v35;
          v39 = *(v11 + 36) + v36;
          v40 = *(v11 + 40) + v37;
          v41 = (((v17 * v32) - (v29 * v21)) - (v33 * v18)) + (v20 * v30);
          v42 = (((v17 * v33) - (v29 * v20)) - (v30 * v21)) + (v18 * v32);
          v43 = (((v17 * v30) - (v29 * v18)) - (v32 * v20)) + (v21 * v33);
          v44 = (((v21 * v32) + (v29 * v17)) + (v33 * v20)) + (v30 * v18);
          v54 = __PAIR64__(LODWORD(v42), LODWORD(v41));
          v55 = v43;
          v56 = v44;
          v57 = v38;
          v58 = v39;
          v59 = v40;
          v45 = *(v1 + 4232);
          if ((*(v1 + 4236) & 0x7FFFFFFFu) <= v45)
          {
            physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::growAndPushBack(v1 + 4224, &v54);
          }

          else
          {
            v46 = *(v1 + 4224) + 28 * v45;
            *v46 = v41;
            *(v46 + 4) = v42;
            *(v46 + 8) = v43;
            *(v46 + 12) = v44;
            *(v46 + 16) = v38;
            *(v46 + 20) = v39;
            *(v46 + 24) = v40;
            *(v1 + 4232) = v45 + 1;
          }
        }

        v10 += 8;
        --v9;
      }

      while (v9);
      if (*(v1 + 4216))
      {
        (*(**(v1 + 4240) + 40))(*(v1 + 4240), *(v1 + 4208), *(v1 + 4224));
      }
    }
  }

  v47 = *(v1 + 2284);
  if (v47)
  {
    v48 = 8 * v47;
    v49 = *(v1 + 2240) - 8;
    do
    {
      physx::Sc::ConstraintSim::checkMaxForceExceeded(*(v49 + v48));
      v48 -= 8;
    }

    while (v48);
  }

  v50 = *(v1 + 4296);
  v51 = v50;
  if (*(v50 + 56))
  {
    v52 = 0;
    do
    {
      physx::Cm::IDPoolBase<physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>>::freeID(v50 + 8, *(*(v50 + 48) + 4 * v52++));
    }

    while (v52 < *(v50 + 56));
    v51 = *(v1 + 4296);
  }

  *(v50 + 56) = 0;
  bzero(*(v51 + 32), (4 * *(v51 + 40)));
  result = physx::Cm::FlushPool::clear((v1 + 7416));
  ++*(v1 + 1996);
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDMultiPass>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDMultiPass>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDMultiPass>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  result = (*(**(v1 + 1912) + 8))(*(v1 + 1912));
  *(v1 + 2104) = result;
  if ((*(v1 + 4268) & 2) != 0)
  {
    v77 = v2;
    if (*(v1 + 7472) == 1)
    {
      v4 = *(v1 + 3992);
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 8);
        do
        {
          if (v6 < (v5 - 1))
          {
            _X14 = *(v7 + 8 + 8 * v6);
            __asm { PRFM            #0, [X14] }
          }

          v14 = *(v7 + 8 * v6);
          v15 = v14[3];
          v16 = *(v15 + 5);
          if ((v16 & 2) != 0)
          {
            ++v6;
          }

          else
          {
            if (++v6 < v5)
            {
              _X1 = *(*(v7 + 8 * v6) + 24);
              __asm { PRFM            #0, [X1] }
            }

            if ((v16 & 8) != 0 && *(v15 + 4))
            {
              v19 = *(v4 + 64) + *v15;
              v20 = v14[1];
              v21 = v14[2];
              v22 = *(v20 + 80);
              if (*(v22 + 13))
              {
                *(v19 + 12) = *(v22 + 80);
                *(v19 + 20) = *(v22 + 88);
                v23 = *(v22 + 96);
                v24 = *(v22 + 104);
              }

              else
              {
                v23 = 0;
                *(v19 + 12) = 0;
                *(v19 + 20) = 0;
                v24 = 0;
              }

              *(v19 + 36) = v23;
              *(v19 + 44) = v24;
              v25 = *(v21 + 80);
              if (*(v25 + 13))
              {
                *(v19 + 24) = *(v25 + 80);
                *(v19 + 32) = *(v25 + 88);
                v26 = *(v25 + 96);
                v27 = *(v25 + 104);
              }

              else
              {
                v26 = 0;
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                v27 = 0;
              }

              *(v19 + 48) = v26;
              *(v19 + 56) = v27;
              *(v15 + 5) = v16 & 0xFFF7;
            }
          }
        }

        while (v6 != v5);
      }
    }

    v28 = *(v1 + 5264);
    if (v28 != 2)
    {
      if (v28)
      {
        v29 = *(v1 + 5256);
        v30 = &v29[7 * v28];
        v31 = v29;
        v32 = v29;
        do
        {
          v33 = *v32;
          v32 += 7;
          (*v33)(v31);
          v29 += 7;
          v31 = v32;
        }

        while (v32 < v30);
      }

      *(v1 + 5264) = 0;
      v34 = *(v1 + 5184);
      if (v34)
      {
        v35 = *(v1 + 5176);
        v36 = &v35[7 * v34];
        v37 = v35;
        v38 = v35;
        do
        {
          v39 = *v38;
          v38 += 7;
          (*v39)(v37);
          v35 += 7;
          v37 = v38;
        }

        while (v38 < v36);
      }

      *(v1 + 5184) = 0;
      v40 = *(v1 + 5248);
      if (v40)
      {
        v41 = *(v1 + 5240);
        v42 = &v41[7 * v40];
        v43 = v41;
        v44 = v41;
        do
        {
          v45 = *v44;
          v44 += 7;
          (*v45)(v43);
          v41 += 7;
          v43 = v44;
        }

        while (v44 < v42);
      }

      *(v1 + 5248) = 0;
      v46 = *(v1 + 5232);
      if (v46)
      {
        v47 = *(v1 + 5224);
        v48 = &v47[7 * v46];
        v49 = v47;
        v50 = v47;
        do
        {
          v51 = *v50;
          v50 += 7;
          (*v51)(v49);
          v47 += 7;
          v49 = v50;
        }

        while (v50 < v48);
      }

      *(v1 + 5232) = 0;
      if ((*(v1 + 5268) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>>>::recreate((v1 + 5256));
      }

      if ((*(v1 + 5188) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>>>::recreate((v1 + 5176));
      }

      if ((*(v1 + 5204) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>>>::recreate((v1 + 5192));
      }

      if ((*(v1 + 5220) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>>>::recreate((v1 + 5208));
      }

      if ((*(v1 + 5252) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>>>::recreate((v1 + 5240));
      }

      if ((*(v1 + 5236) & 0x7FFFFFFE) == 0)
      {
        physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>>>::recreate((v1 + 5224));
      }

      v52 = 1;
      do
      {
        v53 = v52;
        v54 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D207F0;
        v79 = v54;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.postCCDPass";
        v55 = *(v1 + 5264);
        if ((*(v1 + 5268) & 0x7FFFFFFFu) <= v55)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>>>::growAndPushBack(v1 + 5256, &v78);
        }

        else
        {
          v56 = *(v1 + 5256) + 56 * v55;
          *v56 = &unk_1F5D1E9C8;
          *(v56 + 8) = v79;
          *(v56 + 24) = v80;
          *(v56 + 32) = v81;
          *v56 = &unk_1F5D207F0;
          *(v56 + 40) = v82;
          ++*(v1 + 5264);
        }

        v57 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D20880;
        v79 = v57;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.updateCCDSinglePass";
        v58 = *(v1 + 5184);
        if ((*(v1 + 5188) & 0x7FFFFFFFu) <= v58)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>>>::growAndPushBack(v1 + 5176, &v78);
        }

        else
        {
          v59 = *(v1 + 5176) + 56 * v58;
          *v59 = &unk_1F5D1E9C8;
          *(v59 + 8) = v79;
          *(v59 + 24) = v80;
          *(v59 + 32) = v81;
          *v59 = &unk_1F5D20880;
          *(v59 + 40) = v82;
          ++*(v1 + 5184);
        }

        v60 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D20910;
        v79 = v60;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.updateCCDSinglePassStage2";
        v61 = *(v1 + 5200);
        if ((*(v1 + 5204) & 0x7FFFFFFFu) <= v61)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>>>::growAndPushBack(v1 + 5192, &v78);
        }

        else
        {
          v62 = *(v1 + 5192) + 56 * v61;
          *v62 = &unk_1F5D1E9C8;
          *(v62 + 8) = v79;
          *(v62 + 24) = v80;
          *(v62 + 32) = v81;
          *v62 = &unk_1F5D20910;
          *(v62 + 40) = v82;
          ++*(v1 + 5200);
        }

        v63 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D209A0;
        v79 = v63;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.updateCCDSinglePassStage3";
        v64 = *(v1 + 5216);
        if ((*(v1 + 5220) & 0x7FFFFFFFu) <= v64)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>>>::growAndPushBack(v1 + 5208, &v78);
        }

        else
        {
          v65 = *(v1 + 5208) + 56 * v64;
          *v65 = &unk_1F5D1E9C8;
          *(v65 + 8) = v79;
          *(v65 + 24) = v80;
          *(v65 + 32) = v81;
          *v65 = &unk_1F5D209A0;
          *(v65 + 40) = v82;
          ++*(v1 + 5216);
        }

        v66 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D20A30;
        v79 = v66;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.ccdBroadPhase";
        v67 = *(v1 + 5248);
        if ((*(v1 + 5252) & 0x7FFFFFFFu) <= v67)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>>>::growAndPushBack(v1 + 5240, &v78);
        }

        else
        {
          v68 = *(v1 + 5240) + 56 * v67;
          *v68 = &unk_1F5D1E9C8;
          *(v68 + 8) = v79;
          *(v68 + 24) = v80;
          *(v68 + 32) = v81;
          *v68 = &unk_1F5D20A30;
          *(v68 + 40) = v82;
          ++*(v1 + 5248);
        }

        v69 = *(v1 + 24);
        v80 = 0;
        v81 = 0;
        v78 = &unk_1F5D20AC0;
        v79 = v69;
        *&v82 = v1;
        *(&v82 + 1) = "ScScene.ccdBroadPhaseAABB";
        v70 = *(v1 + 5232);
        if ((*(v1 + 5236) & 0x7FFFFFFFu) <= v70)
        {
          physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>>>::growAndPushBack(v1 + 5224, &v78);
        }

        else
        {
          v71 = *(v1 + 5224) + 56 * v70;
          *v71 = &unk_1F5D1E9C8;
          *(v71 + 8) = v79;
          *(v71 + 24) = v80;
          *(v71 + 32) = v81;
          *v71 = &unk_1F5D20AC0;
          *(v71 + 40) = v82;
          ++*(v1 + 5232);
        }

        v52 = 0;
      }

      while ((v53 & 1) != 0);
    }

    physx::PxsContext::resetThreadContexts(*(v1 + 1840));
    v72 = *(v1 + 1864);
    *(v72 + 180) = 0;
    *(v72 + 184) = 0;
    v73 = *(v1 + 5240);
    *(v73 + 32) = 1;
    *(v73 + 24) = v77;
    if (v77)
    {
      (*(*v77 + 32))(v77);
      *(v73 + 16) = *(*(v73 + 24) + 16);
      v73 = *(v1 + 5240);
      v74 = v1 + 5224;
      v75 = *(v1 + 5224);
      *(v75 + 32) = 1;
      *(v75 + 24) = v73;
      if (!v73)
      {
        v76 = 0;
LABEL_71:
        (*(*v76 + 40))(v76);
        return (*(**v74 + 40))();
      }
    }

    else
    {
      v75 = *(v1 + 5224);
      v74 = v1 + 5224;
      *(v75 + 32) = 1;
      *(v75 + 24) = v73;
    }

    (*(*v73 + 32))(v73);
    *(v75 + 16) = *(*(v75 + 24) + 16);
    v76 = *(v1 + 5240);
    goto LABEL_71;
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::afterIntegration>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::afterIntegration>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

char *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::afterIntegration>::runInternal(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = *(v1 + 1840);
  v4 = *(v3 + 2592);
  *(v4 + 28) = 0;
  v5 = *(v1 + 2064);
  *(v5 + 24) = 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(v3 + 1760));
  }

  (*(**(v1 + 1904) + 152))(*(v1 + 1904), v4, v5, v2);
  v6 = *(v1 + 1880);
  v7 = *(v6 + 576);
  v8 = *(v1 + 4704);
  if (v7 > v8)
  {
    v9 = *(v1 + 1848);
    v10 = v7 - v8;
    v11 = (*(v6 + 568) + 4 * v8);
    do
    {
      v12 = *v11++;
      v13 = *(*(v6 + 248) + ((v12 >> 2) & 0x3FFFFFE0) + 24);
      v14 = *(v13 - 16);
      v15 = *(v13 + 40);
      *v15 = *v13;
      *(v15 + 16) = *(v13 + 16);
      *(v15 + 24) = *(v13 + 24);
      physx::Sc::BodySim::updateCached(v13 - 96, (v9 + 224));
      v16 = *(v1 + 1904);
      v17 = *(*(v13 - 16) + 13) == 2;
      LODWORD(v97) = *(v13 + 80);
      (*(*v16 + 88))(v16, v17, &v97);
      v18 = *(v13 + 28);
      if ((v18 & 2) != 0)
      {
        physx::Sc::BodySim::freezeTransforms(v13 - 96, (*(v1 + 1848) + 224));
        v18 = *(v13 + 28);
      }

      *(v14 + 156) = 0;
      *(v14 + 80) = 0;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 104) = 0;
      *(v13 + 28) = v18 & 1;
      --v10;
    }

    while (v10);
  }

  if (*(v1 + 2120))
  {
    v19 = 0;
    v20 = 0;
    v21 = *(*(v1 + 1840) + 1920);
    do
    {
      v22 = physx::Cm::FlushPool::allocate(v21, 56, 0x10u);
      v23 = v22;
      v24 = *(v1 + 2112) + 8 * v20;
      v25 = v19 + *(v1 + 2120);
      if (v25 >= 0x100)
      {
        v25 = 256;
      }

      *(v22 + 8) = *(v1 + 24);
      *(v22 + 16) = 0;
      *(v22 + 32) = 0;
      v26 = &unk_1F5D1EEE8;
      *v22 = &unk_1F5D1EEE8;
      *(v22 + 40) = v24;
      *(v22 + 48) = v25;
      *(v22 + 32) = 1;
      *(v22 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        v23[2] = *(v23[3] + 16);
        v26 = *v23;
      }

      v26[5](v23);
      v20 += 256;
      v27 = *(v1 + 2120);
      v19 -= 256;
    }

    while (v20 < v27);
    if (v27)
    {
      v28 = 0;
      v29 = *(v1 + 1848);
      do
      {
        v30 = *(*(v1 + 2112) + 8 * v28);
        if ((*(v30 + 124) & 1) == 0)
        {
          v31 = *(v30 + 56);
          if (v31)
          {
            do
            {
              v32 = *(v31 + 4);
              if ((v32 & 0x80000000) != 0)
              {
                physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v29 + 224, (v32 & 0x7FFFFFFF) + 1);
                *(*(v29 + 224) + ((v32 >> 3) & 0xFFFFFFC)) |= 1 << v32;
              }

              v31 = *v31;
            }

            while (v31);
            v27 = *(v1 + 2120);
          }
        }

        ++v28;
      }

      while (v28 < v27);
      if (v27)
      {
        v33 = 0;
        for (i = 0; i < v27; i += 256)
        {
          if (v27 - i >= 0x100)
          {
            v35 = 256;
          }

          else
          {
            v35 = v27 - i;
          }

          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          v110 = 0u;
          v109 = 0u;
          v108 = 0u;
          v107 = 0u;
          v106 = 0u;
          v105 = 0u;
          v104 = 0u;
          v103 = 0u;
          v102 = 0u;
          v101 = 0u;
          v100 = 0u;
          v99 = 0u;
          v98 = 0u;
          v97 = 0u;
          if (v27 != i)
          {
            v36 = v27 + v33;
            if (v36 >= 0x100)
            {
              v36 = 256;
            }

            if (v36 <= 1)
            {
              v36 = 1;
            }

            v37 = (*(v1 + 2112) + 8 * i);
            v38 = v96;
            v39 = &v97;
            do
            {
              *v39 = *v37 + 96;
              v39 = (v39 + 8);
              v40 = *v37++;
              *v38++ = *(v40 + 176) >> 7;
              --v36;
            }

            while (v36);
          }

          (*(**(v1 + 1904) + 56))(*(v1 + 1904), &v97, v96, v35);
          v27 = *(v1 + 2120);
          v33 -= 256;
        }
      }
    }
  }

  v41 = *(v1 + 48);
  if (v41)
  {
    v42 = 0;
    v43 = 0;
    v44 = *(v1 + 32);
    v45 = *(*(v1 + 1840) + 1920);
    do
    {
      v46 = 0;
      v47 = v42;
      while (1)
      {
        v46 += *(**(v44 + 8 * v47) + 64);
        if (v46 >= 0x400)
        {
          break;
        }

        if (v41 == ++v47)
        {
          if (v46)
          {
            v52 = physx::Cm::FlushPool::allocate(v45, 72, 0x10u);
            v53 = *(*(v1 + 1840) + 2592);
            v54 = *(v1 + 2064);
            *(v52 + 8) = *(v1 + 24);
            *(v52 + 16) = 0;
            *(v52 + 32) = 0;
            v55 = &unk_1F5D1EC48;
            *v52 = &unk_1F5D1EC48;
            *(v52 + 40) = v44 + 8 * v43;
            *(v52 + 48) = v41 - v43;
            *(v52 + 56) = v53;
            *(v52 + 64) = v54;
            *(v52 + 32) = 1;
            *(v52 + 24) = v2;
            if (v2)
            {
              (*(*v2 + 32))(v2);
              *(v52 + 16) = *(*(v52 + 24) + 16);
              v55 = *v52;
            }

            v55[5](v52);
          }

          goto LABEL_52;
        }
      }

      v48 = physx::Cm::FlushPool::allocate(v45, 72, 0x10u);
      v49 = *(*(v1 + 1840) + 2592);
      v50 = *(v1 + 2064);
      *(v48 + 8) = *(v1 + 24);
      *(v48 + 16) = 0;
      *(v48 + 32) = 0;
      v51 = &unk_1F5D1EC48;
      *v48 = &unk_1F5D1EC48;
      *(v48 + 40) = v44 + 8 * v43;
      *(v48 + 48) = v47 - v43 + 1;
      *(v48 + 56) = v49;
      *(v48 + 64) = v50;
      *(v48 + 32) = 1;
      *(v48 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        *(v48 + 16) = *(*(v48 + 24) + 16);
        v51 = *v48;
      }

      v42 = v47 + 1;
      v51[5](v48);
      v43 = v47 + 1;
    }

    while (v41 - 1 != v47);
LABEL_52:
    v56 = 0;
    v57 = *(v1 + 1848);
    *(*(*(v1 + 1840) + 2592) + 28) = 1;
    *(*(v1 + 2064) + 24) = 1;
    do
    {
      v58 = **(v44 + 8 * v56);
      if (v56 + 16 < v41)
      {
        _X9 = *(v44 + 8 * (v56 + 16));
        __asm { PRFM            #0, [X9] }

        if (v56 + 8 < v41)
        {
          _X9 = **(v44 + 8 * (v56 + 8));
          __asm { PRFM            #0, [X9] }
        }

        if (v56 + 4 < v41)
        {
          _X9 = *(**(v44 + 8 * (v56 + 4)) + 56);
          __asm { PRFM            #0, [X9] }
        }
      }

      for (j = *(v58 + 56); j; j = *j)
      {
        if ((*(j[7] + 64) & 5) != 0)
        {
          *(*(v57 + 224) + 4 * ((*(j + 4) >> 5) & 0x3FFFFFF)) |= 1 << *(j + 4);
        }
      }

      v70 = *(v1 + 1904);
      LODWORD(v97) = *(v58 + 176);
      (*(*v70 + 88))(v70, 0, &v97);
      ++v56;
    }

    while (v56 != v41);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(*(v1 + 1840) + 1760));
  }

  v71 = *(v1 + 1880);
  v72 = *(v71 + 400);
  if (v72)
  {
    v73 = 0;
    v74 = v71 + 224;
    v75 = *(*(v1 + 1840) + 1920);
    v95 = *(v1 + 1880);
    v76 = *(v71 + 392);
    v77 = *(v71 + 400);
    do
    {
      v78 = physx::Cm::FlushPool::allocate(v75, 64, 0x10u);
      v79 = v78;
      if (v77 >= 0x40)
      {
        v80 = 64;
      }

      else
      {
        v80 = v77;
      }

      v81 = *(v1 + 1984);
      *(v78 + 8) = *(v1 + 24);
      *(v78 + 16) = 0;
      *(v78 + 32) = 0;
      v82 = &unk_1F5D1EF58;
      *v78 = &unk_1F5D1EF58;
      *(v78 + 40) = v74;
      *(v78 + 48) = v76 + 4 * v73;
      *(v78 + 56) = v80;
      *(v78 + 60) = v81;
      *(v78 + 32) = 1;
      *(v78 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        v79[2] = *(v79[3] + 16);
        v82 = *v79;
      }

      v82[5](v79);
      v73 += 64;
      v77 -= 64;
    }

    while (v73 < v72);
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(*(v1 + 1840) + 1760));
    }

    v83 = 0;
    v84 = *(v1 + 1848);
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    do
    {
      v85 = *(*(*(v95 + 248) + ((*(v76 + 4 * v83) >> 2) & 0x3FFFFFE0) + 24) + 24);
      v86 = *(v85 + 48);
      if (v86)
      {
        v87 = 0;
        v88 = 0;
        v89 = 8 * v86;
        do
        {
          v90 = *(*(v85 + 40) + v87);
          if ((*(*(v90 + 136) + 28) & 4) != 0)
          {
            *(&v97 + v88++) = v90;
          }

          v87 += 8;
        }

        while (v89 != v87);
        if (v88)
        {
          v91 = v88;
          v92 = &v97;
          do
          {
            v93 = *(v1 + 2104);
            if ((*(v1 + 2108) & 0x7FFFFFFFu) <= v93)
            {
              physx::shdfnd::Array<physx::Sc::BodySim *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodySim *>>::growAndPushBack(v1 + 2096, v92);
            }

            else
            {
              *(*(v1 + 2096) + 8 * v93) = *v92;
              *(v1 + 2104) = v93 + 1;
            }

            v92 = (v92 + 8);
            --v91;
          }

          while (v91);
        }
      }

      physx::Sc::ArticulationSim::markShapesUpdated(v85, (v84 + 224));
      ++v83;
    }

    while (v83 != v72);
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(*(v1 + 1840) + 1760));
    }
  }

  return physx::Sc::Scene::checkForceThresholdContactEvents(v1, 0);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::constraintProjection>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::constraintProjection>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::constraintProjection>::runInternal(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 2052))
  {
    v2 = *(v1 + 1880);
    v3 = *(v2 + 384);
    if (v3)
    {
      v4 = *(result + 24);
      v5 = *(v2 + 376);
      result = physx::PxcScratchAllocator::alloc(*(v1 + 1840), 8 * v3, 1);
      *(v1 + 7480) = result;
      if (result)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(*(*(v2 + 248) + ((*(v5 + 4 * v6) >> 2) & 0x3FFFFFE0) + 24) + 104);
          if (v8)
          {
            v9 = *(v8 + 8);
            v10 = *(v9 + 8);
            if (v10 != v9)
            {
              v11 = 0;
              do
              {
                v9 = v10;
                v12 = v11;
                v10 = *(v10 + 8);
                ++v11;
              }

              while (v9 != v10);
              if (v11)
              {
                v13 = ~v12;
                do
                {
                  v14 = *(v8 + 8);
                  *(v8 + 8) = v9;
                  v8 = v14;
                }

                while (!__CFADD__(v13++, 1));
              }
            }

            v16 = *(v9 + 88);
            if ((v16 & 2) == 0 && *(v9 + 40))
            {
              *(*(v1 + 7480) + 8 * v7++) = v9;
              *(v9 + 88) = v16 | 2;
            }
          }

          ++v6;
          --v3;
        }

        while (v3);
        if (v7)
        {
          v17 = 0;
          v18 = 0;
          v19 = *(*(v1 + 1840) + 1920);
          v20 = v1 + 2112;
          do
          {
            v21 = 0;
            v22 = v17;
            while (1)
            {
              v23 = *(*(*(v1 + 7480) + 8 * v22) + 88);
              if ((v23 & 0x40) != 0)
              {
                v24 = 128;
              }

              else if ((v23 & 0x20) != 0)
              {
                v24 = 40;
              }

              else
              {
                v24 = (v23 & 0x10) != 0 ? 10 : (v23 >> 2) & 2;
              }

              v21 += v24;
              if (v21 >= 0x100)
              {
                break;
              }

              if (v7 == ++v22)
              {
                if (v21)
                {
                  v29 = physx::Cm::FlushPool::allocate(v19, 72, 0x10u);
                  v30 = *(v1 + 7480) + 8 * v18;
                  v31 = *(v1 + 1840);
                  *(v29 + 8) = *(v31 + 2616);
                  *(v29 + 16) = 0;
                  *(v29 + 32) = 0;
                  v32 = &unk_1F5D1ECB8;
                  *v29 = &unk_1F5D1ECB8;
                  *(v29 + 40) = v30;
                  *(v29 + 48) = v7 - v18;
                  *(v29 + 56) = v20;
                  *(v29 + 64) = v31;
                  *(v29 + 32) = 1;
                  *(v29 + 24) = v4;
                  if (v4)
                  {
                    (*(*v4 + 32))(v4);
                    *(v29 + 16) = *(*(v29 + 24) + 16);
                    v32 = *v29;
                  }

                  v33 = v32[5];

                  return v33(v29);
                }

                return result;
              }
            }

            v25 = physx::Cm::FlushPool::allocate(v19, 72, 0x10u);
            v26 = *(v1 + 7480) + 8 * v18;
            v27 = *(v1 + 1840);
            *(v25 + 8) = *(v27 + 2616);
            *(v25 + 16) = 0;
            *(v25 + 32) = 0;
            v28 = &unk_1F5D1ECB8;
            *v25 = &unk_1F5D1ECB8;
            *(v25 + 40) = v26;
            *(v25 + 48) = v22 - v18 + 1;
            *(v25 + 56) = v20;
            *(v25 + 64) = v27;
            *(v25 + 32) = 1;
            *(v25 + 24) = v4;
            if (v4)
            {
              (*(*v4 + 32))(v4);
              *(v25 + 16) = *(*(v25 + 24) + 16);
              v28 = *v25;
            }

            result = v28[5](v25);
            v17 = v22 + 1;
            v18 = v22 + 1;
          }

          while (v7 - 1 != v22);
        }
      }

      else
      {
        v34 = *(*(*(*physx::shdfnd::Foundation::mInstance + 8))(physx::shdfnd::Foundation::mInstance) + 16);

        return v34();
      }
    }
  }

  return result;
}